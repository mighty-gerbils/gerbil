(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708370118)
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
      (lambda (_path157528_ _fun157529_)
        (with-output-to-file
         (let ((__tmp157622
                (let ()
                  (declare (not safe))
                  (cons _path157528_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157622))
         _fun157529_)))
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
      (lambda (_gerbil-libdir157523_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157523_)))
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
      (lambda (_dir157521_) (delete-file-or-directory _dir157521_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157495_ _opts157496_)
        (if (let () (declare (not safe)) (string? _srcpath157495_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157495_)))
        (let ((_outdir157498_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157496_)))
              (_invoke-gsc?157499_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157496_)))
              (_gsc-options157500_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157496_)))
              (_keep-scm?157501_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157496_)))
              (_verbosity157502_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157496_)))
              (_optimize157503_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157496_)))
              (_debug157504_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157496_)))
              (_gen-ssxi157505_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157496_))))
          (if _outdir157498_
              (let ((__tmp157623
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157498_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157623))
              '#!void)
          (if _optimize157503_
              (let ((__tmp157624
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157624))
              '#!void)
          (let ((__tmp157628
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157495_))
                   (let ((__tmp157629
                          (let ((__tmp157630
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157495_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157630))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157629))))
                (__tmp157627
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157625
                 (let ((__tmp157626
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157495_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157626))))
            (declare (not safe))
            (call-with-parameters
             __tmp157628
             gxc#current-compile-output-dir
             _outdir157498_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157499_
             gxc#current-compile-gsc-options
             _gsc-options157500_
             gxc#current-compile-keep-scm
             _keep-scm?157501_
             gxc#current-compile-verbose
             _verbosity157502_
             gxc#current-compile-optimize
             _optimize157503_
             gxc#current-compile-debug
             _debug157504_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157505_
             gxc#current-compile-timestamp
             __tmp157627
             gxc#current-compile-context
             __tmp157625
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157514_)
        (let ((_opts157516_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157514_ _opts157516_))))
    (define gxc#compile-module
      (lambda _g157632_
        (let ((_g157631_ (let () (declare (not safe)) (##length _g157632_))))
          (cond ((let () (declare (not safe)) (##fx= _g157631_ 1))
                 (apply (lambda (_srcpath157514_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157514_)))
                        _g157632_))
                ((let () (declare (not safe)) (##fx= _g157631_ 2))
                 (apply (lambda (_srcpath157518_ _opts157519_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157518_
                             _opts157519_)))
                        _g157632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157632_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157471_ _opts157472_)
        (if (let () (declare (not safe)) (string? _srcpath157471_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157471_)))
        (let ((_outdir157474_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157472_)))
              (_invoke-gsc?157475_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157472_)))
              (_gsc-options157476_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157472_)))
              (_keep-scm?157477_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157472_)))
              (_verbosity157478_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157472_)))
              (_debug157479_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157472_))))
          (if _outdir157474_
              (let ((__tmp157633
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157474_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157633))
              '#!void)
          (let ((__tmp157637
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157471_))
                   (let ((__tmp157638
                          (let ((__tmp157639
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157471_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157639))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157638
                      _opts157472_))))
                (__tmp157636
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157634
                 (let ((__tmp157635
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157471_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157635))))
            (declare (not safe))
            (call-with-parameters
             __tmp157637
             gxc#current-compile-output-dir
             _outdir157474_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157475_
             gxc#current-compile-gsc-options
             _gsc-options157476_
             gxc#current-compile-keep-scm
             _keep-scm?157477_
             gxc#current-compile-verbose
             _verbosity157478_
             gxc#current-compile-debug
             _debug157479_
             gxc#current-compile-timestamp
             __tmp157636
             gxc#current-compile-context
             __tmp157634
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157487_)
        (let ((_opts157489_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157487_ _opts157489_))))
    (define gxc#compile-exe
      (lambda _g157641_
        (let ((_g157640_ (let () (declare (not safe)) (##length _g157641_))))
          (cond ((let () (declare (not safe)) (##fx= _g157640_ 1))
                 (apply (lambda (_srcpath157487_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157487_)))
                        _g157641_))
                ((let () (declare (not safe)) (##fx= _g157640_ 2))
                 (apply (lambda (_srcpath157491_ _opts157492_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157491_ _opts157492_)))
                        _g157641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157641_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157467_ _opts157468_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157468_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157467_
               _opts157468_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157467_
               _opts157468_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157350_ _opts157351_)
        (letrec ((_generate-stub157353_
                  (lambda (_builtin-modules157463_)
                    (let ((_mod-main157465_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157350_ 'main))))
                      (write (let ((__tmp157642
                                    (let ((__tmp157643
                                           (let ((__tmp157644
                                                  (let ((__tmp157645
                                                         (let ((__tmp157647
                                                                (let ((__tmp157648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157463_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157648)))
                       (__tmp157646
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157647 __tmp157646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157645))))
                                             (declare (not safe))
                                             (cons __tmp157644 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157643))))
                               (declare (not safe))
                               (cons 'define __tmp157642)))
                      (write (let ((__tmp157649
                                    (let ((__tmp157688
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157650
                                           (let ((__tmp157651
                                                  (let ((__tmp157652
                                                         (let ((__tmp157676
                                                                (let ((__tmp157677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157678
                                      (let ((__tmp157686
                                             (let ((__tmp157687
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157687)))
                                            (__tmp157679
                                             (let ((__tmp157680
                                                    (let ((__tmp157681
                                                           (let ((__tmp157682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157683
                                 (let ((__tmp157684
                                        (let ((__tmp157685
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157685 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157684))))
                            (declare (not safe))
                            (cons __tmp157683 '()))))
                     (declare (not safe))
                     (cons _mod-main157465_ __tmp157682))))
              (declare (not safe))
              (cons 'apply __tmp157681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157680 '()))))
                                        (declare (not safe))
                                        (cons __tmp157686 __tmp157679))))
                                 (declare (not safe))
                                 (cons '() __tmp157678))))
                          (declare (not safe))
                          (cons 'lambda __tmp157677)))
                       (__tmp157653
                        (let ((__tmp157654
                               (let ((__tmp157655
                                      (let ((__tmp157656
                                             (let ((__tmp157667
                                                    (let ((__tmp157668
                                                           (let ((__tmp157669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157670
                                 (let ((__tmp157671
                                        (let ((__tmp157672
                                               (let ((__tmp157673
                                                      (let ((__tmp157674
                                                             (let ((__tmp157675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157675 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157673 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157672))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157671))))
                            (declare (not safe))
                            (cons __tmp157670 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157669))))
              (declare (not safe))
              (cons 'with-catch __tmp157668)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157657
                                                    (let ((__tmp157658
                                                           (let ((__tmp157659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157660
                                 (let ((__tmp157661
                                        (let ((__tmp157662
                                               (let ((__tmp157663
                                                      (let ((__tmp157664
                                                             (let ((__tmp157665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157666
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157666 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157665))))
                (declare (not safe))
                (cons __tmp157664 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157663))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157662))))
                                   (declare (not safe))
                                   (cons __tmp157661 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157660))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157659))))
              (declare (not safe))
              (cons __tmp157658 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157667
                                                     __tmp157657))))
                                        (declare (not safe))
                                        (cons '() __tmp157656))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157655))))
                          (declare (not safe))
                          (cons __tmp157654 '()))))
                   (declare (not safe))
                   (cons __tmp157676 __tmp157653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157652))))
                                             (declare (not safe))
                                             (cons __tmp157651 '()))))
                                      (declare (not safe))
                                      (cons __tmp157688 __tmp157650))))
                               (declare (not safe))
                               (cons 'define __tmp157649)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157354_
                  (lambda (_libgerbil157461_)
                    (call-with-input-file
                     (string-append _libgerbil157461_ '".ldd")
                     read)))
                 (_replace-extension157355_
                  (lambda (_path157458_ _ext157459_)
                    (string-append
                     (path-strip-extension _path157458_)
                     _ext157459_)))
                 (_not-exclude-module?157356_
                  (lambda (_ctx157454_)
                    (let ((_id-str157456_
                           (symbol->string
                            (##structure-ref
                             _ctx157454_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157690
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157456_))))
                            (declare (not safe))
                            (not __tmp157690))
                          (let ((__tmp157689
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157456_))))
                            (declare (not safe))
                            (not __tmp157689))
                          '#f))))
                 (_not-file-empty?157357_
                  (lambda (_path157452_)
                    (let ((__tmp157691
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157452_))))
                      (declare (not safe))
                      (not __tmp157691))))
                 (_compile-stub157358_
                  (lambda (_output-scm157365_ _output-bin157366_)
                    (let* ((_gerbil-home157368_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157370_
                            (path-expand '"lib" _gerbil-home157368_))
                           (_gerbil-staticdir157372_
                            (path-expand '"static" _gerbil-libdir157370_))
                           (_gxlink157374_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157370_))
                           (_tmp157376_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157380_
                            (lambda (_f157378_)
                              (path-expand
                               (path-strip-directory _f157378_)
                               _tmp157376_)))
                           (_deps157382_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157350_)))
                           (_deps157384_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157356_
                                      _deps157382_)))
                           (_src-deps-scm157386_
                            (map gxc#find-static-module-file _deps157384_))
                           (_src-deps-scm157388_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157357_
                                      _src-deps-scm157386_)))
                           (_src-deps-scm157390_
                            (map path-expand _src-deps-scm157388_))
                           (_deps-scm157392_
                            (map _tmp-path157380_ _src-deps-scm157390_))
                           (_deps-c157398_
                            (map (lambda (_g157393157395_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157355_
                                      _g157393157395_
                                      '".c")))
                                 _deps-scm157392_))
                           (_deps-o157404_
                            (map (lambda (_g157399157401_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157355_
                                      _g157399157401_
                                      '".o")))
                                 _deps-scm157392_))
                           (_src-bin-scm157406_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157350_)))
                           (_src-bin-scm157408_
                            (path-expand _src-bin-scm157406_))
                           (_bin-scm157410_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157380_ _src-bin-scm157408_)))
                           (_bin-c157412_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157355_
                               _bin-scm157410_
                               '".c")))
                           (_bin-o157414_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157355_
                               _bin-scm157410_
                               '".o")))
                           (_output-bin157416_
                            (path-expand _output-bin157366_))
                           (_output-scm157418_
                            (path-expand _output-scm157365_))
                           (_output-c157420_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157355_
                               _output-scm157418_
                               '".c")))
                           (_output-o157422_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157355_
                               _output-scm157418_
                               '".o")))
                           (_output_-c157424_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157355_
                               _output-scm157418_
                               '"_.c")))
                           (_output_-o157426_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157355_
                               _output-scm157418_
                               '"_.o")))
                           (_gsc-link-opts157428_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157430_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157432_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157372_)))
                           (_output-ld-opts157434_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157436_
                            (path-expand '"libgerbil.a" _gerbil-libdir157370_))
                           (_libgerbil.so157438_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157370_))
                           (_libgerbil-ld-opts157440_
                            (if (file-exists? _libgerbil.so157438_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157354_
                                   _libgerbil.so157438_))
                                (if (file-exists? _libgerbil.a157436_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157354_
                                       _libgerbil.a157436_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157436_
                                       _libgerbil.so157438_)))))
                           (_rpath157442_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157370_)))
                           (_builtin-modules157446_
                            (map (lambda (_mod157444_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157444_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157350_ _deps157384_)))))
                      (let ((__tmp157692
                             (lambda ()
                               (let ((__tmp157693
                                      (path-directory _output-bin157416_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157693)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157692))
                      (let ((__tmp157694
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157353_
                                  _builtin-modules157446_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157418_
                         __tmp157694))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157695
                                   (lambda () (create-directory _tmp157376_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157695))
                            (for-each
                             copy-file
                             _src-deps-scm157390_
                             _deps-scm157392_)
                            (copy-file _src-bin-scm157408_ _bin-scm157410_)
                            (let ((__tmp157703
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157696
                                   (let ((__tmp157697
                                          (let ((__tmp157698
                                                 (let ((__tmp157699
                                                        (let ((__tmp157700
                                                               (let ((__tmp157701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157702
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157418_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157410_ __tmp157702))))
                         (declare (not safe))
                         (foldr1 cons __tmp157701 _deps-scm157392_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157700 _gsc-link-opts157428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157374_
                                                         __tmp157699))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157698))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157697))))
                              (declare (not safe))
                              (gxc#invoke __tmp157703 __tmp157696))
                            (let ((__tmp157711
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157704
                                   (let ((__tmp157705
                                          (let ((__tmp157706
                                                 (let ((__tmp157707
                                                        (let ((__tmp157708
                                                               (let ((__tmp157709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157710
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157424_ '()))))
                                (declare (not safe))
                                (cons _output-c157420_ __tmp157710))))
                         (declare (not safe))
                         (cons _bin-c157412_ __tmp157709))))
                  (declare (not safe))
                  (foldr1 cons __tmp157708 _deps-c157398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157707
                                                           _gsc-static-opts157432_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157706
                                                    _gsc-cc-opts157430_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157705))))
                              (declare (not safe))
                              (gxc#invoke __tmp157711 __tmp157704))
                            (let ((__tmp157724
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157712
                                   (let ((__tmp157713
                                          (let ((__tmp157714
                                                 (let ((__tmp157715
                                                        (let ((__tmp157716
                                                               (let ((__tmp157717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157718
                                     (let ((__tmp157719
                                            (let ((__tmp157720
                                                   (let ((__tmp157721
                                                          (let ((__tmp157722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157723
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157440_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157723))))
                    (declare (not safe))
                    (cons _gerbil-libdir157370_ __tmp157722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157721))))
                                              (declare (not safe))
                                              (cons _rpath157442_
                                                    __tmp157720))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157719
                                               _output-ld-opts157434_))))
                                (declare (not safe))
                                (cons _output_-o157426_ __tmp157718))))
                         (declare (not safe))
                         (cons _output-o157422_ __tmp157717))))
                  (declare (not safe))
                  (cons _bin-o157414_ __tmp157716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157715
                                                           _deps-o157404_))))
                                            (declare (not safe))
                                            (cons _output-bin157416_
                                                  __tmp157714))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157713))))
                              (declare (not safe))
                              (gxc#invoke __tmp157724 __tmp157712))
                            (for-each
                             delete-file
                             (let ((__tmp157725
                                    (let ((__tmp157726
                                           (let ((__tmp157727
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157426_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157422_
                                                   __tmp157727))))
                                      (declare (not safe))
                                      (cons _output_-c157424_ __tmp157726))))
                               (declare (not safe))
                               (cons _output-c157420_ __tmp157725)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157376_)))
                          '#!void)))))
          (let* ((_output-bin157360_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157350_ _opts157351_)))
                 (_output-scm157362_
                  (string-append _output-bin157360_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157358_ _output-scm157362_ _output-bin157360_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157362_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157175_ _opts157176_)
        (letrec ((_reset-declare157178_
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
                 (_generate-stub157179_
                  (lambda (_deps157341_)
                    (let ((_mod-main157343_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157175_ 'main)))
                          (_reset-decl157344_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157178_)))
                          (_user-decl157345_
                           (let ()
                             (declare (not safe))
                             (_user-declare157180_))))
                      (for-each
                       (lambda (_dep157347_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157344_)
                         (newline)
                         (if _user-decl157345_
                             (begin (write _user-decl157345_) (newline))
                             '#!void)
                         (write (let ((__tmp157728
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157347_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157728)))
                         (newline))
                       _deps157341_)
                      (write (let ((__tmp157729
                                    (let ((__tmp157742
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157730
                                           (let ((__tmp157738
                                                  (let ((__tmp157739
                                                         (let ((__tmp157740
                                                                (let ((__tmp157741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157741))))
                   (declare (not safe))
                   (cons __tmp157740 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157739)))
                                                 (__tmp157731
                                                  (let ((__tmp157732
                                                         (let ((__tmp157733
                                                                (let ((__tmp157734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157735
                                      (let ((__tmp157736
                                             (let ((__tmp157737
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157737 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157736))))
                                 (declare (not safe))
                                 (cons __tmp157735 '()))))
                          (declare (not safe))
                          (cons _mod-main157343_ __tmp157734))))
                   (declare (not safe))
                   (cons 'apply __tmp157733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157732 '()))))
                                             (declare (not safe))
                                             (cons __tmp157738 __tmp157731))))
                                      (declare (not safe))
                                      (cons __tmp157742 __tmp157730))))
                               (declare (not safe))
                               (cons 'define __tmp157729)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157180_
                  (lambda ()
                    (let* ((_gsc-opts157246_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157176_)))
                           (_gsc-prelude157248_
                            (if _gsc-opts157246_
                                (member '"-prelude" _gsc-opts157246_)
                                '#f))
                           (_gsc-prelude157250_
                            (if _gsc-prelude157248_
                                (read (open-input-string
                                       (cadr _gsc-prelude157248_)))
                                '#f)))
                      (let _lp157253_ ((_rest157255_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157250_ '())))
                                       (_user-decls157256_ '()))
                        (let* ((_rest157257157265_ _rest157255_)
                               (_else157259157273_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157256_))
                                      '#f
                                      (let ((__tmp157743
                                             (reverse _user-decls157256_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157743)))))
                               (_K157261157329_
                                (lambda (_rest157276_ _expr157277_)
                                  (let* ((_expr157278157290_ _expr157277_)
                                         (_else157281157298_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157253_
                                               _rest157276_
                                               _user-decls157256_)))))
                                    (let ((_K157286157319_
                                           (lambda (_decls157317_)
                                             (let ((__tmp157744
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157256_
                                                              _decls157317_))))
                                               (declare (not safe))
                                               (_lp157253_
                                                _rest157276_
                                                __tmp157744))))
                                          (_K157283157304_
                                           (lambda (_exprs157302_)
                                             (let ((__tmp157745
                                                    (append _exprs157302_
                                                            _rest157276_)))
                                               (declare (not safe))
                                               (_lp157253_
                                                __tmp157745
                                                _user-decls157256_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157278157290_))
                                          (let ((_tl157288157324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157278157290_)))
                                                (_hd157287157322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157278157290_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157287157322_
                                                         'declare))
                                                (let ((_decls157327_
                                                       _tl157288157324_))
                                                  (declare (not safe))
                                                  (_K157286157319_
                                                   _decls157327_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157287157322_
                                                             'begin))
                                                    (let ((_exprs157312_
                                                           _tl157288157324_))
                                                      (declare (not safe))
                                                      (_K157283157304_
                                                       _exprs157312_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157281157298_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157281157298_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157257157265_))
                              (let ((_hd157262157332_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157257157265_)))
                                    (_tl157263157334_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157257157265_))))
                                (let* ((_expr157337_ _hd157262157332_)
                                       (_rest157339_ _tl157263157334_))
                                  (declare (not safe))
                                  (_K157261157329_ _rest157339_ _expr157337_)))
                              (let ()
                                (declare (not safe))
                                (_else157259157273_))))))))
                 (_compile-stub157181_
                  (lambda (_output-scm157188_ _output-bin157189_)
                    (let* ((_gerbil-home157191_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157193_
                            (path-expand '"lib" _gerbil-home157191_))
                           (_runtime157195_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157197_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157191_))
                           (_include-gambit-sharp157199_
                            (string-append
                             '"(include \""
                             _gambit-sharp157197_
                             '"\")"))
                           (_bin-scm157201_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157175_)))
                           (_deps157203_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157175_)))
                           (_deps157205_
                            (map gxc#find-static-module-file _deps157203_))
                           (_deps157210_
                            (let ((__tmp157746
                                   (lambda (_$obj157207_)
                                     (let ((__tmp157747
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157207_))))
                                       (declare (not safe))
                                       (not __tmp157747)))))
                              (declare (not safe))
                              (filter __tmp157746 _deps157205_)))
                           (_deps157214_
                            (let ((__tmp157748
                                   (lambda (_f157212_)
                                     (let ((__tmp157749
                                            (member _f157212_
                                                    _runtime157195_)))
                                       (declare (not safe))
                                       (not __tmp157749)))))
                              (declare (not safe))
                              (filter __tmp157748 _deps157210_)))
                           (_output-base157216_
                            (string-append
                             (path-strip-extension _output-scm157188_)))
                           (_output-c157218_
                            (string-append _output-base157216_ '".c"))
                           (_output-o157220_
                            (string-append _output-base157216_ '".o"))
                           (_output-c_157222_
                            (string-append _output-base157216_ '"_.c"))
                           (_output-o_157224_
                            (string-append _output-base157216_ '"_.o"))
                           (_gsc-link-opts157226_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157228_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157230_
                            (let ((__tmp157750
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157193_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157750)))
                           (_output-ld-opts157232_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157234_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157752
                                       (let ((__tmp157753
                                              (let ((__tmp157754
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157199_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157754))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157753))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157752))
                                (let ((__tmp157751
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157199_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157751))))
                           (_gsc-link-opts157236_
                            (append _gsc-link-opts157226_
                                    _gsc-gx-macros157234_))
                           (_rpath157238_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157193_)))
                           (_default-ld-options157240_
                            (let ((__tmp157755
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157755))))
                      (let ((__tmp157756
                             (lambda ()
                               (let ((__tmp157757
                                      (path-directory _output-bin157189_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157757)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157756))
                      (let ((__tmp157758
                             (lambda ()
                               (let ((__tmp157759
                                      (let ((__tmp157760
                                             (let ((__tmp157761
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157201_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157761
                                                       _deps157214_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157760
                                                _runtime157195_))))
                                 (declare (not safe))
                                 (_generate-stub157179_ __tmp157759)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157188_
                         __tmp157758))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157767
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157762
                                   (let ((__tmp157763
                                          (let ((__tmp157764
                                                 (let ((__tmp157765
                                                        (let ((__tmp157766
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157188_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157766 _gsc-link-opts157236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157222_
                                                         __tmp157765))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157764))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157763))))
                              (declare (not safe))
                              (gxc#invoke __tmp157767 __tmp157762))
                            (let ((__tmp157773
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157768
                                   (let ((__tmp157769
                                          (let ((__tmp157770
                                                 (let ((__tmp157771
                                                        (let ((__tmp157772
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157222_ '()))))
                  (declare (not safe))
                  (cons _output-c157218_ __tmp157772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157771
                                                           _gsc-static-opts157230_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157770
                                                    _gsc-cc-opts157228_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157769))))
                              (declare (not safe))
                              (gxc#invoke __tmp157773 __tmp157768))
                            (let ((__tmp157783
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157774
                                   (let ((__tmp157775
                                          (let ((__tmp157776
                                                 (let ((__tmp157777
                                                        (let ((__tmp157778
                                                               (let ((__tmp157779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157780
                                     (let ((__tmp157781
                                            (let ((__tmp157782
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157240_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157193_
                                                    __tmp157782))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157781))))
                                (declare (not safe))
                                (cons _rpath157238_ __tmp157780))))
                         (declare (not safe))
                         (foldr1 cons __tmp157779 _output-ld-opts157232_))))
                  (declare (not safe))
                  (cons _output-o_157224_ __tmp157778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157220_
                                                         __tmp157777))))
                                            (declare (not safe))
                                            (cons _output-bin157189_
                                                  __tmp157776))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157775))))
                              (declare (not safe))
                              (gxc#invoke __tmp157783 __tmp157774)))
                          '#!void)))))
          (let* ((_output-bin157183_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157175_ _opts157176_)))
                 (_output-scm157185_
                  (string-append _output-bin157183_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157181_ _output-scm157185_ _output-bin157183_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157185_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157125_ _id157126_)
        (let ((_$e157172_
               (let ((__tmp157785
                      (lambda (_e157127157129_)
                        (let* ((_g157131157141_ _e157127157129_)
                               (_else157133157149_ (lambda () '#f))
                               (_K157135157153_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157131157141_
                                 'gx#module-export::t))
                              (let* ((_e157136157156_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157131157141_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157137157159_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157131157141_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157138157162_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157131157141_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157138157162_ '0))
                                    (let ((_e157139157165_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157131157141_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157167157169_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157167157169_
                                                    _id157126_)))
                                           _e157139157165_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157135157153_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157133157149_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157133157149_))))
                              (let ()
                                (declare (not safe))
                                (_else157133157149_))))))
                     (__tmp157784
                      (##structure-ref
                       _ctx157125_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157785 __tmp157784))))
          (if _$e157172_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157172_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157117_ _id157118_)
        (let ((_$e157120_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157117_ _id157118_))))
          (if _$e157120_
              ((lambda (_bind157123_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157123_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157118_)))
                 (##structure-ref _bind157123_ '1 gx#binding::t '#f))
               _$e157120_)
              (let ((__tmp157786
                     (##structure-ref
                      _ctx157117_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157786
                 _id157118_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157004_)
        (letrec* ((_ht157006_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157007_
                   (lambda (_in157069_ _phi157070_)
                     (let ((_iphi157072_
                            (fx+ _phi157070_
                                 (##direct-structure-ref
                                  _in157069_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157073_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157069_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157075_ ((_rest157077_ _imports157073_)
                                        (_r157078_ '()))
                         (let* ((_rest157079157087_ _rest157077_)
                                (_else157081157095_ (lambda () _r157078_))
                                (_K157083157105_
                                 (lambda (_rest157098_ _in157099_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157099_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157072_))
                                           (let ((__tmp157793
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157099_
                                                          _r157078_))))
                                             (declare (not safe))
                                             (_lp157075_
                                              _rest157098_
                                              __tmp157793))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157075_
                                              _rest157098_
                                              _r157078_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157099_
                                              'gx#module-import::t))
                                           (let ((_iphi157101_
                                                  (fx+ _phi157070_
                                                       (##direct-structure-ref
                                                        _in157099_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157101_))
                                                 (let ((__tmp157791
                                                        (let ((__tmp157792
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157099_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157792 _r157078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157075_
                                                    _rest157098_
                                                    __tmp157791))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157075_
                                                    _rest157098_
                                                    _r157078_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157099_
                                                  'gx#import-set::t))
                                               (let ((_xphi157103_
                                                      (fx+ _iphi157072_
                                                           (##direct-structure-ref
                                                            _in157099_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157103_))
                                                     (let ((__tmp157789
                                                            (let ((__tmp157790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157099_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157790 _r157078_))))
               (declare (not safe))
               (_lp157075_ _rest157098_ __tmp157789))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157103_)
                                                         (let ((__tmp157787
                                                                (let ((__tmp157788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157007_
                                  _in157099_
                                  _iphi157072_))))
                          (declare (not safe))
                          (foldl1 cons _r157078_ __tmp157788))))
                   (declare (not safe))
                   (_lp157075_ _rest157098_ __tmp157787))
                 (let ()
                   (declare (not safe))
                   (_lp157075_ _rest157098_ _r157078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157075_
                                                  _rest157098_
                                                  _r157078_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157079157087_))
                               (let ((_hd157084157108_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157079157087_)))
                                     (_tl157085157110_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157079157087_))))
                                 (let* ((_in157113_ _hd157084157108_)
                                        (_rest157115_ _tl157085157110_))
                                   (declare (not safe))
                                   (_K157083157105_ _rest157115_ _in157113_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157081157095_))))))))
                  (_find-deps157008_
                   (lambda (_rest157015_ _deps157016_)
                     (let* ((_rest157017157025_ _rest157015_)
                            (_else157019157033_ (lambda () _deps157016_))
                            (_K157021157057_
                             (lambda (_rest157036_ _hd157037_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157037_
                                      'gx#module-context::t))
                                   (let ((_id157039_
                                          (##structure-ref
                                           _hd157037_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157040_
                                          (##structure-ref
                                           _hd157037_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157006_ _id157039_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157008_
                                            _rest157036_
                                            _deps157016_))
                                         (let ((_$e157042_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157037_))))
                                           (if _$e157042_
                                               ((lambda (_pre157045_)
                                                  (let ((_xdeps157047_
                                                         (let ((__tmp157806
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157045_ _imports157040_))))
                   (declare (not safe))
                   (_find-deps157008_ __tmp157806 _deps157016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157006_
                                                       _id157039_
                                                       _hd157037_))
                                                    (let ((__tmp157807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157047_))))
              (declare (not safe))
              (_find-deps157008_ _rest157036_ __tmp157807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157042_)
                                               (let ((_xdeps157049_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157008_
                                                         _imports157040_
                                                         _deps157016_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157006_
                                                    _id157039_
                                                    _hd157037_))
                                                 (let ((__tmp157805
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157037_
                                                                _xdeps157049_))))
                                                   (declare (not safe))
                                                   (_find-deps157008_
                                                    _rest157036_
                                                    __tmp157805)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157037_
                                          'gx#prelude-context::t))
                                       (let ((_id157051_
                                              (##structure-ref
                                               _hd157037_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157006_
                                                _id157051_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157008_
                                                _rest157036_
                                                _deps157016_))
                                             (let ((_xdeps157053_
                                                    (let ((__tmp157803
                                                           (##structure-ref
                                                            _hd157037_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157008_
                                                       __tmp157803
                                                       _deps157016_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157006_
                                                      _id157051_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157008_
                                                      _rest157036_
                                                      _xdeps157053_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157006_
                                                        _id157051_
                                                        _hd157037_))
                                                     (let ((__tmp157804
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157053_))))
               (declare (not safe))
               (_find-deps157008_ _rest157036_ __tmp157804)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157037_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157802
                                                      (##direct-structure-ref
                                                       _hd157037_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157802))
                                               (let ((__tmp157800
                                                      (let ((__tmp157801
                                                             (##direct-structure-ref
                                                              _hd157037_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157801
                                                              _rest157036_))))
                                                 (declare (not safe))
                                                 (_find-deps157008_
                                                  __tmp157800
                                                  _deps157016_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157008_
                                                  _rest157036_
                                                  _deps157016_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157037_
                                                  'gx#module-export::t))
                                               (let ((__tmp157798
                                                      (let ((__tmp157799
                                                             (##direct-structure-ref
                                                              _hd157037_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157799
                                                              _rest157036_))))
                                                 (declare (not safe))
                                                 (_find-deps157008_
                                                  __tmp157798
                                                  _deps157016_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157037_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157797
                                                              (##direct-structure-ref
                                                               _hd157037_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157797))
                                                       (let ((__tmp157795
                                                              (let ((__tmp157796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157037_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157796 _rest157036_))))
                 (declare (not safe))
                 (_find-deps157008_ __tmp157795 _deps157016_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157037_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157055_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157007_ _hd157037_ '0)))
                          (__tmp157794
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157036_ _xdeps157055_))))
                     (declare (not safe))
                     (_find-deps157008_ __tmp157794 _deps157016_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157008_ _rest157036_ _deps157016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157037_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157017157025_))
                           (let ((_hd157022157060_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157017157025_)))
                                 (_tl157023157062_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157017157025_))))
                             (let* ((_hd157065_ _hd157022157060_)
                                    (_rest157067_ _tl157023157062_))
                               (declare (not safe))
                               (_K157021157057_ _rest157067_ _hd157065_)))
                           (let ()
                             (declare (not safe))
                             (_else157019157033_)))))))
          (reverse (let ((__tmp157808
                          (let ((__tmp157809
                                 (let ((_$e157010_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157004_))))
                                   (if _$e157010_
                                       ((lambda (_pre157013_)
                                          (let ((__tmp157810
                                                 (##structure-ref
                                                  _ctx157004_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157013_ __tmp157810)))
                                        _$e157010_)
                                       (##structure-ref
                                        _ctx157004_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157008_ __tmp157809 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157808))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156935_)
        (let* ((_context-id156937_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156935_
                       'gx#module-context::t))
                    (##structure-ref _ctx156935_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156935_)))
               (_scm156939_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156937_))
                 '".scm"))
               (_dirs156941_ (gx#current-expander-module-library-path))
               (_dirs156947_
                (let ((_user-libpath156943_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156943_
                      (let ((_user-libpath156945_
                             (path-expand '"lib" _user-libpath156943_)))
                        (if (member _user-libpath156945_ _dirs156941_)
                            _dirs156941_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156945_ _dirs156941_))))
                      _dirs156941_)))
               (_dirs156956_
                (let ((_$e156949_ (gxc#current-compile-output-dir)))
                  (if _$e156949_
                      ((lambda (_g156951156953_)
                         (let ()
                           (declare (not safe))
                           (cons _g156951156953_ _dirs156947_)))
                       _$e156949_)
                      _dirs156947_)))
               (_dirs156962_
                (map (lambda (_g156957156959_)
                       (path-expand '"static" _g156957156959_))
                     _dirs156956_)))
          (let _lp156965_ ((_rest156967_ _dirs156962_))
            (let* ((_rest156968156976_ _rest156967_)
                   (_else156970156984_
                    (lambda ()
                      (let ((__tmp157811
                             (##structure-ref
                              _ctx156935_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157811
                         _scm156939_))))
                   (_K156972156992_
                    (lambda (_rest156987_ _dir156988_)
                      (let ((_path156990_
                             (path-expand _scm156939_ _dir156988_)))
                        (if (file-exists? _path156990_)
                            _path156990_
                            (let ()
                              (declare (not safe))
                              (_lp156965_ _rest156987_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156968156976_))
                  (let ((_hd156973156995_
                         (let ()
                           (declare (not safe))
                           (##car _rest156968156976_)))
                        (_tl156974156997_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156968156976_))))
                    (let* ((_dir157000_ _hd156973156995_)
                           (_rest157002_ _tl156974156997_))
                      (declare (not safe))
                      (_K156972156992_ _rest157002_ _dir157000_)))
                  (let () (declare (not safe)) (_else156970156984_))))))))
    (define gxc#file-empty?
      (lambda (_path156933_)
        (let ((__tmp157812 (file-info-size (file-info _path156933_ '#t))))
          (declare (not safe))
          (zero? __tmp157812))))
    (define gxc#compile-top-module
      (lambda (_ctx156922_)
        (let ((__tmp157816
               (lambda ()
                 (let ((__tmp157817
                        (##structure-ref
                         _ctx156922_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157817))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157818
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156922_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157818))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156922_))
                 (if (let ((__tmp157821
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156922_))))
                       (declare (not safe))
                       (null? __tmp157821))
                     (let* ((_thr1156927_
                             (let ((__tmp157819
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156922_)))))
                               (declare (not safe))
                               (spawn __tmp157819)))
                            (_thr2156930_
                             (let ((__tmp157820
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156922_)))))
                               (declare (not safe))
                               (spawn __tmp157820))))
                       (let () (declare (not safe)) (gxc#join! _thr1156927_))
                       (let () (declare (not safe)) (gxc#join! _thr2156930_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156922_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156922_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156922_))
                     '#!void)))
              (__tmp157815
               (let ((__obj157620
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157620)
                 __obj157620))
              (__tmp157814 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157813 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157816
           gx#current-expander-context
           _ctx156922_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157815
           gxc#current-compile-runtime-sections
           __tmp157814
           gxc#current-compile-runtime-names
           __tmp157813))))
    (define gxc#collect-bindings
      (lambda (_ctx156920_)
        (let ((__tmp157822
               (##structure-ref _ctx156920_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157822))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156866_)
        (letrec ((_compile1156868_
                  (lambda (_ctx156909_)
                    (let* ((_code156911_
                            (##structure-ref
                             _ctx156909_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156915_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156911_))
                                (let ((_idstr156913_
                                       (let ((__tmp157823
                                              (##structure-ref
                                               _ctx156909_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157823))))
                                  (string-append _idstr156913_ '"__0"))
                                '#f)))
                      (if _rt156915_
                          (begin
                            (let ((__tmp157824
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157824 _ctx156909_ _rt156915_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156870_
                               _ctx156909_
                               _code156911_)))
                          (let ((_path156918_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156909_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156918_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156871_
                         _ctx156909_
                         _code156911_
                         _rt156915_)))))
                 (_context-timestamp156869_
                  (lambda (_ctx156907_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156907_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156870_
                  (lambda (_ctx156889_ _code156890_)
                    (let* ((_lifts156892_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156895_
                            (let ((__tmp157827
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156890_))))
                                  (__tmp157826
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157825
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157827
                               gx#current-expander-context
                               _ctx156889_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156892_
                               gxc#current-compile-marks
                               __tmp157826
                               gxc#current-compile-identifiers
                               __tmp157825)))
                           (_runtime-code156897_
                            (if (let ((__tmp157831 (unbox _lifts156892_)))
                                  (declare (not safe))
                                  (null? __tmp157831))
                                _runtime-code156895_
                                (let ((__tmp157828
                                       (let ((__tmp157830
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156895_
                                                      '())))
                                             (__tmp157829
                                              (reverse (unbox _lifts156892_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157830
                                                 __tmp157829))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157828))))
                           (_runtime-code156899_
                            (let ((__tmp157832
                                   (let ((__tmp157834
                                          (let ((__tmp157835
                                                 (let ((__tmp157838
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156869_
                                                           _ctx156889_)))
                                                       (__tmp157836
                                                        (let ((__tmp157837
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157837
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157838
                                                         __tmp157836))))
                                            (declare (not safe))
                                            (cons 'define __tmp157835)))
                                         (__tmp157833
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156897_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157834 __tmp157833))))
                              (declare (not safe))
                              (cons 'begin __tmp157832)))
                           (_scm0156901_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156889_
                               '0
                               '".scm"))))
                      (let ((_scms156904_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156889_))))
                        (let ((__tmp157839
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156901_
                                    _runtime-code156899_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157839
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156904_)
                            (delete-file _scms156904_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156901_
                           '" => "
                           _scms156904_))
                        (copy-file _scm0156901_ _scms156904_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156901_))))))
                 (_generate-loader-code156871_
                  (lambda (_ctx156878_ _code156879_ _rt156880_)
                    (let* ((_loader-code156883_
                            (let ((__tmp157840
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156879_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157840
                               gx#current-expander-context
                               _ctx156878_)))
                           (_loader-code156885_
                            (if _rt156880_
                                (let ((__tmp157841
                                       (let ((__tmp157842
                                              (let ((__tmp157843
                                                     (let ((__tmp157844
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157843 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156883_
                                               __tmp157842))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157841))
                                _loader-code156883_)))
                      (let ((__tmp157845
                             (lambda ()
                               (let ((__tmp157846
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156878_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157846
                                  _loader-code156885_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157845
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156873_
                 (let ((__tmp157847
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156866_))))
                   (declare (not safe))
                   (cons _ctx156866_ __tmp157847))))
            (for-each
             (lambda (_ctx156875_)
               (let ((__tmp157848
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156868_ _ctx156875_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157848
                  gxc#current-compile-decls
                  '())))
             _all-modules156873_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156763_)
        (letrec ((_compile-ssi156765_
                  (lambda (_code156836_)
                    (let* ((_path156838_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156763_
                               '#f
                               '".ssi")))
                           (_prelude156849_
                            (let* ((_super156840_
                                    (##structure-ref
                                     _ctx156763_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156842_
                                    (##structure-ref
                                     _super156840_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156842_
                                  ((lambda (_g156844156846_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156844156846_)))
                                   _$e156842_)
                                  ':<root>)))
                           (_ns156851_
                            (##structure-ref
                             _ctx156763_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156853_
                            (symbol->string
                             (##structure-ref
                              _ctx156763_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156860_
                            (let ((_$e156855_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156853_ '#\/))))
                              (if _$e156855_
                                  ((lambda (_x156858_)
                                     (string->symbol
                                      (substring _idstr156853_ '0 _x156858_)))
                                   _$e156855_)
                                  '#f)))
                           (_rt156862_
                            (let ((__tmp157849
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157849 _ctx156763_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156838_))
                      (let ((__tmp157850
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156849_))
                               (if _pkg156860_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156860_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156851_))
                               (newline)
                               (pretty-print _code156836_)
                               (if _rt156862_
                                   (pretty-print
                                    (let ((__tmp157851
                                           (let ((__tmp157855
                                                  (let ((__tmp157856
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157856)))
                                                 (__tmp157852
                                                  (let ((__tmp157853
                                                         (let ((__tmp157854
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156862_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157853 '()))))
                                             (declare (not safe))
                                             (cons __tmp157855 __tmp157852))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157851)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156838_
                         __tmp157850)))))
                 (_compile-phi156766_
                  (lambda (_part156776_)
                    (let* ((_part156777156790_ _part156776_)
                           (_E156779156794_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156777156790_))))
                           (_K156780156805_
                            (lambda (_code156797_
                                     _n156798_
                                     _phi156799_
                                     _phi-ctx156800_)
                              (let* ((_code156803_
                                      (let ((__tmp157857
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156797_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157857
                                         gx#current-expander-context
                                         _phi-ctx156800_
                                         gx#current-expander-phi
                                         _phi156799_)))
                                     (__tmp157858
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156763_
                                         _n156798_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157858
                                 _code156803_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156777156790_))
                          (let ((_hd156781156808_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156777156790_)))
                                (_tl156782156810_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156777156790_))))
                            (let ((_phi-ctx156813_ _hd156781156808_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156782156810_))
                                  (let ((_hd156783156815_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156782156810_)))
                                        (_tl156784156817_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156782156810_))))
                                    (let ((_phi156820_ _hd156783156815_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156784156817_))
                                          (let ((_hd156785156822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156784156817_)))
                                                (_tl156786156824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156784156817_))))
                                            (let ((_n156827_ _hd156785156822_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156786156824_))
                                                  (let ((_hd156787156829_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156786156824_)))
                                                        (_tl156788156831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156786156824_))))
                                                    (let ((_code156834_
                                                           _hd156787156829_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156788156831_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156780156805_
                                                             _code156834_
                                                             _n156827_
                                                             _phi156820_
                                                             _phi-ctx156813_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156779156794_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156779156794_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156779156794_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156779156794_)))))
                          (let () (declare (not safe)) (_E156779156794_)))))))
          (let ((_g157859_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156763_))))
            (begin
              (let ((_g157860_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157859_)
                           (##vector-length _g157859_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157860_ 2)))
                    (error "Context expects 2 values" _g157860_)))
              (let ((_ssi-code156768_
                     (let () (declare (not safe)) (##vector-ref _g157859_ 0)))
                    (_phi-code156769_
                     (let () (declare (not safe)) (##vector-ref _g157859_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156765_ _ssi-code156768_))
                  (let ((_threads156774_
                         (map (lambda (_code156771_)
                                (let ((__tmp157861
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156766_
                                            _code156771_)))))
                                  (declare (not safe))
                                  (spawn __tmp157861)))
                              _phi-code156769_)))
                    (for-each gxc#join! _threads156774_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156746_)
        (let* ((_path156748_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156746_ '#f '".ssxi.ss")))
               (_code156750_
                (let ((__tmp157862
                       (##structure-ref
                        _ctx156746_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157862)))
               (_idstr156752_
                (symbol->string
                 (##structure-ref _ctx156746_ '1 gx#expander-context::t '#f)))
               (_pkg156759_
                (let ((_$e156754_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156752_ '#\/))))
                  (if _$e156754_
                      ((lambda (_x156757_)
                         (string->symbol
                          (substring _idstr156752_ '0 _x156757_)))
                       _$e156754_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156748_))
          (let ((__tmp157863
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156759_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156759_))
                       '#!void)
                   (newline)
                   (pretty-print _code156750_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156748_ __tmp157863)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156739_)
        (let* ((_state156741_
                (let ((__obj157621
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157621 _ctx156739_)
                  __obj157621))
               (_ssi-code156743_
                (let ((__tmp157864
                       (##structure-ref
                        _ctx156739_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157864 _state156741_))))
          (values _ssi-code156743_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156741_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156732_)
        (let ((_lifts156734_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157867
                 (lambda ()
                   (let ((_code156737_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156732_))))
                     (if (let ((__tmp157871 (unbox _lifts156734_)))
                           (declare (not safe))
                           (null? __tmp157871))
                         _code156737_
                         (let ((__tmp157868
                                (let ((__tmp157870
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156737_ '())))
                                      (__tmp157869
                                       (reverse (unbox _lifts156734_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157870 __tmp157869))))
                           (declare (not safe))
                           (cons 'begin __tmp157868))))))
                (__tmp157866
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157865
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157867
             gxc#current-compile-lift
             _lifts156734_
             gxc#current-compile-marks
             __tmp157866
             gxc#current-compile-identifiers
             __tmp157865)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156728_)
        (let ((_modules156730_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157872
                 (##structure-ref _ctx156728_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157872 _modules156730_))
          (reverse (unbox _modules156730_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156711_ _code156712_ _phi?156713_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156711_))
        (let ((__tmp157873
               (lambda ()
                 (pretty-print
                  (let ((__tmp157874
                         (let ((__tmp157881
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157875
                                (let ((__tmp157880
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157876
                                       (let ((__tmp157879
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157877
                                              (let ((__tmp157878
                                                     (if _phi?156713_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157878))))
                                         (declare (not safe))
                                         (cons __tmp157879 __tmp157877))))
                                  (declare (not safe))
                                  (cons __tmp157880 __tmp157876))))
                           (declare (not safe))
                           (cons __tmp157881 __tmp157875))))
                    (declare (not safe))
                    (cons 'declare __tmp157874)))
                 (pretty-print _code156712_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156711_ __tmp157873))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156711_ _phi?156713_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156711_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156719_ _code156720_)
        (let ((_phi?156722_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156719_ _code156720_ _phi?156722_))))
    (define gxc#compile-scm-file
      (lambda _g157883_
        (let ((_g157882_ (let () (declare (not safe)) (##length _g157883_))))
          (cond ((let () (declare (not safe)) (##fx= _g157882_ 2))
                 (apply (lambda (_path156719_ _code156720_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156719_
                             _code156720_)))
                        _g157883_))
                ((let () (declare (not safe)) (##fx= _g157882_ 3))
                 (apply (lambda (_path156724_ _code156725_ _phi?156726_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156724_
                             _code156725_
                             _phi?156726_)))
                        _g157883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157883_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156612_)
        (let _lp156614_ ((_rest156616_ (gxc#current-compile-gsc-options))
                         (_opts156617_ '()))
          (let* ((_rest156618156638_ _rest156616_)
                 (_else156622156646_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156612_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157884
                               (let ((__tmp157885 (reverse _opts156617_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157885))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157884))
                        (reverse _opts156617_)))))
            (let ((_K156632156689_
                   (lambda (_rest156687_)
                     (let ()
                       (declare (not safe))
                       (_lp156614_ _rest156687_ _opts156617_))))
                  (_K156627156671_
                   (lambda (_rest156669_)
                     (let ()
                       (declare (not safe))
                       (_lp156614_ _rest156669_ _opts156617_))))
                  (_K156624156653_
                   (lambda (_rest156650_ _opt156651_)
                     (let ((__tmp157886
                            (let ()
                              (declare (not safe))
                              (cons _opt156651_ _opts156617_))))
                       (declare (not safe))
                       (_lp156614_ _rest156650_ __tmp157886)))))
              (if (let () (declare (not safe)) (##pair? _rest156618156638_))
                  (let ((_tl156634156694_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156618156638_)))
                        (_hd156633156692_
                         (let ()
                           (declare (not safe))
                           (##car _rest156618156638_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156633156692_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156634156694_))
                            (let* ((_tl156636156697_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156634156694_)))
                                   (_rest156700_ _tl156636156697_))
                              (declare (not safe))
                              (_K156632156689_ _rest156700_))
                            (let ((_opt156661_ _hd156633156692_)
                                  (_rest156663_ _tl156634156694_))
                              (let ()
                                (declare (not safe))
                                (_K156624156653_ _rest156663_ _opt156661_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156633156692_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156634156694_))
                                (let* ((_tl156631156679_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156634156694_)))
                                       (_rest156682_ _tl156631156679_))
                                  (declare (not safe))
                                  (_K156627156671_ _rest156682_))
                                (let ((_opt156661_ _hd156633156692_)
                                      (_rest156663_ _tl156634156694_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156624156653_
                                     _rest156663_
                                     _opt156661_))))
                            (let ((_opt156661_ _hd156633156692_)
                                  (_rest156663_ _tl156634156694_))
                              (let ()
                                (declare (not safe))
                                (_K156624156653_ _rest156663_ _opt156661_))))))
                  (let () (declare (not safe)) (_else156622156646_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156706_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156706_))))
    (define gxc#gsc-link-options
      (lambda _g157888_
        (let ((_g157887_ (let () (declare (not safe)) (##length _g157888_))))
          (cond ((let () (declare (not safe)) (##fx= _g157887_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157888_))
                ((let () (declare (not safe)) (##fx= _g157887_ 1))
                 (apply (lambda (_phi?156708_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156708_)))
                        _g157888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157888_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156513_)
        (let _lp156515_ ((_rest156517_ (gxc#current-compile-gsc-options))
                         (_opts156518_ '()))
          (let* ((_rest156519156539_ _rest156517_)
                 (_else156523156547_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156513_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157889
                               (let ((__tmp157890 (reverse _opts156518_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157890))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157889))
                        (reverse _opts156518_)))))
            (let ((_K156533156586_
                   (lambda (_rest156583_ _opt156584_)
                     (let ((__tmp157891
                            (let ((__tmp157892
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156518_))))
                              (declare (not safe))
                              (cons _opt156584_ __tmp157892))))
                       (declare (not safe))
                       (_lp156515_ _rest156583_ __tmp157891))))
                  (_K156528156567_
                   (lambda (_rest156565_)
                     (let ()
                       (declare (not safe))
                       (_lp156515_ _rest156565_ _opts156518_))))
                  (_K156525156553_
                   (lambda (_rest156551_)
                     (let ()
                       (declare (not safe))
                       (_lp156515_ _rest156551_ _opts156518_)))))
              (if (let () (declare (not safe)) (##pair? _rest156519156539_))
                  (let ((_tl156535156591_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156519156539_)))
                        (_hd156534156589_
                         (let ()
                           (declare (not safe))
                           (##car _rest156519156539_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156534156589_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156535156591_))
                            (let ((_tl156537156596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156535156591_)))
                                  (_hd156536156594_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156535156591_))))
                              (let ((_opt156599_ _hd156536156594_)
                                    (_rest156601_ _tl156537156596_))
                                (let ()
                                  (declare (not safe))
                                  (_K156533156586_ _rest156601_ _opt156599_))))
                            (let ((_rest156559_ _tl156535156591_))
                              (declare (not safe))
                              (_K156525156553_ _rest156559_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156534156589_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156535156591_))
                                (let* ((_tl156532156575_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156535156591_)))
                                       (_rest156578_ _tl156532156575_))
                                  (declare (not safe))
                                  (_K156528156567_ _rest156578_))
                                (let ((_rest156559_ _tl156535156591_))
                                  (declare (not safe))
                                  (_K156525156553_ _rest156559_)))
                            (let ((_rest156559_ _tl156535156591_))
                              (declare (not safe))
                              (_K156525156553_ _rest156559_)))))
                  (let () (declare (not safe)) (_else156523156547_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156607_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156607_))))
    (define gxc#gsc-cc-options
      (lambda _g157894_
        (let ((_g157893_ (let () (declare (not safe)) (##length _g157894_))))
          (cond ((let () (declare (not safe)) (##fx= _g157893_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157894_))
                ((let () (declare (not safe)) (##fx= _g157893_ 1))
                 (apply (lambda (_phi?156609_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156609_)))
                        _g157894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157894_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156508_)
        (let* ((_user-staticdir156510_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157895
                (let ((__tmp157896
                       (string-append
                        '"-I "
                        _staticdir156508_
                        '" -I "
                        _user-staticdir156510_)))
                  (declare (not safe))
                  (cons __tmp157896 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157895))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156420_ ((_rest156422_ (gxc#current-compile-gsc-options))
                         (_opts156423_ '()))
          (let* ((_rest156424156444_ _rest156422_)
                 (_else156428156452_ (lambda () _opts156423_)))
            (let ((_K156438156495_
                   (lambda (_rest156493_)
                     (let ()
                       (declare (not safe))
                       (_lp156420_ _rest156493_ _opts156423_))))
                  (_K156433156473_
                   (lambda (_rest156470_ _opt156471_)
                     (let ((__tmp157897
                            (append _opts156423_
                                    (let ((__tmp157898
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156471_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157898)))))
                       (declare (not safe))
                       (_lp156420_ _rest156470_ __tmp157897))))
                  (_K156430156458_
                   (lambda (_rest156456_)
                     (let ()
                       (declare (not safe))
                       (_lp156420_ _rest156456_ _opts156423_)))))
              (if (let () (declare (not safe)) (##pair? _rest156424156444_))
                  (let ((_tl156440156500_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156424156444_)))
                        (_hd156439156498_
                         (let ()
                           (declare (not safe))
                           (##car _rest156424156444_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156439156498_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156440156500_))
                            (let* ((_tl156442156503_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156440156500_)))
                                   (_rest156506_ _tl156442156503_))
                              (declare (not safe))
                              (_K156438156495_ _rest156506_))
                            (let ((_rest156464_ _tl156440156500_))
                              (declare (not safe))
                              (_K156430156458_ _rest156464_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156439156498_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156440156500_))
                                (let ((_tl156437156483_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156440156500_)))
                                      (_hd156436156481_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156440156500_))))
                                  (let ((_opt156486_ _hd156436156481_)
                                        (_rest156488_ _tl156437156483_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156433156473_
                                       _rest156488_
                                       _opt156486_))))
                                (let ((_rest156464_ _tl156440156500_))
                                  (declare (not safe))
                                  (_K156430156458_ _rest156464_)))
                            (let ((_rest156464_ _tl156440156500_))
                              (declare (not safe))
                              (_K156430156458_ _rest156464_)))))
                  (let () (declare (not safe)) (_else156428156452_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156417_)
        (let ((__tmp157899
               (let () (declare (not safe)) (string-empty? _str156417_))))
          (declare (not safe))
          (not __tmp157899))))
    (define gxc#gsc-compile-file
      (lambda (_path156385_ _phi?156386_)
        (letrec ((_gsc-link-path156388_
                  (lambda (_base-path156409_)
                    (let _lp156411_ ((_n156413_ '1))
                      (let ((_path156415_
                             (string-append
                              _base-path156409_
                              '".o"
                              (number->string _n156413_))))
                        (if (file-exists? _path156415_)
                            (let ((__tmp157900
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156413_ '1))))
                              (declare (not safe))
                              (_lp156411_ __tmp157900))
                            _path156415_))))))
          (let* ((_base-path156390_ (path-strip-extension _path156385_))
                 (_path-c156392_ (string-append _base-path156390_ '".c"))
                 (_path-o156394_ (string-append _base-path156390_ '".o"))
                 (_link-path156396_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156388_ _base-path156390_)))
                 (_link-path-c156398_ (string-append _link-path156396_ '".c"))
                 (_link-path-o156400_ (string-append _link-path156396_ '".o"))
                 (_gsc-link-opts156402_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156386_)))
                 (_gsc-cc-opts156404_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156386_)))
                 (_gcc-ld-opts156406_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157907 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157901
                   (let ((__tmp157902
                          (let ((__tmp157903
                                 (let ((__tmp157904
                                        (let ((__tmp157905
                                               (let ((__tmp157906
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156385_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157906
                                                         _gsc-link-opts156402_))))
                                          (declare (not safe))
                                          (cons _link-path-c156398_
                                                __tmp157905))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157904))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157903))))
                     (declare (not safe))
                     (cons '"-link" __tmp157902))))
              (declare (not safe))
              (gxc#invoke __tmp157907 __tmp157901 'stdout-redirection: '#t))
            (let ((__tmp157914 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157908
                   (let ((__tmp157909
                          (let ((__tmp157910
                                 (let ((__tmp157911
                                        (let ((__tmp157912
                                               (let ((__tmp157913
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156398_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156392_
                                                       __tmp157913))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157912
                                                  _gsc-cc-opts156404_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157911))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157910))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157909))))
              (declare (not safe))
              (gxc#invoke __tmp157914 __tmp157908 'stdout-redirection: '#t))
            (let ((__tmp157920 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157915
                   (let ((__tmp157916
                          (let ((__tmp157917
                                 (let ((__tmp157918
                                        (let ((__tmp157919
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156400_
                                                       _gcc-ld-opts156406_))))
                                          (declare (not safe))
                                          (cons _path-o156394_ __tmp157919))))
                                   (declare (not safe))
                                   (cons _link-path156396_ __tmp157918))))
                            (declare (not safe))
                            (cons '"-o" __tmp157917))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157916))))
              (declare (not safe))
              (gxc#invoke __tmp157920 __tmp157915))
            (for-each
             delete-file
             (let ((__tmp157921
                    (let ((__tmp157922
                           (let ((__tmp157923
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156400_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156398_ __tmp157923))))
                      (declare (not safe))
                      (cons _path-o156394_ __tmp157922))))
               (declare (not safe))
               (cons _path-c156392_ __tmp157921)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156356_ _n156357_ _ext156358_)
        (letrec ((_module-relative-path156360_
                  (lambda (_ctx156383_)
                    (path-strip-directory
                     (let ((__tmp157924
                            (##structure-ref
                             _ctx156383_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157924)))))
                 (_module-source-directory156361_
                  (lambda (_ctx156379_)
                    (path-directory
                     (let ((_mpath156381_
                            (##structure-ref
                             _ctx156379_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156381_))
                           _mpath156381_
                           (let ()
                             (declare (not safe))
                             (last _mpath156381_)))))))
                 (_section-string156362_
                  (lambda (_n156377_)
                    (if (let () (declare (not safe)) (number? _n156377_))
                        (number->string _n156377_)
                        (if (let () (declare (not safe)) (symbol? _n156377_))
                            (symbol->string _n156377_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156377_))
                                _n156377_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156377_)))))))
                 (_file-name156363_
                  (lambda (_path156375_)
                    (if _n156357_
                        (string-append
                         _path156375_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156362_ _n156357_))
                         _ext156358_)
                        (string-append _path156375_ _ext156358_))))
                 (_file-path156364_
                  (lambda ()
                    (let ((_$e156370_ (gxc#current-compile-output-dir)))
                      (if _$e156370_
                          ((lambda (_outdir156373_)
                             (path-expand
                              (let ((__tmp157926
                                     (let ((__tmp157927
                                            (##structure-ref
                                             _ctx156356_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157927))))
                                (declare (not safe))
                                (_file-name156363_ __tmp157926))
                              _outdir156373_))
                           _$e156370_)
                          (path-expand
                           (let ((__tmp157925
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156360_
                                     _ctx156356_))))
                             (declare (not safe))
                             (_file-name156363_ __tmp157925))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156361_
                              _ctx156356_))))))))
          (let ((_path156366_
                 (let () (declare (not safe)) (_file-path156364_))))
            (let ((__tmp157928
                   (lambda ()
                     (let ((__tmp157929 (path-directory _path156366_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157929)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157928))
            _path156366_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156338_)
        (letrec ((_file-name156340_
                  (lambda (_id156354_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156354_))
                     '".scm")))
                 (_file-path156341_
                  (lambda ()
                    (let* ((_file156347_
                            (let ((__tmp157930
                                   (##structure-ref
                                    _ctx156338_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156340_ __tmp157930)))
                           (_$e156349_ (gxc#current-compile-output-dir)))
                      (if _$e156349_
                          ((lambda (_outdir156352_)
                             (path-expand
                              _file156347_
                              (path-expand '"static" _outdir156352_)))
                           _$e156349_)
                          (path-expand _file156347_ '"static"))))))
          (let ((_path156343_
                 (let () (declare (not safe)) (_file-path156341_))))
            (let ((__tmp157931
                   (lambda ()
                     (let ((__tmp157932 (path-directory _path156343_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157932)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157931))
            _path156343_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156332_ _opts156333_)
        (let ((_$e156335_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156333_))))
          (if _$e156335_
              (values _$e156335_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156332_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156325_)
        (if (let () (declare (not safe)) (string? _idstr156325_))
            (let* ((_str156327_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156325_)))
                   (_strs156329_
                    (let ()
                      (declare (not safe))
                      (string-split _str156327_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156329_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156325_))
                (let ((__tmp157933 (symbol->string _idstr156325_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157933))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156325_))))))
    (define gxc#invoke__%
      (lambda (_g157934_
               _stdout-redirection156286156290_
               _stderr-redirection156287156292_
               _program156294_
               _args156295_)
        (let* ((_stdout-redirection156297_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156286156290_ absent-value))
                    '#f
                    _stdout-redirection156286156290_))
               (_stderr-redirection156299_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156287156292_ absent-value))
                    '#f
                    _stderr-redirection156287156292_)))
          (let ((__tmp157935
                 (let ()
                   (declare (not safe))
                   (cons _program156294_ _args156295_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157935))
          (let* ((_proc156301_
                  (open-process
                   (let ((__tmp157936
                          (let ((__tmp157937
                                 (let ((__tmp157938
                                        (let ((__tmp157939
                                               (let ((__tmp157940
                                                      (let ((__tmp157941
                                                             (let ((__tmp157942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156299_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157942))))
                (declare (not safe))
                (cons _stdout-redirection156297_ __tmp157941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157940))))
                                          (declare (not safe))
                                          (cons _args156295_ __tmp157939))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157938))))
                            (declare (not safe))
                            (cons _program156294_ __tmp157937))))
                     (declare (not safe))
                     (cons 'path: __tmp157936))))
                 (_output156306_
                  (if (or _stdout-redirection156297_
                          _stderr-redirection156299_)
                      (read-line _proc156301_ '#f)
                      '#f)))
            (let ((_status156309_ (process-status _proc156301_)))
              (close-port _proc156301_)
              (if (let () (declare (not safe)) (zero? _status156309_))
                  '#!void
                  (begin
                    (display _output156306_)
                    (let ((__tmp157943
                           (let ()
                             (declare (not safe))
                             (cons _program156294_ _args156295_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157943
                       _status156309_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156285156314_ . _args156316_)
        (apply gxc#invoke__%
               _keys156285156314_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156285156314_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156285156314_
                  'stderr-redirection:
                  absent-value))
               _args156316_)))
    (define gxc#invoke
      (lambda _args156288156322_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156288156322_)))
    (define gxc#join!
      (lambda (_thread156279_)
        (let ((__tmp157945
               (lambda (_exn156281_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156281_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156281_)))
                     (raise _exn156281_))))
              (__tmp157944 (lambda () (thread-join! _thread156279_))))
          (declare (not safe))
          (with-catch __tmp157945 __tmp157944))))))
