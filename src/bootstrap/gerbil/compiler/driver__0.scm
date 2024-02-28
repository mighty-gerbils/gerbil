(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709111641)
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
      (lambda (_path157598_ _fun157599_)
        (with-output-to-file
         (let ((__tmp157692
                (let ()
                  (declare (not safe))
                  (cons _path157598_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157692))
         _fun157599_)))
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
      (lambda (_gerbil-libdir157593_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157593_)))
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
      (lambda (_dir157591_) (delete-file-or-directory _dir157591_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157565_ _opts157566_)
        (if (let () (declare (not safe)) (string? _srcpath157565_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157565_)))
        (let ((_outdir157568_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157566_)))
              (_invoke-gsc?157569_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157566_)))
              (_gsc-options157570_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157566_)))
              (_keep-scm?157571_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157566_)))
              (_verbosity157572_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157566_)))
              (_optimize157573_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157566_)))
              (_debug157574_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157566_)))
              (_gen-ssxi157575_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157566_))))
          (if _outdir157568_
              (let ((__tmp157693
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157568_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157693))
              '#!void)
          (if _optimize157573_
              (let ((__tmp157694
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157694))
              '#!void)
          (let ((__tmp157698
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157565_))
                   (let ((__tmp157699
                          (let ((__tmp157700
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157565_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157700))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157699))))
                (__tmp157697
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157695
                 (let ((__tmp157696
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157565_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157696))))
            (declare (not safe))
            (call-with-parameters
             __tmp157698
             gxc#current-compile-output-dir
             _outdir157568_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157569_
             gxc#current-compile-gsc-options
             _gsc-options157570_
             gxc#current-compile-keep-scm
             _keep-scm?157571_
             gxc#current-compile-verbose
             _verbosity157572_
             gxc#current-compile-optimize
             _optimize157573_
             gxc#current-compile-debug
             _debug157574_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157575_
             gxc#current-compile-timestamp
             __tmp157697
             gxc#current-compile-context
             __tmp157695
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157584_)
        (let ((_opts157586_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157584_ _opts157586_))))
    (define gxc#compile-module
      (lambda _g157702_
        (let ((_g157701_ (let () (declare (not safe)) (##length _g157702_))))
          (cond ((let () (declare (not safe)) (##fx= _g157701_ 1))
                 (apply (lambda (_srcpath157584_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157584_)))
                        _g157702_))
                ((let () (declare (not safe)) (##fx= _g157701_ 2))
                 (apply (lambda (_srcpath157588_ _opts157589_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157588_
                             _opts157589_)))
                        _g157702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157702_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157541_ _opts157542_)
        (if (let () (declare (not safe)) (string? _srcpath157541_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157541_)))
        (let ((_outdir157544_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157542_)))
              (_invoke-gsc?157545_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157542_)))
              (_gsc-options157546_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157542_)))
              (_keep-scm?157547_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157542_)))
              (_verbosity157548_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157542_)))
              (_debug157549_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157542_))))
          (if _outdir157544_
              (let ((__tmp157703
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157544_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157703))
              '#!void)
          (let ((__tmp157707
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157541_))
                   (let ((__tmp157708
                          (let ((__tmp157709
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157541_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157709))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157708
                      _opts157542_))))
                (__tmp157706
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157704
                 (let ((__tmp157705
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157541_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157705))))
            (declare (not safe))
            (call-with-parameters
             __tmp157707
             gxc#current-compile-output-dir
             _outdir157544_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157545_
             gxc#current-compile-gsc-options
             _gsc-options157546_
             gxc#current-compile-keep-scm
             _keep-scm?157547_
             gxc#current-compile-verbose
             _verbosity157548_
             gxc#current-compile-debug
             _debug157549_
             gxc#current-compile-timestamp
             __tmp157706
             gxc#current-compile-context
             __tmp157704
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157557_)
        (let ((_opts157559_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157557_ _opts157559_))))
    (define gxc#compile-exe
      (lambda _g157711_
        (let ((_g157710_ (let () (declare (not safe)) (##length _g157711_))))
          (cond ((let () (declare (not safe)) (##fx= _g157710_ 1))
                 (apply (lambda (_srcpath157557_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157557_)))
                        _g157711_))
                ((let () (declare (not safe)) (##fx= _g157710_ 2))
                 (apply (lambda (_srcpath157561_ _opts157562_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157561_ _opts157562_)))
                        _g157711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157711_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157537_ _opts157538_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157538_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157537_
               _opts157538_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157537_
               _opts157538_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157420_ _opts157421_)
        (letrec ((_generate-stub157423_
                  (lambda (_builtin-modules157533_)
                    (let ((_mod-main157535_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157420_ 'main))))
                      (write (let ((__tmp157712
                                    (let ((__tmp157713
                                           (let ((__tmp157714
                                                  (let ((__tmp157715
                                                         (let ((__tmp157717
                                                                (let ((__tmp157718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157533_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157718)))
                       (__tmp157716
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157717 __tmp157716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157715))))
                                             (declare (not safe))
                                             (cons __tmp157714 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157713))))
                               (declare (not safe))
                               (cons 'define __tmp157712)))
                      (write (let ((__tmp157719
                                    (let ((__tmp157758
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157720
                                           (let ((__tmp157721
                                                  (let ((__tmp157722
                                                         (let ((__tmp157746
                                                                (let ((__tmp157747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157748
                                      (let ((__tmp157756
                                             (let ((__tmp157757
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157757)))
                                            (__tmp157749
                                             (let ((__tmp157750
                                                    (let ((__tmp157751
                                                           (let ((__tmp157752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157753
                                 (let ((__tmp157754
                                        (let ((__tmp157755
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157755 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157754))))
                            (declare (not safe))
                            (cons __tmp157753 '()))))
                     (declare (not safe))
                     (cons _mod-main157535_ __tmp157752))))
              (declare (not safe))
              (cons 'apply __tmp157751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157750 '()))))
                                        (declare (not safe))
                                        (cons __tmp157756 __tmp157749))))
                                 (declare (not safe))
                                 (cons '() __tmp157748))))
                          (declare (not safe))
                          (cons 'lambda __tmp157747)))
                       (__tmp157723
                        (let ((__tmp157724
                               (let ((__tmp157725
                                      (let ((__tmp157726
                                             (let ((__tmp157737
                                                    (let ((__tmp157738
                                                           (let ((__tmp157739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157740
                                 (let ((__tmp157741
                                        (let ((__tmp157742
                                               (let ((__tmp157743
                                                      (let ((__tmp157744
                                                             (let ((__tmp157745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157745 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157743 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157742))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157741))))
                            (declare (not safe))
                            (cons __tmp157740 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157739))))
              (declare (not safe))
              (cons 'with-catch __tmp157738)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157727
                                                    (let ((__tmp157728
                                                           (let ((__tmp157729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157730
                                 (let ((__tmp157731
                                        (let ((__tmp157732
                                               (let ((__tmp157733
                                                      (let ((__tmp157734
                                                             (let ((__tmp157735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157736
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157736 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157735))))
                (declare (not safe))
                (cons __tmp157734 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157733))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157732))))
                                   (declare (not safe))
                                   (cons __tmp157731 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157730))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157729))))
              (declare (not safe))
              (cons __tmp157728 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157737
                                                     __tmp157727))))
                                        (declare (not safe))
                                        (cons '() __tmp157726))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157725))))
                          (declare (not safe))
                          (cons __tmp157724 '()))))
                   (declare (not safe))
                   (cons __tmp157746 __tmp157723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157722))))
                                             (declare (not safe))
                                             (cons __tmp157721 '()))))
                                      (declare (not safe))
                                      (cons __tmp157758 __tmp157720))))
                               (declare (not safe))
                               (cons 'define __tmp157719)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157424_
                  (lambda (_libgerbil157531_)
                    (call-with-input-file
                     (string-append _libgerbil157531_ '".ldd")
                     read)))
                 (_replace-extension157425_
                  (lambda (_path157528_ _ext157529_)
                    (string-append
                     (path-strip-extension _path157528_)
                     _ext157529_)))
                 (_not-exclude-module?157426_
                  (lambda (_ctx157524_)
                    (let ((_id-str157526_
                           (symbol->string
                            (##structure-ref
                             _ctx157524_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157760
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157526_))))
                            (declare (not safe))
                            (not __tmp157760))
                          (let ((__tmp157759
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157526_))))
                            (declare (not safe))
                            (not __tmp157759))
                          '#f))))
                 (_not-file-empty?157427_
                  (lambda (_path157522_)
                    (let ((__tmp157761
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157522_))))
                      (declare (not safe))
                      (not __tmp157761))))
                 (_compile-stub157428_
                  (lambda (_output-scm157435_ _output-bin157436_)
                    (let* ((_gerbil-home157438_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157440_
                            (path-expand '"lib" _gerbil-home157438_))
                           (_gerbil-staticdir157442_
                            (path-expand '"static" _gerbil-libdir157440_))
                           (_gxlink157444_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157440_))
                           (_tmp157446_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157450_
                            (lambda (_f157448_)
                              (path-expand
                               (path-strip-directory _f157448_)
                               _tmp157446_)))
                           (_deps157452_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157420_)))
                           (_deps157454_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157426_
                                      _deps157452_)))
                           (_src-deps-scm157456_
                            (map gxc#find-static-module-file _deps157454_))
                           (_src-deps-scm157458_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157427_
                                      _src-deps-scm157456_)))
                           (_src-deps-scm157460_
                            (map path-expand _src-deps-scm157458_))
                           (_deps-scm157462_
                            (map _tmp-path157450_ _src-deps-scm157460_))
                           (_deps-c157468_
                            (map (lambda (_g157463157465_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157425_
                                      _g157463157465_
                                      '".c")))
                                 _deps-scm157462_))
                           (_deps-o157474_
                            (map (lambda (_g157469157471_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157425_
                                      _g157469157471_
                                      '".o")))
                                 _deps-scm157462_))
                           (_src-bin-scm157476_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157420_)))
                           (_src-bin-scm157478_
                            (path-expand _src-bin-scm157476_))
                           (_bin-scm157480_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157450_ _src-bin-scm157478_)))
                           (_bin-c157482_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157425_
                               _bin-scm157480_
                               '".c")))
                           (_bin-o157484_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157425_
                               _bin-scm157480_
                               '".o")))
                           (_output-bin157486_
                            (path-expand _output-bin157436_))
                           (_output-scm157488_
                            (path-expand _output-scm157435_))
                           (_output-c157490_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157425_
                               _output-scm157488_
                               '".c")))
                           (_output-o157492_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157425_
                               _output-scm157488_
                               '".o")))
                           (_output_-c157494_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157425_
                               _output-scm157488_
                               '"_.c")))
                           (_output_-o157496_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157425_
                               _output-scm157488_
                               '"_.o")))
                           (_gsc-link-opts157498_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157500_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157502_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157442_)))
                           (_output-ld-opts157504_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157506_
                            (path-expand '"libgerbil.a" _gerbil-libdir157440_))
                           (_libgerbil.so157508_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157440_))
                           (_libgerbil-ld-opts157510_
                            (if (file-exists? _libgerbil.so157508_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157424_
                                   _libgerbil.so157508_))
                                (if (file-exists? _libgerbil.a157506_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157424_
                                       _libgerbil.a157506_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157506_
                                       _libgerbil.so157508_)))))
                           (_rpath157512_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157440_)))
                           (_builtin-modules157516_
                            (map (lambda (_mod157514_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157514_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157420_ _deps157454_)))))
                      (let ((__tmp157762
                             (lambda ()
                               (let ((__tmp157763
                                      (path-directory _output-bin157486_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157763)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157762))
                      (let ((__tmp157764
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157423_
                                  _builtin-modules157516_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157488_
                         __tmp157764))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157765
                                   (lambda () (create-directory _tmp157446_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157765))
                            (for-each
                             copy-file
                             _src-deps-scm157460_
                             _deps-scm157462_)
                            (copy-file _src-bin-scm157478_ _bin-scm157480_)
                            (let ((__tmp157773
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157766
                                   (let ((__tmp157767
                                          (let ((__tmp157768
                                                 (let ((__tmp157769
                                                        (let ((__tmp157770
                                                               (let ((__tmp157771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157772
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157488_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157480_ __tmp157772))))
                         (declare (not safe))
                         (foldr1 cons __tmp157771 _deps-scm157462_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157770 _gsc-link-opts157498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157444_
                                                         __tmp157769))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157768))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157767))))
                              (declare (not safe))
                              (gxc#invoke __tmp157773 __tmp157766))
                            (let ((__tmp157781
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157774
                                   (let ((__tmp157775
                                          (let ((__tmp157776
                                                 (let ((__tmp157777
                                                        (let ((__tmp157778
                                                               (let ((__tmp157779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157780
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157494_ '()))))
                                (declare (not safe))
                                (cons _output-c157490_ __tmp157780))))
                         (declare (not safe))
                         (cons _bin-c157482_ __tmp157779))))
                  (declare (not safe))
                  (foldr1 cons __tmp157778 _deps-c157468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157777
                                                           _gsc-static-opts157502_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157776
                                                    _gsc-cc-opts157500_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157775))))
                              (declare (not safe))
                              (gxc#invoke __tmp157781 __tmp157774))
                            (let ((__tmp157794
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157782
                                   (let ((__tmp157783
                                          (let ((__tmp157784
                                                 (let ((__tmp157785
                                                        (let ((__tmp157786
                                                               (let ((__tmp157787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157788
                                     (let ((__tmp157789
                                            (let ((__tmp157790
                                                   (let ((__tmp157791
                                                          (let ((__tmp157792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157793
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157510_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157793))))
                    (declare (not safe))
                    (cons _gerbil-libdir157440_ __tmp157792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157791))))
                                              (declare (not safe))
                                              (cons _rpath157512_
                                                    __tmp157790))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157789
                                               _output-ld-opts157504_))))
                                (declare (not safe))
                                (cons _output_-o157496_ __tmp157788))))
                         (declare (not safe))
                         (cons _output-o157492_ __tmp157787))))
                  (declare (not safe))
                  (cons _bin-o157484_ __tmp157786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157785
                                                           _deps-o157474_))))
                                            (declare (not safe))
                                            (cons _output-bin157486_
                                                  __tmp157784))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157783))))
                              (declare (not safe))
                              (gxc#invoke __tmp157794 __tmp157782))
                            (for-each
                             delete-file
                             (let ((__tmp157795
                                    (let ((__tmp157796
                                           (let ((__tmp157797
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157496_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157492_
                                                   __tmp157797))))
                                      (declare (not safe))
                                      (cons _output_-c157494_ __tmp157796))))
                               (declare (not safe))
                               (cons _output-c157490_ __tmp157795)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157446_)))
                          '#!void)))))
          (let* ((_output-bin157430_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157420_ _opts157421_)))
                 (_output-scm157432_
                  (string-append _output-bin157430_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157428_ _output-scm157432_ _output-bin157430_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157432_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157245_ _opts157246_)
        (letrec ((_reset-declare157248_
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
                 (_generate-stub157249_
                  (lambda (_deps157411_)
                    (let ((_mod-main157413_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157245_ 'main)))
                          (_reset-decl157414_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157248_)))
                          (_user-decl157415_
                           (let ()
                             (declare (not safe))
                             (_user-declare157250_))))
                      (for-each
                       (lambda (_dep157417_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157414_)
                         (newline)
                         (if _user-decl157415_
                             (begin (write _user-decl157415_) (newline))
                             '#!void)
                         (write (let ((__tmp157798
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157417_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157798)))
                         (newline))
                       _deps157411_)
                      (write (let ((__tmp157799
                                    (let ((__tmp157812
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157800
                                           (let ((__tmp157808
                                                  (let ((__tmp157809
                                                         (let ((__tmp157810
                                                                (let ((__tmp157811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157811))))
                   (declare (not safe))
                   (cons __tmp157810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157809)))
                                                 (__tmp157801
                                                  (let ((__tmp157802
                                                         (let ((__tmp157803
                                                                (let ((__tmp157804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157805
                                      (let ((__tmp157806
                                             (let ((__tmp157807
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157807 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157806))))
                                 (declare (not safe))
                                 (cons __tmp157805 '()))))
                          (declare (not safe))
                          (cons _mod-main157413_ __tmp157804))))
                   (declare (not safe))
                   (cons 'apply __tmp157803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157802 '()))))
                                             (declare (not safe))
                                             (cons __tmp157808 __tmp157801))))
                                      (declare (not safe))
                                      (cons __tmp157812 __tmp157800))))
                               (declare (not safe))
                               (cons 'define __tmp157799)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157250_
                  (lambda ()
                    (let* ((_gsc-opts157316_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157246_)))
                           (_gsc-prelude157318_
                            (if _gsc-opts157316_
                                (member '"-prelude" _gsc-opts157316_)
                                '#f))
                           (_gsc-prelude157320_
                            (if _gsc-prelude157318_
                                (read (open-input-string
                                       (cadr _gsc-prelude157318_)))
                                '#f)))
                      (let _lp157323_ ((_rest157325_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157320_ '())))
                                       (_user-decls157326_ '()))
                        (let* ((_rest157327157335_ _rest157325_)
                               (_else157329157343_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157326_))
                                      '#f
                                      (let ((__tmp157813
                                             (reverse _user-decls157326_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157813)))))
                               (_K157331157399_
                                (lambda (_rest157346_ _expr157347_)
                                  (let* ((_expr157348157360_ _expr157347_)
                                         (_else157351157368_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157323_
                                               _rest157346_
                                               _user-decls157326_)))))
                                    (let ((_K157356157389_
                                           (lambda (_decls157387_)
                                             (let ((__tmp157814
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157326_
                                                              _decls157387_))))
                                               (declare (not safe))
                                               (_lp157323_
                                                _rest157346_
                                                __tmp157814))))
                                          (_K157353157374_
                                           (lambda (_exprs157372_)
                                             (let ((__tmp157815
                                                    (append _exprs157372_
                                                            _rest157346_)))
                                               (declare (not safe))
                                               (_lp157323_
                                                __tmp157815
                                                _user-decls157326_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157348157360_))
                                          (let ((_tl157358157394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157348157360_)))
                                                (_hd157357157392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157348157360_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157357157392_
                                                         'declare))
                                                (let ((_decls157397_
                                                       _tl157358157394_))
                                                  (declare (not safe))
                                                  (_K157356157389_
                                                   _decls157397_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157357157392_
                                                             'begin))
                                                    (let ((_exprs157382_
                                                           _tl157358157394_))
                                                      (declare (not safe))
                                                      (_K157353157374_
                                                       _exprs157382_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157351157368_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157351157368_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157327157335_))
                              (let ((_hd157332157402_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157327157335_)))
                                    (_tl157333157404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157327157335_))))
                                (let* ((_expr157407_ _hd157332157402_)
                                       (_rest157409_ _tl157333157404_))
                                  (declare (not safe))
                                  (_K157331157399_ _rest157409_ _expr157407_)))
                              (let ()
                                (declare (not safe))
                                (_else157329157343_))))))))
                 (_compile-stub157251_
                  (lambda (_output-scm157258_ _output-bin157259_)
                    (let* ((_gerbil-home157261_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157263_
                            (path-expand '"lib" _gerbil-home157261_))
                           (_runtime157265_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157267_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157261_))
                           (_include-gambit-sharp157269_
                            (string-append
                             '"(include \""
                             _gambit-sharp157267_
                             '"\")"))
                           (_bin-scm157271_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157245_)))
                           (_deps157273_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157245_)))
                           (_deps157275_
                            (map gxc#find-static-module-file _deps157273_))
                           (_deps157280_
                            (let ((__tmp157816
                                   (lambda (_$obj157277_)
                                     (let ((__tmp157817
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157277_))))
                                       (declare (not safe))
                                       (not __tmp157817)))))
                              (declare (not safe))
                              (filter __tmp157816 _deps157275_)))
                           (_deps157284_
                            (let ((__tmp157818
                                   (lambda (_f157282_)
                                     (let ((__tmp157819
                                            (member _f157282_
                                                    _runtime157265_)))
                                       (declare (not safe))
                                       (not __tmp157819)))))
                              (declare (not safe))
                              (filter __tmp157818 _deps157280_)))
                           (_output-base157286_
                            (string-append
                             (path-strip-extension _output-scm157258_)))
                           (_output-c157288_
                            (string-append _output-base157286_ '".c"))
                           (_output-o157290_
                            (string-append _output-base157286_ '".o"))
                           (_output-c_157292_
                            (string-append _output-base157286_ '"_.c"))
                           (_output-o_157294_
                            (string-append _output-base157286_ '"_.o"))
                           (_gsc-link-opts157296_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157298_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157300_
                            (let ((__tmp157820
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157263_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157820)))
                           (_output-ld-opts157302_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157304_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157822
                                       (let ((__tmp157823
                                              (let ((__tmp157824
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157269_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157824))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157823))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157822))
                                (let ((__tmp157821
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157269_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157821))))
                           (_gsc-link-opts157306_
                            (append _gsc-link-opts157296_
                                    _gsc-gx-macros157304_))
                           (_rpath157308_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157263_)))
                           (_default-ld-options157310_
                            (let ((__tmp157825
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157825))))
                      (let ((__tmp157826
                             (lambda ()
                               (let ((__tmp157827
                                      (path-directory _output-bin157259_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157827)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157826))
                      (let ((__tmp157828
                             (lambda ()
                               (let ((__tmp157829
                                      (let ((__tmp157830
                                             (let ((__tmp157831
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157271_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157831
                                                       _deps157284_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157830
                                                _runtime157265_))))
                                 (declare (not safe))
                                 (_generate-stub157249_ __tmp157829)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157258_
                         __tmp157828))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157837
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157832
                                   (let ((__tmp157833
                                          (let ((__tmp157834
                                                 (let ((__tmp157835
                                                        (let ((__tmp157836
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157258_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157836 _gsc-link-opts157306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157292_
                                                         __tmp157835))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157834))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157833))))
                              (declare (not safe))
                              (gxc#invoke __tmp157837 __tmp157832))
                            (let ((__tmp157843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157838
                                   (let ((__tmp157839
                                          (let ((__tmp157840
                                                 (let ((__tmp157841
                                                        (let ((__tmp157842
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157292_ '()))))
                  (declare (not safe))
                  (cons _output-c157288_ __tmp157842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157841
                                                           _gsc-static-opts157300_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157840
                                                    _gsc-cc-opts157298_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157839))))
                              (declare (not safe))
                              (gxc#invoke __tmp157843 __tmp157838))
                            (let ((__tmp157853
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157844
                                   (let ((__tmp157845
                                          (let ((__tmp157846
                                                 (let ((__tmp157847
                                                        (let ((__tmp157848
                                                               (let ((__tmp157849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157850
                                     (let ((__tmp157851
                                            (let ((__tmp157852
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157310_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157263_
                                                    __tmp157852))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157851))))
                                (declare (not safe))
                                (cons _rpath157308_ __tmp157850))))
                         (declare (not safe))
                         (foldr1 cons __tmp157849 _output-ld-opts157302_))))
                  (declare (not safe))
                  (cons _output-o_157294_ __tmp157848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157290_
                                                         __tmp157847))))
                                            (declare (not safe))
                                            (cons _output-bin157259_
                                                  __tmp157846))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157845))))
                              (declare (not safe))
                              (gxc#invoke __tmp157853 __tmp157844)))
                          '#!void)))))
          (let* ((_output-bin157253_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157245_ _opts157246_)))
                 (_output-scm157255_
                  (string-append _output-bin157253_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157251_ _output-scm157255_ _output-bin157253_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157255_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157195_ _id157196_)
        (let ((_$e157242_
               (let ((__tmp157855
                      (lambda (_e157197157199_)
                        (let* ((_g157201157211_ _e157197157199_)
                               (_else157203157219_ (lambda () '#f))
                               (_K157205157223_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157201157211_
                                 'gx#module-export::t))
                              (let* ((_e157206157226_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157201157211_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157207157229_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157201157211_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157208157232_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157201157211_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157208157232_ '0))
                                    (let ((_e157209157235_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157201157211_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157237157239_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157237157239_
                                                    _id157196_)))
                                           _e157209157235_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157205157223_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157203157219_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157203157219_))))
                              (let ()
                                (declare (not safe))
                                (_else157203157219_))))))
                     (__tmp157854
                      (##structure-ref
                       _ctx157195_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157855 __tmp157854))))
          (if _$e157242_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157242_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157187_ _id157188_)
        (let ((_$e157190_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157187_ _id157188_))))
          (if _$e157190_
              ((lambda (_bind157193_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157193_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157188_)))
                 (##structure-ref _bind157193_ '1 gx#binding::t '#f))
               _$e157190_)
              (let ((__tmp157856
                     (##structure-ref
                      _ctx157187_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157856
                 _id157188_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157074_)
        (letrec* ((_ht157076_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157077_
                   (lambda (_in157139_ _phi157140_)
                     (let ((_iphi157142_
                            (fx+ _phi157140_
                                 (##direct-structure-ref
                                  _in157139_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157143_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157139_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157145_ ((_rest157147_ _imports157143_)
                                        (_r157148_ '()))
                         (let* ((_rest157149157157_ _rest157147_)
                                (_else157151157165_ (lambda () _r157148_))
                                (_K157153157175_
                                 (lambda (_rest157168_ _in157169_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157169_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157142_))
                                           (let ((__tmp157863
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157169_
                                                          _r157148_))))
                                             (declare (not safe))
                                             (_lp157145_
                                              _rest157168_
                                              __tmp157863))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157145_
                                              _rest157168_
                                              _r157148_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157169_
                                              'gx#module-import::t))
                                           (let ((_iphi157171_
                                                  (fx+ _phi157140_
                                                       (##direct-structure-ref
                                                        _in157169_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157171_))
                                                 (let ((__tmp157861
                                                        (let ((__tmp157862
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157169_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157862 _r157148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157145_
                                                    _rest157168_
                                                    __tmp157861))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157145_
                                                    _rest157168_
                                                    _r157148_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157169_
                                                  'gx#import-set::t))
                                               (let ((_xphi157173_
                                                      (fx+ _iphi157142_
                                                           (##direct-structure-ref
                                                            _in157169_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157173_))
                                                     (let ((__tmp157859
                                                            (let ((__tmp157860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157169_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157860 _r157148_))))
               (declare (not safe))
               (_lp157145_ _rest157168_ __tmp157859))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157173_)
                                                         (let ((__tmp157857
                                                                (let ((__tmp157858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157077_
                                  _in157169_
                                  _iphi157142_))))
                          (declare (not safe))
                          (foldl1 cons _r157148_ __tmp157858))))
                   (declare (not safe))
                   (_lp157145_ _rest157168_ __tmp157857))
                 (let ()
                   (declare (not safe))
                   (_lp157145_ _rest157168_ _r157148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157145_
                                                  _rest157168_
                                                  _r157148_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157149157157_))
                               (let ((_hd157154157178_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157149157157_)))
                                     (_tl157155157180_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157149157157_))))
                                 (let* ((_in157183_ _hd157154157178_)
                                        (_rest157185_ _tl157155157180_))
                                   (declare (not safe))
                                   (_K157153157175_ _rest157185_ _in157183_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157151157165_))))))))
                  (_find-deps157078_
                   (lambda (_rest157085_ _deps157086_)
                     (let* ((_rest157087157095_ _rest157085_)
                            (_else157089157103_ (lambda () _deps157086_))
                            (_K157091157127_
                             (lambda (_rest157106_ _hd157107_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157107_
                                      'gx#module-context::t))
                                   (let ((_id157109_
                                          (##structure-ref
                                           _hd157107_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157110_
                                          (##structure-ref
                                           _hd157107_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157076_ _id157109_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157078_
                                            _rest157106_
                                            _deps157086_))
                                         (let ((_$e157112_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157107_))))
                                           (if _$e157112_
                                               ((lambda (_pre157115_)
                                                  (let ((_xdeps157117_
                                                         (let ((__tmp157876
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157115_ _imports157110_))))
                   (declare (not safe))
                   (_find-deps157078_ __tmp157876 _deps157086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157076_
                                                       _id157109_
                                                       _hd157107_))
                                                    (let ((__tmp157877
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157117_))))
              (declare (not safe))
              (_find-deps157078_ _rest157106_ __tmp157877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157112_)
                                               (let ((_xdeps157119_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157078_
                                                         _imports157110_
                                                         _deps157086_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157076_
                                                    _id157109_
                                                    _hd157107_))
                                                 (let ((__tmp157875
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157107_
                                                                _xdeps157119_))))
                                                   (declare (not safe))
                                                   (_find-deps157078_
                                                    _rest157106_
                                                    __tmp157875)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157107_
                                          'gx#prelude-context::t))
                                       (let ((_id157121_
                                              (##structure-ref
                                               _hd157107_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157076_
                                                _id157121_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157078_
                                                _rest157106_
                                                _deps157086_))
                                             (let ((_xdeps157123_
                                                    (let ((__tmp157873
                                                           (##structure-ref
                                                            _hd157107_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157078_
                                                       __tmp157873
                                                       _deps157086_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157076_
                                                      _id157121_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157078_
                                                      _rest157106_
                                                      _xdeps157123_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157076_
                                                        _id157121_
                                                        _hd157107_))
                                                     (let ((__tmp157874
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157123_))))
               (declare (not safe))
               (_find-deps157078_ _rest157106_ __tmp157874)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157107_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157872
                                                      (##direct-structure-ref
                                                       _hd157107_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157872))
                                               (let ((__tmp157870
                                                      (let ((__tmp157871
                                                             (##direct-structure-ref
                                                              _hd157107_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157871
                                                              _rest157106_))))
                                                 (declare (not safe))
                                                 (_find-deps157078_
                                                  __tmp157870
                                                  _deps157086_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157078_
                                                  _rest157106_
                                                  _deps157086_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157107_
                                                  'gx#module-export::t))
                                               (let ((__tmp157868
                                                      (let ((__tmp157869
                                                             (##direct-structure-ref
                                                              _hd157107_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157869
                                                              _rest157106_))))
                                                 (declare (not safe))
                                                 (_find-deps157078_
                                                  __tmp157868
                                                  _deps157086_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157107_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157867
                                                              (##direct-structure-ref
                                                               _hd157107_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157867))
                                                       (let ((__tmp157865
                                                              (let ((__tmp157866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157107_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157866 _rest157106_))))
                 (declare (not safe))
                 (_find-deps157078_ __tmp157865 _deps157086_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157107_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157125_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157077_ _hd157107_ '0)))
                          (__tmp157864
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157106_ _xdeps157125_))))
                     (declare (not safe))
                     (_find-deps157078_ __tmp157864 _deps157086_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157078_ _rest157106_ _deps157086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157107_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157087157095_))
                           (let ((_hd157092157130_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157087157095_)))
                                 (_tl157093157132_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157087157095_))))
                             (let* ((_hd157135_ _hd157092157130_)
                                    (_rest157137_ _tl157093157132_))
                               (declare (not safe))
                               (_K157091157127_ _rest157137_ _hd157135_)))
                           (let ()
                             (declare (not safe))
                             (_else157089157103_)))))))
          (reverse (let ((__tmp157878
                          (let ((__tmp157879
                                 (let ((_$e157080_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157074_))))
                                   (if _$e157080_
                                       ((lambda (_pre157083_)
                                          (let ((__tmp157880
                                                 (##structure-ref
                                                  _ctx157074_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157083_ __tmp157880)))
                                        _$e157080_)
                                       (##structure-ref
                                        _ctx157074_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157078_ __tmp157879 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157878))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157005_)
        (let* ((_context-id157007_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157005_
                       'gx#module-context::t))
                    (##structure-ref _ctx157005_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157005_)))
               (_scm157009_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157007_))
                 '".scm"))
               (_dirs157011_ (gx#current-expander-module-library-path))
               (_dirs157017_
                (let ((_user-libpath157013_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157013_
                      (let ((_user-libpath157015_
                             (path-expand '"lib" _user-libpath157013_)))
                        (if (member _user-libpath157015_ _dirs157011_)
                            _dirs157011_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157015_ _dirs157011_))))
                      _dirs157011_)))
               (_dirs157026_
                (let ((_$e157019_ (gxc#current-compile-output-dir)))
                  (if _$e157019_
                      ((lambda (_g157021157023_)
                         (let ()
                           (declare (not safe))
                           (cons _g157021157023_ _dirs157017_)))
                       _$e157019_)
                      _dirs157017_)))
               (_dirs157032_
                (map (lambda (_g157027157029_)
                       (path-expand '"static" _g157027157029_))
                     _dirs157026_)))
          (let _lp157035_ ((_rest157037_ _dirs157032_))
            (let* ((_rest157038157046_ _rest157037_)
                   (_else157040157054_
                    (lambda ()
                      (let ((__tmp157881
                             (##structure-ref
                              _ctx157005_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157881
                         _scm157009_))))
                   (_K157042157062_
                    (lambda (_rest157057_ _dir157058_)
                      (let ((_path157060_
                             (path-expand _scm157009_ _dir157058_)))
                        (if (file-exists? _path157060_)
                            _path157060_
                            (let ()
                              (declare (not safe))
                              (_lp157035_ _rest157057_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157038157046_))
                  (let ((_hd157043157065_
                         (let ()
                           (declare (not safe))
                           (##car _rest157038157046_)))
                        (_tl157044157067_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157038157046_))))
                    (let* ((_dir157070_ _hd157043157065_)
                           (_rest157072_ _tl157044157067_))
                      (declare (not safe))
                      (_K157042157062_ _rest157072_ _dir157070_)))
                  (let () (declare (not safe)) (_else157040157054_))))))))
    (define gxc#file-empty?
      (lambda (_path157003_)
        (let ((__tmp157882 (file-info-size (file-info _path157003_ '#t))))
          (declare (not safe))
          (zero? __tmp157882))))
    (define gxc#compile-top-module
      (lambda (_ctx156992_)
        (let ((__tmp157886
               (lambda ()
                 (let ((__tmp157887
                        (##structure-ref
                         _ctx156992_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157887))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157888
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156992_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157888))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156992_))
                 (if (let ((__tmp157891
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156992_))))
                       (declare (not safe))
                       (null? __tmp157891))
                     (let* ((_thr1156997_
                             (let ((__tmp157889
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156992_)))))
                               (declare (not safe))
                               (spawn __tmp157889)))
                            (_thr2157000_
                             (let ((__tmp157890
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156992_)))))
                               (declare (not safe))
                               (spawn __tmp157890))))
                       (let () (declare (not safe)) (gxc#join! _thr1156997_))
                       (let () (declare (not safe)) (gxc#join! _thr2157000_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156992_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156992_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156992_))
                     '#!void)))
              (__tmp157885
               (let ((__obj157690
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157690)
                 __obj157690))
              (__tmp157884 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157883 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157886
           gx#current-expander-context
           _ctx156992_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157885
           gxc#current-compile-runtime-sections
           __tmp157884
           gxc#current-compile-runtime-names
           __tmp157883))))
    (define gxc#collect-bindings
      (lambda (_ctx156990_)
        (let ((__tmp157892
               (##structure-ref _ctx156990_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157892))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156936_)
        (letrec ((_compile1156938_
                  (lambda (_ctx156979_)
                    (let* ((_code156981_
                            (##structure-ref
                             _ctx156979_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156985_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156981_))
                                (let ((_idstr156983_
                                       (let ((__tmp157893
                                              (##structure-ref
                                               _ctx156979_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157893))))
                                  (string-append _idstr156983_ '"__0"))
                                '#f)))
                      (if _rt156985_
                          (begin
                            (let ((__tmp157894
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157894 _ctx156979_ _rt156985_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156940_
                               _ctx156979_
                               _code156981_)))
                          (let ((_path156988_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156979_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156988_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156941_
                         _ctx156979_
                         _code156981_
                         _rt156985_)))))
                 (_context-timestamp156939_
                  (lambda (_ctx156977_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156977_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156940_
                  (lambda (_ctx156959_ _code156960_)
                    (let* ((_lifts156962_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156965_
                            (let ((__tmp157897
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156960_))))
                                  (__tmp157896
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157895
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157897
                               gx#current-expander-context
                               _ctx156959_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156962_
                               gxc#current-compile-marks
                               __tmp157896
                               gxc#current-compile-identifiers
                               __tmp157895)))
                           (_runtime-code156967_
                            (if (let ((__tmp157901 (unbox _lifts156962_)))
                                  (declare (not safe))
                                  (null? __tmp157901))
                                _runtime-code156965_
                                (let ((__tmp157898
                                       (let ((__tmp157900
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156965_
                                                      '())))
                                             (__tmp157899
                                              (reverse (unbox _lifts156962_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157900
                                                 __tmp157899))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157898))))
                           (_runtime-code156969_
                            (let ((__tmp157902
                                   (let ((__tmp157904
                                          (let ((__tmp157905
                                                 (let ((__tmp157908
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156939_
                                                           _ctx156959_)))
                                                       (__tmp157906
                                                        (let ((__tmp157907
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157907
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157908
                                                         __tmp157906))))
                                            (declare (not safe))
                                            (cons 'define __tmp157905)))
                                         (__tmp157903
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156967_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157904 __tmp157903))))
                              (declare (not safe))
                              (cons 'begin __tmp157902)))
                           (_scm0156971_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156959_
                               '0
                               '".scm"))))
                      (let ((_scms156974_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156959_))))
                        (let ((__tmp157909
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156971_
                                    _runtime-code156969_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157909
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156974_)
                            (delete-file _scms156974_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156971_
                           '" => "
                           _scms156974_))
                        (copy-file _scm0156971_ _scms156974_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156971_))))))
                 (_generate-loader-code156941_
                  (lambda (_ctx156948_ _code156949_ _rt156950_)
                    (let* ((_loader-code156953_
                            (let ((__tmp157910
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156949_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157910
                               gx#current-expander-context
                               _ctx156948_)))
                           (_loader-code156955_
                            (if _rt156950_
                                (let ((__tmp157911
                                       (let ((__tmp157912
                                              (let ((__tmp157913
                                                     (let ((__tmp157914
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157913 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156953_
                                               __tmp157912))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157911))
                                _loader-code156953_)))
                      (let ((__tmp157915
                             (lambda ()
                               (let ((__tmp157916
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156948_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157916
                                  _loader-code156955_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157915
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156943_
                 (let ((__tmp157917
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156936_))))
                   (declare (not safe))
                   (cons _ctx156936_ __tmp157917))))
            (for-each
             (lambda (_ctx156945_)
               (let ((__tmp157918
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156938_ _ctx156945_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157918
                  gxc#current-compile-decls
                  '())))
             _all-modules156943_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156833_)
        (letrec ((_compile-ssi156835_
                  (lambda (_code156906_)
                    (let* ((_path156908_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156833_
                               '#f
                               '".ssi")))
                           (_prelude156919_
                            (let* ((_super156910_
                                    (##structure-ref
                                     _ctx156833_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156912_
                                    (##structure-ref
                                     _super156910_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156912_
                                  ((lambda (_g156914156916_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156914156916_)))
                                   _$e156912_)
                                  ':<root>)))
                           (_ns156921_
                            (##structure-ref
                             _ctx156833_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156923_
                            (symbol->string
                             (##structure-ref
                              _ctx156833_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156930_
                            (let ((_$e156925_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156923_ '#\/))))
                              (if _$e156925_
                                  ((lambda (_x156928_)
                                     (string->symbol
                                      (substring _idstr156923_ '0 _x156928_)))
                                   _$e156925_)
                                  '#f)))
                           (_rt156932_
                            (let ((__tmp157919
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157919 _ctx156833_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156908_))
                      (let ((__tmp157920
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156919_))
                               (if _pkg156930_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156930_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156921_))
                               (newline)
                               (pretty-print _code156906_)
                               (if _rt156932_
                                   (pretty-print
                                    (let ((__tmp157921
                                           (let ((__tmp157925
                                                  (let ((__tmp157926
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157926)))
                                                 (__tmp157922
                                                  (let ((__tmp157923
                                                         (let ((__tmp157924
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156932_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157923 '()))))
                                             (declare (not safe))
                                             (cons __tmp157925 __tmp157922))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157921)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156908_
                         __tmp157920)))))
                 (_compile-phi156836_
                  (lambda (_part156846_)
                    (let* ((_part156847156860_ _part156846_)
                           (_E156849156864_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156847156860_))))
                           (_K156850156875_
                            (lambda (_code156867_
                                     _n156868_
                                     _phi156869_
                                     _phi-ctx156870_)
                              (let* ((_code156873_
                                      (let ((__tmp157927
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156867_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157927
                                         gx#current-expander-context
                                         _phi-ctx156870_
                                         gx#current-expander-phi
                                         _phi156869_)))
                                     (__tmp157928
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156833_
                                         _n156868_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157928
                                 _code156873_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156847156860_))
                          (let ((_hd156851156878_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156847156860_)))
                                (_tl156852156880_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156847156860_))))
                            (let ((_phi-ctx156883_ _hd156851156878_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156852156880_))
                                  (let ((_hd156853156885_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156852156880_)))
                                        (_tl156854156887_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156852156880_))))
                                    (let ((_phi156890_ _hd156853156885_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156854156887_))
                                          (let ((_hd156855156892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156854156887_)))
                                                (_tl156856156894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156854156887_))))
                                            (let ((_n156897_ _hd156855156892_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156856156894_))
                                                  (let ((_hd156857156899_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156856156894_)))
                                                        (_tl156858156901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156856156894_))))
                                                    (let ((_code156904_
                                                           _hd156857156899_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156858156901_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156850156875_
                                                             _code156904_
                                                             _n156897_
                                                             _phi156890_
                                                             _phi-ctx156883_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156849156864_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156849156864_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156849156864_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156849156864_)))))
                          (let () (declare (not safe)) (_E156849156864_)))))))
          (let ((_g157929_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156833_))))
            (begin
              (let ((_g157930_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157929_)
                           (##vector-length _g157929_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157930_ 2)))
                    (error "Context expects 2 values" _g157930_)))
              (let ((_ssi-code156838_
                     (let () (declare (not safe)) (##vector-ref _g157929_ 0)))
                    (_phi-code156839_
                     (let () (declare (not safe)) (##vector-ref _g157929_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156835_ _ssi-code156838_))
                  (let ((_threads156844_
                         (map (lambda (_code156841_)
                                (let ((__tmp157931
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156836_
                                            _code156841_)))))
                                  (declare (not safe))
                                  (spawn __tmp157931)))
                              _phi-code156839_)))
                    (for-each gxc#join! _threads156844_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156816_)
        (let* ((_path156818_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156816_ '#f '".ssxi.ss")))
               (_code156820_
                (let ((__tmp157932
                       (##structure-ref
                        _ctx156816_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157932)))
               (_idstr156822_
                (symbol->string
                 (##structure-ref _ctx156816_ '1 gx#expander-context::t '#f)))
               (_pkg156829_
                (let ((_$e156824_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156822_ '#\/))))
                  (if _$e156824_
                      ((lambda (_x156827_)
                         (string->symbol
                          (substring _idstr156822_ '0 _x156827_)))
                       _$e156824_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156818_))
          (let ((__tmp157933
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156829_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156829_))
                       '#!void)
                   (newline)
                   (pretty-print _code156820_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156818_ __tmp157933)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156809_)
        (let* ((_state156811_
                (let ((__obj157691
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157691 _ctx156809_)
                  __obj157691))
               (_ssi-code156813_
                (let ((__tmp157934
                       (##structure-ref
                        _ctx156809_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157934 _state156811_))))
          (values _ssi-code156813_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156811_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156802_)
        (let ((_lifts156804_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157937
                 (lambda ()
                   (let ((_code156807_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156802_))))
                     (if (let ((__tmp157941 (unbox _lifts156804_)))
                           (declare (not safe))
                           (null? __tmp157941))
                         _code156807_
                         (let ((__tmp157938
                                (let ((__tmp157940
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156807_ '())))
                                      (__tmp157939
                                       (reverse (unbox _lifts156804_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157940 __tmp157939))))
                           (declare (not safe))
                           (cons 'begin __tmp157938))))))
                (__tmp157936
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157935
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157937
             gxc#current-compile-lift
             _lifts156804_
             gxc#current-compile-marks
             __tmp157936
             gxc#current-compile-identifiers
             __tmp157935)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156798_)
        (let ((_modules156800_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157942
                 (##structure-ref _ctx156798_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157942 _modules156800_))
          (reverse (unbox _modules156800_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156781_ _code156782_ _phi?156783_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156781_))
        (let ((__tmp157943
               (lambda ()
                 (pretty-print
                  (let ((__tmp157944
                         (let ((__tmp157951
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157945
                                (let ((__tmp157950
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157946
                                       (let ((__tmp157949
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157947
                                              (let ((__tmp157948
                                                     (if _phi?156783_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157948))))
                                         (declare (not safe))
                                         (cons __tmp157949 __tmp157947))))
                                  (declare (not safe))
                                  (cons __tmp157950 __tmp157946))))
                           (declare (not safe))
                           (cons __tmp157951 __tmp157945))))
                    (declare (not safe))
                    (cons 'declare __tmp157944)))
                 (pretty-print _code156782_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156781_ __tmp157943))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156781_ _phi?156783_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156781_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156789_ _code156790_)
        (let ((_phi?156792_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156789_ _code156790_ _phi?156792_))))
    (define gxc#compile-scm-file
      (lambda _g157953_
        (let ((_g157952_ (let () (declare (not safe)) (##length _g157953_))))
          (cond ((let () (declare (not safe)) (##fx= _g157952_ 2))
                 (apply (lambda (_path156789_ _code156790_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156789_
                             _code156790_)))
                        _g157953_))
                ((let () (declare (not safe)) (##fx= _g157952_ 3))
                 (apply (lambda (_path156794_ _code156795_ _phi?156796_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156794_
                             _code156795_
                             _phi?156796_)))
                        _g157953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157953_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156682_)
        (let _lp156684_ ((_rest156686_ (gxc#current-compile-gsc-options))
                         (_opts156687_ '()))
          (let* ((_rest156688156708_ _rest156686_)
                 (_else156692156716_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156682_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157954
                               (let ((__tmp157955 (reverse _opts156687_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157955))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157954))
                        (reverse _opts156687_)))))
            (let ((_K156702156759_
                   (lambda (_rest156757_)
                     (let ()
                       (declare (not safe))
                       (_lp156684_ _rest156757_ _opts156687_))))
                  (_K156697156741_
                   (lambda (_rest156739_)
                     (let ()
                       (declare (not safe))
                       (_lp156684_ _rest156739_ _opts156687_))))
                  (_K156694156723_
                   (lambda (_rest156720_ _opt156721_)
                     (let ((__tmp157956
                            (let ()
                              (declare (not safe))
                              (cons _opt156721_ _opts156687_))))
                       (declare (not safe))
                       (_lp156684_ _rest156720_ __tmp157956)))))
              (if (let () (declare (not safe)) (##pair? _rest156688156708_))
                  (let ((_tl156704156764_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156688156708_)))
                        (_hd156703156762_
                         (let ()
                           (declare (not safe))
                           (##car _rest156688156708_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156703156762_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156704156764_))
                            (let* ((_tl156706156767_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156704156764_)))
                                   (_rest156770_ _tl156706156767_))
                              (declare (not safe))
                              (_K156702156759_ _rest156770_))
                            (let ((_opt156731_ _hd156703156762_)
                                  (_rest156733_ _tl156704156764_))
                              (let ()
                                (declare (not safe))
                                (_K156694156723_ _rest156733_ _opt156731_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156703156762_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156704156764_))
                                (let* ((_tl156701156749_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156704156764_)))
                                       (_rest156752_ _tl156701156749_))
                                  (declare (not safe))
                                  (_K156697156741_ _rest156752_))
                                (let ((_opt156731_ _hd156703156762_)
                                      (_rest156733_ _tl156704156764_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156694156723_
                                     _rest156733_
                                     _opt156731_))))
                            (let ((_opt156731_ _hd156703156762_)
                                  (_rest156733_ _tl156704156764_))
                              (let ()
                                (declare (not safe))
                                (_K156694156723_ _rest156733_ _opt156731_))))))
                  (let () (declare (not safe)) (_else156692156716_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156776_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156776_))))
    (define gxc#gsc-link-options
      (lambda _g157958_
        (let ((_g157957_ (let () (declare (not safe)) (##length _g157958_))))
          (cond ((let () (declare (not safe)) (##fx= _g157957_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157958_))
                ((let () (declare (not safe)) (##fx= _g157957_ 1))
                 (apply (lambda (_phi?156778_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156778_)))
                        _g157958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157958_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156583_)
        (let _lp156585_ ((_rest156587_ (gxc#current-compile-gsc-options))
                         (_opts156588_ '()))
          (let* ((_rest156589156609_ _rest156587_)
                 (_else156593156617_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156583_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157959
                               (let ((__tmp157960 (reverse _opts156588_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157960))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157959))
                        (reverse _opts156588_)))))
            (let ((_K156603156656_
                   (lambda (_rest156653_ _opt156654_)
                     (let ((__tmp157961
                            (let ((__tmp157962
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156588_))))
                              (declare (not safe))
                              (cons _opt156654_ __tmp157962))))
                       (declare (not safe))
                       (_lp156585_ _rest156653_ __tmp157961))))
                  (_K156598156637_
                   (lambda (_rest156635_)
                     (let ()
                       (declare (not safe))
                       (_lp156585_ _rest156635_ _opts156588_))))
                  (_K156595156623_
                   (lambda (_rest156621_)
                     (let ()
                       (declare (not safe))
                       (_lp156585_ _rest156621_ _opts156588_)))))
              (if (let () (declare (not safe)) (##pair? _rest156589156609_))
                  (let ((_tl156605156661_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156589156609_)))
                        (_hd156604156659_
                         (let ()
                           (declare (not safe))
                           (##car _rest156589156609_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156604156659_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156605156661_))
                            (let ((_tl156607156666_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156605156661_)))
                                  (_hd156606156664_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156605156661_))))
                              (let ((_opt156669_ _hd156606156664_)
                                    (_rest156671_ _tl156607156666_))
                                (let ()
                                  (declare (not safe))
                                  (_K156603156656_ _rest156671_ _opt156669_))))
                            (let ((_rest156629_ _tl156605156661_))
                              (declare (not safe))
                              (_K156595156623_ _rest156629_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156604156659_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156605156661_))
                                (let* ((_tl156602156645_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156605156661_)))
                                       (_rest156648_ _tl156602156645_))
                                  (declare (not safe))
                                  (_K156598156637_ _rest156648_))
                                (let ((_rest156629_ _tl156605156661_))
                                  (declare (not safe))
                                  (_K156595156623_ _rest156629_)))
                            (let ((_rest156629_ _tl156605156661_))
                              (declare (not safe))
                              (_K156595156623_ _rest156629_)))))
                  (let () (declare (not safe)) (_else156593156617_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156677_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156677_))))
    (define gxc#gsc-cc-options
      (lambda _g157964_
        (let ((_g157963_ (let () (declare (not safe)) (##length _g157964_))))
          (cond ((let () (declare (not safe)) (##fx= _g157963_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157964_))
                ((let () (declare (not safe)) (##fx= _g157963_ 1))
                 (apply (lambda (_phi?156679_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156679_)))
                        _g157964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157964_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156578_)
        (let* ((_user-staticdir156580_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157965
                (let ((__tmp157966
                       (string-append
                        '"-I "
                        _staticdir156578_
                        '" -I "
                        _user-staticdir156580_)))
                  (declare (not safe))
                  (cons __tmp157966 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157965))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156490_ ((_rest156492_ (gxc#current-compile-gsc-options))
                         (_opts156493_ '()))
          (let* ((_rest156494156514_ _rest156492_)
                 (_else156498156522_ (lambda () _opts156493_)))
            (let ((_K156508156565_
                   (lambda (_rest156563_)
                     (let ()
                       (declare (not safe))
                       (_lp156490_ _rest156563_ _opts156493_))))
                  (_K156503156543_
                   (lambda (_rest156540_ _opt156541_)
                     (let ((__tmp157967
                            (append _opts156493_
                                    (let ((__tmp157968
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156541_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157968)))))
                       (declare (not safe))
                       (_lp156490_ _rest156540_ __tmp157967))))
                  (_K156500156528_
                   (lambda (_rest156526_)
                     (let ()
                       (declare (not safe))
                       (_lp156490_ _rest156526_ _opts156493_)))))
              (if (let () (declare (not safe)) (##pair? _rest156494156514_))
                  (let ((_tl156510156570_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156494156514_)))
                        (_hd156509156568_
                         (let ()
                           (declare (not safe))
                           (##car _rest156494156514_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156509156568_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156510156570_))
                            (let* ((_tl156512156573_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156510156570_)))
                                   (_rest156576_ _tl156512156573_))
                              (declare (not safe))
                              (_K156508156565_ _rest156576_))
                            (let ((_rest156534_ _tl156510156570_))
                              (declare (not safe))
                              (_K156500156528_ _rest156534_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156509156568_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156510156570_))
                                (let ((_tl156507156553_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156510156570_)))
                                      (_hd156506156551_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156510156570_))))
                                  (let ((_opt156556_ _hd156506156551_)
                                        (_rest156558_ _tl156507156553_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156503156543_
                                       _rest156558_
                                       _opt156556_))))
                                (let ((_rest156534_ _tl156510156570_))
                                  (declare (not safe))
                                  (_K156500156528_ _rest156534_)))
                            (let ((_rest156534_ _tl156510156570_))
                              (declare (not safe))
                              (_K156500156528_ _rest156534_)))))
                  (let () (declare (not safe)) (_else156498156522_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156487_)
        (let ((__tmp157969
               (let () (declare (not safe)) (string-empty? _str156487_))))
          (declare (not safe))
          (not __tmp157969))))
    (define gxc#gsc-compile-file
      (lambda (_path156455_ _phi?156456_)
        (letrec ((_gsc-link-path156458_
                  (lambda (_base-path156479_)
                    (let _lp156481_ ((_n156483_ '1))
                      (let ((_path156485_
                             (string-append
                              _base-path156479_
                              '".o"
                              (number->string _n156483_))))
                        (if (file-exists? _path156485_)
                            (let ((__tmp157970
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156483_ '1))))
                              (declare (not safe))
                              (_lp156481_ __tmp157970))
                            _path156485_))))))
          (let* ((_base-path156460_ (path-strip-extension _path156455_))
                 (_path-c156462_ (string-append _base-path156460_ '".c"))
                 (_path-o156464_ (string-append _base-path156460_ '".o"))
                 (_link-path156466_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156458_ _base-path156460_)))
                 (_link-path-c156468_ (string-append _link-path156466_ '".c"))
                 (_link-path-o156470_ (string-append _link-path156466_ '".o"))
                 (_gsc-link-opts156472_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156456_)))
                 (_gsc-cc-opts156474_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156456_)))
                 (_gcc-ld-opts156476_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157977 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157971
                   (let ((__tmp157972
                          (let ((__tmp157973
                                 (let ((__tmp157974
                                        (let ((__tmp157975
                                               (let ((__tmp157976
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156455_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157976
                                                         _gsc-link-opts156472_))))
                                          (declare (not safe))
                                          (cons _link-path-c156468_
                                                __tmp157975))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157974))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157973))))
                     (declare (not safe))
                     (cons '"-link" __tmp157972))))
              (declare (not safe))
              (gxc#invoke __tmp157977 __tmp157971 'stdout-redirection: '#t))
            (let ((__tmp157984 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157978
                   (let ((__tmp157979
                          (let ((__tmp157980
                                 (let ((__tmp157981
                                        (let ((__tmp157982
                                               (let ((__tmp157983
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156468_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156462_
                                                       __tmp157983))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157982
                                                  _gsc-cc-opts156474_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157981))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157980))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157979))))
              (declare (not safe))
              (gxc#invoke __tmp157984 __tmp157978 'stdout-redirection: '#t))
            (let ((__tmp157990 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157985
                   (let ((__tmp157986
                          (let ((__tmp157987
                                 (let ((__tmp157988
                                        (let ((__tmp157989
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156470_
                                                       _gcc-ld-opts156476_))))
                                          (declare (not safe))
                                          (cons _path-o156464_ __tmp157989))))
                                   (declare (not safe))
                                   (cons _link-path156466_ __tmp157988))))
                            (declare (not safe))
                            (cons '"-o" __tmp157987))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157986))))
              (declare (not safe))
              (gxc#invoke __tmp157990 __tmp157985))
            (for-each
             delete-file
             (let ((__tmp157991
                    (let ((__tmp157992
                           (let ((__tmp157993
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156470_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156468_ __tmp157993))))
                      (declare (not safe))
                      (cons _path-o156464_ __tmp157992))))
               (declare (not safe))
               (cons _path-c156462_ __tmp157991)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156426_ _n156427_ _ext156428_)
        (letrec ((_module-relative-path156430_
                  (lambda (_ctx156453_)
                    (path-strip-directory
                     (let ((__tmp157994
                            (##structure-ref
                             _ctx156453_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157994)))))
                 (_module-source-directory156431_
                  (lambda (_ctx156449_)
                    (path-directory
                     (let ((_mpath156451_
                            (##structure-ref
                             _ctx156449_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156451_))
                           _mpath156451_
                           (let ()
                             (declare (not safe))
                             (last _mpath156451_)))))))
                 (_section-string156432_
                  (lambda (_n156447_)
                    (if (let () (declare (not safe)) (number? _n156447_))
                        (number->string _n156447_)
                        (if (let () (declare (not safe)) (symbol? _n156447_))
                            (symbol->string _n156447_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156447_))
                                _n156447_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156447_)))))))
                 (_file-name156433_
                  (lambda (_path156445_)
                    (if _n156427_
                        (string-append
                         _path156445_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156432_ _n156427_))
                         _ext156428_)
                        (string-append _path156445_ _ext156428_))))
                 (_file-path156434_
                  (lambda ()
                    (let ((_$e156440_ (gxc#current-compile-output-dir)))
                      (if _$e156440_
                          ((lambda (_outdir156443_)
                             (path-expand
                              (let ((__tmp157996
                                     (let ((__tmp157997
                                            (##structure-ref
                                             _ctx156426_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157997))))
                                (declare (not safe))
                                (_file-name156433_ __tmp157996))
                              _outdir156443_))
                           _$e156440_)
                          (path-expand
                           (let ((__tmp157995
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156430_
                                     _ctx156426_))))
                             (declare (not safe))
                             (_file-name156433_ __tmp157995))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156431_
                              _ctx156426_))))))))
          (let ((_path156436_
                 (let () (declare (not safe)) (_file-path156434_))))
            (let ((__tmp157998
                   (lambda ()
                     (let ((__tmp157999 (path-directory _path156436_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157999)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157998))
            _path156436_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156408_)
        (letrec ((_file-name156410_
                  (lambda (_id156424_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156424_))
                     '".scm")))
                 (_file-path156411_
                  (lambda ()
                    (let* ((_file156417_
                            (let ((__tmp158000
                                   (##structure-ref
                                    _ctx156408_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156410_ __tmp158000)))
                           (_$e156419_ (gxc#current-compile-output-dir)))
                      (if _$e156419_
                          ((lambda (_outdir156422_)
                             (path-expand
                              _file156417_
                              (path-expand '"static" _outdir156422_)))
                           _$e156419_)
                          (path-expand _file156417_ '"static"))))))
          (let ((_path156413_
                 (let () (declare (not safe)) (_file-path156411_))))
            (let ((__tmp158001
                   (lambda ()
                     (let ((__tmp158002 (path-directory _path156413_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158002)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158001))
            _path156413_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156402_ _opts156403_)
        (let ((_$e156405_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156403_))))
          (if _$e156405_
              (values _$e156405_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156402_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156395_)
        (if (let () (declare (not safe)) (string? _idstr156395_))
            (let* ((_str156397_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156395_)))
                   (_strs156399_
                    (let ()
                      (declare (not safe))
                      (string-split _str156397_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156399_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156395_))
                (let ((__tmp158003 (symbol->string _idstr156395_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158003))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156395_))))))
    (define gxc#invoke__%
      (lambda (_g158004_
               _stdout-redirection156356156360_
               _stderr-redirection156357156362_
               _program156364_
               _args156365_)
        (let* ((_stdout-redirection156367_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156356156360_ absent-value))
                    '#f
                    _stdout-redirection156356156360_))
               (_stderr-redirection156369_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156357156362_ absent-value))
                    '#f
                    _stderr-redirection156357156362_)))
          (let ((__tmp158005
                 (let ()
                   (declare (not safe))
                   (cons _program156364_ _args156365_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158005))
          (let* ((_proc156371_
                  (open-process
                   (let ((__tmp158006
                          (let ((__tmp158007
                                 (let ((__tmp158008
                                        (let ((__tmp158009
                                               (let ((__tmp158010
                                                      (let ((__tmp158011
                                                             (let ((__tmp158012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156369_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158012))))
                (declare (not safe))
                (cons _stdout-redirection156367_ __tmp158011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158010))))
                                          (declare (not safe))
                                          (cons _args156365_ __tmp158009))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158008))))
                            (declare (not safe))
                            (cons _program156364_ __tmp158007))))
                     (declare (not safe))
                     (cons 'path: __tmp158006))))
                 (_output156376_
                  (if (or _stdout-redirection156367_
                          _stderr-redirection156369_)
                      (read-line _proc156371_ '#f)
                      '#f)))
            (let ((_status156379_ (process-status _proc156371_)))
              (close-port _proc156371_)
              (if (let () (declare (not safe)) (zero? _status156379_))
                  '#!void
                  (begin
                    (display _output156376_)
                    (let ((__tmp158013
                           (let ()
                             (declare (not safe))
                             (cons _program156364_ _args156365_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158013
                       _status156379_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156355156384_ . _args156386_)
        (apply gxc#invoke__%
               _keys156355156384_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156355156384_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156355156384_
                  'stderr-redirection:
                  absent-value))
               _args156386_)))
    (define gxc#invoke
      (lambda _args156358156392_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156358156392_)))
    (define gxc#join!
      (lambda (_thread156349_)
        (let ((__tmp158015
               (lambda (_exn156351_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156351_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156351_)))
                     (raise _exn156351_))))
              (__tmp158014 (lambda () (thread-join! _thread156349_))))
          (declare (not safe))
          (with-catch __tmp158015 __tmp158014))))))
