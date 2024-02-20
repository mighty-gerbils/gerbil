(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708418159)
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
      (lambda (_path157609_ _fun157610_)
        (with-output-to-file
         (let ((__tmp157703
                (let ()
                  (declare (not safe))
                  (cons _path157609_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157703))
         _fun157610_)))
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
      (lambda (_gerbil-libdir157604_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157604_)))
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
      (lambda (_dir157602_) (delete-file-or-directory _dir157602_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157576_ _opts157577_)
        (if (let () (declare (not safe)) (string? _srcpath157576_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157576_)))
        (let ((_outdir157579_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157577_)))
              (_invoke-gsc?157580_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157577_)))
              (_gsc-options157581_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157577_)))
              (_keep-scm?157582_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157577_)))
              (_verbosity157583_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157577_)))
              (_optimize157584_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157577_)))
              (_debug157585_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157577_)))
              (_gen-ssxi157586_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157577_))))
          (if _outdir157579_
              (let ((__tmp157704
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157579_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157704))
              '#!void)
          (if _optimize157584_
              (let ((__tmp157705
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157705))
              '#!void)
          (let ((__tmp157709
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157576_))
                   (let ((__tmp157710
                          (let ((__tmp157711
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157576_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157711))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157710))))
                (__tmp157708
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157706
                 (let ((__tmp157707
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157576_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157707))))
            (declare (not safe))
            (call-with-parameters
             __tmp157709
             gxc#current-compile-output-dir
             _outdir157579_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157580_
             gxc#current-compile-gsc-options
             _gsc-options157581_
             gxc#current-compile-keep-scm
             _keep-scm?157582_
             gxc#current-compile-verbose
             _verbosity157583_
             gxc#current-compile-optimize
             _optimize157584_
             gxc#current-compile-debug
             _debug157585_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157586_
             gxc#current-compile-timestamp
             __tmp157708
             gxc#current-compile-context
             __tmp157706
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157595_)
        (let ((_opts157597_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157595_ _opts157597_))))
    (define gxc#compile-module
      (lambda _g157713_
        (let ((_g157712_ (let () (declare (not safe)) (##length _g157713_))))
          (cond ((let () (declare (not safe)) (##fx= _g157712_ 1))
                 (apply (lambda (_srcpath157595_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157595_)))
                        _g157713_))
                ((let () (declare (not safe)) (##fx= _g157712_ 2))
                 (apply (lambda (_srcpath157599_ _opts157600_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157599_
                             _opts157600_)))
                        _g157713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157713_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157552_ _opts157553_)
        (if (let () (declare (not safe)) (string? _srcpath157552_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157552_)))
        (let ((_outdir157555_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157553_)))
              (_invoke-gsc?157556_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157553_)))
              (_gsc-options157557_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157553_)))
              (_keep-scm?157558_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157553_)))
              (_verbosity157559_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157553_)))
              (_debug157560_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157553_))))
          (if _outdir157555_
              (let ((__tmp157714
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157555_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157714))
              '#!void)
          (let ((__tmp157718
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157552_))
                   (let ((__tmp157719
                          (let ((__tmp157720
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157552_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157720))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157719
                      _opts157553_))))
                (__tmp157717
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157715
                 (let ((__tmp157716
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157552_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157716))))
            (declare (not safe))
            (call-with-parameters
             __tmp157718
             gxc#current-compile-output-dir
             _outdir157555_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157556_
             gxc#current-compile-gsc-options
             _gsc-options157557_
             gxc#current-compile-keep-scm
             _keep-scm?157558_
             gxc#current-compile-verbose
             _verbosity157559_
             gxc#current-compile-debug
             _debug157560_
             gxc#current-compile-timestamp
             __tmp157717
             gxc#current-compile-context
             __tmp157715
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157568_)
        (let ((_opts157570_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157568_ _opts157570_))))
    (define gxc#compile-exe
      (lambda _g157722_
        (let ((_g157721_ (let () (declare (not safe)) (##length _g157722_))))
          (cond ((let () (declare (not safe)) (##fx= _g157721_ 1))
                 (apply (lambda (_srcpath157568_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157568_)))
                        _g157722_))
                ((let () (declare (not safe)) (##fx= _g157721_ 2))
                 (apply (lambda (_srcpath157572_ _opts157573_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157572_ _opts157573_)))
                        _g157722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157722_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157548_ _opts157549_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157549_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157548_
               _opts157549_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157548_
               _opts157549_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157431_ _opts157432_)
        (letrec ((_generate-stub157434_
                  (lambda (_builtin-modules157544_)
                    (let ((_mod-main157546_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157431_ 'main))))
                      (write (let ((__tmp157723
                                    (let ((__tmp157724
                                           (let ((__tmp157725
                                                  (let ((__tmp157726
                                                         (let ((__tmp157728
                                                                (let ((__tmp157729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157544_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157729)))
                       (__tmp157727
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157728 __tmp157727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157726))))
                                             (declare (not safe))
                                             (cons __tmp157725 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157724))))
                               (declare (not safe))
                               (cons 'define __tmp157723)))
                      (write (let ((__tmp157730
                                    (let ((__tmp157769
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157731
                                           (let ((__tmp157732
                                                  (let ((__tmp157733
                                                         (let ((__tmp157757
                                                                (let ((__tmp157758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157759
                                      (let ((__tmp157767
                                             (let ((__tmp157768
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157768)))
                                            (__tmp157760
                                             (let ((__tmp157761
                                                    (let ((__tmp157762
                                                           (let ((__tmp157763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157764
                                 (let ((__tmp157765
                                        (let ((__tmp157766
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157766 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157765))))
                            (declare (not safe))
                            (cons __tmp157764 '()))))
                     (declare (not safe))
                     (cons _mod-main157546_ __tmp157763))))
              (declare (not safe))
              (cons 'apply __tmp157762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157761 '()))))
                                        (declare (not safe))
                                        (cons __tmp157767 __tmp157760))))
                                 (declare (not safe))
                                 (cons '() __tmp157759))))
                          (declare (not safe))
                          (cons 'lambda __tmp157758)))
                       (__tmp157734
                        (let ((__tmp157735
                               (let ((__tmp157736
                                      (let ((__tmp157737
                                             (let ((__tmp157748
                                                    (let ((__tmp157749
                                                           (let ((__tmp157750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157751
                                 (let ((__tmp157752
                                        (let ((__tmp157753
                                               (let ((__tmp157754
                                                      (let ((__tmp157755
                                                             (let ((__tmp157756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157756 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157754 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157753))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157752))))
                            (declare (not safe))
                            (cons __tmp157751 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157750))))
              (declare (not safe))
              (cons 'with-catch __tmp157749)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157738
                                                    (let ((__tmp157739
                                                           (let ((__tmp157740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157741
                                 (let ((__tmp157742
                                        (let ((__tmp157743
                                               (let ((__tmp157744
                                                      (let ((__tmp157745
                                                             (let ((__tmp157746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157747
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157747 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157746))))
                (declare (not safe))
                (cons __tmp157745 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157744))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157743))))
                                   (declare (not safe))
                                   (cons __tmp157742 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157741))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157740))))
              (declare (not safe))
              (cons __tmp157739 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157748
                                                     __tmp157738))))
                                        (declare (not safe))
                                        (cons '() __tmp157737))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157736))))
                          (declare (not safe))
                          (cons __tmp157735 '()))))
                   (declare (not safe))
                   (cons __tmp157757 __tmp157734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157733))))
                                             (declare (not safe))
                                             (cons __tmp157732 '()))))
                                      (declare (not safe))
                                      (cons __tmp157769 __tmp157731))))
                               (declare (not safe))
                               (cons 'define __tmp157730)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157435_
                  (lambda (_libgerbil157542_)
                    (call-with-input-file
                     (string-append _libgerbil157542_ '".ldd")
                     read)))
                 (_replace-extension157436_
                  (lambda (_path157539_ _ext157540_)
                    (string-append
                     (path-strip-extension _path157539_)
                     _ext157540_)))
                 (_not-exclude-module?157437_
                  (lambda (_ctx157535_)
                    (let ((_id-str157537_
                           (symbol->string
                            (##structure-ref
                             _ctx157535_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157771
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157537_))))
                            (declare (not safe))
                            (not __tmp157771))
                          (let ((__tmp157770
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157537_))))
                            (declare (not safe))
                            (not __tmp157770))
                          '#f))))
                 (_not-file-empty?157438_
                  (lambda (_path157533_)
                    (let ((__tmp157772
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157533_))))
                      (declare (not safe))
                      (not __tmp157772))))
                 (_compile-stub157439_
                  (lambda (_output-scm157446_ _output-bin157447_)
                    (let* ((_gerbil-home157449_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157451_
                            (path-expand '"lib" _gerbil-home157449_))
                           (_gerbil-staticdir157453_
                            (path-expand '"static" _gerbil-libdir157451_))
                           (_gxlink157455_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157451_))
                           (_tmp157457_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157461_
                            (lambda (_f157459_)
                              (path-expand
                               (path-strip-directory _f157459_)
                               _tmp157457_)))
                           (_deps157463_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157431_)))
                           (_deps157465_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157437_
                                      _deps157463_)))
                           (_src-deps-scm157467_
                            (map gxc#find-static-module-file _deps157465_))
                           (_src-deps-scm157469_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157438_
                                      _src-deps-scm157467_)))
                           (_src-deps-scm157471_
                            (map path-expand _src-deps-scm157469_))
                           (_deps-scm157473_
                            (map _tmp-path157461_ _src-deps-scm157471_))
                           (_deps-c157479_
                            (map (lambda (_g157474157476_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157436_
                                      _g157474157476_
                                      '".c")))
                                 _deps-scm157473_))
                           (_deps-o157485_
                            (map (lambda (_g157480157482_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157436_
                                      _g157480157482_
                                      '".o")))
                                 _deps-scm157473_))
                           (_src-bin-scm157487_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157431_)))
                           (_src-bin-scm157489_
                            (path-expand _src-bin-scm157487_))
                           (_bin-scm157491_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157461_ _src-bin-scm157489_)))
                           (_bin-c157493_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157436_
                               _bin-scm157491_
                               '".c")))
                           (_bin-o157495_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157436_
                               _bin-scm157491_
                               '".o")))
                           (_output-bin157497_
                            (path-expand _output-bin157447_))
                           (_output-scm157499_
                            (path-expand _output-scm157446_))
                           (_output-c157501_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157436_
                               _output-scm157499_
                               '".c")))
                           (_output-o157503_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157436_
                               _output-scm157499_
                               '".o")))
                           (_output_-c157505_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157436_
                               _output-scm157499_
                               '"_.c")))
                           (_output_-o157507_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157436_
                               _output-scm157499_
                               '"_.o")))
                           (_gsc-link-opts157509_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157511_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157513_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157453_)))
                           (_output-ld-opts157515_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157517_
                            (path-expand '"libgerbil.a" _gerbil-libdir157451_))
                           (_libgerbil.so157519_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157451_))
                           (_libgerbil-ld-opts157521_
                            (if (file-exists? _libgerbil.so157519_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157435_
                                   _libgerbil.so157519_))
                                (if (file-exists? _libgerbil.a157517_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157435_
                                       _libgerbil.a157517_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157517_
                                       _libgerbil.so157519_)))))
                           (_rpath157523_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157451_)))
                           (_builtin-modules157527_
                            (map (lambda (_mod157525_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157525_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157431_ _deps157465_)))))
                      (let ((__tmp157773
                             (lambda ()
                               (let ((__tmp157774
                                      (path-directory _output-bin157497_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157774)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157773))
                      (let ((__tmp157775
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157434_
                                  _builtin-modules157527_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157499_
                         __tmp157775))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157776
                                   (lambda () (create-directory _tmp157457_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157776))
                            (for-each
                             copy-file
                             _src-deps-scm157471_
                             _deps-scm157473_)
                            (copy-file _src-bin-scm157489_ _bin-scm157491_)
                            (let ((__tmp157784
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157777
                                   (let ((__tmp157778
                                          (let ((__tmp157779
                                                 (let ((__tmp157780
                                                        (let ((__tmp157781
                                                               (let ((__tmp157782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157783
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157499_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157491_ __tmp157783))))
                         (declare (not safe))
                         (foldr1 cons __tmp157782 _deps-scm157473_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157781 _gsc-link-opts157509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157455_
                                                         __tmp157780))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157779))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157778))))
                              (declare (not safe))
                              (gxc#invoke __tmp157784 __tmp157777))
                            (let ((__tmp157792
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157785
                                   (let ((__tmp157786
                                          (let ((__tmp157787
                                                 (let ((__tmp157788
                                                        (let ((__tmp157789
                                                               (let ((__tmp157790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157791
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157505_ '()))))
                                (declare (not safe))
                                (cons _output-c157501_ __tmp157791))))
                         (declare (not safe))
                         (cons _bin-c157493_ __tmp157790))))
                  (declare (not safe))
                  (foldr1 cons __tmp157789 _deps-c157479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157788
                                                           _gsc-static-opts157513_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157787
                                                    _gsc-cc-opts157511_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157786))))
                              (declare (not safe))
                              (gxc#invoke __tmp157792 __tmp157785))
                            (let ((__tmp157805
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157793
                                   (let ((__tmp157794
                                          (let ((__tmp157795
                                                 (let ((__tmp157796
                                                        (let ((__tmp157797
                                                               (let ((__tmp157798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157799
                                     (let ((__tmp157800
                                            (let ((__tmp157801
                                                   (let ((__tmp157802
                                                          (let ((__tmp157803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157804
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157521_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157804))))
                    (declare (not safe))
                    (cons _gerbil-libdir157451_ __tmp157803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157802))))
                                              (declare (not safe))
                                              (cons _rpath157523_
                                                    __tmp157801))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157800
                                               _output-ld-opts157515_))))
                                (declare (not safe))
                                (cons _output_-o157507_ __tmp157799))))
                         (declare (not safe))
                         (cons _output-o157503_ __tmp157798))))
                  (declare (not safe))
                  (cons _bin-o157495_ __tmp157797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157796
                                                           _deps-o157485_))))
                                            (declare (not safe))
                                            (cons _output-bin157497_
                                                  __tmp157795))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157794))))
                              (declare (not safe))
                              (gxc#invoke __tmp157805 __tmp157793))
                            (for-each
                             delete-file
                             (let ((__tmp157806
                                    (let ((__tmp157807
                                           (let ((__tmp157808
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157507_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157503_
                                                   __tmp157808))))
                                      (declare (not safe))
                                      (cons _output_-c157505_ __tmp157807))))
                               (declare (not safe))
                               (cons _output-c157501_ __tmp157806)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157457_)))
                          '#!void)))))
          (let* ((_output-bin157441_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157431_ _opts157432_)))
                 (_output-scm157443_
                  (string-append _output-bin157441_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157439_ _output-scm157443_ _output-bin157441_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157443_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157256_ _opts157257_)
        (letrec ((_reset-declare157259_
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
                 (_generate-stub157260_
                  (lambda (_deps157422_)
                    (let ((_mod-main157424_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157256_ 'main)))
                          (_reset-decl157425_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157259_)))
                          (_user-decl157426_
                           (let ()
                             (declare (not safe))
                             (_user-declare157261_))))
                      (for-each
                       (lambda (_dep157428_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157425_)
                         (newline)
                         (if _user-decl157426_
                             (begin (write _user-decl157426_) (newline))
                             '#!void)
                         (write (let ((__tmp157809
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157428_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157809)))
                         (newline))
                       _deps157422_)
                      (write (let ((__tmp157810
                                    (let ((__tmp157823
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157811
                                           (let ((__tmp157819
                                                  (let ((__tmp157820
                                                         (let ((__tmp157821
                                                                (let ((__tmp157822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157822))))
                   (declare (not safe))
                   (cons __tmp157821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157820)))
                                                 (__tmp157812
                                                  (let ((__tmp157813
                                                         (let ((__tmp157814
                                                                (let ((__tmp157815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157816
                                      (let ((__tmp157817
                                             (let ((__tmp157818
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157818 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157817))))
                                 (declare (not safe))
                                 (cons __tmp157816 '()))))
                          (declare (not safe))
                          (cons _mod-main157424_ __tmp157815))))
                   (declare (not safe))
                   (cons 'apply __tmp157814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157813 '()))))
                                             (declare (not safe))
                                             (cons __tmp157819 __tmp157812))))
                                      (declare (not safe))
                                      (cons __tmp157823 __tmp157811))))
                               (declare (not safe))
                               (cons 'define __tmp157810)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157261_
                  (lambda ()
                    (let* ((_gsc-opts157327_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157257_)))
                           (_gsc-prelude157329_
                            (if _gsc-opts157327_
                                (member '"-prelude" _gsc-opts157327_)
                                '#f))
                           (_gsc-prelude157331_
                            (if _gsc-prelude157329_
                                (read (open-input-string
                                       (cadr _gsc-prelude157329_)))
                                '#f)))
                      (let _lp157334_ ((_rest157336_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157331_ '())))
                                       (_user-decls157337_ '()))
                        (let* ((_rest157338157346_ _rest157336_)
                               (_else157340157354_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157337_))
                                      '#f
                                      (let ((__tmp157824
                                             (reverse _user-decls157337_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157824)))))
                               (_K157342157410_
                                (lambda (_rest157357_ _expr157358_)
                                  (let* ((_expr157359157371_ _expr157358_)
                                         (_else157362157379_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157334_
                                               _rest157357_
                                               _user-decls157337_)))))
                                    (let ((_K157367157400_
                                           (lambda (_decls157398_)
                                             (let ((__tmp157825
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157337_
                                                              _decls157398_))))
                                               (declare (not safe))
                                               (_lp157334_
                                                _rest157357_
                                                __tmp157825))))
                                          (_K157364157385_
                                           (lambda (_exprs157383_)
                                             (let ((__tmp157826
                                                    (append _exprs157383_
                                                            _rest157357_)))
                                               (declare (not safe))
                                               (_lp157334_
                                                __tmp157826
                                                _user-decls157337_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157359157371_))
                                          (let ((_tl157369157405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157359157371_)))
                                                (_hd157368157403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157359157371_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157368157403_
                                                         'declare))
                                                (let ((_decls157408_
                                                       _tl157369157405_))
                                                  (declare (not safe))
                                                  (_K157367157400_
                                                   _decls157408_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157368157403_
                                                             'begin))
                                                    (let ((_exprs157393_
                                                           _tl157369157405_))
                                                      (declare (not safe))
                                                      (_K157364157385_
                                                       _exprs157393_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157362157379_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157362157379_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157338157346_))
                              (let ((_hd157343157413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157338157346_)))
                                    (_tl157344157415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157338157346_))))
                                (let* ((_expr157418_ _hd157343157413_)
                                       (_rest157420_ _tl157344157415_))
                                  (declare (not safe))
                                  (_K157342157410_ _rest157420_ _expr157418_)))
                              (let ()
                                (declare (not safe))
                                (_else157340157354_))))))))
                 (_compile-stub157262_
                  (lambda (_output-scm157269_ _output-bin157270_)
                    (let* ((_gerbil-home157272_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157274_
                            (path-expand '"lib" _gerbil-home157272_))
                           (_runtime157276_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157278_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157272_))
                           (_include-gambit-sharp157280_
                            (string-append
                             '"(include \""
                             _gambit-sharp157278_
                             '"\")"))
                           (_bin-scm157282_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157256_)))
                           (_deps157284_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157256_)))
                           (_deps157286_
                            (map gxc#find-static-module-file _deps157284_))
                           (_deps157291_
                            (let ((__tmp157827
                                   (lambda (_$obj157288_)
                                     (let ((__tmp157828
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157288_))))
                                       (declare (not safe))
                                       (not __tmp157828)))))
                              (declare (not safe))
                              (filter __tmp157827 _deps157286_)))
                           (_deps157295_
                            (let ((__tmp157829
                                   (lambda (_f157293_)
                                     (let ((__tmp157830
                                            (member _f157293_
                                                    _runtime157276_)))
                                       (declare (not safe))
                                       (not __tmp157830)))))
                              (declare (not safe))
                              (filter __tmp157829 _deps157291_)))
                           (_output-base157297_
                            (string-append
                             (path-strip-extension _output-scm157269_)))
                           (_output-c157299_
                            (string-append _output-base157297_ '".c"))
                           (_output-o157301_
                            (string-append _output-base157297_ '".o"))
                           (_output-c_157303_
                            (string-append _output-base157297_ '"_.c"))
                           (_output-o_157305_
                            (string-append _output-base157297_ '"_.o"))
                           (_gsc-link-opts157307_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157309_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157311_
                            (let ((__tmp157831
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157274_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157831)))
                           (_output-ld-opts157313_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157315_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157833
                                       (let ((__tmp157834
                                              (let ((__tmp157835
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157280_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157835))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157834))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157833))
                                (let ((__tmp157832
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157280_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157832))))
                           (_gsc-link-opts157317_
                            (append _gsc-link-opts157307_
                                    _gsc-gx-macros157315_))
                           (_rpath157319_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157274_)))
                           (_default-ld-options157321_
                            (let ((__tmp157836
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157836))))
                      (let ((__tmp157837
                             (lambda ()
                               (let ((__tmp157838
                                      (path-directory _output-bin157270_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157838)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157837))
                      (let ((__tmp157839
                             (lambda ()
                               (let ((__tmp157840
                                      (let ((__tmp157841
                                             (let ((__tmp157842
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157282_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157842
                                                       _deps157295_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157841
                                                _runtime157276_))))
                                 (declare (not safe))
                                 (_generate-stub157260_ __tmp157840)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157269_
                         __tmp157839))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157848
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157843
                                   (let ((__tmp157844
                                          (let ((__tmp157845
                                                 (let ((__tmp157846
                                                        (let ((__tmp157847
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157269_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157847 _gsc-link-opts157317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157303_
                                                         __tmp157846))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157845))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157844))))
                              (declare (not safe))
                              (gxc#invoke __tmp157848 __tmp157843))
                            (let ((__tmp157854
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157849
                                   (let ((__tmp157850
                                          (let ((__tmp157851
                                                 (let ((__tmp157852
                                                        (let ((__tmp157853
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157303_ '()))))
                  (declare (not safe))
                  (cons _output-c157299_ __tmp157853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157852
                                                           _gsc-static-opts157311_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157851
                                                    _gsc-cc-opts157309_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157850))))
                              (declare (not safe))
                              (gxc#invoke __tmp157854 __tmp157849))
                            (let ((__tmp157864
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157855
                                   (let ((__tmp157856
                                          (let ((__tmp157857
                                                 (let ((__tmp157858
                                                        (let ((__tmp157859
                                                               (let ((__tmp157860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157861
                                     (let ((__tmp157862
                                            (let ((__tmp157863
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157321_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157274_
                                                    __tmp157863))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157862))))
                                (declare (not safe))
                                (cons _rpath157319_ __tmp157861))))
                         (declare (not safe))
                         (foldr1 cons __tmp157860 _output-ld-opts157313_))))
                  (declare (not safe))
                  (cons _output-o_157305_ __tmp157859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157301_
                                                         __tmp157858))))
                                            (declare (not safe))
                                            (cons _output-bin157270_
                                                  __tmp157857))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157856))))
                              (declare (not safe))
                              (gxc#invoke __tmp157864 __tmp157855)))
                          '#!void)))))
          (let* ((_output-bin157264_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157256_ _opts157257_)))
                 (_output-scm157266_
                  (string-append _output-bin157264_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157262_ _output-scm157266_ _output-bin157264_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157266_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157206_ _id157207_)
        (let ((_$e157253_
               (let ((__tmp157866
                      (lambda (_e157208157210_)
                        (let* ((_g157212157222_ _e157208157210_)
                               (_else157214157230_ (lambda () '#f))
                               (_K157216157234_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157212157222_
                                 'gx#module-export::t))
                              (let* ((_e157217157237_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157212157222_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157218157240_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157212157222_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157219157243_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157212157222_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157219157243_ '0))
                                    (let ((_e157220157246_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157212157222_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157248157250_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157248157250_
                                                    _id157207_)))
                                           _e157220157246_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157216157234_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157214157230_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157214157230_))))
                              (let ()
                                (declare (not safe))
                                (_else157214157230_))))))
                     (__tmp157865
                      (##structure-ref
                       _ctx157206_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157866 __tmp157865))))
          (if _$e157253_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157253_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157198_ _id157199_)
        (let ((_$e157201_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157198_ _id157199_))))
          (if _$e157201_
              ((lambda (_bind157204_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157204_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157199_)))
                 (##structure-ref _bind157204_ '1 gx#binding::t '#f))
               _$e157201_)
              (let ((__tmp157867
                     (##structure-ref
                      _ctx157198_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157867
                 _id157199_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157085_)
        (letrec* ((_ht157087_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157088_
                   (lambda (_in157150_ _phi157151_)
                     (let ((_iphi157153_
                            (fx+ _phi157151_
                                 (##direct-structure-ref
                                  _in157150_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157154_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157150_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157156_ ((_rest157158_ _imports157154_)
                                        (_r157159_ '()))
                         (let* ((_rest157160157168_ _rest157158_)
                                (_else157162157176_ (lambda () _r157159_))
                                (_K157164157186_
                                 (lambda (_rest157179_ _in157180_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157180_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157153_))
                                           (let ((__tmp157874
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157180_
                                                          _r157159_))))
                                             (declare (not safe))
                                             (_lp157156_
                                              _rest157179_
                                              __tmp157874))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157156_
                                              _rest157179_
                                              _r157159_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157180_
                                              'gx#module-import::t))
                                           (let ((_iphi157182_
                                                  (fx+ _phi157151_
                                                       (##direct-structure-ref
                                                        _in157180_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157182_))
                                                 (let ((__tmp157872
                                                        (let ((__tmp157873
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157180_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157873 _r157159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157156_
                                                    _rest157179_
                                                    __tmp157872))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157156_
                                                    _rest157179_
                                                    _r157159_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157180_
                                                  'gx#import-set::t))
                                               (let ((_xphi157184_
                                                      (fx+ _iphi157153_
                                                           (##direct-structure-ref
                                                            _in157180_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157184_))
                                                     (let ((__tmp157870
                                                            (let ((__tmp157871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157180_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157871 _r157159_))))
               (declare (not safe))
               (_lp157156_ _rest157179_ __tmp157870))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157184_)
                                                         (let ((__tmp157868
                                                                (let ((__tmp157869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157088_
                                  _in157180_
                                  _iphi157153_))))
                          (declare (not safe))
                          (foldl1 cons _r157159_ __tmp157869))))
                   (declare (not safe))
                   (_lp157156_ _rest157179_ __tmp157868))
                 (let ()
                   (declare (not safe))
                   (_lp157156_ _rest157179_ _r157159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157156_
                                                  _rest157179_
                                                  _r157159_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157160157168_))
                               (let ((_hd157165157189_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157160157168_)))
                                     (_tl157166157191_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157160157168_))))
                                 (let* ((_in157194_ _hd157165157189_)
                                        (_rest157196_ _tl157166157191_))
                                   (declare (not safe))
                                   (_K157164157186_ _rest157196_ _in157194_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157162157176_))))))))
                  (_find-deps157089_
                   (lambda (_rest157096_ _deps157097_)
                     (let* ((_rest157098157106_ _rest157096_)
                            (_else157100157114_ (lambda () _deps157097_))
                            (_K157102157138_
                             (lambda (_rest157117_ _hd157118_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157118_
                                      'gx#module-context::t))
                                   (let ((_id157120_
                                          (##structure-ref
                                           _hd157118_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157121_
                                          (##structure-ref
                                           _hd157118_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157087_ _id157120_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157089_
                                            _rest157117_
                                            _deps157097_))
                                         (let ((_$e157123_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157118_))))
                                           (if _$e157123_
                                               ((lambda (_pre157126_)
                                                  (let ((_xdeps157128_
                                                         (let ((__tmp157887
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157126_ _imports157121_))))
                   (declare (not safe))
                   (_find-deps157089_ __tmp157887 _deps157097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157087_
                                                       _id157120_
                                                       _hd157118_))
                                                    (let ((__tmp157888
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157128_))))
              (declare (not safe))
              (_find-deps157089_ _rest157117_ __tmp157888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157123_)
                                               (let ((_xdeps157130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157089_
                                                         _imports157121_
                                                         _deps157097_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157087_
                                                    _id157120_
                                                    _hd157118_))
                                                 (let ((__tmp157886
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157118_
                                                                _xdeps157130_))))
                                                   (declare (not safe))
                                                   (_find-deps157089_
                                                    _rest157117_
                                                    __tmp157886)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157118_
                                          'gx#prelude-context::t))
                                       (let ((_id157132_
                                              (##structure-ref
                                               _hd157118_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157087_
                                                _id157132_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157089_
                                                _rest157117_
                                                _deps157097_))
                                             (let ((_xdeps157134_
                                                    (let ((__tmp157884
                                                           (##structure-ref
                                                            _hd157118_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157089_
                                                       __tmp157884
                                                       _deps157097_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157087_
                                                      _id157132_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157089_
                                                      _rest157117_
                                                      _xdeps157134_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157087_
                                                        _id157132_
                                                        _hd157118_))
                                                     (let ((__tmp157885
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157134_))))
               (declare (not safe))
               (_find-deps157089_ _rest157117_ __tmp157885)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157118_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157883
                                                      (##direct-structure-ref
                                                       _hd157118_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157883))
                                               (let ((__tmp157881
                                                      (let ((__tmp157882
                                                             (##direct-structure-ref
                                                              _hd157118_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157882
                                                              _rest157117_))))
                                                 (declare (not safe))
                                                 (_find-deps157089_
                                                  __tmp157881
                                                  _deps157097_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157089_
                                                  _rest157117_
                                                  _deps157097_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157118_
                                                  'gx#module-export::t))
                                               (let ((__tmp157879
                                                      (let ((__tmp157880
                                                             (##direct-structure-ref
                                                              _hd157118_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157880
                                                              _rest157117_))))
                                                 (declare (not safe))
                                                 (_find-deps157089_
                                                  __tmp157879
                                                  _deps157097_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157118_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157878
                                                              (##direct-structure-ref
                                                               _hd157118_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157878))
                                                       (let ((__tmp157876
                                                              (let ((__tmp157877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157118_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157877 _rest157117_))))
                 (declare (not safe))
                 (_find-deps157089_ __tmp157876 _deps157097_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157118_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157136_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157088_ _hd157118_ '0)))
                          (__tmp157875
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157117_ _xdeps157136_))))
                     (declare (not safe))
                     (_find-deps157089_ __tmp157875 _deps157097_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157089_ _rest157117_ _deps157097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157118_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157098157106_))
                           (let ((_hd157103157141_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157098157106_)))
                                 (_tl157104157143_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157098157106_))))
                             (let* ((_hd157146_ _hd157103157141_)
                                    (_rest157148_ _tl157104157143_))
                               (declare (not safe))
                               (_K157102157138_ _rest157148_ _hd157146_)))
                           (let ()
                             (declare (not safe))
                             (_else157100157114_)))))))
          (reverse (let ((__tmp157889
                          (let ((__tmp157890
                                 (let ((_$e157091_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157085_))))
                                   (if _$e157091_
                                       ((lambda (_pre157094_)
                                          (let ((__tmp157891
                                                 (##structure-ref
                                                  _ctx157085_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157094_ __tmp157891)))
                                        _$e157091_)
                                       (##structure-ref
                                        _ctx157085_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157089_ __tmp157890 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157889))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157016_)
        (let* ((_context-id157018_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157016_
                       'gx#module-context::t))
                    (##structure-ref _ctx157016_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157016_)))
               (_scm157020_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157018_))
                 '".scm"))
               (_dirs157022_ (gx#current-expander-module-library-path))
               (_dirs157028_
                (let ((_user-libpath157024_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157024_
                      (let ((_user-libpath157026_
                             (path-expand '"lib" _user-libpath157024_)))
                        (if (member _user-libpath157026_ _dirs157022_)
                            _dirs157022_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157026_ _dirs157022_))))
                      _dirs157022_)))
               (_dirs157037_
                (let ((_$e157030_ (gxc#current-compile-output-dir)))
                  (if _$e157030_
                      ((lambda (_g157032157034_)
                         (let ()
                           (declare (not safe))
                           (cons _g157032157034_ _dirs157028_)))
                       _$e157030_)
                      _dirs157028_)))
               (_dirs157043_
                (map (lambda (_g157038157040_)
                       (path-expand '"static" _g157038157040_))
                     _dirs157037_)))
          (let _lp157046_ ((_rest157048_ _dirs157043_))
            (let* ((_rest157049157057_ _rest157048_)
                   (_else157051157065_
                    (lambda ()
                      (let ((__tmp157892
                             (##structure-ref
                              _ctx157016_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157892
                         _scm157020_))))
                   (_K157053157073_
                    (lambda (_rest157068_ _dir157069_)
                      (let ((_path157071_
                             (path-expand _scm157020_ _dir157069_)))
                        (if (file-exists? _path157071_)
                            _path157071_
                            (let ()
                              (declare (not safe))
                              (_lp157046_ _rest157068_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157049157057_))
                  (let ((_hd157054157076_
                         (let ()
                           (declare (not safe))
                           (##car _rest157049157057_)))
                        (_tl157055157078_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157049157057_))))
                    (let* ((_dir157081_ _hd157054157076_)
                           (_rest157083_ _tl157055157078_))
                      (declare (not safe))
                      (_K157053157073_ _rest157083_ _dir157081_)))
                  (let () (declare (not safe)) (_else157051157065_))))))))
    (define gxc#file-empty?
      (lambda (_path157014_)
        (let ((__tmp157893 (file-info-size (file-info _path157014_ '#t))))
          (declare (not safe))
          (zero? __tmp157893))))
    (define gxc#compile-top-module
      (lambda (_ctx157003_)
        (let ((__tmp157897
               (lambda ()
                 (let ((__tmp157898
                        (##structure-ref
                         _ctx157003_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157898))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157899
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157003_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157899))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157003_))
                 (if (let ((__tmp157902
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157003_))))
                       (declare (not safe))
                       (null? __tmp157902))
                     (let* ((_thr1157008_
                             (let ((__tmp157900
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157003_)))))
                               (declare (not safe))
                               (spawn __tmp157900)))
                            (_thr2157011_
                             (let ((__tmp157901
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157003_)))))
                               (declare (not safe))
                               (spawn __tmp157901))))
                       (let () (declare (not safe)) (gxc#join! _thr1157008_))
                       (let () (declare (not safe)) (gxc#join! _thr2157011_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157003_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157003_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157003_))
                     '#!void)))
              (__tmp157896
               (let ((__obj157701
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157701)
                 __obj157701))
              (__tmp157895 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157894 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157897
           gx#current-expander-context
           _ctx157003_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157896
           gxc#current-compile-runtime-sections
           __tmp157895
           gxc#current-compile-runtime-names
           __tmp157894))))
    (define gxc#collect-bindings
      (lambda (_ctx157001_)
        (let ((__tmp157903
               (##structure-ref _ctx157001_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157903))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156947_)
        (letrec ((_compile1156949_
                  (lambda (_ctx156990_)
                    (let* ((_code156992_
                            (##structure-ref
                             _ctx156990_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156996_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156992_))
                                (let ((_idstr156994_
                                       (let ((__tmp157904
                                              (##structure-ref
                                               _ctx156990_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157904))))
                                  (string-append _idstr156994_ '"__0"))
                                '#f)))
                      (if _rt156996_
                          (begin
                            (let ((__tmp157905
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157905 _ctx156990_ _rt156996_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156951_
                               _ctx156990_
                               _code156992_)))
                          (let ((_path156999_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156990_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156999_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156952_
                         _ctx156990_
                         _code156992_
                         _rt156996_)))))
                 (_context-timestamp156950_
                  (lambda (_ctx156988_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156988_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156951_
                  (lambda (_ctx156970_ _code156971_)
                    (let* ((_lifts156973_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156976_
                            (let ((__tmp157908
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156971_))))
                                  (__tmp157907
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157906
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157908
                               gx#current-expander-context
                               _ctx156970_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156973_
                               gxc#current-compile-marks
                               __tmp157907
                               gxc#current-compile-identifiers
                               __tmp157906)))
                           (_runtime-code156978_
                            (if (let ((__tmp157912 (unbox _lifts156973_)))
                                  (declare (not safe))
                                  (null? __tmp157912))
                                _runtime-code156976_
                                (let ((__tmp157909
                                       (let ((__tmp157911
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156976_
                                                      '())))
                                             (__tmp157910
                                              (reverse (unbox _lifts156973_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157911
                                                 __tmp157910))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157909))))
                           (_runtime-code156980_
                            (let ((__tmp157913
                                   (let ((__tmp157915
                                          (let ((__tmp157916
                                                 (let ((__tmp157919
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156950_
                                                           _ctx156970_)))
                                                       (__tmp157917
                                                        (let ((__tmp157918
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157918
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157919
                                                         __tmp157917))))
                                            (declare (not safe))
                                            (cons 'define __tmp157916)))
                                         (__tmp157914
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156978_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157915 __tmp157914))))
                              (declare (not safe))
                              (cons 'begin __tmp157913)))
                           (_scm0156982_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156970_
                               '0
                               '".scm"))))
                      (let ((_scms156985_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156970_))))
                        (let ((__tmp157920
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156982_
                                    _runtime-code156980_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157920
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156985_)
                            (delete-file _scms156985_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156982_
                           '" => "
                           _scms156985_))
                        (copy-file _scm0156982_ _scms156985_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156982_))))))
                 (_generate-loader-code156952_
                  (lambda (_ctx156959_ _code156960_ _rt156961_)
                    (let* ((_loader-code156964_
                            (let ((__tmp157921
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156960_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157921
                               gx#current-expander-context
                               _ctx156959_)))
                           (_loader-code156966_
                            (if _rt156961_
                                (let ((__tmp157922
                                       (let ((__tmp157923
                                              (let ((__tmp157924
                                                     (let ((__tmp157925
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157924 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156964_
                                               __tmp157923))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157922))
                                _loader-code156964_)))
                      (let ((__tmp157926
                             (lambda ()
                               (let ((__tmp157927
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156959_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157927
                                  _loader-code156966_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157926
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156954_
                 (let ((__tmp157928
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156947_))))
                   (declare (not safe))
                   (cons _ctx156947_ __tmp157928))))
            (for-each
             (lambda (_ctx156956_)
               (let ((__tmp157929
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156949_ _ctx156956_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157929
                  gxc#current-compile-decls
                  '())))
             _all-modules156954_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156844_)
        (letrec ((_compile-ssi156846_
                  (lambda (_code156917_)
                    (let* ((_path156919_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156844_
                               '#f
                               '".ssi")))
                           (_prelude156930_
                            (let* ((_super156921_
                                    (##structure-ref
                                     _ctx156844_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156923_
                                    (##structure-ref
                                     _super156921_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156923_
                                  ((lambda (_g156925156927_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156925156927_)))
                                   _$e156923_)
                                  ':<root>)))
                           (_ns156932_
                            (##structure-ref
                             _ctx156844_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156934_
                            (symbol->string
                             (##structure-ref
                              _ctx156844_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156941_
                            (let ((_$e156936_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156934_ '#\/))))
                              (if _$e156936_
                                  ((lambda (_x156939_)
                                     (string->symbol
                                      (substring _idstr156934_ '0 _x156939_)))
                                   _$e156936_)
                                  '#f)))
                           (_rt156943_
                            (let ((__tmp157930
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157930 _ctx156844_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156919_))
                      (let ((__tmp157931
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156930_))
                               (if _pkg156941_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156941_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156932_))
                               (newline)
                               (pretty-print _code156917_)
                               (if _rt156943_
                                   (pretty-print
                                    (let ((__tmp157932
                                           (let ((__tmp157936
                                                  (let ((__tmp157937
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157937)))
                                                 (__tmp157933
                                                  (let ((__tmp157934
                                                         (let ((__tmp157935
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156943_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157934 '()))))
                                             (declare (not safe))
                                             (cons __tmp157936 __tmp157933))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157932)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156919_
                         __tmp157931)))))
                 (_compile-phi156847_
                  (lambda (_part156857_)
                    (let* ((_part156858156871_ _part156857_)
                           (_E156860156875_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156858156871_))))
                           (_K156861156886_
                            (lambda (_code156878_
                                     _n156879_
                                     _phi156880_
                                     _phi-ctx156881_)
                              (let* ((_code156884_
                                      (let ((__tmp157938
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156878_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157938
                                         gx#current-expander-context
                                         _phi-ctx156881_
                                         gx#current-expander-phi
                                         _phi156880_)))
                                     (__tmp157939
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156844_
                                         _n156879_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157939
                                 _code156884_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156858156871_))
                          (let ((_hd156862156889_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156858156871_)))
                                (_tl156863156891_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156858156871_))))
                            (let ((_phi-ctx156894_ _hd156862156889_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156863156891_))
                                  (let ((_hd156864156896_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156863156891_)))
                                        (_tl156865156898_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156863156891_))))
                                    (let ((_phi156901_ _hd156864156896_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156865156898_))
                                          (let ((_hd156866156903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156865156898_)))
                                                (_tl156867156905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156865156898_))))
                                            (let ((_n156908_ _hd156866156903_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156867156905_))
                                                  (let ((_hd156868156910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156867156905_)))
                                                        (_tl156869156912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156867156905_))))
                                                    (let ((_code156915_
                                                           _hd156868156910_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156869156912_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156861156886_
                                                             _code156915_
                                                             _n156908_
                                                             _phi156901_
                                                             _phi-ctx156894_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156860156875_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156860156875_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156860156875_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156860156875_)))))
                          (let () (declare (not safe)) (_E156860156875_)))))))
          (let ((_g157940_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156844_))))
            (begin
              (let ((_g157941_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157940_)
                           (##vector-length _g157940_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157941_ 2)))
                    (error "Context expects 2 values" _g157941_)))
              (let ((_ssi-code156849_
                     (let () (declare (not safe)) (##vector-ref _g157940_ 0)))
                    (_phi-code156850_
                     (let () (declare (not safe)) (##vector-ref _g157940_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156846_ _ssi-code156849_))
                  (let ((_threads156855_
                         (map (lambda (_code156852_)
                                (let ((__tmp157942
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156847_
                                            _code156852_)))))
                                  (declare (not safe))
                                  (spawn __tmp157942)))
                              _phi-code156850_)))
                    (for-each gxc#join! _threads156855_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156827_)
        (let* ((_path156829_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156827_ '#f '".ssxi.ss")))
               (_code156831_
                (let ((__tmp157943
                       (##structure-ref
                        _ctx156827_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157943)))
               (_idstr156833_
                (symbol->string
                 (##structure-ref _ctx156827_ '1 gx#expander-context::t '#f)))
               (_pkg156840_
                (let ((_$e156835_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156833_ '#\/))))
                  (if _$e156835_
                      ((lambda (_x156838_)
                         (string->symbol
                          (substring _idstr156833_ '0 _x156838_)))
                       _$e156835_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156829_))
          (let ((__tmp157944
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156840_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156840_))
                       '#!void)
                   (newline)
                   (pretty-print _code156831_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156829_ __tmp157944)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156820_)
        (let* ((_state156822_
                (let ((__obj157702
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157702 _ctx156820_)
                  __obj157702))
               (_ssi-code156824_
                (let ((__tmp157945
                       (##structure-ref
                        _ctx156820_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157945 _state156822_))))
          (values _ssi-code156824_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156822_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156813_)
        (let ((_lifts156815_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157948
                 (lambda ()
                   (let ((_code156818_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156813_))))
                     (if (let ((__tmp157952 (unbox _lifts156815_)))
                           (declare (not safe))
                           (null? __tmp157952))
                         _code156818_
                         (let ((__tmp157949
                                (let ((__tmp157951
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156818_ '())))
                                      (__tmp157950
                                       (reverse (unbox _lifts156815_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157951 __tmp157950))))
                           (declare (not safe))
                           (cons 'begin __tmp157949))))))
                (__tmp157947
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157946
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157948
             gxc#current-compile-lift
             _lifts156815_
             gxc#current-compile-marks
             __tmp157947
             gxc#current-compile-identifiers
             __tmp157946)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156809_)
        (let ((_modules156811_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157953
                 (##structure-ref _ctx156809_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157953 _modules156811_))
          (reverse (unbox _modules156811_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156792_ _code156793_ _phi?156794_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156792_))
        (let ((__tmp157954
               (lambda ()
                 (pretty-print
                  (let ((__tmp157955
                         (let ((__tmp157962
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157956
                                (let ((__tmp157961
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157957
                                       (let ((__tmp157960
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157958
                                              (let ((__tmp157959
                                                     (if _phi?156794_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157959))))
                                         (declare (not safe))
                                         (cons __tmp157960 __tmp157958))))
                                  (declare (not safe))
                                  (cons __tmp157961 __tmp157957))))
                           (declare (not safe))
                           (cons __tmp157962 __tmp157956))))
                    (declare (not safe))
                    (cons 'declare __tmp157955)))
                 (pretty-print _code156793_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156792_ __tmp157954))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156792_ _phi?156794_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156792_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156800_ _code156801_)
        (let ((_phi?156803_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156800_ _code156801_ _phi?156803_))))
    (define gxc#compile-scm-file
      (lambda _g157964_
        (let ((_g157963_ (let () (declare (not safe)) (##length _g157964_))))
          (cond ((let () (declare (not safe)) (##fx= _g157963_ 2))
                 (apply (lambda (_path156800_ _code156801_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156800_
                             _code156801_)))
                        _g157964_))
                ((let () (declare (not safe)) (##fx= _g157963_ 3))
                 (apply (lambda (_path156805_ _code156806_ _phi?156807_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156805_
                             _code156806_
                             _phi?156807_)))
                        _g157964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157964_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156693_)
        (let _lp156695_ ((_rest156697_ (gxc#current-compile-gsc-options))
                         (_opts156698_ '()))
          (let* ((_rest156699156719_ _rest156697_)
                 (_else156703156727_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156693_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157965
                               (let ((__tmp157966 (reverse _opts156698_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157966))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157965))
                        (reverse _opts156698_)))))
            (let ((_K156713156770_
                   (lambda (_rest156768_)
                     (let ()
                       (declare (not safe))
                       (_lp156695_ _rest156768_ _opts156698_))))
                  (_K156708156752_
                   (lambda (_rest156750_)
                     (let ()
                       (declare (not safe))
                       (_lp156695_ _rest156750_ _opts156698_))))
                  (_K156705156734_
                   (lambda (_rest156731_ _opt156732_)
                     (let ((__tmp157967
                            (let ()
                              (declare (not safe))
                              (cons _opt156732_ _opts156698_))))
                       (declare (not safe))
                       (_lp156695_ _rest156731_ __tmp157967)))))
              (if (let () (declare (not safe)) (##pair? _rest156699156719_))
                  (let ((_tl156715156775_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156699156719_)))
                        (_hd156714156773_
                         (let ()
                           (declare (not safe))
                           (##car _rest156699156719_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156714156773_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156715156775_))
                            (let* ((_tl156717156778_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156715156775_)))
                                   (_rest156781_ _tl156717156778_))
                              (declare (not safe))
                              (_K156713156770_ _rest156781_))
                            (let ((_opt156742_ _hd156714156773_)
                                  (_rest156744_ _tl156715156775_))
                              (let ()
                                (declare (not safe))
                                (_K156705156734_ _rest156744_ _opt156742_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156714156773_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156715156775_))
                                (let* ((_tl156712156760_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156715156775_)))
                                       (_rest156763_ _tl156712156760_))
                                  (declare (not safe))
                                  (_K156708156752_ _rest156763_))
                                (let ((_opt156742_ _hd156714156773_)
                                      (_rest156744_ _tl156715156775_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156705156734_
                                     _rest156744_
                                     _opt156742_))))
                            (let ((_opt156742_ _hd156714156773_)
                                  (_rest156744_ _tl156715156775_))
                              (let ()
                                (declare (not safe))
                                (_K156705156734_ _rest156744_ _opt156742_))))))
                  (let () (declare (not safe)) (_else156703156727_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156787_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156787_))))
    (define gxc#gsc-link-options
      (lambda _g157969_
        (let ((_g157968_ (let () (declare (not safe)) (##length _g157969_))))
          (cond ((let () (declare (not safe)) (##fx= _g157968_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157969_))
                ((let () (declare (not safe)) (##fx= _g157968_ 1))
                 (apply (lambda (_phi?156789_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156789_)))
                        _g157969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157969_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156594_)
        (let _lp156596_ ((_rest156598_ (gxc#current-compile-gsc-options))
                         (_opts156599_ '()))
          (let* ((_rest156600156620_ _rest156598_)
                 (_else156604156628_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156594_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157970
                               (let ((__tmp157971 (reverse _opts156599_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157971))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157970))
                        (reverse _opts156599_)))))
            (let ((_K156614156667_
                   (lambda (_rest156664_ _opt156665_)
                     (let ((__tmp157972
                            (let ((__tmp157973
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156599_))))
                              (declare (not safe))
                              (cons _opt156665_ __tmp157973))))
                       (declare (not safe))
                       (_lp156596_ _rest156664_ __tmp157972))))
                  (_K156609156648_
                   (lambda (_rest156646_)
                     (let ()
                       (declare (not safe))
                       (_lp156596_ _rest156646_ _opts156599_))))
                  (_K156606156634_
                   (lambda (_rest156632_)
                     (let ()
                       (declare (not safe))
                       (_lp156596_ _rest156632_ _opts156599_)))))
              (if (let () (declare (not safe)) (##pair? _rest156600156620_))
                  (let ((_tl156616156672_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156600156620_)))
                        (_hd156615156670_
                         (let ()
                           (declare (not safe))
                           (##car _rest156600156620_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156615156670_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156616156672_))
                            (let ((_tl156618156677_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156616156672_)))
                                  (_hd156617156675_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156616156672_))))
                              (let ((_opt156680_ _hd156617156675_)
                                    (_rest156682_ _tl156618156677_))
                                (let ()
                                  (declare (not safe))
                                  (_K156614156667_ _rest156682_ _opt156680_))))
                            (let ((_rest156640_ _tl156616156672_))
                              (declare (not safe))
                              (_K156606156634_ _rest156640_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156615156670_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156616156672_))
                                (let* ((_tl156613156656_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156616156672_)))
                                       (_rest156659_ _tl156613156656_))
                                  (declare (not safe))
                                  (_K156609156648_ _rest156659_))
                                (let ((_rest156640_ _tl156616156672_))
                                  (declare (not safe))
                                  (_K156606156634_ _rest156640_)))
                            (let ((_rest156640_ _tl156616156672_))
                              (declare (not safe))
                              (_K156606156634_ _rest156640_)))))
                  (let () (declare (not safe)) (_else156604156628_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156688_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156688_))))
    (define gxc#gsc-cc-options
      (lambda _g157975_
        (let ((_g157974_ (let () (declare (not safe)) (##length _g157975_))))
          (cond ((let () (declare (not safe)) (##fx= _g157974_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157975_))
                ((let () (declare (not safe)) (##fx= _g157974_ 1))
                 (apply (lambda (_phi?156690_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156690_)))
                        _g157975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157975_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156589_)
        (let* ((_user-staticdir156591_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157976
                (let ((__tmp157977
                       (string-append
                        '"-I "
                        _staticdir156589_
                        '" -I "
                        _user-staticdir156591_)))
                  (declare (not safe))
                  (cons __tmp157977 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157976))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156501_ ((_rest156503_ (gxc#current-compile-gsc-options))
                         (_opts156504_ '()))
          (let* ((_rest156505156525_ _rest156503_)
                 (_else156509156533_ (lambda () _opts156504_)))
            (let ((_K156519156576_
                   (lambda (_rest156574_)
                     (let ()
                       (declare (not safe))
                       (_lp156501_ _rest156574_ _opts156504_))))
                  (_K156514156554_
                   (lambda (_rest156551_ _opt156552_)
                     (let ((__tmp157978
                            (append _opts156504_
                                    (let ((__tmp157979
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156552_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157979)))))
                       (declare (not safe))
                       (_lp156501_ _rest156551_ __tmp157978))))
                  (_K156511156539_
                   (lambda (_rest156537_)
                     (let ()
                       (declare (not safe))
                       (_lp156501_ _rest156537_ _opts156504_)))))
              (if (let () (declare (not safe)) (##pair? _rest156505156525_))
                  (let ((_tl156521156581_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156505156525_)))
                        (_hd156520156579_
                         (let ()
                           (declare (not safe))
                           (##car _rest156505156525_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156520156579_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156521156581_))
                            (let* ((_tl156523156584_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156521156581_)))
                                   (_rest156587_ _tl156523156584_))
                              (declare (not safe))
                              (_K156519156576_ _rest156587_))
                            (let ((_rest156545_ _tl156521156581_))
                              (declare (not safe))
                              (_K156511156539_ _rest156545_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156520156579_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156521156581_))
                                (let ((_tl156518156564_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156521156581_)))
                                      (_hd156517156562_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156521156581_))))
                                  (let ((_opt156567_ _hd156517156562_)
                                        (_rest156569_ _tl156518156564_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156514156554_
                                       _rest156569_
                                       _opt156567_))))
                                (let ((_rest156545_ _tl156521156581_))
                                  (declare (not safe))
                                  (_K156511156539_ _rest156545_)))
                            (let ((_rest156545_ _tl156521156581_))
                              (declare (not safe))
                              (_K156511156539_ _rest156545_)))))
                  (let () (declare (not safe)) (_else156509156533_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156498_)
        (let ((__tmp157980
               (let () (declare (not safe)) (string-empty? _str156498_))))
          (declare (not safe))
          (not __tmp157980))))
    (define gxc#gsc-compile-file
      (lambda (_path156466_ _phi?156467_)
        (letrec ((_gsc-link-path156469_
                  (lambda (_base-path156490_)
                    (let _lp156492_ ((_n156494_ '1))
                      (let ((_path156496_
                             (string-append
                              _base-path156490_
                              '".o"
                              (number->string _n156494_))))
                        (if (file-exists? _path156496_)
                            (let ((__tmp157981
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156494_ '1))))
                              (declare (not safe))
                              (_lp156492_ __tmp157981))
                            _path156496_))))))
          (let* ((_base-path156471_ (path-strip-extension _path156466_))
                 (_path-c156473_ (string-append _base-path156471_ '".c"))
                 (_path-o156475_ (string-append _base-path156471_ '".o"))
                 (_link-path156477_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156469_ _base-path156471_)))
                 (_link-path-c156479_ (string-append _link-path156477_ '".c"))
                 (_link-path-o156481_ (string-append _link-path156477_ '".o"))
                 (_gsc-link-opts156483_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156467_)))
                 (_gsc-cc-opts156485_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156467_)))
                 (_gcc-ld-opts156487_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157988 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157982
                   (let ((__tmp157983
                          (let ((__tmp157984
                                 (let ((__tmp157985
                                        (let ((__tmp157986
                                               (let ((__tmp157987
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156466_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157987
                                                         _gsc-link-opts156483_))))
                                          (declare (not safe))
                                          (cons _link-path-c156479_
                                                __tmp157986))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157985))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157984))))
                     (declare (not safe))
                     (cons '"-link" __tmp157983))))
              (declare (not safe))
              (gxc#invoke __tmp157988 __tmp157982 'stdout-redirection: '#t))
            (let ((__tmp157995 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157989
                   (let ((__tmp157990
                          (let ((__tmp157991
                                 (let ((__tmp157992
                                        (let ((__tmp157993
                                               (let ((__tmp157994
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156479_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156473_
                                                       __tmp157994))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157993
                                                  _gsc-cc-opts156485_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157992))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157991))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157990))))
              (declare (not safe))
              (gxc#invoke __tmp157995 __tmp157989 'stdout-redirection: '#t))
            (let ((__tmp158001 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157996
                   (let ((__tmp157997
                          (let ((__tmp157998
                                 (let ((__tmp157999
                                        (let ((__tmp158000
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156481_
                                                       _gcc-ld-opts156487_))))
                                          (declare (not safe))
                                          (cons _path-o156475_ __tmp158000))))
                                   (declare (not safe))
                                   (cons _link-path156477_ __tmp157999))))
                            (declare (not safe))
                            (cons '"-o" __tmp157998))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157997))))
              (declare (not safe))
              (gxc#invoke __tmp158001 __tmp157996))
            (for-each
             delete-file
             (let ((__tmp158002
                    (let ((__tmp158003
                           (let ((__tmp158004
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156481_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156479_ __tmp158004))))
                      (declare (not safe))
                      (cons _path-o156475_ __tmp158003))))
               (declare (not safe))
               (cons _path-c156473_ __tmp158002)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156437_ _n156438_ _ext156439_)
        (letrec ((_module-relative-path156441_
                  (lambda (_ctx156464_)
                    (path-strip-directory
                     (let ((__tmp158005
                            (##structure-ref
                             _ctx156464_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158005)))))
                 (_module-source-directory156442_
                  (lambda (_ctx156460_)
                    (path-directory
                     (let ((_mpath156462_
                            (##structure-ref
                             _ctx156460_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156462_))
                           _mpath156462_
                           (let ()
                             (declare (not safe))
                             (last _mpath156462_)))))))
                 (_section-string156443_
                  (lambda (_n156458_)
                    (if (let () (declare (not safe)) (number? _n156458_))
                        (number->string _n156458_)
                        (if (let () (declare (not safe)) (symbol? _n156458_))
                            (symbol->string _n156458_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156458_))
                                _n156458_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156458_)))))))
                 (_file-name156444_
                  (lambda (_path156456_)
                    (if _n156438_
                        (string-append
                         _path156456_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156443_ _n156438_))
                         _ext156439_)
                        (string-append _path156456_ _ext156439_))))
                 (_file-path156445_
                  (lambda ()
                    (let ((_$e156451_ (gxc#current-compile-output-dir)))
                      (if _$e156451_
                          ((lambda (_outdir156454_)
                             (path-expand
                              (let ((__tmp158007
                                     (let ((__tmp158008
                                            (##structure-ref
                                             _ctx156437_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158008))))
                                (declare (not safe))
                                (_file-name156444_ __tmp158007))
                              _outdir156454_))
                           _$e156451_)
                          (path-expand
                           (let ((__tmp158006
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156441_
                                     _ctx156437_))))
                             (declare (not safe))
                             (_file-name156444_ __tmp158006))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156442_
                              _ctx156437_))))))))
          (let ((_path156447_
                 (let () (declare (not safe)) (_file-path156445_))))
            (let ((__tmp158009
                   (lambda ()
                     (let ((__tmp158010 (path-directory _path156447_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158010)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158009))
            _path156447_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156419_)
        (letrec ((_file-name156421_
                  (lambda (_id156435_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156435_))
                     '".scm")))
                 (_file-path156422_
                  (lambda ()
                    (let* ((_file156428_
                            (let ((__tmp158011
                                   (##structure-ref
                                    _ctx156419_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156421_ __tmp158011)))
                           (_$e156430_ (gxc#current-compile-output-dir)))
                      (if _$e156430_
                          ((lambda (_outdir156433_)
                             (path-expand
                              _file156428_
                              (path-expand '"static" _outdir156433_)))
                           _$e156430_)
                          (path-expand _file156428_ '"static"))))))
          (let ((_path156424_
                 (let () (declare (not safe)) (_file-path156422_))))
            (let ((__tmp158012
                   (lambda ()
                     (let ((__tmp158013 (path-directory _path156424_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158013)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158012))
            _path156424_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156413_ _opts156414_)
        (let ((_$e156416_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156414_))))
          (if _$e156416_
              (values _$e156416_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156413_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156406_)
        (if (let () (declare (not safe)) (string? _idstr156406_))
            (let* ((_str156408_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156406_)))
                   (_strs156410_
                    (let ()
                      (declare (not safe))
                      (string-split _str156408_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156410_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156406_))
                (let ((__tmp158014 (symbol->string _idstr156406_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158014))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156406_))))))
    (define gxc#invoke__%
      (lambda (_g158015_
               _stdout-redirection156367156371_
               _stderr-redirection156368156373_
               _program156375_
               _args156376_)
        (let* ((_stdout-redirection156378_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156367156371_ absent-value))
                    '#f
                    _stdout-redirection156367156371_))
               (_stderr-redirection156380_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156368156373_ absent-value))
                    '#f
                    _stderr-redirection156368156373_)))
          (let ((__tmp158016
                 (let ()
                   (declare (not safe))
                   (cons _program156375_ _args156376_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158016))
          (let* ((_proc156382_
                  (open-process
                   (let ((__tmp158017
                          (let ((__tmp158018
                                 (let ((__tmp158019
                                        (let ((__tmp158020
                                               (let ((__tmp158021
                                                      (let ((__tmp158022
                                                             (let ((__tmp158023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156380_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158023))))
                (declare (not safe))
                (cons _stdout-redirection156378_ __tmp158022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158021))))
                                          (declare (not safe))
                                          (cons _args156376_ __tmp158020))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158019))))
                            (declare (not safe))
                            (cons _program156375_ __tmp158018))))
                     (declare (not safe))
                     (cons 'path: __tmp158017))))
                 (_output156387_
                  (if (or _stdout-redirection156378_
                          _stderr-redirection156380_)
                      (read-line _proc156382_ '#f)
                      '#f)))
            (let ((_status156390_ (process-status _proc156382_)))
              (close-port _proc156382_)
              (if (let () (declare (not safe)) (zero? _status156390_))
                  '#!void
                  (begin
                    (display _output156387_)
                    (let ((__tmp158024
                           (let ()
                             (declare (not safe))
                             (cons _program156375_ _args156376_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158024
                       _status156390_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156366156395_ . _args156397_)
        (apply gxc#invoke__%
               _keys156366156395_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156366156395_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156366156395_
                  'stderr-redirection:
                  absent-value))
               _args156397_)))
    (define gxc#invoke
      (lambda _args156369156403_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156369156403_)))
    (define gxc#join!
      (lambda (_thread156360_)
        (let ((__tmp158026
               (lambda (_exn156362_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156362_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156362_)))
                     (raise _exn156362_))))
              (__tmp158025 (lambda () (thread-join! _thread156360_))))
          (declare (not safe))
          (with-catch __tmp158026 __tmp158025))))))
