(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710067696)
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
      (lambda (_path157595_ _fun157596_)
        (with-output-to-file
         (let ((__tmp157689
                (let ()
                  (declare (not safe))
                  (cons _path157595_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157689))
         _fun157596_)))
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
      (lambda (_gerbil-libdir157590_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157590_)))
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
      (lambda (_dir157588_) (delete-file-or-directory _dir157588_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157562_ _opts157563_)
        (if (let () (declare (not safe)) (string? _srcpath157562_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157562_)))
        (let ((_outdir157565_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157563_)))
              (_invoke-gsc?157566_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157563_)))
              (_gsc-options157567_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157563_)))
              (_keep-scm?157568_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157563_)))
              (_verbosity157569_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157563_)))
              (_optimize157570_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157563_)))
              (_debug157571_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157563_)))
              (_gen-ssxi157572_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157563_))))
          (if _outdir157565_
              (let ((__tmp157690
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157565_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157690))
              '#!void)
          (if _optimize157570_
              (let ((__tmp157691
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157691))
              '#!void)
          (let ((__tmp157695
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157562_))
                   (let ((__tmp157696
                          (let ((__tmp157697
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157562_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157697))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157696))))
                (__tmp157694
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157692
                 (let ((__tmp157693
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157562_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157693))))
            (declare (not safe))
            (call-with-parameters
             __tmp157695
             gxc#current-compile-output-dir
             _outdir157565_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157566_
             gxc#current-compile-gsc-options
             _gsc-options157567_
             gxc#current-compile-keep-scm
             _keep-scm?157568_
             gxc#current-compile-verbose
             _verbosity157569_
             gxc#current-compile-optimize
             _optimize157570_
             gxc#current-compile-debug
             _debug157571_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157572_
             gxc#current-compile-timestamp
             __tmp157694
             gxc#current-compile-context
             __tmp157692
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157581_)
        (let ((_opts157583_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157581_ _opts157583_))))
    (define gxc#compile-module
      (lambda _g157699_
        (let ((_g157698_ (let () (declare (not safe)) (##length _g157699_))))
          (cond ((let () (declare (not safe)) (##fx= _g157698_ 1))
                 (apply (lambda (_srcpath157581_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157581_)))
                        _g157699_))
                ((let () (declare (not safe)) (##fx= _g157698_ 2))
                 (apply (lambda (_srcpath157585_ _opts157586_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157585_
                             _opts157586_)))
                        _g157699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157699_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157538_ _opts157539_)
        (if (let () (declare (not safe)) (string? _srcpath157538_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157538_)))
        (let ((_outdir157541_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157539_)))
              (_invoke-gsc?157542_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157539_)))
              (_gsc-options157543_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157539_)))
              (_keep-scm?157544_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157539_)))
              (_verbosity157545_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157539_)))
              (_debug157546_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157539_))))
          (if _outdir157541_
              (let ((__tmp157700
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157541_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157700))
              '#!void)
          (let ((__tmp157704
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157538_))
                   (let ((__tmp157705
                          (let ((__tmp157706
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157538_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157706))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157705
                      _opts157539_))))
                (__tmp157703
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157701
                 (let ((__tmp157702
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157538_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157702))))
            (declare (not safe))
            (call-with-parameters
             __tmp157704
             gxc#current-compile-output-dir
             _outdir157541_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157542_
             gxc#current-compile-gsc-options
             _gsc-options157543_
             gxc#current-compile-keep-scm
             _keep-scm?157544_
             gxc#current-compile-verbose
             _verbosity157545_
             gxc#current-compile-debug
             _debug157546_
             gxc#current-compile-timestamp
             __tmp157703
             gxc#current-compile-context
             __tmp157701
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157554_)
        (let ((_opts157556_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157554_ _opts157556_))))
    (define gxc#compile-exe
      (lambda _g157708_
        (let ((_g157707_ (let () (declare (not safe)) (##length _g157708_))))
          (cond ((let () (declare (not safe)) (##fx= _g157707_ 1))
                 (apply (lambda (_srcpath157554_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157554_)))
                        _g157708_))
                ((let () (declare (not safe)) (##fx= _g157707_ 2))
                 (apply (lambda (_srcpath157558_ _opts157559_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157558_ _opts157559_)))
                        _g157708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157708_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157534_ _opts157535_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157535_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157534_
               _opts157535_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157534_
               _opts157535_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157417_ _opts157418_)
        (letrec ((_generate-stub157420_
                  (lambda (_builtin-modules157530_)
                    (let ((_mod-main157532_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157417_ 'main))))
                      (write (let ((__tmp157709
                                    (let ((__tmp157710
                                           (let ((__tmp157711
                                                  (let ((__tmp157712
                                                         (let ((__tmp157714
                                                                (let ((__tmp157715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157530_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157715)))
                       (__tmp157713
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157714 __tmp157713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157712))))
                                             (declare (not safe))
                                             (cons __tmp157711 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157710))))
                               (declare (not safe))
                               (cons 'define __tmp157709)))
                      (write (let ((__tmp157716
                                    (let ((__tmp157755
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157717
                                           (let ((__tmp157718
                                                  (let ((__tmp157719
                                                         (let ((__tmp157743
                                                                (let ((__tmp157744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157745
                                      (let ((__tmp157753
                                             (let ((__tmp157754
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157754)))
                                            (__tmp157746
                                             (let ((__tmp157747
                                                    (let ((__tmp157748
                                                           (let ((__tmp157749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157750
                                 (let ((__tmp157751
                                        (let ((__tmp157752
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157752 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157751))))
                            (declare (not safe))
                            (cons __tmp157750 '()))))
                     (declare (not safe))
                     (cons _mod-main157532_ __tmp157749))))
              (declare (not safe))
              (cons 'apply __tmp157748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157747 '()))))
                                        (declare (not safe))
                                        (cons __tmp157753 __tmp157746))))
                                 (declare (not safe))
                                 (cons '() __tmp157745))))
                          (declare (not safe))
                          (cons 'lambda __tmp157744)))
                       (__tmp157720
                        (let ((__tmp157721
                               (let ((__tmp157722
                                      (let ((__tmp157723
                                             (let ((__tmp157734
                                                    (let ((__tmp157735
                                                           (let ((__tmp157736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157737
                                 (let ((__tmp157738
                                        (let ((__tmp157739
                                               (let ((__tmp157740
                                                      (let ((__tmp157741
                                                             (let ((__tmp157742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157742 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157740 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157739))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157738))))
                            (declare (not safe))
                            (cons __tmp157737 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157736))))
              (declare (not safe))
              (cons 'with-catch __tmp157735)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157724
                                                    (let ((__tmp157725
                                                           (let ((__tmp157726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157727
                                 (let ((__tmp157728
                                        (let ((__tmp157729
                                               (let ((__tmp157730
                                                      (let ((__tmp157731
                                                             (let ((__tmp157732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157733
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157733 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157732))))
                (declare (not safe))
                (cons __tmp157731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157730))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157729))))
                                   (declare (not safe))
                                   (cons __tmp157728 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157727))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157726))))
              (declare (not safe))
              (cons __tmp157725 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157734
                                                     __tmp157724))))
                                        (declare (not safe))
                                        (cons '() __tmp157723))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157722))))
                          (declare (not safe))
                          (cons __tmp157721 '()))))
                   (declare (not safe))
                   (cons __tmp157743 __tmp157720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157719))))
                                             (declare (not safe))
                                             (cons __tmp157718 '()))))
                                      (declare (not safe))
                                      (cons __tmp157755 __tmp157717))))
                               (declare (not safe))
                               (cons 'define __tmp157716)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157421_
                  (lambda (_libgerbil157528_)
                    (call-with-input-file
                     (string-append _libgerbil157528_ '".ldd")
                     read)))
                 (_replace-extension157422_
                  (lambda (_path157525_ _ext157526_)
                    (string-append
                     (path-strip-extension _path157525_)
                     _ext157526_)))
                 (_not-exclude-module?157423_
                  (lambda (_ctx157521_)
                    (let ((_id-str157523_
                           (symbol->string
                            (##structure-ref
                             _ctx157521_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157757
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157523_))))
                            (declare (not safe))
                            (not __tmp157757))
                          (let ((__tmp157756
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157523_))))
                            (declare (not safe))
                            (not __tmp157756))
                          '#f))))
                 (_not-file-empty?157424_
                  (lambda (_path157519_)
                    (let ((__tmp157758
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157519_))))
                      (declare (not safe))
                      (not __tmp157758))))
                 (_compile-stub157425_
                  (lambda (_output-scm157432_ _output-bin157433_)
                    (let* ((_gerbil-home157435_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157437_
                            (path-expand '"lib" _gerbil-home157435_))
                           (_gerbil-staticdir157439_
                            (path-expand '"static" _gerbil-libdir157437_))
                           (_gxlink157441_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157437_))
                           (_tmp157443_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157447_
                            (lambda (_f157445_)
                              (path-expand
                               (path-strip-directory _f157445_)
                               _tmp157443_)))
                           (_deps157449_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157417_)))
                           (_deps157451_
                            (filter _not-exclude-module?157423_ _deps157449_))
                           (_src-deps-scm157453_
                            (map gxc#find-static-module-file _deps157451_))
                           (_src-deps-scm157455_
                            (filter _not-file-empty?157424_
                                    _src-deps-scm157453_))
                           (_src-deps-scm157457_
                            (map path-expand _src-deps-scm157455_))
                           (_deps-scm157459_
                            (map _tmp-path157447_ _src-deps-scm157457_))
                           (_deps-c157465_
                            (map (lambda (_g157460157462_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157422_
                                      _g157460157462_
                                      '".c")))
                                 _deps-scm157459_))
                           (_deps-o157471_
                            (map (lambda (_g157466157468_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157422_
                                      _g157466157468_
                                      '".o")))
                                 _deps-scm157459_))
                           (_src-bin-scm157473_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157417_)))
                           (_src-bin-scm157475_
                            (path-expand _src-bin-scm157473_))
                           (_bin-scm157477_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157447_ _src-bin-scm157475_)))
                           (_bin-c157479_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157422_
                               _bin-scm157477_
                               '".c")))
                           (_bin-o157481_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157422_
                               _bin-scm157477_
                               '".o")))
                           (_output-bin157483_
                            (path-expand _output-bin157433_))
                           (_output-scm157485_
                            (path-expand _output-scm157432_))
                           (_output-c157487_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157422_
                               _output-scm157485_
                               '".c")))
                           (_output-o157489_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157422_
                               _output-scm157485_
                               '".o")))
                           (_output_-c157491_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157422_
                               _output-scm157485_
                               '"_.c")))
                           (_output_-o157493_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157422_
                               _output-scm157485_
                               '"_.o")))
                           (_gsc-link-opts157495_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157497_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157499_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157439_)))
                           (_output-ld-opts157501_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157503_
                            (path-expand '"libgerbil.a" _gerbil-libdir157437_))
                           (_libgerbil.so157505_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157437_))
                           (_libgerbil-ld-opts157507_
                            (if (file-exists? _libgerbil.so157505_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157421_
                                   _libgerbil.so157505_))
                                (if (file-exists? _libgerbil.a157503_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157421_
                                       _libgerbil.a157503_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157503_
                                       _libgerbil.so157505_)))))
                           (_rpath157509_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157437_)))
                           (_builtin-modules157513_
                            (map (lambda (_mod157511_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157511_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157417_ _deps157451_)))))
                      (let ((__tmp157759
                             (lambda ()
                               (let ((__tmp157760
                                      (path-directory _output-bin157483_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157760)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157759))
                      (let ((__tmp157761
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157420_
                                  _builtin-modules157513_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157485_
                         __tmp157761))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157762
                                   (lambda () (create-directory _tmp157443_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157762))
                            (for-each
                             copy-file
                             _src-deps-scm157457_
                             _deps-scm157459_)
                            (copy-file _src-bin-scm157475_ _bin-scm157477_)
                            (let ((__tmp157770
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157763
                                   (let ((__tmp157764
                                          (let ((__tmp157765
                                                 (let ((__tmp157766
                                                        (let ((__tmp157767
                                                               (let ((__tmp157768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157769
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157485_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157477_ __tmp157769))))
                         (declare (not safe))
                         (foldr1 cons __tmp157768 _deps-scm157459_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157767 _gsc-link-opts157495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157441_
                                                         __tmp157766))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157765))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157764))))
                              (declare (not safe))
                              (gxc#invoke __tmp157770 __tmp157763))
                            (let ((__tmp157778
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157771
                                   (let ((__tmp157772
                                          (let ((__tmp157773
                                                 (let ((__tmp157774
                                                        (let ((__tmp157775
                                                               (let ((__tmp157776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157777
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157491_ '()))))
                                (declare (not safe))
                                (cons _output-c157487_ __tmp157777))))
                         (declare (not safe))
                         (cons _bin-c157479_ __tmp157776))))
                  (declare (not safe))
                  (foldr1 cons __tmp157775 _deps-c157465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157774
                                                           _gsc-static-opts157499_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157773
                                                    _gsc-cc-opts157497_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157772))))
                              (declare (not safe))
                              (gxc#invoke __tmp157778 __tmp157771))
                            (let ((__tmp157791
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157779
                                   (let ((__tmp157780
                                          (let ((__tmp157781
                                                 (let ((__tmp157782
                                                        (let ((__tmp157783
                                                               (let ((__tmp157784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157785
                                     (let ((__tmp157786
                                            (let ((__tmp157787
                                                   (let ((__tmp157788
                                                          (let ((__tmp157789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157790
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157507_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157790))))
                    (declare (not safe))
                    (cons _gerbil-libdir157437_ __tmp157789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157788))))
                                              (declare (not safe))
                                              (cons _rpath157509_
                                                    __tmp157787))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157786
                                               _output-ld-opts157501_))))
                                (declare (not safe))
                                (cons _output_-o157493_ __tmp157785))))
                         (declare (not safe))
                         (cons _output-o157489_ __tmp157784))))
                  (declare (not safe))
                  (cons _bin-o157481_ __tmp157783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157782
                                                           _deps-o157471_))))
                                            (declare (not safe))
                                            (cons _output-bin157483_
                                                  __tmp157781))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157780))))
                              (declare (not safe))
                              (gxc#invoke __tmp157791 __tmp157779))
                            (for-each
                             delete-file
                             (let ((__tmp157792
                                    (let ((__tmp157793
                                           (let ((__tmp157794
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157493_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157489_
                                                   __tmp157794))))
                                      (declare (not safe))
                                      (cons _output_-c157491_ __tmp157793))))
                               (declare (not safe))
                               (cons _output-c157487_ __tmp157792)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157443_)))
                          '#!void)))))
          (let* ((_output-bin157427_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157417_ _opts157418_)))
                 (_output-scm157429_
                  (string-append _output-bin157427_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157425_ _output-scm157429_ _output-bin157427_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157429_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157242_ _opts157243_)
        (letrec ((_reset-declare157245_
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
                 (_generate-stub157246_
                  (lambda (_deps157408_)
                    (let ((_mod-main157410_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157242_ 'main)))
                          (_reset-decl157411_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157245_)))
                          (_user-decl157412_
                           (let ()
                             (declare (not safe))
                             (_user-declare157247_))))
                      (for-each
                       (lambda (_dep157414_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157411_)
                         (newline)
                         (if _user-decl157412_
                             (begin (write _user-decl157412_) (newline))
                             '#!void)
                         (write (let ((__tmp157795
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157414_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157795)))
                         (newline))
                       _deps157408_)
                      (write (let ((__tmp157796
                                    (let ((__tmp157809
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157797
                                           (let ((__tmp157805
                                                  (let ((__tmp157806
                                                         (let ((__tmp157807
                                                                (let ((__tmp157808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157808))))
                   (declare (not safe))
                   (cons __tmp157807 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157806)))
                                                 (__tmp157798
                                                  (let ((__tmp157799
                                                         (let ((__tmp157800
                                                                (let ((__tmp157801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157802
                                      (let ((__tmp157803
                                             (let ((__tmp157804
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157804 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157803))))
                                 (declare (not safe))
                                 (cons __tmp157802 '()))))
                          (declare (not safe))
                          (cons _mod-main157410_ __tmp157801))))
                   (declare (not safe))
                   (cons 'apply __tmp157800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157799 '()))))
                                             (declare (not safe))
                                             (cons __tmp157805 __tmp157798))))
                                      (declare (not safe))
                                      (cons __tmp157809 __tmp157797))))
                               (declare (not safe))
                               (cons 'define __tmp157796)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157247_
                  (lambda ()
                    (let* ((_gsc-opts157313_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157243_)))
                           (_gsc-prelude157315_
                            (if _gsc-opts157313_
                                (member '"-prelude" _gsc-opts157313_)
                                '#f))
                           (_gsc-prelude157317_
                            (if _gsc-prelude157315_
                                (read (open-input-string
                                       (cadr _gsc-prelude157315_)))
                                '#f)))
                      (let _lp157320_ ((_rest157322_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157317_ '())))
                                       (_user-decls157323_ '()))
                        (let* ((_rest157324157332_ _rest157322_)
                               (_else157326157340_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157323_))
                                      '#f
                                      (let ((__tmp157810
                                             (reverse _user-decls157323_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157810)))))
                               (_K157328157396_
                                (lambda (_rest157343_ _expr157344_)
                                  (let* ((_expr157345157357_ _expr157344_)
                                         (_else157348157365_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157320_
                                               _rest157343_
                                               _user-decls157323_)))))
                                    (let ((_K157353157386_
                                           (lambda (_decls157384_)
                                             (let ((__tmp157811
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157323_
                                                              _decls157384_))))
                                               (declare (not safe))
                                               (_lp157320_
                                                _rest157343_
                                                __tmp157811))))
                                          (_K157350157371_
                                           (lambda (_exprs157369_)
                                             (let ((__tmp157812
                                                    (append _exprs157369_
                                                            _rest157343_)))
                                               (declare (not safe))
                                               (_lp157320_
                                                __tmp157812
                                                _user-decls157323_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157345157357_))
                                          (let ((_tl157355157391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157345157357_)))
                                                (_hd157354157389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157345157357_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157354157389_
                                                         'declare))
                                                (let ((_decls157394_
                                                       _tl157355157391_))
                                                  (declare (not safe))
                                                  (_K157353157386_
                                                   _decls157394_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157354157389_
                                                             'begin))
                                                    (let ((_exprs157379_
                                                           _tl157355157391_))
                                                      (declare (not safe))
                                                      (_K157350157371_
                                                       _exprs157379_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157348157365_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157348157365_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157324157332_))
                              (let ((_hd157329157399_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157324157332_)))
                                    (_tl157330157401_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157324157332_))))
                                (let* ((_expr157404_ _hd157329157399_)
                                       (_rest157406_ _tl157330157401_))
                                  (declare (not safe))
                                  (_K157328157396_ _rest157406_ _expr157404_)))
                              (let ()
                                (declare (not safe))
                                (_else157326157340_))))))))
                 (_compile-stub157248_
                  (lambda (_output-scm157255_ _output-bin157256_)
                    (let* ((_gerbil-home157258_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157260_
                            (path-expand '"lib" _gerbil-home157258_))
                           (_runtime157262_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157264_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157258_))
                           (_include-gambit-sharp157266_
                            (string-append
                             '"(include \""
                             _gambit-sharp157264_
                             '"\")"))
                           (_bin-scm157268_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157242_)))
                           (_deps157270_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157242_)))
                           (_deps157272_
                            (map gxc#find-static-module-file _deps157270_))
                           (_deps157277_
                            (filter (lambda (_$obj157274_)
                                      (let ((__tmp157813
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj157274_))))
                                        (declare (not safe))
                                        (not __tmp157813)))
                                    _deps157272_))
                           (_deps157281_
                            (filter (lambda (_f157279_)
                                      (let ((__tmp157814
                                             (member _f157279_
                                                     _runtime157262_)))
                                        (declare (not safe))
                                        (not __tmp157814)))
                                    _deps157277_))
                           (_output-base157283_
                            (string-append
                             (path-strip-extension _output-scm157255_)))
                           (_output-c157285_
                            (string-append _output-base157283_ '".c"))
                           (_output-o157287_
                            (string-append _output-base157283_ '".o"))
                           (_output-c_157289_
                            (string-append _output-base157283_ '"_.c"))
                           (_output-o_157291_
                            (string-append _output-base157283_ '"_.o"))
                           (_gsc-link-opts157293_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157295_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157297_
                            (let ((__tmp157815
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157260_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157815)))
                           (_output-ld-opts157299_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157301_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157817
                                       (let ((__tmp157818
                                              (let ((__tmp157819
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157266_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157819))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157818))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157817))
                                (let ((__tmp157816
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157266_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157816))))
                           (_gsc-link-opts157303_
                            (append _gsc-link-opts157293_
                                    _gsc-gx-macros157301_))
                           (_rpath157305_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157260_)))
                           (_default-ld-options157307_
                            (let ((__tmp157820
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157820))))
                      (let ((__tmp157821
                             (lambda ()
                               (let ((__tmp157822
                                      (path-directory _output-bin157256_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157822)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157821))
                      (let ((__tmp157823
                             (lambda ()
                               (let ((__tmp157824
                                      (let ((__tmp157825
                                             (let ((__tmp157826
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157268_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157826
                                                       _deps157281_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157825
                                                _runtime157262_))))
                                 (declare (not safe))
                                 (_generate-stub157246_ __tmp157824)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157255_
                         __tmp157823))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157832
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157827
                                   (let ((__tmp157828
                                          (let ((__tmp157829
                                                 (let ((__tmp157830
                                                        (let ((__tmp157831
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157255_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157831 _gsc-link-opts157303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157289_
                                                         __tmp157830))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157829))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157828))))
                              (declare (not safe))
                              (gxc#invoke __tmp157832 __tmp157827))
                            (let ((__tmp157838
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157833
                                   (let ((__tmp157834
                                          (let ((__tmp157835
                                                 (let ((__tmp157836
                                                        (let ((__tmp157837
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157289_ '()))))
                  (declare (not safe))
                  (cons _output-c157285_ __tmp157837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157836
                                                           _gsc-static-opts157297_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157835
                                                    _gsc-cc-opts157295_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157834))))
                              (declare (not safe))
                              (gxc#invoke __tmp157838 __tmp157833))
                            (let ((__tmp157848
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157839
                                   (let ((__tmp157840
                                          (let ((__tmp157841
                                                 (let ((__tmp157842
                                                        (let ((__tmp157843
                                                               (let ((__tmp157844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157845
                                     (let ((__tmp157846
                                            (let ((__tmp157847
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157307_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157260_
                                                    __tmp157847))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157846))))
                                (declare (not safe))
                                (cons _rpath157305_ __tmp157845))))
                         (declare (not safe))
                         (foldr1 cons __tmp157844 _output-ld-opts157299_))))
                  (declare (not safe))
                  (cons _output-o_157291_ __tmp157843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157287_
                                                         __tmp157842))))
                                            (declare (not safe))
                                            (cons _output-bin157256_
                                                  __tmp157841))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157840))))
                              (declare (not safe))
                              (gxc#invoke __tmp157848 __tmp157839)))
                          '#!void)))))
          (let* ((_output-bin157250_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157242_ _opts157243_)))
                 (_output-scm157252_
                  (string-append _output-bin157250_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157248_ _output-scm157252_ _output-bin157250_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157252_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157192_ _id157193_)
        (let ((_$e157239_
               (let ((__tmp157850
                      (lambda (_e157194157196_)
                        (let* ((_g157198157208_ _e157194157196_)
                               (_else157200157216_ (lambda () '#f))
                               (_K157202157220_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157198157208_
                                 'gx#module-export::t))
                              (let* ((_e157203157223_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157198157208_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157204157226_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157198157208_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157205157229_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157198157208_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157205157229_ '0))
                                    (let ((_e157206157232_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157198157208_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157234157236_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157234157236_
                                                    _id157193_)))
                                           _e157206157232_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157202157220_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157200157216_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157200157216_))))
                              (let ()
                                (declare (not safe))
                                (_else157200157216_))))))
                     (__tmp157849
                      (##structure-ref
                       _ctx157192_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157850 __tmp157849))))
          (if _$e157239_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157239_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157184_ _id157185_)
        (let ((_$e157187_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157184_ _id157185_))))
          (if _$e157187_
              ((lambda (_bind157190_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157190_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157185_)))
                 (##structure-ref _bind157190_ '1 gx#binding::t '#f))
               _$e157187_)
              (let ((__tmp157851
                     (##structure-ref
                      _ctx157184_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157851
                 _id157185_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157071_)
        (letrec* ((_ht157073_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157074_
                   (lambda (_in157136_ _phi157137_)
                     (let ((_iphi157139_
                            (fx+ _phi157137_
                                 (##direct-structure-ref
                                  _in157136_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157140_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157136_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157142_ ((_rest157144_ _imports157140_)
                                        (_r157145_ '()))
                         (let* ((_rest157146157154_ _rest157144_)
                                (_else157148157162_ (lambda () _r157145_))
                                (_K157150157172_
                                 (lambda (_rest157165_ _in157166_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157166_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157139_))
                                           (let ((__tmp157858
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157166_
                                                          _r157145_))))
                                             (declare (not safe))
                                             (_lp157142_
                                              _rest157165_
                                              __tmp157858))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157142_
                                              _rest157165_
                                              _r157145_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157166_
                                              'gx#module-import::t))
                                           (let ((_iphi157168_
                                                  (fx+ _phi157137_
                                                       (##direct-structure-ref
                                                        _in157166_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157168_))
                                                 (let ((__tmp157856
                                                        (let ((__tmp157857
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157166_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157857 _r157145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157142_
                                                    _rest157165_
                                                    __tmp157856))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157142_
                                                    _rest157165_
                                                    _r157145_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157166_
                                                  'gx#import-set::t))
                                               (let ((_xphi157170_
                                                      (fx+ _iphi157139_
                                                           (##direct-structure-ref
                                                            _in157166_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157170_))
                                                     (let ((__tmp157854
                                                            (let ((__tmp157855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157166_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157855 _r157145_))))
               (declare (not safe))
               (_lp157142_ _rest157165_ __tmp157854))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157170_)
                                                         (let ((__tmp157852
                                                                (let ((__tmp157853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157074_
                                  _in157166_
                                  _iphi157139_))))
                          (declare (not safe))
                          (foldl1 cons _r157145_ __tmp157853))))
                   (declare (not safe))
                   (_lp157142_ _rest157165_ __tmp157852))
                 (let ()
                   (declare (not safe))
                   (_lp157142_ _rest157165_ _r157145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157142_
                                                  _rest157165_
                                                  _r157145_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157146157154_))
                               (let ((_hd157151157175_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157146157154_)))
                                     (_tl157152157177_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157146157154_))))
                                 (let* ((_in157180_ _hd157151157175_)
                                        (_rest157182_ _tl157152157177_))
                                   (declare (not safe))
                                   (_K157150157172_ _rest157182_ _in157180_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157148157162_))))))))
                  (_find-deps157075_
                   (lambda (_rest157082_ _deps157083_)
                     (let* ((_rest157084157092_ _rest157082_)
                            (_else157086157100_ (lambda () _deps157083_))
                            (_K157088157124_
                             (lambda (_rest157103_ _hd157104_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157104_
                                      'gx#module-context::t))
                                   (let ((_id157106_
                                          (##structure-ref
                                           _hd157104_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157107_
                                          (##structure-ref
                                           _hd157104_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157073_ _id157106_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157075_
                                            _rest157103_
                                            _deps157083_))
                                         (let ((_$e157109_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157104_))))
                                           (if _$e157109_
                                               ((lambda (_pre157112_)
                                                  (let ((_xdeps157114_
                                                         (let ((__tmp157871
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157112_ _imports157107_))))
                   (declare (not safe))
                   (_find-deps157075_ __tmp157871 _deps157083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157073_
                                                       _id157106_
                                                       _hd157104_))
                                                    (let ((__tmp157872
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157114_))))
              (declare (not safe))
              (_find-deps157075_ _rest157103_ __tmp157872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157109_)
                                               (let ((_xdeps157116_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157075_
                                                         _imports157107_
                                                         _deps157083_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157073_
                                                    _id157106_
                                                    _hd157104_))
                                                 (let ((__tmp157870
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157104_
                                                                _xdeps157116_))))
                                                   (declare (not safe))
                                                   (_find-deps157075_
                                                    _rest157103_
                                                    __tmp157870)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157104_
                                          'gx#prelude-context::t))
                                       (let ((_id157118_
                                              (##structure-ref
                                               _hd157104_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157073_
                                                _id157118_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157075_
                                                _rest157103_
                                                _deps157083_))
                                             (let ((_xdeps157120_
                                                    (let ((__tmp157868
                                                           (##structure-ref
                                                            _hd157104_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157075_
                                                       __tmp157868
                                                       _deps157083_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157073_
                                                      _id157118_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157075_
                                                      _rest157103_
                                                      _xdeps157120_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157073_
                                                        _id157118_
                                                        _hd157104_))
                                                     (let ((__tmp157869
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157120_))))
               (declare (not safe))
               (_find-deps157075_ _rest157103_ __tmp157869)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157104_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157867
                                                      (##direct-structure-ref
                                                       _hd157104_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157867))
                                               (let ((__tmp157865
                                                      (let ((__tmp157866
                                                             (##direct-structure-ref
                                                              _hd157104_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157866
                                                              _rest157103_))))
                                                 (declare (not safe))
                                                 (_find-deps157075_
                                                  __tmp157865
                                                  _deps157083_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157075_
                                                  _rest157103_
                                                  _deps157083_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157104_
                                                  'gx#module-export::t))
                                               (let ((__tmp157863
                                                      (let ((__tmp157864
                                                             (##direct-structure-ref
                                                              _hd157104_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157864
                                                              _rest157103_))))
                                                 (declare (not safe))
                                                 (_find-deps157075_
                                                  __tmp157863
                                                  _deps157083_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157104_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157862
                                                              (##direct-structure-ref
                                                               _hd157104_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157862))
                                                       (let ((__tmp157860
                                                              (let ((__tmp157861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157104_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157861 _rest157103_))))
                 (declare (not safe))
                 (_find-deps157075_ __tmp157860 _deps157083_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157104_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157122_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157074_ _hd157104_ '0)))
                          (__tmp157859
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157103_ _xdeps157122_))))
                     (declare (not safe))
                     (_find-deps157075_ __tmp157859 _deps157083_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157075_ _rest157103_ _deps157083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157104_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157084157092_))
                           (let ((_hd157089157127_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157084157092_)))
                                 (_tl157090157129_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157084157092_))))
                             (let* ((_hd157132_ _hd157089157127_)
                                    (_rest157134_ _tl157090157129_))
                               (declare (not safe))
                               (_K157088157124_ _rest157134_ _hd157132_)))
                           (let ()
                             (declare (not safe))
                             (_else157086157100_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp157873
                                  (let ((_$e157077_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx157071_))))
                                    (if _$e157077_
                                        ((lambda (_pre157080_)
                                           (let ((__tmp157874
                                                  (##structure-ref
                                                   _ctx157071_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre157080_ __tmp157874)))
                                         _$e157077_)
                                        (##structure-ref
                                         _ctx157071_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps157075_ __tmp157873 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157002_)
        (let* ((_context-id157004_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157002_
                       'gx#module-context::t))
                    (##structure-ref _ctx157002_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157002_)))
               (_scm157006_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157004_))
                 '".scm"))
               (_dirs157008_ (gx#current-expander-module-library-path))
               (_dirs157014_
                (let ((_user-libpath157010_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157010_
                      (let ((_user-libpath157012_
                             (path-expand '"lib" _user-libpath157010_)))
                        (if (member _user-libpath157012_ _dirs157008_)
                            _dirs157008_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157012_ _dirs157008_))))
                      _dirs157008_)))
               (_dirs157023_
                (let ((_$e157016_ (gxc#current-compile-output-dir)))
                  (if _$e157016_
                      ((lambda (_g157018157020_)
                         (let ()
                           (declare (not safe))
                           (cons _g157018157020_ _dirs157014_)))
                       _$e157016_)
                      _dirs157014_)))
               (_dirs157029_
                (map (lambda (_g157024157026_)
                       (path-expand '"static" _g157024157026_))
                     _dirs157023_)))
          (let _lp157032_ ((_rest157034_ _dirs157029_))
            (let* ((_rest157035157043_ _rest157034_)
                   (_else157037157051_
                    (lambda ()
                      (let ((__tmp157875
                             (##structure-ref
                              _ctx157002_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157875
                         _scm157006_))))
                   (_K157039157059_
                    (lambda (_rest157054_ _dir157055_)
                      (let ((_path157057_
                             (path-expand _scm157006_ _dir157055_)))
                        (if (file-exists? _path157057_)
                            _path157057_
                            (let ()
                              (declare (not safe))
                              (_lp157032_ _rest157054_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157035157043_))
                  (let ((_hd157040157062_
                         (let ()
                           (declare (not safe))
                           (##car _rest157035157043_)))
                        (_tl157041157064_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157035157043_))))
                    (let* ((_dir157067_ _hd157040157062_)
                           (_rest157069_ _tl157041157064_))
                      (declare (not safe))
                      (_K157039157059_ _rest157069_ _dir157067_)))
                  (let () (declare (not safe)) (_else157037157051_))))))))
    (define gxc#file-empty?
      (lambda (_path157000_)
        (let ((__tmp157876 (file-info-size (file-info _path157000_ '#t))))
          (declare (not safe))
          (zero? __tmp157876))))
    (define gxc#compile-top-module
      (lambda (_ctx156989_)
        (let ((__tmp157880
               (lambda ()
                 (let ((__tmp157881
                        (##structure-ref
                         _ctx156989_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157881))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157882
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156989_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157882))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156989_))
                 (if (let ((__tmp157885
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156989_))))
                       (declare (not safe))
                       (null? __tmp157885))
                     (let* ((_thr1156994_
                             (let ((__tmp157883
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156989_)))))
                               (declare (not safe))
                               (spawn __tmp157883)))
                            (_thr2156997_
                             (let ((__tmp157884
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156989_)))))
                               (declare (not safe))
                               (spawn __tmp157884))))
                       (let () (declare (not safe)) (gxc#join! _thr1156994_))
                       (let () (declare (not safe)) (gxc#join! _thr2156997_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156989_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156989_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156989_))
                     '#!void)))
              (__tmp157879
               (let ((__obj157687
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157687)
                 __obj157687))
              (__tmp157878 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157877 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157880
           gx#current-expander-context
           _ctx156989_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157879
           gxc#current-compile-runtime-sections
           __tmp157878
           gxc#current-compile-runtime-names
           __tmp157877))))
    (define gxc#collect-bindings
      (lambda (_ctx156987_)
        (let ((__tmp157886
               (##structure-ref _ctx156987_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157886))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156933_)
        (letrec ((_compile1156935_
                  (lambda (_ctx156976_)
                    (let* ((_code156978_
                            (##structure-ref
                             _ctx156976_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156982_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156978_))
                                (let ((_idstr156980_
                                       (let ((__tmp157887
                                              (##structure-ref
                                               _ctx156976_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157887))))
                                  (string-append _idstr156980_ '"__0"))
                                '#f)))
                      (if _rt156982_
                          (begin
                            (let ((__tmp157888
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157888 _ctx156976_ _rt156982_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156937_
                               _ctx156976_
                               _code156978_)))
                          (let ((_path156985_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156976_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156985_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156938_
                         _ctx156976_
                         _code156978_
                         _rt156982_)))))
                 (_context-timestamp156936_
                  (lambda (_ctx156974_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156974_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156937_
                  (lambda (_ctx156956_ _code156957_)
                    (let* ((_lifts156959_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156962_
                            (let ((__tmp157891
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156957_))))
                                  (__tmp157890
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157889
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157891
                               gx#current-expander-context
                               _ctx156956_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156959_
                               gxc#current-compile-marks
                               __tmp157890
                               gxc#current-compile-identifiers
                               __tmp157889)))
                           (_runtime-code156964_
                            (if (let ((__tmp157895 (unbox _lifts156959_)))
                                  (declare (not safe))
                                  (null? __tmp157895))
                                _runtime-code156962_
                                (let ((__tmp157892
                                       (let ((__tmp157894
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156962_
                                                      '())))
                                             (__tmp157893
                                              (reverse (unbox _lifts156959_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157894
                                                 __tmp157893))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157892))))
                           (_runtime-code156966_
                            (let ((__tmp157896
                                   (let ((__tmp157898
                                          (let ((__tmp157899
                                                 (let ((__tmp157902
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156936_
                                                           _ctx156956_)))
                                                       (__tmp157900
                                                        (let ((__tmp157901
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157901
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157902
                                                         __tmp157900))))
                                            (declare (not safe))
                                            (cons 'define __tmp157899)))
                                         (__tmp157897
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156964_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157898 __tmp157897))))
                              (declare (not safe))
                              (cons 'begin __tmp157896)))
                           (_scm0156968_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156956_
                               '0
                               '".scm"))))
                      (let ((_scms156971_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156956_))))
                        (let ((__tmp157903
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156968_
                                    _runtime-code156966_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157903
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156971_)
                            (delete-file _scms156971_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156968_
                           '" => "
                           _scms156971_))
                        (copy-file _scm0156968_ _scms156971_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156968_))))))
                 (_generate-loader-code156938_
                  (lambda (_ctx156945_ _code156946_ _rt156947_)
                    (let* ((_loader-code156950_
                            (let ((__tmp157904
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156946_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157904
                               gx#current-expander-context
                               _ctx156945_)))
                           (_loader-code156952_
                            (if _rt156947_
                                (let ((__tmp157905
                                       (let ((__tmp157906
                                              (let ((__tmp157907
                                                     (let ((__tmp157908
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157907 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156950_
                                               __tmp157906))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157905))
                                _loader-code156950_)))
                      (let ((__tmp157909
                             (lambda ()
                               (let ((__tmp157910
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156945_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157910
                                  _loader-code156952_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157909
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156940_
                 (let ((__tmp157911
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156933_))))
                   (declare (not safe))
                   (cons _ctx156933_ __tmp157911))))
            (for-each
             (lambda (_ctx156942_)
               (let ((__tmp157912
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156935_ _ctx156942_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157912
                  gxc#current-compile-decls
                  '())))
             _all-modules156940_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156830_)
        (letrec ((_compile-ssi156832_
                  (lambda (_code156903_)
                    (let* ((_path156905_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156830_
                               '#f
                               '".ssi")))
                           (_prelude156916_
                            (let* ((_super156907_
                                    (##structure-ref
                                     _ctx156830_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156909_
                                    (##structure-ref
                                     _super156907_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156909_
                                  ((lambda (_g156911156913_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156911156913_)))
                                   _$e156909_)
                                  ':<root>)))
                           (_ns156918_
                            (##structure-ref
                             _ctx156830_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156920_
                            (symbol->string
                             (##structure-ref
                              _ctx156830_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156927_
                            (let ((_$e156922_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156920_ '#\/))))
                              (if _$e156922_
                                  ((lambda (_x156925_)
                                     (string->symbol
                                      (substring _idstr156920_ '0 _x156925_)))
                                   _$e156922_)
                                  '#f)))
                           (_rt156929_
                            (let ((__tmp157913
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157913 _ctx156830_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156905_))
                      (let ((__tmp157914
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156916_))
                               (if _pkg156927_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156927_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156918_))
                               (newline)
                               (pretty-print _code156903_)
                               (if _rt156929_
                                   (pretty-print
                                    (let ((__tmp157915
                                           (let ((__tmp157919
                                                  (let ((__tmp157920
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157920)))
                                                 (__tmp157916
                                                  (let ((__tmp157917
                                                         (let ((__tmp157918
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156929_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157917 '()))))
                                             (declare (not safe))
                                             (cons __tmp157919 __tmp157916))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157915)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156905_
                         __tmp157914)))))
                 (_compile-phi156833_
                  (lambda (_part156843_)
                    (let* ((_part156844156857_ _part156843_)
                           (_E156846156861_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156844156857_))))
                           (_K156847156872_
                            (lambda (_code156864_
                                     _n156865_
                                     _phi156866_
                                     _phi-ctx156867_)
                              (let* ((_code156870_
                                      (let ((__tmp157921
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156864_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157921
                                         gx#current-expander-context
                                         _phi-ctx156867_
                                         gx#current-expander-phi
                                         _phi156866_)))
                                     (__tmp157922
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156830_
                                         _n156865_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157922
                                 _code156870_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156844156857_))
                          (let ((_hd156848156875_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156844156857_)))
                                (_tl156849156877_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156844156857_))))
                            (let ((_phi-ctx156880_ _hd156848156875_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156849156877_))
                                  (let ((_hd156850156882_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156849156877_)))
                                        (_tl156851156884_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156849156877_))))
                                    (let ((_phi156887_ _hd156850156882_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156851156884_))
                                          (let ((_hd156852156889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156851156884_)))
                                                (_tl156853156891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156851156884_))))
                                            (let ((_n156894_ _hd156852156889_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156853156891_))
                                                  (let ((_hd156854156896_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156853156891_)))
                                                        (_tl156855156898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156853156891_))))
                                                    (let ((_code156901_
                                                           _hd156854156896_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156855156898_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156847156872_
                                                             _code156901_
                                                             _n156894_
                                                             _phi156887_
                                                             _phi-ctx156880_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156846156861_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156846156861_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156846156861_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156846156861_)))))
                          (let () (declare (not safe)) (_E156846156861_)))))))
          (let ((_g157923_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156830_))))
            (begin
              (let ((_g157924_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157923_)
                           (##vector-length _g157923_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157924_ 2)))
                    (error "Context expects 2 values" _g157924_)))
              (let ((_ssi-code156835_
                     (let () (declare (not safe)) (##vector-ref _g157923_ 0)))
                    (_phi-code156836_
                     (let () (declare (not safe)) (##vector-ref _g157923_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156832_ _ssi-code156835_))
                  (let ((_threads156841_
                         (map (lambda (_code156838_)
                                (let ((__tmp157925
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156833_
                                            _code156838_)))))
                                  (declare (not safe))
                                  (spawn __tmp157925)))
                              _phi-code156836_)))
                    (for-each gxc#join! _threads156841_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156813_)
        (let* ((_path156815_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156813_ '#f '".ssxi.ss")))
               (_code156817_
                (let ((__tmp157926
                       (##structure-ref
                        _ctx156813_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157926)))
               (_idstr156819_
                (symbol->string
                 (##structure-ref _ctx156813_ '1 gx#expander-context::t '#f)))
               (_pkg156826_
                (let ((_$e156821_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156819_ '#\/))))
                  (if _$e156821_
                      ((lambda (_x156824_)
                         (string->symbol
                          (substring _idstr156819_ '0 _x156824_)))
                       _$e156821_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156815_))
          (let ((__tmp157927
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156826_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156826_))
                       '#!void)
                   (newline)
                   (pretty-print _code156817_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156815_ __tmp157927)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156806_)
        (let* ((_state156808_
                (let ((__obj157688
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157688 _ctx156806_)
                  __obj157688))
               (_ssi-code156810_
                (let ((__tmp157928
                       (##structure-ref
                        _ctx156806_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157928 _state156808_))))
          (values _ssi-code156810_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156808_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156799_)
        (let ((_lifts156801_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157931
                 (lambda ()
                   (let ((_code156804_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156799_))))
                     (if (let ((__tmp157935 (unbox _lifts156801_)))
                           (declare (not safe))
                           (null? __tmp157935))
                         _code156804_
                         (let ((__tmp157932
                                (let ((__tmp157934
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156804_ '())))
                                      (__tmp157933
                                       (reverse (unbox _lifts156801_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157934 __tmp157933))))
                           (declare (not safe))
                           (cons 'begin __tmp157932))))))
                (__tmp157930
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157929
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157931
             gxc#current-compile-lift
             _lifts156801_
             gxc#current-compile-marks
             __tmp157930
             gxc#current-compile-identifiers
             __tmp157929)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156795_)
        (let ((_modules156797_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157936
                 (##structure-ref _ctx156795_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157936 _modules156797_))
          (reverse (unbox _modules156797_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156778_ _code156779_ _phi?156780_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156778_))
        (let ((__tmp157937
               (lambda ()
                 (pretty-print
                  (let ((__tmp157938
                         (let ((__tmp157945
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157939
                                (let ((__tmp157944
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157940
                                       (let ((__tmp157943
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157941
                                              (let ((__tmp157942
                                                     (if _phi?156780_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157942))))
                                         (declare (not safe))
                                         (cons __tmp157943 __tmp157941))))
                                  (declare (not safe))
                                  (cons __tmp157944 __tmp157940))))
                           (declare (not safe))
                           (cons __tmp157945 __tmp157939))))
                    (declare (not safe))
                    (cons 'declare __tmp157938)))
                 (pretty-print _code156779_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156778_ __tmp157937))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156778_ _phi?156780_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156778_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156786_ _code156787_)
        (let ((_phi?156789_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156786_ _code156787_ _phi?156789_))))
    (define gxc#compile-scm-file
      (lambda _g157947_
        (let ((_g157946_ (let () (declare (not safe)) (##length _g157947_))))
          (cond ((let () (declare (not safe)) (##fx= _g157946_ 2))
                 (apply (lambda (_path156786_ _code156787_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156786_
                             _code156787_)))
                        _g157947_))
                ((let () (declare (not safe)) (##fx= _g157946_ 3))
                 (apply (lambda (_path156791_ _code156792_ _phi?156793_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156791_
                             _code156792_
                             _phi?156793_)))
                        _g157947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157947_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156679_)
        (let _lp156681_ ((_rest156683_ (gxc#current-compile-gsc-options))
                         (_opts156684_ '()))
          (let* ((_rest156685156705_ _rest156683_)
                 (_else156689156713_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156679_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157948
                               (let ((__tmp157949 (reverse _opts156684_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157949))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157948))
                        (reverse _opts156684_)))))
            (let ((_K156699156756_
                   (lambda (_rest156754_)
                     (let ()
                       (declare (not safe))
                       (_lp156681_ _rest156754_ _opts156684_))))
                  (_K156694156738_
                   (lambda (_rest156736_)
                     (let ()
                       (declare (not safe))
                       (_lp156681_ _rest156736_ _opts156684_))))
                  (_K156691156720_
                   (lambda (_rest156717_ _opt156718_)
                     (let ((__tmp157950
                            (let ()
                              (declare (not safe))
                              (cons _opt156718_ _opts156684_))))
                       (declare (not safe))
                       (_lp156681_ _rest156717_ __tmp157950)))))
              (if (let () (declare (not safe)) (##pair? _rest156685156705_))
                  (let ((_tl156701156761_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156685156705_)))
                        (_hd156700156759_
                         (let ()
                           (declare (not safe))
                           (##car _rest156685156705_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156700156759_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156701156761_))
                            (let* ((_tl156703156764_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156701156761_)))
                                   (_rest156767_ _tl156703156764_))
                              (declare (not safe))
                              (_K156699156756_ _rest156767_))
                            (let ((_opt156728_ _hd156700156759_)
                                  (_rest156730_ _tl156701156761_))
                              (let ()
                                (declare (not safe))
                                (_K156691156720_ _rest156730_ _opt156728_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156700156759_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156701156761_))
                                (let* ((_tl156698156746_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156701156761_)))
                                       (_rest156749_ _tl156698156746_))
                                  (declare (not safe))
                                  (_K156694156738_ _rest156749_))
                                (let ((_opt156728_ _hd156700156759_)
                                      (_rest156730_ _tl156701156761_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156691156720_
                                     _rest156730_
                                     _opt156728_))))
                            (let ((_opt156728_ _hd156700156759_)
                                  (_rest156730_ _tl156701156761_))
                              (let ()
                                (declare (not safe))
                                (_K156691156720_ _rest156730_ _opt156728_))))))
                  (let () (declare (not safe)) (_else156689156713_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156773_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156773_))))
    (define gxc#gsc-link-options
      (lambda _g157952_
        (let ((_g157951_ (let () (declare (not safe)) (##length _g157952_))))
          (cond ((let () (declare (not safe)) (##fx= _g157951_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157952_))
                ((let () (declare (not safe)) (##fx= _g157951_ 1))
                 (apply (lambda (_phi?156775_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156775_)))
                        _g157952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157952_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156580_)
        (let _lp156582_ ((_rest156584_ (gxc#current-compile-gsc-options))
                         (_opts156585_ '()))
          (let* ((_rest156586156606_ _rest156584_)
                 (_else156590156614_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156580_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157953
                               (let ((__tmp157954 (reverse _opts156585_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157954))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157953))
                        (reverse _opts156585_)))))
            (let ((_K156600156653_
                   (lambda (_rest156650_ _opt156651_)
                     (let ((__tmp157955
                            (let ((__tmp157956
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156585_))))
                              (declare (not safe))
                              (cons _opt156651_ __tmp157956))))
                       (declare (not safe))
                       (_lp156582_ _rest156650_ __tmp157955))))
                  (_K156595156634_
                   (lambda (_rest156632_)
                     (let ()
                       (declare (not safe))
                       (_lp156582_ _rest156632_ _opts156585_))))
                  (_K156592156620_
                   (lambda (_rest156618_)
                     (let ()
                       (declare (not safe))
                       (_lp156582_ _rest156618_ _opts156585_)))))
              (if (let () (declare (not safe)) (##pair? _rest156586156606_))
                  (let ((_tl156602156658_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156586156606_)))
                        (_hd156601156656_
                         (let ()
                           (declare (not safe))
                           (##car _rest156586156606_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156601156656_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156602156658_))
                            (let ((_tl156604156663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156602156658_)))
                                  (_hd156603156661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156602156658_))))
                              (let ((_opt156666_ _hd156603156661_)
                                    (_rest156668_ _tl156604156663_))
                                (let ()
                                  (declare (not safe))
                                  (_K156600156653_ _rest156668_ _opt156666_))))
                            (let ((_rest156626_ _tl156602156658_))
                              (declare (not safe))
                              (_K156592156620_ _rest156626_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156601156656_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156602156658_))
                                (let* ((_tl156599156642_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156602156658_)))
                                       (_rest156645_ _tl156599156642_))
                                  (declare (not safe))
                                  (_K156595156634_ _rest156645_))
                                (let ((_rest156626_ _tl156602156658_))
                                  (declare (not safe))
                                  (_K156592156620_ _rest156626_)))
                            (let ((_rest156626_ _tl156602156658_))
                              (declare (not safe))
                              (_K156592156620_ _rest156626_)))))
                  (let () (declare (not safe)) (_else156590156614_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156674_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156674_))))
    (define gxc#gsc-cc-options
      (lambda _g157958_
        (let ((_g157957_ (let () (declare (not safe)) (##length _g157958_))))
          (cond ((let () (declare (not safe)) (##fx= _g157957_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157958_))
                ((let () (declare (not safe)) (##fx= _g157957_ 1))
                 (apply (lambda (_phi?156676_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156676_)))
                        _g157958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157958_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156575_)
        (let* ((_user-staticdir156577_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157959
                (let ((__tmp157960
                       (string-append
                        '"-I "
                        _staticdir156575_
                        '" -I "
                        _user-staticdir156577_)))
                  (declare (not safe))
                  (cons __tmp157960 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157959))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156487_ ((_rest156489_ (gxc#current-compile-gsc-options))
                         (_opts156490_ '()))
          (let* ((_rest156491156511_ _rest156489_)
                 (_else156495156519_ (lambda () _opts156490_)))
            (let ((_K156505156562_
                   (lambda (_rest156560_)
                     (let ()
                       (declare (not safe))
                       (_lp156487_ _rest156560_ _opts156490_))))
                  (_K156500156540_
                   (lambda (_rest156537_ _opt156538_)
                     (let ((__tmp157961
                            (append _opts156490_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt156538_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp156487_ _rest156537_ __tmp157961))))
                  (_K156497156525_
                   (lambda (_rest156523_)
                     (let ()
                       (declare (not safe))
                       (_lp156487_ _rest156523_ _opts156490_)))))
              (if (let () (declare (not safe)) (##pair? _rest156491156511_))
                  (let ((_tl156507156567_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156491156511_)))
                        (_hd156506156565_
                         (let ()
                           (declare (not safe))
                           (##car _rest156491156511_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156506156565_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156507156567_))
                            (let* ((_tl156509156570_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156507156567_)))
                                   (_rest156573_ _tl156509156570_))
                              (declare (not safe))
                              (_K156505156562_ _rest156573_))
                            (let ((_rest156531_ _tl156507156567_))
                              (declare (not safe))
                              (_K156497156525_ _rest156531_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156506156565_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156507156567_))
                                (let ((_tl156504156550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156507156567_)))
                                      (_hd156503156548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156507156567_))))
                                  (let ((_opt156553_ _hd156503156548_)
                                        (_rest156555_ _tl156504156550_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156500156540_
                                       _rest156555_
                                       _opt156553_))))
                                (let ((_rest156531_ _tl156507156567_))
                                  (declare (not safe))
                                  (_K156497156525_ _rest156531_)))
                            (let ((_rest156531_ _tl156507156567_))
                              (declare (not safe))
                              (_K156497156525_ _rest156531_)))))
                  (let () (declare (not safe)) (_else156495156519_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156484_)
        (let ((__tmp157962
               (let () (declare (not safe)) (string-empty? _str156484_))))
          (declare (not safe))
          (not __tmp157962))))
    (define gxc#gsc-compile-file
      (lambda (_path156452_ _phi?156453_)
        (letrec ((_gsc-link-path156455_
                  (lambda (_base-path156476_)
                    (let _lp156478_ ((_n156480_ '1))
                      (let ((_path156482_
                             (string-append
                              _base-path156476_
                              '".o"
                              (number->string _n156480_))))
                        (if (file-exists? _path156482_)
                            (let ((__tmp157963
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156480_ '1))))
                              (declare (not safe))
                              (_lp156478_ __tmp157963))
                            _path156482_))))))
          (let* ((_base-path156457_ (path-strip-extension _path156452_))
                 (_path-c156459_ (string-append _base-path156457_ '".c"))
                 (_path-o156461_ (string-append _base-path156457_ '".o"))
                 (_link-path156463_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156455_ _base-path156457_)))
                 (_link-path-c156465_ (string-append _link-path156463_ '".c"))
                 (_link-path-o156467_ (string-append _link-path156463_ '".o"))
                 (_gsc-link-opts156469_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156453_)))
                 (_gsc-cc-opts156471_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156453_)))
                 (_gcc-ld-opts156473_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157970 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157964
                   (let ((__tmp157965
                          (let ((__tmp157966
                                 (let ((__tmp157967
                                        (let ((__tmp157968
                                               (let ((__tmp157969
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156452_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157969
                                                         _gsc-link-opts156469_))))
                                          (declare (not safe))
                                          (cons _link-path-c156465_
                                                __tmp157968))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157967))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157966))))
                     (declare (not safe))
                     (cons '"-link" __tmp157965))))
              (declare (not safe))
              (gxc#invoke __tmp157970 __tmp157964 'stdout-redirection: '#t))
            (let ((__tmp157977 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157971
                   (let ((__tmp157972
                          (let ((__tmp157973
                                 (let ((__tmp157974
                                        (let ((__tmp157975
                                               (let ((__tmp157976
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156465_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156459_
                                                       __tmp157976))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157975
                                                  _gsc-cc-opts156471_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157974))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157973))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157972))))
              (declare (not safe))
              (gxc#invoke __tmp157977 __tmp157971 'stdout-redirection: '#t))
            (let ((__tmp157983 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157978
                   (let ((__tmp157979
                          (let ((__tmp157980
                                 (let ((__tmp157981
                                        (let ((__tmp157982
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156467_
                                                       _gcc-ld-opts156473_))))
                                          (declare (not safe))
                                          (cons _path-o156461_ __tmp157982))))
                                   (declare (not safe))
                                   (cons _link-path156463_ __tmp157981))))
                            (declare (not safe))
                            (cons '"-o" __tmp157980))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157979))))
              (declare (not safe))
              (gxc#invoke __tmp157983 __tmp157978))
            (for-each
             delete-file
             (let ((__tmp157984
                    (let ((__tmp157985
                           (let ((__tmp157986
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156467_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156465_ __tmp157986))))
                      (declare (not safe))
                      (cons _path-o156461_ __tmp157985))))
               (declare (not safe))
               (cons _path-c156459_ __tmp157984)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156423_ _n156424_ _ext156425_)
        (letrec ((_module-relative-path156427_
                  (lambda (_ctx156450_)
                    (path-strip-directory
                     (let ((__tmp157987
                            (##structure-ref
                             _ctx156450_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157987)))))
                 (_module-source-directory156428_
                  (lambda (_ctx156446_)
                    (path-directory
                     (let ((_mpath156448_
                            (##structure-ref
                             _ctx156446_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156448_))
                           _mpath156448_
                           (last _mpath156448_))))))
                 (_section-string156429_
                  (lambda (_n156444_)
                    (if (let () (declare (not safe)) (number? _n156444_))
                        (number->string _n156444_)
                        (if (let () (declare (not safe)) (symbol? _n156444_))
                            (symbol->string _n156444_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156444_))
                                _n156444_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156444_)))))))
                 (_file-name156430_
                  (lambda (_path156442_)
                    (if _n156424_
                        (string-append
                         _path156442_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156429_ _n156424_))
                         _ext156425_)
                        (string-append _path156442_ _ext156425_))))
                 (_file-path156431_
                  (lambda ()
                    (let ((_$e156437_ (gxc#current-compile-output-dir)))
                      (if _$e156437_
                          ((lambda (_outdir156440_)
                             (path-expand
                              (let ((__tmp157989
                                     (let ((__tmp157990
                                            (##structure-ref
                                             _ctx156423_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157990))))
                                (declare (not safe))
                                (_file-name156430_ __tmp157989))
                              _outdir156440_))
                           _$e156437_)
                          (path-expand
                           (let ((__tmp157988
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156427_
                                     _ctx156423_))))
                             (declare (not safe))
                             (_file-name156430_ __tmp157988))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156428_
                              _ctx156423_))))))))
          (let ((_path156433_
                 (let () (declare (not safe)) (_file-path156431_))))
            (let ((__tmp157991
                   (lambda ()
                     (let ((__tmp157992 (path-directory _path156433_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157992)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157991))
            _path156433_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156405_)
        (letrec ((_file-name156407_
                  (lambda (_id156421_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156421_))
                     '".scm")))
                 (_file-path156408_
                  (lambda ()
                    (let* ((_file156414_
                            (let ((__tmp157993
                                   (##structure-ref
                                    _ctx156405_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156407_ __tmp157993)))
                           (_$e156416_ (gxc#current-compile-output-dir)))
                      (if _$e156416_
                          ((lambda (_outdir156419_)
                             (path-expand
                              _file156414_
                              (path-expand '"static" _outdir156419_)))
                           _$e156416_)
                          (path-expand _file156414_ '"static"))))))
          (let ((_path156410_
                 (let () (declare (not safe)) (_file-path156408_))))
            (let ((__tmp157994
                   (lambda ()
                     (let ((__tmp157995 (path-directory _path156410_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157995)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157994))
            _path156410_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156399_ _opts156400_)
        (let ((_$e156402_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156400_))))
          (if _$e156402_
              (values _$e156402_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156399_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156392_)
        (if (let () (declare (not safe)) (string? _idstr156392_))
            (let* ((_str156394_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156392_)))
                   (_strs156396_
                    (let ()
                      (declare (not safe))
                      (string-split _str156394_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156396_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156392_))
                (let ((__tmp157996 (symbol->string _idstr156392_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157996))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156392_))))))
    (define gxc#invoke__%
      (lambda (_g157997_
               _stdout-redirection156353156357_
               _stderr-redirection156354156359_
               _program156361_
               _args156362_)
        (let* ((_stdout-redirection156364_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156353156357_ absent-value))
                    '#f
                    _stdout-redirection156353156357_))
               (_stderr-redirection156366_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156354156359_ absent-value))
                    '#f
                    _stderr-redirection156354156359_)))
          (let ((__tmp157998
                 (let ()
                   (declare (not safe))
                   (cons _program156361_ _args156362_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157998))
          (let* ((_proc156368_
                  (open-process
                   (let ((__tmp157999
                          (let ((__tmp158000
                                 (let ((__tmp158001
                                        (let ((__tmp158002
                                               (let ((__tmp158003
                                                      (let ((__tmp158004
                                                             (let ((__tmp158005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156366_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158005))))
                (declare (not safe))
                (cons _stdout-redirection156364_ __tmp158004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158003))))
                                          (declare (not safe))
                                          (cons _args156362_ __tmp158002))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158001))))
                            (declare (not safe))
                            (cons _program156361_ __tmp158000))))
                     (declare (not safe))
                     (cons 'path: __tmp157999))))
                 (_output156373_
                  (if (or _stdout-redirection156364_
                          _stderr-redirection156366_)
                      (read-line _proc156368_ '#f)
                      '#f)))
            (let ((_status156376_ (process-status _proc156368_)))
              (close-port _proc156368_)
              (if (let () (declare (not safe)) (zero? _status156376_))
                  '#!void
                  (begin
                    (display _output156373_)
                    (let ((__tmp158006
                           (let ()
                             (declare (not safe))
                             (cons _program156361_ _args156362_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158006
                       _status156376_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156352156381_ . _args156383_)
        (apply gxc#invoke__%
               _keys156352156381_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156352156381_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156352156381_
                  'stderr-redirection:
                  absent-value))
               _args156383_)))
    (define gxc#invoke
      (lambda _args156355156389_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156355156389_)))
    (define gxc#join!
      (lambda (_thread156346_)
        (let ((__tmp158008
               (lambda (_exn156348_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156348_))
                     (let ((__tmp158009
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156348_))))
                       (declare (not safe))
                       (raise __tmp158009))
                     (let () (declare (not safe)) (raise _exn156348_)))))
              (__tmp158007 (lambda () (thread-join! _thread156346_))))
          (declare (not safe))
          (with-catch __tmp158008 __tmp158007))))))
