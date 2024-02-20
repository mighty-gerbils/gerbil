(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708387693)
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
      (lambda (_path157540_ _fun157541_)
        (with-output-to-file
         (let ((__tmp157634
                (let ()
                  (declare (not safe))
                  (cons _path157540_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157634))
         _fun157541_)))
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
      (lambda (_gerbil-libdir157535_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157535_)))
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
      (lambda (_dir157533_) (delete-file-or-directory _dir157533_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157507_ _opts157508_)
        (if (let () (declare (not safe)) (string? _srcpath157507_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157507_)))
        (let ((_outdir157510_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157508_)))
              (_invoke-gsc?157511_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157508_)))
              (_gsc-options157512_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157508_)))
              (_keep-scm?157513_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157508_)))
              (_verbosity157514_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157508_)))
              (_optimize157515_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157508_)))
              (_debug157516_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157508_)))
              (_gen-ssxi157517_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157508_))))
          (if _outdir157510_
              (let ((__tmp157635
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157510_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157635))
              '#!void)
          (if _optimize157515_
              (let ((__tmp157636
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157636))
              '#!void)
          (let ((__tmp157640
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157507_))
                   (let ((__tmp157641
                          (let ((__tmp157642
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157507_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157642))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157641))))
                (__tmp157639
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157637
                 (let ((__tmp157638
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157507_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157638))))
            (declare (not safe))
            (call-with-parameters
             __tmp157640
             gxc#current-compile-output-dir
             _outdir157510_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157511_
             gxc#current-compile-gsc-options
             _gsc-options157512_
             gxc#current-compile-keep-scm
             _keep-scm?157513_
             gxc#current-compile-verbose
             _verbosity157514_
             gxc#current-compile-optimize
             _optimize157515_
             gxc#current-compile-debug
             _debug157516_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157517_
             gxc#current-compile-timestamp
             __tmp157639
             gxc#current-compile-context
             __tmp157637
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157526_)
        (let ((_opts157528_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157526_ _opts157528_))))
    (define gxc#compile-module
      (lambda _g157644_
        (let ((_g157643_ (let () (declare (not safe)) (##length _g157644_))))
          (cond ((let () (declare (not safe)) (##fx= _g157643_ 1))
                 (apply (lambda (_srcpath157526_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157526_)))
                        _g157644_))
                ((let () (declare (not safe)) (##fx= _g157643_ 2))
                 (apply (lambda (_srcpath157530_ _opts157531_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157530_
                             _opts157531_)))
                        _g157644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157644_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157483_ _opts157484_)
        (if (let () (declare (not safe)) (string? _srcpath157483_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157483_)))
        (let ((_outdir157486_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157484_)))
              (_invoke-gsc?157487_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157484_)))
              (_gsc-options157488_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157484_)))
              (_keep-scm?157489_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157484_)))
              (_verbosity157490_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157484_)))
              (_debug157491_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157484_))))
          (if _outdir157486_
              (let ((__tmp157645
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157486_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157645))
              '#!void)
          (let ((__tmp157649
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157483_))
                   (let ((__tmp157650
                          (let ((__tmp157651
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157483_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157651))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157650
                      _opts157484_))))
                (__tmp157648
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157646
                 (let ((__tmp157647
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157483_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157647))))
            (declare (not safe))
            (call-with-parameters
             __tmp157649
             gxc#current-compile-output-dir
             _outdir157486_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157487_
             gxc#current-compile-gsc-options
             _gsc-options157488_
             gxc#current-compile-keep-scm
             _keep-scm?157489_
             gxc#current-compile-verbose
             _verbosity157490_
             gxc#current-compile-debug
             _debug157491_
             gxc#current-compile-timestamp
             __tmp157648
             gxc#current-compile-context
             __tmp157646
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157499_)
        (let ((_opts157501_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157499_ _opts157501_))))
    (define gxc#compile-exe
      (lambda _g157653_
        (let ((_g157652_ (let () (declare (not safe)) (##length _g157653_))))
          (cond ((let () (declare (not safe)) (##fx= _g157652_ 1))
                 (apply (lambda (_srcpath157499_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157499_)))
                        _g157653_))
                ((let () (declare (not safe)) (##fx= _g157652_ 2))
                 (apply (lambda (_srcpath157503_ _opts157504_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157503_ _opts157504_)))
                        _g157653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157653_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157479_ _opts157480_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157480_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157479_
               _opts157480_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157479_
               _opts157480_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157362_ _opts157363_)
        (letrec ((_generate-stub157365_
                  (lambda (_builtin-modules157475_)
                    (let ((_mod-main157477_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157362_ 'main))))
                      (write (let ((__tmp157654
                                    (let ((__tmp157655
                                           (let ((__tmp157656
                                                  (let ((__tmp157657
                                                         (let ((__tmp157659
                                                                (let ((__tmp157660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157475_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157660)))
                       (__tmp157658
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157659 __tmp157658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157657))))
                                             (declare (not safe))
                                             (cons __tmp157656 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157655))))
                               (declare (not safe))
                               (cons 'define __tmp157654)))
                      (write (let ((__tmp157661
                                    (let ((__tmp157700
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157662
                                           (let ((__tmp157663
                                                  (let ((__tmp157664
                                                         (let ((__tmp157688
                                                                (let ((__tmp157689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157690
                                      (let ((__tmp157698
                                             (let ((__tmp157699
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157699)))
                                            (__tmp157691
                                             (let ((__tmp157692
                                                    (let ((__tmp157693
                                                           (let ((__tmp157694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157695
                                 (let ((__tmp157696
                                        (let ((__tmp157697
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157697 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157696))))
                            (declare (not safe))
                            (cons __tmp157695 '()))))
                     (declare (not safe))
                     (cons _mod-main157477_ __tmp157694))))
              (declare (not safe))
              (cons 'apply __tmp157693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157692 '()))))
                                        (declare (not safe))
                                        (cons __tmp157698 __tmp157691))))
                                 (declare (not safe))
                                 (cons '() __tmp157690))))
                          (declare (not safe))
                          (cons 'lambda __tmp157689)))
                       (__tmp157665
                        (let ((__tmp157666
                               (let ((__tmp157667
                                      (let ((__tmp157668
                                             (let ((__tmp157679
                                                    (let ((__tmp157680
                                                           (let ((__tmp157681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157682
                                 (let ((__tmp157683
                                        (let ((__tmp157684
                                               (let ((__tmp157685
                                                      (let ((__tmp157686
                                                             (let ((__tmp157687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157687 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157685 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157684))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157683))))
                            (declare (not safe))
                            (cons __tmp157682 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157681))))
              (declare (not safe))
              (cons 'with-catch __tmp157680)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157669
                                                    (let ((__tmp157670
                                                           (let ((__tmp157671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157672
                                 (let ((__tmp157673
                                        (let ((__tmp157674
                                               (let ((__tmp157675
                                                      (let ((__tmp157676
                                                             (let ((__tmp157677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157678
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157678 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157677))))
                (declare (not safe))
                (cons __tmp157676 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157675))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157674))))
                                   (declare (not safe))
                                   (cons __tmp157673 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157672))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157671))))
              (declare (not safe))
              (cons __tmp157670 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157679
                                                     __tmp157669))))
                                        (declare (not safe))
                                        (cons '() __tmp157668))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157667))))
                          (declare (not safe))
                          (cons __tmp157666 '()))))
                   (declare (not safe))
                   (cons __tmp157688 __tmp157665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157664))))
                                             (declare (not safe))
                                             (cons __tmp157663 '()))))
                                      (declare (not safe))
                                      (cons __tmp157700 __tmp157662))))
                               (declare (not safe))
                               (cons 'define __tmp157661)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157366_
                  (lambda (_libgerbil157473_)
                    (call-with-input-file
                     (string-append _libgerbil157473_ '".ldd")
                     read)))
                 (_replace-extension157367_
                  (lambda (_path157470_ _ext157471_)
                    (string-append
                     (path-strip-extension _path157470_)
                     _ext157471_)))
                 (_not-exclude-module?157368_
                  (lambda (_ctx157466_)
                    (let ((_id-str157468_
                           (symbol->string
                            (##structure-ref
                             _ctx157466_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157702
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157468_))))
                            (declare (not safe))
                            (not __tmp157702))
                          (let ((__tmp157701
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157468_))))
                            (declare (not safe))
                            (not __tmp157701))
                          '#f))))
                 (_not-file-empty?157369_
                  (lambda (_path157464_)
                    (let ((__tmp157703
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157464_))))
                      (declare (not safe))
                      (not __tmp157703))))
                 (_compile-stub157370_
                  (lambda (_output-scm157377_ _output-bin157378_)
                    (let* ((_gerbil-home157380_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157382_
                            (path-expand '"lib" _gerbil-home157380_))
                           (_gerbil-staticdir157384_
                            (path-expand '"static" _gerbil-libdir157382_))
                           (_gxlink157386_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157382_))
                           (_tmp157388_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157392_
                            (lambda (_f157390_)
                              (path-expand
                               (path-strip-directory _f157390_)
                               _tmp157388_)))
                           (_deps157394_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157362_)))
                           (_deps157396_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157368_
                                      _deps157394_)))
                           (_src-deps-scm157398_
                            (map gxc#find-static-module-file _deps157396_))
                           (_src-deps-scm157400_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157369_
                                      _src-deps-scm157398_)))
                           (_src-deps-scm157402_
                            (map path-expand _src-deps-scm157400_))
                           (_deps-scm157404_
                            (map _tmp-path157392_ _src-deps-scm157402_))
                           (_deps-c157410_
                            (map (lambda (_g157405157407_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157367_
                                      _g157405157407_
                                      '".c")))
                                 _deps-scm157404_))
                           (_deps-o157416_
                            (map (lambda (_g157411157413_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157367_
                                      _g157411157413_
                                      '".o")))
                                 _deps-scm157404_))
                           (_src-bin-scm157418_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157362_)))
                           (_src-bin-scm157420_
                            (path-expand _src-bin-scm157418_))
                           (_bin-scm157422_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157392_ _src-bin-scm157420_)))
                           (_bin-c157424_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157367_
                               _bin-scm157422_
                               '".c")))
                           (_bin-o157426_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157367_
                               _bin-scm157422_
                               '".o")))
                           (_output-bin157428_
                            (path-expand _output-bin157378_))
                           (_output-scm157430_
                            (path-expand _output-scm157377_))
                           (_output-c157432_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157367_
                               _output-scm157430_
                               '".c")))
                           (_output-o157434_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157367_
                               _output-scm157430_
                               '".o")))
                           (_output_-c157436_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157367_
                               _output-scm157430_
                               '"_.c")))
                           (_output_-o157438_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157367_
                               _output-scm157430_
                               '"_.o")))
                           (_gsc-link-opts157440_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157442_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157444_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157384_)))
                           (_output-ld-opts157446_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157448_
                            (path-expand '"libgerbil.a" _gerbil-libdir157382_))
                           (_libgerbil.so157450_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157382_))
                           (_libgerbil-ld-opts157452_
                            (if (file-exists? _libgerbil.so157450_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157366_
                                   _libgerbil.so157450_))
                                (if (file-exists? _libgerbil.a157448_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157366_
                                       _libgerbil.a157448_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157448_
                                       _libgerbil.so157450_)))))
                           (_rpath157454_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157382_)))
                           (_builtin-modules157458_
                            (map (lambda (_mod157456_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157456_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157362_ _deps157396_)))))
                      (let ((__tmp157704
                             (lambda ()
                               (let ((__tmp157705
                                      (path-directory _output-bin157428_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157705)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157704))
                      (let ((__tmp157706
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157365_
                                  _builtin-modules157458_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157430_
                         __tmp157706))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157707
                                   (lambda () (create-directory _tmp157388_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157707))
                            (for-each
                             copy-file
                             _src-deps-scm157402_
                             _deps-scm157404_)
                            (copy-file _src-bin-scm157420_ _bin-scm157422_)
                            (let ((__tmp157715
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157708
                                   (let ((__tmp157709
                                          (let ((__tmp157710
                                                 (let ((__tmp157711
                                                        (let ((__tmp157712
                                                               (let ((__tmp157713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157714
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157430_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157422_ __tmp157714))))
                         (declare (not safe))
                         (foldr1 cons __tmp157713 _deps-scm157404_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157712 _gsc-link-opts157440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157386_
                                                         __tmp157711))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157710))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157709))))
                              (declare (not safe))
                              (gxc#invoke __tmp157715 __tmp157708))
                            (let ((__tmp157723
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157716
                                   (let ((__tmp157717
                                          (let ((__tmp157718
                                                 (let ((__tmp157719
                                                        (let ((__tmp157720
                                                               (let ((__tmp157721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157722
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157436_ '()))))
                                (declare (not safe))
                                (cons _output-c157432_ __tmp157722))))
                         (declare (not safe))
                         (cons _bin-c157424_ __tmp157721))))
                  (declare (not safe))
                  (foldr1 cons __tmp157720 _deps-c157410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157719
                                                           _gsc-static-opts157444_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157718
                                                    _gsc-cc-opts157442_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157717))))
                              (declare (not safe))
                              (gxc#invoke __tmp157723 __tmp157716))
                            (let ((__tmp157736
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157724
                                   (let ((__tmp157725
                                          (let ((__tmp157726
                                                 (let ((__tmp157727
                                                        (let ((__tmp157728
                                                               (let ((__tmp157729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157730
                                     (let ((__tmp157731
                                            (let ((__tmp157732
                                                   (let ((__tmp157733
                                                          (let ((__tmp157734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157735
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157452_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157735))))
                    (declare (not safe))
                    (cons _gerbil-libdir157382_ __tmp157734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157733))))
                                              (declare (not safe))
                                              (cons _rpath157454_
                                                    __tmp157732))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157731
                                               _output-ld-opts157446_))))
                                (declare (not safe))
                                (cons _output_-o157438_ __tmp157730))))
                         (declare (not safe))
                         (cons _output-o157434_ __tmp157729))))
                  (declare (not safe))
                  (cons _bin-o157426_ __tmp157728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157727
                                                           _deps-o157416_))))
                                            (declare (not safe))
                                            (cons _output-bin157428_
                                                  __tmp157726))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157725))))
                              (declare (not safe))
                              (gxc#invoke __tmp157736 __tmp157724))
                            (for-each
                             delete-file
                             (let ((__tmp157737
                                    (let ((__tmp157738
                                           (let ((__tmp157739
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157438_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157434_
                                                   __tmp157739))))
                                      (declare (not safe))
                                      (cons _output_-c157436_ __tmp157738))))
                               (declare (not safe))
                               (cons _output-c157432_ __tmp157737)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157388_)))
                          '#!void)))))
          (let* ((_output-bin157372_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157362_ _opts157363_)))
                 (_output-scm157374_
                  (string-append _output-bin157372_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157370_ _output-scm157374_ _output-bin157372_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157374_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157187_ _opts157188_)
        (letrec ((_reset-declare157190_
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
                 (_generate-stub157191_
                  (lambda (_deps157353_)
                    (let ((_mod-main157355_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157187_ 'main)))
                          (_reset-decl157356_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157190_)))
                          (_user-decl157357_
                           (let ()
                             (declare (not safe))
                             (_user-declare157192_))))
                      (for-each
                       (lambda (_dep157359_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157356_)
                         (newline)
                         (if _user-decl157357_
                             (begin (write _user-decl157357_) (newline))
                             '#!void)
                         (write (let ((__tmp157740
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157359_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157740)))
                         (newline))
                       _deps157353_)
                      (write (let ((__tmp157741
                                    (let ((__tmp157754
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157742
                                           (let ((__tmp157750
                                                  (let ((__tmp157751
                                                         (let ((__tmp157752
                                                                (let ((__tmp157753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157753))))
                   (declare (not safe))
                   (cons __tmp157752 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157751)))
                                                 (__tmp157743
                                                  (let ((__tmp157744
                                                         (let ((__tmp157745
                                                                (let ((__tmp157746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157747
                                      (let ((__tmp157748
                                             (let ((__tmp157749
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157749 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157748))))
                                 (declare (not safe))
                                 (cons __tmp157747 '()))))
                          (declare (not safe))
                          (cons _mod-main157355_ __tmp157746))))
                   (declare (not safe))
                   (cons 'apply __tmp157745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157744 '()))))
                                             (declare (not safe))
                                             (cons __tmp157750 __tmp157743))))
                                      (declare (not safe))
                                      (cons __tmp157754 __tmp157742))))
                               (declare (not safe))
                               (cons 'define __tmp157741)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157192_
                  (lambda ()
                    (let* ((_gsc-opts157258_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157188_)))
                           (_gsc-prelude157260_
                            (if _gsc-opts157258_
                                (member '"-prelude" _gsc-opts157258_)
                                '#f))
                           (_gsc-prelude157262_
                            (if _gsc-prelude157260_
                                (read (open-input-string
                                       (cadr _gsc-prelude157260_)))
                                '#f)))
                      (let _lp157265_ ((_rest157267_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157262_ '())))
                                       (_user-decls157268_ '()))
                        (let* ((_rest157269157277_ _rest157267_)
                               (_else157271157285_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157268_))
                                      '#f
                                      (let ((__tmp157755
                                             (reverse _user-decls157268_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157755)))))
                               (_K157273157341_
                                (lambda (_rest157288_ _expr157289_)
                                  (let* ((_expr157290157302_ _expr157289_)
                                         (_else157293157310_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157265_
                                               _rest157288_
                                               _user-decls157268_)))))
                                    (let ((_K157298157331_
                                           (lambda (_decls157329_)
                                             (let ((__tmp157756
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157268_
                                                              _decls157329_))))
                                               (declare (not safe))
                                               (_lp157265_
                                                _rest157288_
                                                __tmp157756))))
                                          (_K157295157316_
                                           (lambda (_exprs157314_)
                                             (let ((__tmp157757
                                                    (append _exprs157314_
                                                            _rest157288_)))
                                               (declare (not safe))
                                               (_lp157265_
                                                __tmp157757
                                                _user-decls157268_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157290157302_))
                                          (let ((_tl157300157336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157290157302_)))
                                                (_hd157299157334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157290157302_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157299157334_
                                                         'declare))
                                                (let ((_decls157339_
                                                       _tl157300157336_))
                                                  (declare (not safe))
                                                  (_K157298157331_
                                                   _decls157339_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157299157334_
                                                             'begin))
                                                    (let ((_exprs157324_
                                                           _tl157300157336_))
                                                      (declare (not safe))
                                                      (_K157295157316_
                                                       _exprs157324_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157293157310_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157293157310_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157269157277_))
                              (let ((_hd157274157344_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157269157277_)))
                                    (_tl157275157346_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157269157277_))))
                                (let* ((_expr157349_ _hd157274157344_)
                                       (_rest157351_ _tl157275157346_))
                                  (declare (not safe))
                                  (_K157273157341_ _rest157351_ _expr157349_)))
                              (let ()
                                (declare (not safe))
                                (_else157271157285_))))))))
                 (_compile-stub157193_
                  (lambda (_output-scm157200_ _output-bin157201_)
                    (let* ((_gerbil-home157203_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157205_
                            (path-expand '"lib" _gerbil-home157203_))
                           (_runtime157207_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157209_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157203_))
                           (_include-gambit-sharp157211_
                            (string-append
                             '"(include \""
                             _gambit-sharp157209_
                             '"\")"))
                           (_bin-scm157213_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157187_)))
                           (_deps157215_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157187_)))
                           (_deps157217_
                            (map gxc#find-static-module-file _deps157215_))
                           (_deps157222_
                            (let ((__tmp157758
                                   (lambda (_$obj157219_)
                                     (let ((__tmp157759
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157219_))))
                                       (declare (not safe))
                                       (not __tmp157759)))))
                              (declare (not safe))
                              (filter __tmp157758 _deps157217_)))
                           (_deps157226_
                            (let ((__tmp157760
                                   (lambda (_f157224_)
                                     (let ((__tmp157761
                                            (member _f157224_
                                                    _runtime157207_)))
                                       (declare (not safe))
                                       (not __tmp157761)))))
                              (declare (not safe))
                              (filter __tmp157760 _deps157222_)))
                           (_output-base157228_
                            (string-append
                             (path-strip-extension _output-scm157200_)))
                           (_output-c157230_
                            (string-append _output-base157228_ '".c"))
                           (_output-o157232_
                            (string-append _output-base157228_ '".o"))
                           (_output-c_157234_
                            (string-append _output-base157228_ '"_.c"))
                           (_output-o_157236_
                            (string-append _output-base157228_ '"_.o"))
                           (_gsc-link-opts157238_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157240_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157242_
                            (let ((__tmp157762
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157205_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157762)))
                           (_output-ld-opts157244_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157246_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157764
                                       (let ((__tmp157765
                                              (let ((__tmp157766
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157211_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157766))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157765))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157764))
                                (let ((__tmp157763
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157211_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157763))))
                           (_gsc-link-opts157248_
                            (append _gsc-link-opts157238_
                                    _gsc-gx-macros157246_))
                           (_rpath157250_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157205_)))
                           (_default-ld-options157252_
                            (let ((__tmp157767
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157767))))
                      (let ((__tmp157768
                             (lambda ()
                               (let ((__tmp157769
                                      (path-directory _output-bin157201_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157769)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157768))
                      (let ((__tmp157770
                             (lambda ()
                               (let ((__tmp157771
                                      (let ((__tmp157772
                                             (let ((__tmp157773
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157213_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157773
                                                       _deps157226_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157772
                                                _runtime157207_))))
                                 (declare (not safe))
                                 (_generate-stub157191_ __tmp157771)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157200_
                         __tmp157770))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157779
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157774
                                   (let ((__tmp157775
                                          (let ((__tmp157776
                                                 (let ((__tmp157777
                                                        (let ((__tmp157778
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157200_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157778 _gsc-link-opts157248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157234_
                                                         __tmp157777))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157776))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157775))))
                              (declare (not safe))
                              (gxc#invoke __tmp157779 __tmp157774))
                            (let ((__tmp157785
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157780
                                   (let ((__tmp157781
                                          (let ((__tmp157782
                                                 (let ((__tmp157783
                                                        (let ((__tmp157784
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157234_ '()))))
                  (declare (not safe))
                  (cons _output-c157230_ __tmp157784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157783
                                                           _gsc-static-opts157242_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157782
                                                    _gsc-cc-opts157240_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157781))))
                              (declare (not safe))
                              (gxc#invoke __tmp157785 __tmp157780))
                            (let ((__tmp157795
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157786
                                   (let ((__tmp157787
                                          (let ((__tmp157788
                                                 (let ((__tmp157789
                                                        (let ((__tmp157790
                                                               (let ((__tmp157791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157792
                                     (let ((__tmp157793
                                            (let ((__tmp157794
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157252_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157205_
                                                    __tmp157794))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157793))))
                                (declare (not safe))
                                (cons _rpath157250_ __tmp157792))))
                         (declare (not safe))
                         (foldr1 cons __tmp157791 _output-ld-opts157244_))))
                  (declare (not safe))
                  (cons _output-o_157236_ __tmp157790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157232_
                                                         __tmp157789))))
                                            (declare (not safe))
                                            (cons _output-bin157201_
                                                  __tmp157788))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157787))))
                              (declare (not safe))
                              (gxc#invoke __tmp157795 __tmp157786)))
                          '#!void)))))
          (let* ((_output-bin157195_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157187_ _opts157188_)))
                 (_output-scm157197_
                  (string-append _output-bin157195_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157193_ _output-scm157197_ _output-bin157195_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157197_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157137_ _id157138_)
        (let ((_$e157184_
               (let ((__tmp157797
                      (lambda (_e157139157141_)
                        (let* ((_g157143157153_ _e157139157141_)
                               (_else157145157161_ (lambda () '#f))
                               (_K157147157165_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157143157153_
                                 'gx#module-export::t))
                              (let* ((_e157148157168_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157143157153_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157149157171_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157143157153_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157150157174_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157143157153_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157150157174_ '0))
                                    (let ((_e157151157177_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157143157153_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157179157181_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157179157181_
                                                    _id157138_)))
                                           _e157151157177_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157147157165_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157145157161_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157145157161_))))
                              (let ()
                                (declare (not safe))
                                (_else157145157161_))))))
                     (__tmp157796
                      (##structure-ref
                       _ctx157137_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157797 __tmp157796))))
          (if _$e157184_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157184_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157129_ _id157130_)
        (let ((_$e157132_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157129_ _id157130_))))
          (if _$e157132_
              ((lambda (_bind157135_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157135_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157130_)))
                 (##structure-ref _bind157135_ '1 gx#binding::t '#f))
               _$e157132_)
              (let ((__tmp157798
                     (##structure-ref
                      _ctx157129_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157798
                 _id157130_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157016_)
        (letrec* ((_ht157018_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157019_
                   (lambda (_in157081_ _phi157082_)
                     (let ((_iphi157084_
                            (fx+ _phi157082_
                                 (##direct-structure-ref
                                  _in157081_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157085_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157081_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157087_ ((_rest157089_ _imports157085_)
                                        (_r157090_ '()))
                         (let* ((_rest157091157099_ _rest157089_)
                                (_else157093157107_ (lambda () _r157090_))
                                (_K157095157117_
                                 (lambda (_rest157110_ _in157111_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157111_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157084_))
                                           (let ((__tmp157805
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157111_
                                                          _r157090_))))
                                             (declare (not safe))
                                             (_lp157087_
                                              _rest157110_
                                              __tmp157805))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157087_
                                              _rest157110_
                                              _r157090_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157111_
                                              'gx#module-import::t))
                                           (let ((_iphi157113_
                                                  (fx+ _phi157082_
                                                       (##direct-structure-ref
                                                        _in157111_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157113_))
                                                 (let ((__tmp157803
                                                        (let ((__tmp157804
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157111_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157804 _r157090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157087_
                                                    _rest157110_
                                                    __tmp157803))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157087_
                                                    _rest157110_
                                                    _r157090_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157111_
                                                  'gx#import-set::t))
                                               (let ((_xphi157115_
                                                      (fx+ _iphi157084_
                                                           (##direct-structure-ref
                                                            _in157111_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157115_))
                                                     (let ((__tmp157801
                                                            (let ((__tmp157802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157111_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157802 _r157090_))))
               (declare (not safe))
               (_lp157087_ _rest157110_ __tmp157801))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157115_)
                                                         (let ((__tmp157799
                                                                (let ((__tmp157800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157019_
                                  _in157111_
                                  _iphi157084_))))
                          (declare (not safe))
                          (foldl1 cons _r157090_ __tmp157800))))
                   (declare (not safe))
                   (_lp157087_ _rest157110_ __tmp157799))
                 (let ()
                   (declare (not safe))
                   (_lp157087_ _rest157110_ _r157090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157087_
                                                  _rest157110_
                                                  _r157090_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157091157099_))
                               (let ((_hd157096157120_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157091157099_)))
                                     (_tl157097157122_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157091157099_))))
                                 (let* ((_in157125_ _hd157096157120_)
                                        (_rest157127_ _tl157097157122_))
                                   (declare (not safe))
                                   (_K157095157117_ _rest157127_ _in157125_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157093157107_))))))))
                  (_find-deps157020_
                   (lambda (_rest157027_ _deps157028_)
                     (let* ((_rest157029157037_ _rest157027_)
                            (_else157031157045_ (lambda () _deps157028_))
                            (_K157033157069_
                             (lambda (_rest157048_ _hd157049_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157049_
                                      'gx#module-context::t))
                                   (let ((_id157051_
                                          (##structure-ref
                                           _hd157049_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157052_
                                          (##structure-ref
                                           _hd157049_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157018_ _id157051_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157020_
                                            _rest157048_
                                            _deps157028_))
                                         (let ((_$e157054_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157049_))))
                                           (if _$e157054_
                                               ((lambda (_pre157057_)
                                                  (let ((_xdeps157059_
                                                         (let ((__tmp157818
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157057_ _imports157052_))))
                   (declare (not safe))
                   (_find-deps157020_ __tmp157818 _deps157028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157018_
                                                       _id157051_
                                                       _hd157049_))
                                                    (let ((__tmp157819
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157059_))))
              (declare (not safe))
              (_find-deps157020_ _rest157048_ __tmp157819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157054_)
                                               (let ((_xdeps157061_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157020_
                                                         _imports157052_
                                                         _deps157028_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157018_
                                                    _id157051_
                                                    _hd157049_))
                                                 (let ((__tmp157817
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157049_
                                                                _xdeps157061_))))
                                                   (declare (not safe))
                                                   (_find-deps157020_
                                                    _rest157048_
                                                    __tmp157817)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157049_
                                          'gx#prelude-context::t))
                                       (let ((_id157063_
                                              (##structure-ref
                                               _hd157049_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157018_
                                                _id157063_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157020_
                                                _rest157048_
                                                _deps157028_))
                                             (let ((_xdeps157065_
                                                    (let ((__tmp157815
                                                           (##structure-ref
                                                            _hd157049_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157020_
                                                       __tmp157815
                                                       _deps157028_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157018_
                                                      _id157063_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157020_
                                                      _rest157048_
                                                      _xdeps157065_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157018_
                                                        _id157063_
                                                        _hd157049_))
                                                     (let ((__tmp157816
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157065_))))
               (declare (not safe))
               (_find-deps157020_ _rest157048_ __tmp157816)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157049_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157814
                                                      (##direct-structure-ref
                                                       _hd157049_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157814))
                                               (let ((__tmp157812
                                                      (let ((__tmp157813
                                                             (##direct-structure-ref
                                                              _hd157049_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157813
                                                              _rest157048_))))
                                                 (declare (not safe))
                                                 (_find-deps157020_
                                                  __tmp157812
                                                  _deps157028_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157020_
                                                  _rest157048_
                                                  _deps157028_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157049_
                                                  'gx#module-export::t))
                                               (let ((__tmp157810
                                                      (let ((__tmp157811
                                                             (##direct-structure-ref
                                                              _hd157049_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157811
                                                              _rest157048_))))
                                                 (declare (not safe))
                                                 (_find-deps157020_
                                                  __tmp157810
                                                  _deps157028_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157049_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157809
                                                              (##direct-structure-ref
                                                               _hd157049_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157809))
                                                       (let ((__tmp157807
                                                              (let ((__tmp157808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157049_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157808 _rest157048_))))
                 (declare (not safe))
                 (_find-deps157020_ __tmp157807 _deps157028_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157049_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157067_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157019_ _hd157049_ '0)))
                          (__tmp157806
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157048_ _xdeps157067_))))
                     (declare (not safe))
                     (_find-deps157020_ __tmp157806 _deps157028_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157020_ _rest157048_ _deps157028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157049_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157029157037_))
                           (let ((_hd157034157072_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157029157037_)))
                                 (_tl157035157074_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157029157037_))))
                             (let* ((_hd157077_ _hd157034157072_)
                                    (_rest157079_ _tl157035157074_))
                               (declare (not safe))
                               (_K157033157069_ _rest157079_ _hd157077_)))
                           (let ()
                             (declare (not safe))
                             (_else157031157045_)))))))
          (reverse (let ((__tmp157820
                          (let ((__tmp157821
                                 (let ((_$e157022_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157016_))))
                                   (if _$e157022_
                                       ((lambda (_pre157025_)
                                          (let ((__tmp157822
                                                 (##structure-ref
                                                  _ctx157016_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157025_ __tmp157822)))
                                        _$e157022_)
                                       (##structure-ref
                                        _ctx157016_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157020_ __tmp157821 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157820))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156947_)
        (let* ((_context-id156949_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156947_
                       'gx#module-context::t))
                    (##structure-ref _ctx156947_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156947_)))
               (_scm156951_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156949_))
                 '".scm"))
               (_dirs156953_ (gx#current-expander-module-library-path))
               (_dirs156959_
                (let ((_user-libpath156955_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156955_
                      (let ((_user-libpath156957_
                             (path-expand '"lib" _user-libpath156955_)))
                        (if (member _user-libpath156957_ _dirs156953_)
                            _dirs156953_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156957_ _dirs156953_))))
                      _dirs156953_)))
               (_dirs156968_
                (let ((_$e156961_ (gxc#current-compile-output-dir)))
                  (if _$e156961_
                      ((lambda (_g156963156965_)
                         (let ()
                           (declare (not safe))
                           (cons _g156963156965_ _dirs156959_)))
                       _$e156961_)
                      _dirs156959_)))
               (_dirs156974_
                (map (lambda (_g156969156971_)
                       (path-expand '"static" _g156969156971_))
                     _dirs156968_)))
          (let _lp156977_ ((_rest156979_ _dirs156974_))
            (let* ((_rest156980156988_ _rest156979_)
                   (_else156982156996_
                    (lambda ()
                      (let ((__tmp157823
                             (##structure-ref
                              _ctx156947_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157823
                         _scm156951_))))
                   (_K156984157004_
                    (lambda (_rest156999_ _dir157000_)
                      (let ((_path157002_
                             (path-expand _scm156951_ _dir157000_)))
                        (if (file-exists? _path157002_)
                            _path157002_
                            (let ()
                              (declare (not safe))
                              (_lp156977_ _rest156999_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156980156988_))
                  (let ((_hd156985157007_
                         (let ()
                           (declare (not safe))
                           (##car _rest156980156988_)))
                        (_tl156986157009_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156980156988_))))
                    (let* ((_dir157012_ _hd156985157007_)
                           (_rest157014_ _tl156986157009_))
                      (declare (not safe))
                      (_K156984157004_ _rest157014_ _dir157012_)))
                  (let () (declare (not safe)) (_else156982156996_))))))))
    (define gxc#file-empty?
      (lambda (_path156945_)
        (let ((__tmp157824 (file-info-size (file-info _path156945_ '#t))))
          (declare (not safe))
          (zero? __tmp157824))))
    (define gxc#compile-top-module
      (lambda (_ctx156934_)
        (let ((__tmp157828
               (lambda ()
                 (let ((__tmp157829
                        (##structure-ref
                         _ctx156934_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157829))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157830
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156934_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157830))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156934_))
                 (if (let ((__tmp157833
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156934_))))
                       (declare (not safe))
                       (null? __tmp157833))
                     (let* ((_thr1156939_
                             (let ((__tmp157831
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156934_)))))
                               (declare (not safe))
                               (spawn __tmp157831)))
                            (_thr2156942_
                             (let ((__tmp157832
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156934_)))))
                               (declare (not safe))
                               (spawn __tmp157832))))
                       (let () (declare (not safe)) (gxc#join! _thr1156939_))
                       (let () (declare (not safe)) (gxc#join! _thr2156942_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156934_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156934_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156934_))
                     '#!void)))
              (__tmp157827
               (let ((__obj157632
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157632)
                 __obj157632))
              (__tmp157826 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157825 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157828
           gx#current-expander-context
           _ctx156934_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157827
           gxc#current-compile-runtime-sections
           __tmp157826
           gxc#current-compile-runtime-names
           __tmp157825))))
    (define gxc#collect-bindings
      (lambda (_ctx156932_)
        (let ((__tmp157834
               (##structure-ref _ctx156932_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157834))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156878_)
        (letrec ((_compile1156880_
                  (lambda (_ctx156921_)
                    (let* ((_code156923_
                            (##structure-ref
                             _ctx156921_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156927_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156923_))
                                (let ((_idstr156925_
                                       (let ((__tmp157835
                                              (##structure-ref
                                               _ctx156921_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157835))))
                                  (string-append _idstr156925_ '"__0"))
                                '#f)))
                      (if _rt156927_
                          (begin
                            (let ((__tmp157836
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157836 _ctx156921_ _rt156927_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156882_
                               _ctx156921_
                               _code156923_)))
                          (let ((_path156930_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156921_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156930_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156883_
                         _ctx156921_
                         _code156923_
                         _rt156927_)))))
                 (_context-timestamp156881_
                  (lambda (_ctx156919_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156919_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156882_
                  (lambda (_ctx156901_ _code156902_)
                    (let* ((_lifts156904_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156907_
                            (let ((__tmp157839
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156902_))))
                                  (__tmp157838
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157837
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157839
                               gx#current-expander-context
                               _ctx156901_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156904_
                               gxc#current-compile-marks
                               __tmp157838
                               gxc#current-compile-identifiers
                               __tmp157837)))
                           (_runtime-code156909_
                            (if (let ((__tmp157843 (unbox _lifts156904_)))
                                  (declare (not safe))
                                  (null? __tmp157843))
                                _runtime-code156907_
                                (let ((__tmp157840
                                       (let ((__tmp157842
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156907_
                                                      '())))
                                             (__tmp157841
                                              (reverse (unbox _lifts156904_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157842
                                                 __tmp157841))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157840))))
                           (_runtime-code156911_
                            (let ((__tmp157844
                                   (let ((__tmp157846
                                          (let ((__tmp157847
                                                 (let ((__tmp157850
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156881_
                                                           _ctx156901_)))
                                                       (__tmp157848
                                                        (let ((__tmp157849
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157849
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157850
                                                         __tmp157848))))
                                            (declare (not safe))
                                            (cons 'define __tmp157847)))
                                         (__tmp157845
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156909_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157846 __tmp157845))))
                              (declare (not safe))
                              (cons 'begin __tmp157844)))
                           (_scm0156913_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156901_
                               '0
                               '".scm"))))
                      (let ((_scms156916_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156901_))))
                        (let ((__tmp157851
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156913_
                                    _runtime-code156911_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157851
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156916_)
                            (delete-file _scms156916_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156913_
                           '" => "
                           _scms156916_))
                        (copy-file _scm0156913_ _scms156916_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156913_))))))
                 (_generate-loader-code156883_
                  (lambda (_ctx156890_ _code156891_ _rt156892_)
                    (let* ((_loader-code156895_
                            (let ((__tmp157852
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156891_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157852
                               gx#current-expander-context
                               _ctx156890_)))
                           (_loader-code156897_
                            (if _rt156892_
                                (let ((__tmp157853
                                       (let ((__tmp157854
                                              (let ((__tmp157855
                                                     (let ((__tmp157856
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157855 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156895_
                                               __tmp157854))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157853))
                                _loader-code156895_)))
                      (let ((__tmp157857
                             (lambda ()
                               (let ((__tmp157858
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156890_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157858
                                  _loader-code156897_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157857
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156885_
                 (let ((__tmp157859
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156878_))))
                   (declare (not safe))
                   (cons _ctx156878_ __tmp157859))))
            (for-each
             (lambda (_ctx156887_)
               (let ((__tmp157860
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156880_ _ctx156887_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157860
                  gxc#current-compile-decls
                  '())))
             _all-modules156885_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156775_)
        (letrec ((_compile-ssi156777_
                  (lambda (_code156848_)
                    (let* ((_path156850_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156775_
                               '#f
                               '".ssi")))
                           (_prelude156861_
                            (let* ((_super156852_
                                    (##structure-ref
                                     _ctx156775_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156854_
                                    (##structure-ref
                                     _super156852_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156854_
                                  ((lambda (_g156856156858_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156856156858_)))
                                   _$e156854_)
                                  ':<root>)))
                           (_ns156863_
                            (##structure-ref
                             _ctx156775_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156865_
                            (symbol->string
                             (##structure-ref
                              _ctx156775_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156872_
                            (let ((_$e156867_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156865_ '#\/))))
                              (if _$e156867_
                                  ((lambda (_x156870_)
                                     (string->symbol
                                      (substring _idstr156865_ '0 _x156870_)))
                                   _$e156867_)
                                  '#f)))
                           (_rt156874_
                            (let ((__tmp157861
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157861 _ctx156775_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156850_))
                      (let ((__tmp157862
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156861_))
                               (if _pkg156872_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156872_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156863_))
                               (newline)
                               (pretty-print _code156848_)
                               (if _rt156874_
                                   (pretty-print
                                    (let ((__tmp157863
                                           (let ((__tmp157867
                                                  (let ((__tmp157868
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157868)))
                                                 (__tmp157864
                                                  (let ((__tmp157865
                                                         (let ((__tmp157866
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156874_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157865 '()))))
                                             (declare (not safe))
                                             (cons __tmp157867 __tmp157864))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157863)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156850_
                         __tmp157862)))))
                 (_compile-phi156778_
                  (lambda (_part156788_)
                    (let* ((_part156789156802_ _part156788_)
                           (_E156791156806_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156789156802_))))
                           (_K156792156817_
                            (lambda (_code156809_
                                     _n156810_
                                     _phi156811_
                                     _phi-ctx156812_)
                              (let* ((_code156815_
                                      (let ((__tmp157869
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156809_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157869
                                         gx#current-expander-context
                                         _phi-ctx156812_
                                         gx#current-expander-phi
                                         _phi156811_)))
                                     (__tmp157870
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156775_
                                         _n156810_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157870
                                 _code156815_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156789156802_))
                          (let ((_hd156793156820_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156789156802_)))
                                (_tl156794156822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156789156802_))))
                            (let ((_phi-ctx156825_ _hd156793156820_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156794156822_))
                                  (let ((_hd156795156827_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156794156822_)))
                                        (_tl156796156829_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156794156822_))))
                                    (let ((_phi156832_ _hd156795156827_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156796156829_))
                                          (let ((_hd156797156834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156796156829_)))
                                                (_tl156798156836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156796156829_))))
                                            (let ((_n156839_ _hd156797156834_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156798156836_))
                                                  (let ((_hd156799156841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156798156836_)))
                                                        (_tl156800156843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156798156836_))))
                                                    (let ((_code156846_
                                                           _hd156799156841_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156800156843_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156792156817_
                                                             _code156846_
                                                             _n156839_
                                                             _phi156832_
                                                             _phi-ctx156825_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156791156806_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156791156806_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156791156806_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156791156806_)))))
                          (let () (declare (not safe)) (_E156791156806_)))))))
          (let ((_g157871_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156775_))))
            (begin
              (let ((_g157872_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157871_)
                           (##vector-length _g157871_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157872_ 2)))
                    (error "Context expects 2 values" _g157872_)))
              (let ((_ssi-code156780_
                     (let () (declare (not safe)) (##vector-ref _g157871_ 0)))
                    (_phi-code156781_
                     (let () (declare (not safe)) (##vector-ref _g157871_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156777_ _ssi-code156780_))
                  (let ((_threads156786_
                         (map (lambda (_code156783_)
                                (let ((__tmp157873
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156778_
                                            _code156783_)))))
                                  (declare (not safe))
                                  (spawn __tmp157873)))
                              _phi-code156781_)))
                    (for-each gxc#join! _threads156786_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156758_)
        (let* ((_path156760_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156758_ '#f '".ssxi.ss")))
               (_code156762_
                (let ((__tmp157874
                       (##structure-ref
                        _ctx156758_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157874)))
               (_idstr156764_
                (symbol->string
                 (##structure-ref _ctx156758_ '1 gx#expander-context::t '#f)))
               (_pkg156771_
                (let ((_$e156766_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156764_ '#\/))))
                  (if _$e156766_
                      ((lambda (_x156769_)
                         (string->symbol
                          (substring _idstr156764_ '0 _x156769_)))
                       _$e156766_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156760_))
          (let ((__tmp157875
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156771_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156771_))
                       '#!void)
                   (newline)
                   (pretty-print _code156762_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156760_ __tmp157875)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156751_)
        (let* ((_state156753_
                (let ((__obj157633
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157633 _ctx156751_)
                  __obj157633))
               (_ssi-code156755_
                (let ((__tmp157876
                       (##structure-ref
                        _ctx156751_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157876 _state156753_))))
          (values _ssi-code156755_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156753_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156744_)
        (let ((_lifts156746_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157879
                 (lambda ()
                   (let ((_code156749_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156744_))))
                     (if (let ((__tmp157883 (unbox _lifts156746_)))
                           (declare (not safe))
                           (null? __tmp157883))
                         _code156749_
                         (let ((__tmp157880
                                (let ((__tmp157882
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156749_ '())))
                                      (__tmp157881
                                       (reverse (unbox _lifts156746_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157882 __tmp157881))))
                           (declare (not safe))
                           (cons 'begin __tmp157880))))))
                (__tmp157878
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157877
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157879
             gxc#current-compile-lift
             _lifts156746_
             gxc#current-compile-marks
             __tmp157878
             gxc#current-compile-identifiers
             __tmp157877)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156740_)
        (let ((_modules156742_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157884
                 (##structure-ref _ctx156740_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157884 _modules156742_))
          (reverse (unbox _modules156742_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156723_ _code156724_ _phi?156725_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156723_))
        (let ((__tmp157885
               (lambda ()
                 (pretty-print
                  (let ((__tmp157886
                         (let ((__tmp157893
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157887
                                (let ((__tmp157892
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157888
                                       (let ((__tmp157891
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157889
                                              (let ((__tmp157890
                                                     (if _phi?156725_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157890))))
                                         (declare (not safe))
                                         (cons __tmp157891 __tmp157889))))
                                  (declare (not safe))
                                  (cons __tmp157892 __tmp157888))))
                           (declare (not safe))
                           (cons __tmp157893 __tmp157887))))
                    (declare (not safe))
                    (cons 'declare __tmp157886)))
                 (pretty-print _code156724_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156723_ __tmp157885))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156723_ _phi?156725_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156723_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156731_ _code156732_)
        (let ((_phi?156734_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156731_ _code156732_ _phi?156734_))))
    (define gxc#compile-scm-file
      (lambda _g157895_
        (let ((_g157894_ (let () (declare (not safe)) (##length _g157895_))))
          (cond ((let () (declare (not safe)) (##fx= _g157894_ 2))
                 (apply (lambda (_path156731_ _code156732_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156731_
                             _code156732_)))
                        _g157895_))
                ((let () (declare (not safe)) (##fx= _g157894_ 3))
                 (apply (lambda (_path156736_ _code156737_ _phi?156738_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156736_
                             _code156737_
                             _phi?156738_)))
                        _g157895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157895_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156624_)
        (let _lp156626_ ((_rest156628_ (gxc#current-compile-gsc-options))
                         (_opts156629_ '()))
          (let* ((_rest156630156650_ _rest156628_)
                 (_else156634156658_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156624_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157896
                               (let ((__tmp157897 (reverse _opts156629_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157897))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157896))
                        (reverse _opts156629_)))))
            (let ((_K156644156701_
                   (lambda (_rest156699_)
                     (let ()
                       (declare (not safe))
                       (_lp156626_ _rest156699_ _opts156629_))))
                  (_K156639156683_
                   (lambda (_rest156681_)
                     (let ()
                       (declare (not safe))
                       (_lp156626_ _rest156681_ _opts156629_))))
                  (_K156636156665_
                   (lambda (_rest156662_ _opt156663_)
                     (let ((__tmp157898
                            (let ()
                              (declare (not safe))
                              (cons _opt156663_ _opts156629_))))
                       (declare (not safe))
                       (_lp156626_ _rest156662_ __tmp157898)))))
              (if (let () (declare (not safe)) (##pair? _rest156630156650_))
                  (let ((_tl156646156706_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156630156650_)))
                        (_hd156645156704_
                         (let ()
                           (declare (not safe))
                           (##car _rest156630156650_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156645156704_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156646156706_))
                            (let* ((_tl156648156709_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156646156706_)))
                                   (_rest156712_ _tl156648156709_))
                              (declare (not safe))
                              (_K156644156701_ _rest156712_))
                            (let ((_opt156673_ _hd156645156704_)
                                  (_rest156675_ _tl156646156706_))
                              (let ()
                                (declare (not safe))
                                (_K156636156665_ _rest156675_ _opt156673_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156645156704_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156646156706_))
                                (let* ((_tl156643156691_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156646156706_)))
                                       (_rest156694_ _tl156643156691_))
                                  (declare (not safe))
                                  (_K156639156683_ _rest156694_))
                                (let ((_opt156673_ _hd156645156704_)
                                      (_rest156675_ _tl156646156706_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156636156665_
                                     _rest156675_
                                     _opt156673_))))
                            (let ((_opt156673_ _hd156645156704_)
                                  (_rest156675_ _tl156646156706_))
                              (let ()
                                (declare (not safe))
                                (_K156636156665_ _rest156675_ _opt156673_))))))
                  (let () (declare (not safe)) (_else156634156658_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156718_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156718_))))
    (define gxc#gsc-link-options
      (lambda _g157900_
        (let ((_g157899_ (let () (declare (not safe)) (##length _g157900_))))
          (cond ((let () (declare (not safe)) (##fx= _g157899_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157900_))
                ((let () (declare (not safe)) (##fx= _g157899_ 1))
                 (apply (lambda (_phi?156720_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156720_)))
                        _g157900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157900_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156525_)
        (let _lp156527_ ((_rest156529_ (gxc#current-compile-gsc-options))
                         (_opts156530_ '()))
          (let* ((_rest156531156551_ _rest156529_)
                 (_else156535156559_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156525_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157901
                               (let ((__tmp157902 (reverse _opts156530_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157902))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157901))
                        (reverse _opts156530_)))))
            (let ((_K156545156598_
                   (lambda (_rest156595_ _opt156596_)
                     (let ((__tmp157903
                            (let ((__tmp157904
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156530_))))
                              (declare (not safe))
                              (cons _opt156596_ __tmp157904))))
                       (declare (not safe))
                       (_lp156527_ _rest156595_ __tmp157903))))
                  (_K156540156579_
                   (lambda (_rest156577_)
                     (let ()
                       (declare (not safe))
                       (_lp156527_ _rest156577_ _opts156530_))))
                  (_K156537156565_
                   (lambda (_rest156563_)
                     (let ()
                       (declare (not safe))
                       (_lp156527_ _rest156563_ _opts156530_)))))
              (if (let () (declare (not safe)) (##pair? _rest156531156551_))
                  (let ((_tl156547156603_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156531156551_)))
                        (_hd156546156601_
                         (let ()
                           (declare (not safe))
                           (##car _rest156531156551_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156546156601_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156547156603_))
                            (let ((_tl156549156608_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156547156603_)))
                                  (_hd156548156606_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156547156603_))))
                              (let ((_opt156611_ _hd156548156606_)
                                    (_rest156613_ _tl156549156608_))
                                (let ()
                                  (declare (not safe))
                                  (_K156545156598_ _rest156613_ _opt156611_))))
                            (let ((_rest156571_ _tl156547156603_))
                              (declare (not safe))
                              (_K156537156565_ _rest156571_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156546156601_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156547156603_))
                                (let* ((_tl156544156587_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156547156603_)))
                                       (_rest156590_ _tl156544156587_))
                                  (declare (not safe))
                                  (_K156540156579_ _rest156590_))
                                (let ((_rest156571_ _tl156547156603_))
                                  (declare (not safe))
                                  (_K156537156565_ _rest156571_)))
                            (let ((_rest156571_ _tl156547156603_))
                              (declare (not safe))
                              (_K156537156565_ _rest156571_)))))
                  (let () (declare (not safe)) (_else156535156559_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156619_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156619_))))
    (define gxc#gsc-cc-options
      (lambda _g157906_
        (let ((_g157905_ (let () (declare (not safe)) (##length _g157906_))))
          (cond ((let () (declare (not safe)) (##fx= _g157905_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157906_))
                ((let () (declare (not safe)) (##fx= _g157905_ 1))
                 (apply (lambda (_phi?156621_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156621_)))
                        _g157906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157906_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156520_)
        (let* ((_user-staticdir156522_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157907
                (let ((__tmp157908
                       (string-append
                        '"-I "
                        _staticdir156520_
                        '" -I "
                        _user-staticdir156522_)))
                  (declare (not safe))
                  (cons __tmp157908 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157907))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156432_ ((_rest156434_ (gxc#current-compile-gsc-options))
                         (_opts156435_ '()))
          (let* ((_rest156436156456_ _rest156434_)
                 (_else156440156464_ (lambda () _opts156435_)))
            (let ((_K156450156507_
                   (lambda (_rest156505_)
                     (let ()
                       (declare (not safe))
                       (_lp156432_ _rest156505_ _opts156435_))))
                  (_K156445156485_
                   (lambda (_rest156482_ _opt156483_)
                     (let ((__tmp157909
                            (append _opts156435_
                                    (let ((__tmp157910
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156483_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157910)))))
                       (declare (not safe))
                       (_lp156432_ _rest156482_ __tmp157909))))
                  (_K156442156470_
                   (lambda (_rest156468_)
                     (let ()
                       (declare (not safe))
                       (_lp156432_ _rest156468_ _opts156435_)))))
              (if (let () (declare (not safe)) (##pair? _rest156436156456_))
                  (let ((_tl156452156512_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156436156456_)))
                        (_hd156451156510_
                         (let ()
                           (declare (not safe))
                           (##car _rest156436156456_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156451156510_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156452156512_))
                            (let* ((_tl156454156515_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156452156512_)))
                                   (_rest156518_ _tl156454156515_))
                              (declare (not safe))
                              (_K156450156507_ _rest156518_))
                            (let ((_rest156476_ _tl156452156512_))
                              (declare (not safe))
                              (_K156442156470_ _rest156476_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156451156510_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156452156512_))
                                (let ((_tl156449156495_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156452156512_)))
                                      (_hd156448156493_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156452156512_))))
                                  (let ((_opt156498_ _hd156448156493_)
                                        (_rest156500_ _tl156449156495_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156445156485_
                                       _rest156500_
                                       _opt156498_))))
                                (let ((_rest156476_ _tl156452156512_))
                                  (declare (not safe))
                                  (_K156442156470_ _rest156476_)))
                            (let ((_rest156476_ _tl156452156512_))
                              (declare (not safe))
                              (_K156442156470_ _rest156476_)))))
                  (let () (declare (not safe)) (_else156440156464_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156429_)
        (let ((__tmp157911
               (let () (declare (not safe)) (string-empty? _str156429_))))
          (declare (not safe))
          (not __tmp157911))))
    (define gxc#gsc-compile-file
      (lambda (_path156397_ _phi?156398_)
        (letrec ((_gsc-link-path156400_
                  (lambda (_base-path156421_)
                    (let _lp156423_ ((_n156425_ '1))
                      (let ((_path156427_
                             (string-append
                              _base-path156421_
                              '".o"
                              (number->string _n156425_))))
                        (if (file-exists? _path156427_)
                            (let ((__tmp157912
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156425_ '1))))
                              (declare (not safe))
                              (_lp156423_ __tmp157912))
                            _path156427_))))))
          (let* ((_base-path156402_ (path-strip-extension _path156397_))
                 (_path-c156404_ (string-append _base-path156402_ '".c"))
                 (_path-o156406_ (string-append _base-path156402_ '".o"))
                 (_link-path156408_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156400_ _base-path156402_)))
                 (_link-path-c156410_ (string-append _link-path156408_ '".c"))
                 (_link-path-o156412_ (string-append _link-path156408_ '".o"))
                 (_gsc-link-opts156414_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156398_)))
                 (_gsc-cc-opts156416_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156398_)))
                 (_gcc-ld-opts156418_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157919 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157913
                   (let ((__tmp157914
                          (let ((__tmp157915
                                 (let ((__tmp157916
                                        (let ((__tmp157917
                                               (let ((__tmp157918
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156397_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157918
                                                         _gsc-link-opts156414_))))
                                          (declare (not safe))
                                          (cons _link-path-c156410_
                                                __tmp157917))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157916))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157915))))
                     (declare (not safe))
                     (cons '"-link" __tmp157914))))
              (declare (not safe))
              (gxc#invoke __tmp157919 __tmp157913 'stdout-redirection: '#t))
            (let ((__tmp157926 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157920
                   (let ((__tmp157921
                          (let ((__tmp157922
                                 (let ((__tmp157923
                                        (let ((__tmp157924
                                               (let ((__tmp157925
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156410_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156404_
                                                       __tmp157925))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157924
                                                  _gsc-cc-opts156416_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157923))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157922))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157921))))
              (declare (not safe))
              (gxc#invoke __tmp157926 __tmp157920 'stdout-redirection: '#t))
            (let ((__tmp157932 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157927
                   (let ((__tmp157928
                          (let ((__tmp157929
                                 (let ((__tmp157930
                                        (let ((__tmp157931
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156412_
                                                       _gcc-ld-opts156418_))))
                                          (declare (not safe))
                                          (cons _path-o156406_ __tmp157931))))
                                   (declare (not safe))
                                   (cons _link-path156408_ __tmp157930))))
                            (declare (not safe))
                            (cons '"-o" __tmp157929))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157928))))
              (declare (not safe))
              (gxc#invoke __tmp157932 __tmp157927))
            (for-each
             delete-file
             (let ((__tmp157933
                    (let ((__tmp157934
                           (let ((__tmp157935
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156412_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156410_ __tmp157935))))
                      (declare (not safe))
                      (cons _path-o156406_ __tmp157934))))
               (declare (not safe))
               (cons _path-c156404_ __tmp157933)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156368_ _n156369_ _ext156370_)
        (letrec ((_module-relative-path156372_
                  (lambda (_ctx156395_)
                    (path-strip-directory
                     (let ((__tmp157936
                            (##structure-ref
                             _ctx156395_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157936)))))
                 (_module-source-directory156373_
                  (lambda (_ctx156391_)
                    (path-directory
                     (let ((_mpath156393_
                            (##structure-ref
                             _ctx156391_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156393_))
                           _mpath156393_
                           (let ()
                             (declare (not safe))
                             (last _mpath156393_)))))))
                 (_section-string156374_
                  (lambda (_n156389_)
                    (if (let () (declare (not safe)) (number? _n156389_))
                        (number->string _n156389_)
                        (if (let () (declare (not safe)) (symbol? _n156389_))
                            (symbol->string _n156389_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156389_))
                                _n156389_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156389_)))))))
                 (_file-name156375_
                  (lambda (_path156387_)
                    (if _n156369_
                        (string-append
                         _path156387_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156374_ _n156369_))
                         _ext156370_)
                        (string-append _path156387_ _ext156370_))))
                 (_file-path156376_
                  (lambda ()
                    (let ((_$e156382_ (gxc#current-compile-output-dir)))
                      (if _$e156382_
                          ((lambda (_outdir156385_)
                             (path-expand
                              (let ((__tmp157938
                                     (let ((__tmp157939
                                            (##structure-ref
                                             _ctx156368_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157939))))
                                (declare (not safe))
                                (_file-name156375_ __tmp157938))
                              _outdir156385_))
                           _$e156382_)
                          (path-expand
                           (let ((__tmp157937
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156372_
                                     _ctx156368_))))
                             (declare (not safe))
                             (_file-name156375_ __tmp157937))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156373_
                              _ctx156368_))))))))
          (let ((_path156378_
                 (let () (declare (not safe)) (_file-path156376_))))
            (let ((__tmp157940
                   (lambda ()
                     (let ((__tmp157941 (path-directory _path156378_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157941)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157940))
            _path156378_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156350_)
        (letrec ((_file-name156352_
                  (lambda (_id156366_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156366_))
                     '".scm")))
                 (_file-path156353_
                  (lambda ()
                    (let* ((_file156359_
                            (let ((__tmp157942
                                   (##structure-ref
                                    _ctx156350_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156352_ __tmp157942)))
                           (_$e156361_ (gxc#current-compile-output-dir)))
                      (if _$e156361_
                          ((lambda (_outdir156364_)
                             (path-expand
                              _file156359_
                              (path-expand '"static" _outdir156364_)))
                           _$e156361_)
                          (path-expand _file156359_ '"static"))))))
          (let ((_path156355_
                 (let () (declare (not safe)) (_file-path156353_))))
            (let ((__tmp157943
                   (lambda ()
                     (let ((__tmp157944 (path-directory _path156355_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157944)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157943))
            _path156355_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156344_ _opts156345_)
        (let ((_$e156347_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156345_))))
          (if _$e156347_
              (values _$e156347_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156344_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156337_)
        (if (let () (declare (not safe)) (string? _idstr156337_))
            (let* ((_str156339_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156337_)))
                   (_strs156341_
                    (let ()
                      (declare (not safe))
                      (string-split _str156339_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156341_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156337_))
                (let ((__tmp157945 (symbol->string _idstr156337_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157945))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156337_))))))
    (define gxc#invoke__%
      (lambda (_g157946_
               _stdout-redirection156298156302_
               _stderr-redirection156299156304_
               _program156306_
               _args156307_)
        (let* ((_stdout-redirection156309_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156298156302_ absent-value))
                    '#f
                    _stdout-redirection156298156302_))
               (_stderr-redirection156311_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156299156304_ absent-value))
                    '#f
                    _stderr-redirection156299156304_)))
          (let ((__tmp157947
                 (let ()
                   (declare (not safe))
                   (cons _program156306_ _args156307_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157947))
          (let* ((_proc156313_
                  (open-process
                   (let ((__tmp157948
                          (let ((__tmp157949
                                 (let ((__tmp157950
                                        (let ((__tmp157951
                                               (let ((__tmp157952
                                                      (let ((__tmp157953
                                                             (let ((__tmp157954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156311_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157954))))
                (declare (not safe))
                (cons _stdout-redirection156309_ __tmp157953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157952))))
                                          (declare (not safe))
                                          (cons _args156307_ __tmp157951))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157950))))
                            (declare (not safe))
                            (cons _program156306_ __tmp157949))))
                     (declare (not safe))
                     (cons 'path: __tmp157948))))
                 (_output156318_
                  (if (or _stdout-redirection156309_
                          _stderr-redirection156311_)
                      (read-line _proc156313_ '#f)
                      '#f)))
            (let ((_status156321_ (process-status _proc156313_)))
              (close-port _proc156313_)
              (if (let () (declare (not safe)) (zero? _status156321_))
                  '#!void
                  (begin
                    (display _output156318_)
                    (let ((__tmp157955
                           (let ()
                             (declare (not safe))
                             (cons _program156306_ _args156307_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157955
                       _status156321_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156297156326_ . _args156328_)
        (apply gxc#invoke__%
               _keys156297156326_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156297156326_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156297156326_
                  'stderr-redirection:
                  absent-value))
               _args156328_)))
    (define gxc#invoke
      (lambda _args156300156334_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156300156334_)))
    (define gxc#join!
      (lambda (_thread156291_)
        (let ((__tmp157957
               (lambda (_exn156293_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156293_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156293_)))
                     (raise _exn156293_))))
              (__tmp157956 (lambda () (thread-join! _thread156291_))))
          (declare (not safe))
          (with-catch __tmp157957 __tmp157956))))))
