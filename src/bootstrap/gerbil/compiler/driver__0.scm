(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708247281)
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
      (lambda (_path288524_ _fun288525_)
        (with-output-to-file
         (let ((__tmp292685
                (let ()
                  (declare (not safe))
                  (cons _path288524_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp292685))
         _fun288525_)))
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
      (lambda (_gerbil-libdir288519_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288519_)))
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
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir288517_) (delete-file-or-directory _dir288517_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288491_ _opts288492_)
        (if (let () (declare (not safe)) (string? _srcpath288491_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288491_)))
        (let ((_outdir288494_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288492_)))
              (_invoke-gsc?288495_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288492_)))
              (_gsc-options288496_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288492_)))
              (_keep-scm?288497_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288492_)))
              (_verbosity288498_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288492_)))
              (_optimize288499_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288492_)))
              (_debug288500_
               (let () (declare (not safe)) (pgetq 'debug: _opts288492_)))
              (_gen-ssxi288501_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288492_))))
          (if _outdir288494_
              (let ((__tmp292686
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288494_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292686))
              '#!void)
          (if _optimize288499_
              (let ((__tmp292687
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292687))
              '#!void)
          (let ((__tmp292691
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288491_))
                   (let ((__tmp292692
                          (let ((__tmp292693
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288491_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp292693))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp292692))))
                (__tmp292690
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp292688
                 (let ((__tmp292689
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288491_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp292689))))
            (declare (not safe))
            (call-with-parameters
             __tmp292691
             gxc#current-compile-output-dir
             _outdir288494_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288495_
             gxc#current-compile-gsc-options
             _gsc-options288496_
             gxc#current-compile-keep-scm
             _keep-scm?288497_
             gxc#current-compile-verbose
             _verbosity288498_
             gxc#current-compile-optimize
             _optimize288499_
             gxc#current-compile-debug
             _debug288500_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288501_
             gxc#current-compile-timestamp
             __tmp292690
             gxc#current-compile-context
             __tmp292688
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288510_)
        (let ((_opts288512_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288510_ _opts288512_))))
    (define gxc#compile-module
      (lambda _g292695_
        (let ((_g292694_ (let () (declare (not safe)) (##length _g292695_))))
          (cond ((let () (declare (not safe)) (##fx= _g292694_ 1))
                 (apply (lambda (_srcpath288510_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288510_)))
                        _g292695_))
                ((let () (declare (not safe)) (##fx= _g292694_ 2))
                 (apply (lambda (_srcpath288514_ _opts288515_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288514_
                             _opts288515_)))
                        _g292695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g292695_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288467_ _opts288468_)
        (if (let () (declare (not safe)) (string? _srcpath288467_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288467_)))
        (let ((_outdir288470_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288468_)))
              (_invoke-gsc?288471_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288468_)))
              (_gsc-options288472_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288468_)))
              (_keep-scm?288473_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288468_)))
              (_verbosity288474_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288468_)))
              (_debug288475_
               (let () (declare (not safe)) (pgetq 'debug: _opts288468_))))
          (if _outdir288470_
              (let ((__tmp292696
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288470_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292696))
              '#!void)
          (let ((__tmp292700
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288467_))
                   (let ((__tmp292701
                          (let ((__tmp292702
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288467_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp292702))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp292701
                      _opts288468_))))
                (__tmp292699
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp292697
                 (let ((__tmp292698
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288467_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp292698))))
            (declare (not safe))
            (call-with-parameters
             __tmp292700
             gxc#current-compile-output-dir
             _outdir288470_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288471_
             gxc#current-compile-gsc-options
             _gsc-options288472_
             gxc#current-compile-keep-scm
             _keep-scm?288473_
             gxc#current-compile-verbose
             _verbosity288474_
             gxc#current-compile-debug
             _debug288475_
             gxc#current-compile-timestamp
             __tmp292699
             gxc#current-compile-context
             __tmp292697
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288483_)
        (let ((_opts288485_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288483_ _opts288485_))))
    (define gxc#compile-exe
      (lambda _g292704_
        (let ((_g292703_ (let () (declare (not safe)) (##length _g292704_))))
          (cond ((let () (declare (not safe)) (##fx= _g292703_ 1))
                 (apply (lambda (_srcpath288483_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288483_)))
                        _g292704_))
                ((let () (declare (not safe)) (##fx= _g292703_ 2))
                 (apply (lambda (_srcpath288487_ _opts288488_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288487_ _opts288488_)))
                        _g292704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g292704_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288463_ _opts288464_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288464_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288463_
               _opts288464_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288463_
               _opts288464_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288346_ _opts288347_)
        (letrec ((_generate-stub288349_
                  (lambda (_builtin-modules288459_)
                    (let ((_mod-main288461_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288346_ 'main))))
                      (write (let ((__tmp292705
                                    (let ((__tmp292706
                                           (let ((__tmp292707
                                                  (let ((__tmp292708
                                                         (let ((__tmp292710
                                                                (let ((__tmp292711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288459_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp292711)))
                       (__tmp292709
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp292710 __tmp292709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp292708))))
                                             (declare (not safe))
                                             (cons __tmp292707 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp292706))))
                               (declare (not safe))
                               (cons 'define __tmp292705)))
                      (write (let ((__tmp292712
                                    (let ((__tmp292751
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp292713
                                           (let ((__tmp292714
                                                  (let ((__tmp292715
                                                         (let ((__tmp292739
                                                                (let ((__tmp292740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp292741
                                      (let ((__tmp292749
                                             (let ((__tmp292750
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp292750)))
                                            (__tmp292742
                                             (let ((__tmp292743
                                                    (let ((__tmp292744
                                                           (let ((__tmp292745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292746
                                 (let ((__tmp292747
                                        (let ((__tmp292748
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp292748 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp292747))))
                            (declare (not safe))
                            (cons __tmp292746 '()))))
                     (declare (not safe))
                     (cons _mod-main288461_ __tmp292745))))
              (declare (not safe))
              (cons 'apply __tmp292744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp292743 '()))))
                                        (declare (not safe))
                                        (cons __tmp292749 __tmp292742))))
                                 (declare (not safe))
                                 (cons '() __tmp292741))))
                          (declare (not safe))
                          (cons 'lambda __tmp292740)))
                       (__tmp292716
                        (let ((__tmp292717
                               (let ((__tmp292718
                                      (let ((__tmp292719
                                             (let ((__tmp292730
                                                    (let ((__tmp292731
                                                           (let ((__tmp292732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292733
                                 (let ((__tmp292734
                                        (let ((__tmp292735
                                               (let ((__tmp292736
                                                      (let ((__tmp292737
                                                             (let ((__tmp292738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp292738 '()))))
                (declare (not safe))
                (cons 'force-output __tmp292737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292736 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp292735))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp292734))))
                            (declare (not safe))
                            (cons __tmp292733 '()))))
                     (declare (not safe))
                     (cons 'void __tmp292732))))
              (declare (not safe))
              (cons 'with-catch __tmp292731)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp292720
                                                    (let ((__tmp292721
                                                           (let ((__tmp292722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292723
                                 (let ((__tmp292724
                                        (let ((__tmp292725
                                               (let ((__tmp292726
                                                      (let ((__tmp292727
                                                             (let ((__tmp292728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp292729
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp292729 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp292728))))
                (declare (not safe))
                (cons __tmp292727 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp292726))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp292725))))
                                   (declare (not safe))
                                   (cons __tmp292724 '()))))
                            (declare (not safe))
                            (cons 'void __tmp292723))))
                     (declare (not safe))
                     (cons 'with-catch __tmp292722))))
              (declare (not safe))
              (cons __tmp292721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp292730
                                                     __tmp292720))))
                                        (declare (not safe))
                                        (cons '() __tmp292719))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp292718))))
                          (declare (not safe))
                          (cons __tmp292717 '()))))
                   (declare (not safe))
                   (cons __tmp292739 __tmp292716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp292715))))
                                             (declare (not safe))
                                             (cons __tmp292714 '()))))
                                      (declare (not safe))
                                      (cons __tmp292751 __tmp292713))))
                               (declare (not safe))
                               (cons 'define __tmp292712)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288350_
                  (lambda (_libgerbil288457_)
                    (call-with-input-file
                     (string-append _libgerbil288457_ '".ldd")
                     read)))
                 (_replace-extension288351_
                  (lambda (_path288454_ _ext288455_)
                    (string-append
                     (path-strip-extension _path288454_)
                     _ext288455_)))
                 (_not-exclude-module?288352_
                  (lambda (_ctx288450_)
                    (let ((_id-str288452_
                           (symbol->string
                            (##structure-ref
                             _ctx288450_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp292753
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288452_))))
                            (declare (not safe))
                            (not __tmp292753))
                          (let ((__tmp292752
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288452_))))
                            (declare (not safe))
                            (not __tmp292752))
                          '#f))))
                 (_not-file-empty?288353_
                  (lambda (_path288448_)
                    (let ((__tmp292754
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288448_))))
                      (declare (not safe))
                      (not __tmp292754))))
                 (_compile-stub288354_
                  (lambda (_output-scm288361_ _output-bin288362_)
                    (let* ((_gerbil-home288364_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288366_
                            (path-expand '"lib" _gerbil-home288364_))
                           (_gerbil-staticdir288368_
                            (path-expand '"static" _gerbil-libdir288366_))
                           (_gxlink288370_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288366_))
                           (_tmp288372_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288376_
                            (lambda (_f288374_)
                              (path-expand
                               (path-strip-directory _f288374_)
                               _tmp288372_)))
                           (_deps288378_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288346_)))
                           (_deps288380_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288352_
                                      _deps288378_)))
                           (_src-deps-scm288382_
                            (map gxc#find-static-module-file _deps288380_))
                           (_src-deps-scm288384_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288353_
                                      _src-deps-scm288382_)))
                           (_src-deps-scm288386_
                            (map path-expand _src-deps-scm288384_))
                           (_deps-scm288388_
                            (map _tmp-path288376_ _src-deps-scm288386_))
                           (_deps-c288394_
                            (map (lambda (_g288389288391_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288351_
                                      _g288389288391_
                                      '".c")))
                                 _deps-scm288388_))
                           (_deps-o288400_
                            (map (lambda (_g288395288397_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288351_
                                      _g288395288397_
                                      '".o")))
                                 _deps-scm288388_))
                           (_src-bin-scm288402_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288346_)))
                           (_src-bin-scm288404_
                            (path-expand _src-bin-scm288402_))
                           (_bin-scm288406_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288376_ _src-bin-scm288404_)))
                           (_bin-c288408_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288351_
                               _bin-scm288406_
                               '".c")))
                           (_bin-o288410_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288351_
                               _bin-scm288406_
                               '".o")))
                           (_output-bin288412_
                            (path-expand _output-bin288362_))
                           (_output-scm288414_
                            (path-expand _output-scm288361_))
                           (_output-c288416_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288351_
                               _output-scm288414_
                               '".c")))
                           (_output-o288418_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288351_
                               _output-scm288414_
                               '".o")))
                           (_output_-c288420_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288351_
                               _output-scm288414_
                               '"_.c")))
                           (_output_-o288422_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288351_
                               _output-scm288414_
                               '"_.o")))
                           (_gsc-link-opts288424_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288426_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288428_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288368_)))
                           (_output-ld-opts288430_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288432_
                            (path-expand '"libgerbil.a" _gerbil-libdir288366_))
                           (_libgerbil.so288434_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288366_))
                           (_libgerbil-ld-opts288436_
                            (if (file-exists? _libgerbil.so288434_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288350_
                                   _libgerbil.so288434_))
                                (if (file-exists? _libgerbil.a288432_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288350_
                                       _libgerbil.a288432_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288432_
                                       _libgerbil.so288434_)))))
                           (_rpath288438_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288366_)))
                           (_builtin-modules288442_
                            (map (lambda (_mod288440_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288440_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288346_ _deps288380_)))))
                      (let ((__tmp292755
                             (lambda ()
                               (let ((__tmp292756
                                      (path-directory _output-bin288412_)))
                                 (declare (not safe))
                                 (create-directory* __tmp292756)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp292755))
                      (let ((__tmp292757
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288349_
                                  _builtin-modules288442_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288414_
                         __tmp292757))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp292758
                                   (lambda () (create-directory _tmp288372_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp292758))
                            (for-each
                             copy-file
                             _src-deps-scm288386_
                             _deps-scm288388_)
                            (copy-file _src-bin-scm288404_ _bin-scm288406_)
                            (let ((__tmp292766
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292759
                                   (let ((__tmp292760
                                          (let ((__tmp292761
                                                 (let ((__tmp292762
                                                        (let ((__tmp292763
                                                               (let ((__tmp292764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292765
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288414_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288406_ __tmp292765))))
                         (declare (not safe))
                         (foldr1 cons __tmp292764 _deps-scm288388_))))
                  (declare (not safe))
                  (foldr1 cons __tmp292763 _gsc-link-opts288424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288370_
                                                         __tmp292762))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp292761))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp292760))))
                              (declare (not safe))
                              (gxc#invoke __tmp292766 __tmp292759))
                            (let ((__tmp292774
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292767
                                   (let ((__tmp292768
                                          (let ((__tmp292769
                                                 (let ((__tmp292770
                                                        (let ((__tmp292771
                                                               (let ((__tmp292772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292773
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288420_ '()))))
                                (declare (not safe))
                                (cons _output-c288416_ __tmp292773))))
                         (declare (not safe))
                         (cons _bin-c288408_ __tmp292772))))
                  (declare (not safe))
                  (foldr1 cons __tmp292771 _deps-c288394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp292770
                                                           _gsc-static-opts288428_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp292769
                                                    _gsc-cc-opts288426_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp292768))))
                              (declare (not safe))
                              (gxc#invoke __tmp292774 __tmp292767))
                            (let ((__tmp292787
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp292775
                                   (let ((__tmp292776
                                          (let ((__tmp292777
                                                 (let ((__tmp292778
                                                        (let ((__tmp292779
                                                               (let ((__tmp292780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292781
                                     (let ((__tmp292782
                                            (let ((__tmp292783
                                                   (let ((__tmp292784
                                                          (let ((__tmp292785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp292786
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288436_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp292786))))
                    (declare (not safe))
                    (cons _gerbil-libdir288366_ __tmp292785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp292784))))
                                              (declare (not safe))
                                              (cons _rpath288438_
                                                    __tmp292783))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp292782
                                               _output-ld-opts288430_))))
                                (declare (not safe))
                                (cons _output_-o288422_ __tmp292781))))
                         (declare (not safe))
                         (cons _output-o288418_ __tmp292780))))
                  (declare (not safe))
                  (cons _bin-o288410_ __tmp292779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp292778
                                                           _deps-o288400_))))
                                            (declare (not safe))
                                            (cons _output-bin288412_
                                                  __tmp292777))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp292776))))
                              (declare (not safe))
                              (gxc#invoke __tmp292787 __tmp292775))
                            (for-each
                             delete-file
                             (let ((__tmp292788
                                    (let ((__tmp292789
                                           (let ((__tmp292790
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288422_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288418_
                                                   __tmp292790))))
                                      (declare (not safe))
                                      (cons _output_-c288420_ __tmp292789))))
                               (declare (not safe))
                               (cons _output-c288416_ __tmp292788)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288372_)))
                          '#!void)))))
          (let* ((_output-bin288356_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288346_ _opts288347_)))
                 (_output-scm288358_
                  (string-append _output-bin288356_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288354_ _output-scm288358_ _output-bin288356_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288358_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288171_ _opts288172_)
        (letrec ((_reset-declare288174_
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
                 (_generate-stub288175_
                  (lambda (_deps288337_)
                    (let ((_mod-main288339_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288171_ 'main)))
                          (_reset-decl288340_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288174_)))
                          (_user-decl288341_
                           (let ()
                             (declare (not safe))
                             (_user-declare288176_))))
                      (for-each
                       (lambda (_dep288343_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288340_)
                         (newline)
                         (if _user-decl288341_
                             (begin (write _user-decl288341_) (newline))
                             '#!void)
                         (write (let ((__tmp292791
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288343_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp292791)))
                         (newline))
                       _deps288337_)
                      (write (let ((__tmp292792
                                    (let ((__tmp292805
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp292793
                                           (let ((__tmp292801
                                                  (let ((__tmp292802
                                                         (let ((__tmp292803
                                                                (let ((__tmp292804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp292804))))
                   (declare (not safe))
                   (cons __tmp292803 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp292802)))
                                                 (__tmp292794
                                                  (let ((__tmp292795
                                                         (let ((__tmp292796
                                                                (let ((__tmp292797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp292798
                                      (let ((__tmp292799
                                             (let ((__tmp292800
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp292800 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp292799))))
                                 (declare (not safe))
                                 (cons __tmp292798 '()))))
                          (declare (not safe))
                          (cons _mod-main288339_ __tmp292797))))
                   (declare (not safe))
                   (cons 'apply __tmp292796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp292795 '()))))
                                             (declare (not safe))
                                             (cons __tmp292801 __tmp292794))))
                                      (declare (not safe))
                                      (cons __tmp292805 __tmp292793))))
                               (declare (not safe))
                               (cons 'define __tmp292792)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288176_
                  (lambda ()
                    (let* ((_gsc-opts288242_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288172_)))
                           (_gsc-prelude288244_
                            (if _gsc-opts288242_
                                (member '"-prelude" _gsc-opts288242_)
                                '#f))
                           (_gsc-prelude288246_
                            (if _gsc-prelude288244_
                                (read (open-input-string
                                       (cadr _gsc-prelude288244_)))
                                '#f)))
                      (let _lp288249_ ((_rest288251_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288246_ '())))
                                       (_user-decls288252_ '()))
                        (let* ((_rest288253288261_ _rest288251_)
                               (_else288255288269_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288252_))
                                      '#f
                                      (let ((__tmp292806
                                             (reverse _user-decls288252_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp292806)))))
                               (_K288257288325_
                                (lambda (_rest288272_ _expr288273_)
                                  (let* ((_expr288274288286_ _expr288273_)
                                         (_else288277288294_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288249_
                                               _rest288272_
                                               _user-decls288252_)))))
                                    (let ((_K288282288315_
                                           (lambda (_decls288313_)
                                             (let ((__tmp292807
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288252_
                                                              _decls288313_))))
                                               (declare (not safe))
                                               (_lp288249_
                                                _rest288272_
                                                __tmp292807))))
                                          (_K288279288300_
                                           (lambda (_exprs288298_)
                                             (let ((__tmp292808
                                                    (append _exprs288298_
                                                            _rest288272_)))
                                               (declare (not safe))
                                               (_lp288249_
                                                __tmp292808
                                                _user-decls288252_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288274288286_))
                                          (let ((_tl288284288320_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288274288286_)))
                                                (_hd288283288318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288274288286_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288283288318_
                                                         'declare))
                                                (let ((_decls288323_
                                                       _tl288284288320_))
                                                  (declare (not safe))
                                                  (_K288282288315_
                                                   _decls288323_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288283288318_
                                                             'begin))
                                                    (let ((_exprs288308_
                                                           _tl288284288320_))
                                                      (declare (not safe))
                                                      (_K288279288300_
                                                       _exprs288308_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288277288294_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288277288294_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288253288261_))
                              (let ((_hd288258288328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288253288261_)))
                                    (_tl288259288330_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288253288261_))))
                                (let* ((_expr288333_ _hd288258288328_)
                                       (_rest288335_ _tl288259288330_))
                                  (declare (not safe))
                                  (_K288257288325_ _rest288335_ _expr288333_)))
                              (let ()
                                (declare (not safe))
                                (_else288255288269_))))))))
                 (_compile-stub288177_
                  (lambda (_output-scm288184_ _output-bin288185_)
                    (let* ((_gerbil-home288187_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288189_
                            (path-expand '"lib" _gerbil-home288187_))
                           (_runtime288191_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288193_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288187_))
                           (_include-gambit-sharp288195_
                            (string-append
                             '"(include \""
                             _gambit-sharp288193_
                             '"\")"))
                           (_bin-scm288197_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288171_)))
                           (_deps288199_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288171_)))
                           (_deps288201_
                            (map gxc#find-static-module-file _deps288199_))
                           (_deps288206_
                            (let ((__tmp292809
                                   (lambda (_$obj288203_)
                                     (let ((__tmp292810
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288203_))))
                                       (declare (not safe))
                                       (not __tmp292810)))))
                              (declare (not safe))
                              (filter __tmp292809 _deps288201_)))
                           (_deps288210_
                            (let ((__tmp292811
                                   (lambda (_f288208_)
                                     (let ((__tmp292812
                                            (member _f288208_
                                                    _runtime288191_)))
                                       (declare (not safe))
                                       (not __tmp292812)))))
                              (declare (not safe))
                              (filter __tmp292811 _deps288206_)))
                           (_output-base288212_
                            (string-append
                             (path-strip-extension _output-scm288184_)))
                           (_output-c288214_
                            (string-append _output-base288212_ '".c"))
                           (_output-o288216_
                            (string-append _output-base288212_ '".o"))
                           (_output-c_288218_
                            (string-append _output-base288212_ '"_.c"))
                           (_output-o_288220_
                            (string-append _output-base288212_ '"_.o"))
                           (_gsc-link-opts288222_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288224_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288226_
                            (let ((__tmp292813
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288189_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp292813)))
                           (_output-ld-opts288228_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288230_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp292815
                                       (let ((__tmp292816
                                              (let ((__tmp292817
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288195_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp292817))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp292816))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp292815))
                                (let ((__tmp292814
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288195_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp292814))))
                           (_gsc-link-opts288232_
                            (append _gsc-link-opts288222_
                                    _gsc-gx-macros288230_))
                           (_rpath288234_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288189_)))
                           (_default-ld-options288236_
                            (let ((__tmp292818
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp292818))))
                      (let ((__tmp292819
                             (lambda ()
                               (let ((__tmp292820
                                      (path-directory _output-bin288185_)))
                                 (declare (not safe))
                                 (create-directory* __tmp292820)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp292819))
                      (let ((__tmp292821
                             (lambda ()
                               (let ((__tmp292822
                                      (let ((__tmp292823
                                             (let ((__tmp292824
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288197_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp292824
                                                       _deps288210_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp292823
                                                _runtime288191_))))
                                 (declare (not safe))
                                 (_generate-stub288175_ __tmp292822)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288184_
                         __tmp292821))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp292830
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292825
                                   (let ((__tmp292826
                                          (let ((__tmp292827
                                                 (let ((__tmp292828
                                                        (let ((__tmp292829
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288184_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp292829 _gsc-link-opts288232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288218_
                                                         __tmp292828))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp292827))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp292826))))
                              (declare (not safe))
                              (gxc#invoke __tmp292830 __tmp292825))
                            (let ((__tmp292836
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292831
                                   (let ((__tmp292832
                                          (let ((__tmp292833
                                                 (let ((__tmp292834
                                                        (let ((__tmp292835
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288218_ '()))))
                  (declare (not safe))
                  (cons _output-c288214_ __tmp292835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp292834
                                                           _gsc-static-opts288226_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp292833
                                                    _gsc-cc-opts288224_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp292832))))
                              (declare (not safe))
                              (gxc#invoke __tmp292836 __tmp292831))
                            (let ((__tmp292846
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp292837
                                   (let ((__tmp292838
                                          (let ((__tmp292839
                                                 (let ((__tmp292840
                                                        (let ((__tmp292841
                                                               (let ((__tmp292842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292843
                                     (let ((__tmp292844
                                            (let ((__tmp292845
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288236_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288189_
                                                    __tmp292845))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp292844))))
                                (declare (not safe))
                                (cons _rpath288234_ __tmp292843))))
                         (declare (not safe))
                         (foldr1 cons __tmp292842 _output-ld-opts288228_))))
                  (declare (not safe))
                  (cons _output-o_288220_ __tmp292841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288216_
                                                         __tmp292840))))
                                            (declare (not safe))
                                            (cons _output-bin288185_
                                                  __tmp292839))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp292838))))
                              (declare (not safe))
                              (gxc#invoke __tmp292846 __tmp292837)))
                          '#!void)))))
          (let* ((_output-bin288179_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288171_ _opts288172_)))
                 (_output-scm288181_
                  (string-append _output-bin288179_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288177_ _output-scm288181_ _output-bin288179_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288181_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288121_ _id288122_)
        (let ((_$e288168_
               (let ((__tmp292848
                      (lambda (_e288123288125_)
                        (let* ((_g288127288137_ _e288123288125_)
                               (_else288129288145_ (lambda () '#f))
                               (_K288131288149_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288127288137_
                                 'gx#module-export::t))
                              (let* ((_e288132288152_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288127288137_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288133288155_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288127288137_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288134288158_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288127288137_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288134288158_ '0))
                                    (let ((_e288135288161_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288127288137_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288163288165_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288163288165_
                                                    _id288122_)))
                                           _e288135288161_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288131288149_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288129288145_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288129288145_))))
                              (let ()
                                (declare (not safe))
                                (_else288129288145_))))))
                     (__tmp292847
                      (##structure-ref
                       _ctx288121_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp292848 __tmp292847))))
          (if _$e288168_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288168_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288113_ _id288114_)
        (let ((_$e288116_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288113_ _id288114_))))
          (if _$e288116_
              ((lambda (_bind288119_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind288119_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288114_)))
                 (##structure-ref _bind288119_ '1 gx#binding::t '#f))
               _$e288116_)
              (let ((__tmp292849
                     (##structure-ref
                      _ctx288113_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp292849
                 _id288114_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx288000_)
        (letrec* ((_ht288002_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template288003_
                   (lambda (_in288065_ _phi288066_)
                     (let ((_iphi288068_
                            (fx+ _phi288066_
                                 (##direct-structure-ref
                                  _in288065_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports288069_
                            (##structure-ref
                             (##direct-structure-ref
                              _in288065_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp288071_ ((_rest288073_ _imports288069_)
                                        (_r288074_ '()))
                         (let* ((_rest288075288083_ _rest288073_)
                                (_else288077288091_ (lambda () _r288074_))
                                (_K288079288101_
                                 (lambda (_rest288094_ _in288095_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in288095_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi288068_))
                                           (let ((__tmp292856
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in288095_
                                                          _r288074_))))
                                             (declare (not safe))
                                             (_lp288071_
                                              _rest288094_
                                              __tmp292856))
                                           (let ()
                                             (declare (not safe))
                                             (_lp288071_
                                              _rest288094_
                                              _r288074_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in288095_
                                              'gx#module-import::t))
                                           (let ((_iphi288097_
                                                  (fx+ _phi288066_
                                                       (##direct-structure-ref
                                                        _in288095_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi288097_))
                                                 (let ((__tmp292854
                                                        (let ((__tmp292855
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in288095_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp292855 _r288074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp288071_
                                                    _rest288094_
                                                    __tmp292854))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp288071_
                                                    _rest288094_
                                                    _r288074_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in288095_
                                                  'gx#import-set::t))
                                               (let ((_xphi288099_
                                                      (fx+ _iphi288068_
                                                           (##direct-structure-ref
                                                            _in288095_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi288099_))
                                                     (let ((__tmp292852
                                                            (let ((__tmp292853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in288095_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp292853 _r288074_))))
               (declare (not safe))
               (_lp288071_ _rest288094_ __tmp292852))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi288099_)
                                                         (let ((__tmp292850
                                                                (let ((__tmp292851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template288003_
                                  _in288095_
                                  _iphi288068_))))
                          (declare (not safe))
                          (foldl1 cons _r288074_ __tmp292851))))
                   (declare (not safe))
                   (_lp288071_ _rest288094_ __tmp292850))
                 (let ()
                   (declare (not safe))
                   (_lp288071_ _rest288094_ _r288074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp288071_
                                                  _rest288094_
                                                  _r288074_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest288075288083_))
                               (let ((_hd288080288104_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest288075288083_)))
                                     (_tl288081288106_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest288075288083_))))
                                 (let* ((_in288109_ _hd288080288104_)
                                        (_rest288111_ _tl288081288106_))
                                   (declare (not safe))
                                   (_K288079288101_ _rest288111_ _in288109_)))
                               (let ()
                                 (declare (not safe))
                                 (_else288077288091_))))))))
                  (_find-deps288004_
                   (lambda (_rest288011_ _deps288012_)
                     (let* ((_rest288013288021_ _rest288011_)
                            (_else288015288029_ (lambda () _deps288012_))
                            (_K288017288053_
                             (lambda (_rest288032_ _hd288033_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd288033_
                                      'gx#module-context::t))
                                   (let ((_id288035_
                                          (##structure-ref
                                           _hd288033_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports288036_
                                          (##structure-ref
                                           _hd288033_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht288002_ _id288035_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps288004_
                                            _rest288032_
                                            _deps288012_))
                                         (let ((_$e288038_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd288033_))))
                                           (if _$e288038_
                                               ((lambda (_pre288041_)
                                                  (let ((_xdeps288043_
                                                         (let ((__tmp292869
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre288041_ _imports288036_))))
                   (declare (not safe))
                   (_find-deps288004_ __tmp292869 _deps288012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht288002_
                                                       _id288035_
                                                       _hd288033_))
                                                    (let ((__tmp292870
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd288033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps288043_))))
              (declare (not safe))
              (_find-deps288004_ _rest288032_ __tmp292870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e288038_)
                                               (let ((_xdeps288045_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps288004_
                                                         _imports288036_
                                                         _deps288012_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht288002_
                                                    _id288035_
                                                    _hd288033_))
                                                 (let ((__tmp292868
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd288033_
                                                                _xdeps288045_))))
                                                   (declare (not safe))
                                                   (_find-deps288004_
                                                    _rest288032_
                                                    __tmp292868)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd288033_
                                          'gx#prelude-context::t))
                                       (let ((_id288047_
                                              (##structure-ref
                                               _hd288033_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht288002_
                                                _id288047_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps288004_
                                                _rest288032_
                                                _deps288012_))
                                             (let ((_xdeps288049_
                                                    (let ((__tmp292866
                                                           (##structure-ref
                                                            _hd288033_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps288004_
                                                       __tmp292866
                                                       _deps288012_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht288002_
                                                      _id288047_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps288004_
                                                      _rest288032_
                                                      _xdeps288049_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht288002_
                                                        _id288047_
                                                        _hd288033_))
                                                     (let ((__tmp292867
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd288033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps288049_))))
               (declare (not safe))
               (_find-deps288004_ _rest288032_ __tmp292867)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd288033_
                                              'gx#module-import::t))
                                           (if (let ((__tmp292865
                                                      (##direct-structure-ref
                                                       _hd288033_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp292865))
                                               (let ((__tmp292863
                                                      (let ((__tmp292864
                                                             (##direct-structure-ref
                                                              _hd288033_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp292864
                                                              _rest288032_))))
                                                 (declare (not safe))
                                                 (_find-deps288004_
                                                  __tmp292863
                                                  _deps288012_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps288004_
                                                  _rest288032_
                                                  _deps288012_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd288033_
                                                  'gx#module-export::t))
                                               (let ((__tmp292861
                                                      (let ((__tmp292862
                                                             (##direct-structure-ref
                                                              _hd288033_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp292862
                                                              _rest288032_))))
                                                 (declare (not safe))
                                                 (_find-deps288004_
                                                  __tmp292861
                                                  _deps288012_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd288033_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp292860
                                                              (##direct-structure-ref
                                                               _hd288033_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp292860))
                                                       (let ((__tmp292858
                                                              (let ((__tmp292859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd288033_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp292859 _rest288032_))))
                 (declare (not safe))
                 (_find-deps288004_ __tmp292858 _deps288012_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd288033_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps288051_
                           (let ()
                             (declare (not safe))
                             (_import-set-template288003_ _hd288033_ '0)))
                          (__tmp292857
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest288032_ _xdeps288051_))))
                     (declare (not safe))
                     (_find-deps288004_ __tmp292857 _deps288012_))
                   (let ()
                     (declare (not safe))
                     (_find-deps288004_ _rest288032_ _deps288012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd288033_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest288013288021_))
                           (let ((_hd288018288056_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest288013288021_)))
                                 (_tl288019288058_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest288013288021_))))
                             (let* ((_hd288061_ _hd288018288056_)
                                    (_rest288063_ _tl288019288058_))
                               (declare (not safe))
                               (_K288017288053_ _rest288063_ _hd288061_)))
                           (let ()
                             (declare (not safe))
                             (_else288015288029_)))))))
          (reverse (let ((__tmp292871
                          (let ((__tmp292872
                                 (let ((_$e288006_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx288000_))))
                                   (if _$e288006_
                                       ((lambda (_pre288009_)
                                          (let ((__tmp292873
                                                 (##structure-ref
                                                  _ctx288000_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre288009_ __tmp292873)))
                                        _$e288006_)
                                       (##structure-ref
                                        _ctx288000_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps288004_ __tmp292872 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp292871))))))
    (define gxc#find-static-module-file
      (lambda (_ctx287931_)
        (let* ((_context-id287933_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx287931_
                       'gx#module-context::t))
                    (##structure-ref _ctx287931_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx287931_)))
               (_scm287935_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id287933_))
                 '".scm"))
               (_dirs287937_ (gx#current-expander-module-library-path))
               (_dirs287943_
                (let ((_user-libpath287939_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath287939_
                      (let ((_user-libpath287941_
                             (path-expand '"lib" _user-libpath287939_)))
                        (if (member _user-libpath287941_ _dirs287937_)
                            _dirs287937_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath287941_ _dirs287937_))))
                      _dirs287937_)))
               (_dirs287952_
                (let ((_$e287945_ (gxc#current-compile-output-dir)))
                  (if _$e287945_
                      ((lambda (_g287947287949_)
                         (let ()
                           (declare (not safe))
                           (cons _g287947287949_ _dirs287943_)))
                       _$e287945_)
                      _dirs287943_)))
               (_dirs287958_
                (map (lambda (_g287953287955_)
                       (path-expand '"static" _g287953287955_))
                     _dirs287952_)))
          (let _lp287961_ ((_rest287963_ _dirs287958_))
            (let* ((_rest287964287972_ _rest287963_)
                   (_else287966287980_
                    (lambda ()
                      (let ((__tmp292874
                             (##structure-ref
                              _ctx287931_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp292874
                         _scm287935_))))
                   (_K287968287988_
                    (lambda (_rest287983_ _dir287984_)
                      (let ((_path287986_
                             (path-expand _scm287935_ _dir287984_)))
                        (if (file-exists? _path287986_)
                            _path287986_
                            (let ()
                              (declare (not safe))
                              (_lp287961_ _rest287983_)))))))
              (if (let () (declare (not safe)) (##pair? _rest287964287972_))
                  (let ((_hd287969287991_
                         (let ()
                           (declare (not safe))
                           (##car _rest287964287972_)))
                        (_tl287970287993_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287964287972_))))
                    (let* ((_dir287996_ _hd287969287991_)
                           (_rest287998_ _tl287970287993_))
                      (declare (not safe))
                      (_K287968287988_ _rest287998_ _dir287996_)))
                  (let () (declare (not safe)) (_else287966287980_))))))))
    (define gxc#file-empty?
      (lambda (_path287929_)
        (let ((__tmp292875 (file-info-size (file-info _path287929_ '#t))))
          (declare (not safe))
          (zero? __tmp292875))))
    (define gxc#compile-top-module
      (lambda (_ctx287918_)
        (let ((__tmp292879
               (lambda ()
                 (let ((__tmp292880
                        (##structure-ref
                         _ctx287918_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp292880))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp292881
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx287918_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp292881))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx287918_))
                 (if (let ((__tmp292884
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx287918_))))
                       (declare (not safe))
                       (null? __tmp292884))
                     (let* ((_thr1287923_
                             (let ((__tmp292882
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx287918_)))))
                               (declare (not safe))
                               (spawn __tmp292882)))
                            (_thr2287926_
                             (let ((__tmp292883
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx287918_)))))
                               (declare (not safe))
                               (spawn __tmp292883))))
                       (let () (declare (not safe)) (gxc#join! _thr1287923_))
                       (let () (declare (not safe)) (gxc#join! _thr2287926_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx287918_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx287918_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx287918_))
                     '#!void)))
              (__tmp292878
               (let ((__obj292683
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj292683)
                 __obj292683))
              (__tmp292877 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp292876 (make-hash-table)))
          (declare (not safe))
          (call-with-parameters
           __tmp292879
           gx#current-expander-context
           _ctx287918_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp292878
           gxc#current-compile-runtime-sections
           __tmp292877
           gxc#current-compile-runtime-names
           __tmp292876))))
    (define gxc#collect-bindings
      (lambda (_ctx287916_)
        (let ((__tmp292885
               (##structure-ref _ctx287916_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp292885))))
    (define gxc#compile-runtime-code
      (lambda (_ctx287862_)
        (letrec ((_compile1287864_
                  (lambda (_ctx287905_)
                    (let* ((_code287907_
                            (##structure-ref
                             _ctx287905_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt287911_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code287907_))
                                (let ((_idstr287909_
                                       (let ((__tmp292886
                                              (##structure-ref
                                               _ctx287905_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp292886))))
                                  (string-append _idstr287909_ '"__0"))
                                '#f)))
                      (if _rt287911_
                          (begin
                            (let ((__tmp292887
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp292887 _ctx287905_ _rt287911_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code287866_
                               _ctx287905_
                               _code287907_)))
                          (let ((_path287914_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx287905_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path287914_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code287867_
                         _ctx287905_
                         _code287907_
                         _rt287911_)))))
                 (_context-timestamp287865_
                  (lambda (_ctx287903_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx287903_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code287866_
                  (lambda (_ctx287885_ _code287886_)
                    (let* ((_lifts287888_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code287891_
                            (let ((__tmp292890
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code287886_))))
                                  (__tmp292889
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp292888
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp292890
                               gx#current-expander-context
                               _ctx287885_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts287888_
                               gxc#current-compile-marks
                               __tmp292889
                               gxc#current-compile-identifiers
                               __tmp292888)))
                           (_runtime-code287893_
                            (if (let ((__tmp292894 (unbox _lifts287888_)))
                                  (declare (not safe))
                                  (null? __tmp292894))
                                _runtime-code287891_
                                (let ((__tmp292891
                                       (let ((__tmp292893
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code287891_
                                                      '())))
                                             (__tmp292892
                                              (reverse (unbox _lifts287888_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp292893
                                                 __tmp292892))))
                                  (declare (not safe))
                                  (cons 'begin __tmp292891))))
                           (_runtime-code287895_
                            (let ((__tmp292895
                                   (let ((__tmp292897
                                          (let ((__tmp292898
                                                 (let ((__tmp292901
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp287865_
                                                           _ctx287885_)))
                                                       (__tmp292899
                                                        (let ((__tmp292900
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp292900
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp292901
                                                         __tmp292899))))
                                            (declare (not safe))
                                            (cons 'define __tmp292898)))
                                         (__tmp292896
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code287893_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292897 __tmp292896))))
                              (declare (not safe))
                              (cons 'begin __tmp292895)))
                           (_scm0287897_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287885_
                               '0
                               '".scm"))))
                      (let ((_scms287900_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx287885_))))
                        (let ((__tmp292902
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0287897_
                                    _runtime-code287895_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp292902
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms287900_)
                            (delete-file _scms287900_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0287897_
                           '" => "
                           _scms287900_))
                        (copy-file _scm0287897_ _scms287900_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0287897_))))))
                 (_generate-loader-code287867_
                  (lambda (_ctx287874_ _code287875_ _rt287876_)
                    (let* ((_loader-code287879_
                            (let ((__tmp292903
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code287875_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp292903
                               gx#current-expander-context
                               _ctx287874_)))
                           (_loader-code287881_
                            (if _rt287876_
                                (let ((__tmp292904
                                       (let ((__tmp292905
                                              (let ((__tmp292906
                                                     (let ((__tmp292907
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt287876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp292907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292906 '()))))
                                         (declare (not safe))
                                         (cons _loader-code287879_
                                               __tmp292905))))
                                  (declare (not safe))
                                  (cons 'begin __tmp292904))
                                _loader-code287879_)))
                      (let ((__tmp292908
                             (lambda ()
                               (let ((__tmp292909
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287874_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp292909
                                  _loader-code287881_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp292908
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules287869_
                 (let ((__tmp292910
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx287862_))))
                   (declare (not safe))
                   (cons _ctx287862_ __tmp292910))))
            (for-each
             (lambda (_ctx287871_)
               (let ((__tmp292911
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1287864_ _ctx287871_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp292911
                  gxc#current-compile-decls
                  '())))
             _all-modules287869_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx287759_)
        (letrec ((_compile-ssi287761_
                  (lambda (_code287832_)
                    (let* ((_path287834_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287759_
                               '#f
                               '".ssi")))
                           (_prelude287845_
                            (let* ((_super287836_
                                    (##structure-ref
                                     _ctx287759_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e287838_
                                    (##structure-ref
                                     _super287836_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e287838_
                                  ((lambda (_g287840287842_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g287840287842_)))
                                   _$e287838_)
                                  ':<root>)))
                           (_ns287847_
                            (##structure-ref
                             _ctx287759_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr287849_
                            (symbol->string
                             (##structure-ref
                              _ctx287759_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg287856_
                            (let ((_$e287851_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr287849_ '#\/))))
                              (if _$e287851_
                                  ((lambda (_x287854_)
                                     (string->symbol
                                      (substring _idstr287849_ '0 _x287854_)))
                                   _$e287851_)
                                  '#f)))
                           (_rt287858_
                            (let ((__tmp292912
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp292912 _ctx287759_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path287834_))
                      (let ((__tmp292913
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude287845_))
                               (if _pkg287856_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg287856_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns287847_))
                               (newline)
                               (pretty-print _code287832_)
                               (if _rt287858_
                                   (pretty-print
                                    (let ((__tmp292914
                                           (let ((__tmp292918
                                                  (let ((__tmp292919
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp292919)))
                                                 (__tmp292915
                                                  (let ((__tmp292916
                                                         (let ((__tmp292917
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt287858_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp292917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp292916 '()))))
                                             (declare (not safe))
                                             (cons __tmp292918 __tmp292915))))
                                      (declare (not safe))
                                      (cons '%#call __tmp292914)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path287834_
                         __tmp292913)))))
                 (_compile-phi287762_
                  (lambda (_part287772_)
                    (let* ((_part287773287786_ _part287772_)
                           (_E287775287790_
                            (lambda ()
                              (error '"No clause matching"
                                     _part287773287786_)))
                           (_K287776287801_
                            (lambda (_code287793_
                                     _n287794_
                                     _phi287795_
                                     _phi-ctx287796_)
                              (let* ((_code287799_
                                      (let ((__tmp292920
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code287793_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp292920
                                         gx#current-expander-context
                                         _phi-ctx287796_
                                         gx#current-expander-phi
                                         _phi287795_)))
                                     (__tmp292921
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287759_
                                         _n287794_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp292921
                                 _code287799_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part287773287786_))
                          (let ((_hd287777287804_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part287773287786_)))
                                (_tl287778287806_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part287773287786_))))
                            (let ((_phi-ctx287809_ _hd287777287804_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl287778287806_))
                                  (let ((_hd287779287811_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl287778287806_)))
                                        (_tl287780287813_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl287778287806_))))
                                    (let ((_phi287816_ _hd287779287811_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl287780287813_))
                                          (let ((_hd287781287818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl287780287813_)))
                                                (_tl287782287820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl287780287813_))))
                                            (let ((_n287823_ _hd287781287818_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl287782287820_))
                                                  (let ((_hd287783287825_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl287782287820_)))
                                                        (_tl287784287827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl287782287820_))))
                                                    (let ((_code287830_
                                                           _hd287783287825_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl287784287827_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K287776287801_
                                                             _code287830_
                                                             _n287823_
                                                             _phi287816_
                                                             _phi-ctx287809_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E287775287790_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E287775287790_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E287775287790_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E287775287790_)))))
                          (let () (declare (not safe)) (_E287775287790_)))))))
          (let ((_g292922_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx287759_))))
            (begin
              (let ((_g292923_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g292922_)
                           (##vector-length _g292922_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g292923_ 2)))
                    (error "Context expects 2 values" _g292923_)))
              (let ((_ssi-code287764_
                     (let () (declare (not safe)) (##vector-ref _g292922_ 0)))
                    (_phi-code287765_
                     (let () (declare (not safe)) (##vector-ref _g292922_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi287761_ _ssi-code287764_))
                  (let ((_threads287770_
                         (map (lambda (_code287767_)
                                (let ((__tmp292924
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi287762_
                                            _code287767_)))))
                                  (declare (not safe))
                                  (spawn __tmp292924)))
                              _phi-code287765_)))
                    (for-each gxc#join! _threads287770_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx287742_)
        (let* ((_path287744_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx287742_ '#f '".ssxi.ss")))
               (_code287746_
                (let ((__tmp292925
                       (##structure-ref
                        _ctx287742_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp292925)))
               (_idstr287748_
                (symbol->string
                 (##structure-ref _ctx287742_ '1 gx#expander-context::t '#f)))
               (_pkg287755_
                (let ((_$e287750_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr287748_ '#\/))))
                  (if _$e287750_
                      ((lambda (_x287753_)
                         (string->symbol
                          (substring _idstr287748_ '0 _x287753_)))
                       _$e287750_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path287744_))
          (let ((__tmp292926
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg287755_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg287755_))
                       '#!void)
                   (newline)
                   (pretty-print _code287746_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path287744_ __tmp292926)))))
    (define gxc#generate-meta-code
      (lambda (_ctx287735_)
        (let* ((_state287737_
                (let ((__obj292684
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj292684 _ctx287735_)
                  __obj292684))
               (_ssi-code287739_
                (let ((__tmp292927
                       (##structure-ref
                        _ctx287735_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp292927 _state287737_))))
          (values _ssi-code287739_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state287737_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx287728_)
        (let ((_lifts287730_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp292930
                 (lambda ()
                   (let ((_code287733_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx287728_))))
                     (if (let ((__tmp292934 (unbox _lifts287730_)))
                           (declare (not safe))
                           (null? __tmp292934))
                         _code287733_
                         (let ((__tmp292931
                                (let ((__tmp292933
                                       (let ()
                                         (declare (not safe))
                                         (cons _code287733_ '())))
                                      (__tmp292932
                                       (reverse (unbox _lifts287730_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp292933 __tmp292932))))
                           (declare (not safe))
                           (cons 'begin __tmp292931))))))
                (__tmp292929
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp292928
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp292930
             gxc#current-compile-lift
             _lifts287730_
             gxc#current-compile-marks
             __tmp292929
             gxc#current-compile-identifiers
             __tmp292928)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx287724_)
        (let ((_modules287726_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp292935
                 (##structure-ref _ctx287724_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp292935 _modules287726_))
          (reverse (unbox _modules287726_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287707_ _code287708_ _phi?287709_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287707_))
        (let ((__tmp292936
               (lambda ()
                 (pretty-print
                  (let ((__tmp292937
                         (let ((__tmp292944
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp292938
                                (let ((__tmp292943
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp292939
                                       (let ((__tmp292942
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp292940
                                              (let ((__tmp292941
                                                     (if _phi?287709_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp292941))))
                                         (declare (not safe))
                                         (cons __tmp292942 __tmp292940))))
                                  (declare (not safe))
                                  (cons __tmp292943 __tmp292939))))
                           (declare (not safe))
                           (cons __tmp292944 __tmp292938))))
                    (declare (not safe))
                    (cons 'declare __tmp292937)))
                 (pretty-print _code287708_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287707_ __tmp292936))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287707_ _phi?287709_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287707_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287715_ _code287716_)
        (let ((_phi?287718_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287715_ _code287716_ _phi?287718_))))
    (define gxc#compile-scm-file
      (lambda _g292946_
        (let ((_g292945_ (let () (declare (not safe)) (##length _g292946_))))
          (cond ((let () (declare (not safe)) (##fx= _g292945_ 2))
                 (apply (lambda (_path287715_ _code287716_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287715_
                             _code287716_)))
                        _g292946_))
                ((let () (declare (not safe)) (##fx= _g292945_ 3))
                 (apply (lambda (_path287720_ _code287721_ _phi?287722_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path287720_
                             _code287721_
                             _phi?287722_)))
                        _g292946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g292946_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287608_)
        (let _lp287610_ ((_rest287612_ (gxc#current-compile-gsc-options))
                         (_opts287613_ '()))
          (let* ((_rest287614287634_ _rest287612_)
                 (_else287618287642_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287608_))
                             (gxc#current-compile-debug))
                        (let ((__tmp292947
                               (let ((__tmp292948 (reverse _opts287613_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp292948))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp292947))
                        (reverse _opts287613_)))))
            (let ((_K287628287685_
                   (lambda (_rest287683_)
                     (let ()
                       (declare (not safe))
                       (_lp287610_ _rest287683_ _opts287613_))))
                  (_K287623287667_
                   (lambda (_rest287665_)
                     (let ()
                       (declare (not safe))
                       (_lp287610_ _rest287665_ _opts287613_))))
                  (_K287620287649_
                   (lambda (_rest287646_ _opt287647_)
                     (let ((__tmp292949
                            (let ()
                              (declare (not safe))
                              (cons _opt287647_ _opts287613_))))
                       (declare (not safe))
                       (_lp287610_ _rest287646_ __tmp292949)))))
              (if (let () (declare (not safe)) (##pair? _rest287614287634_))
                  (let ((_tl287630287690_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287614287634_)))
                        (_hd287629287688_
                         (let ()
                           (declare (not safe))
                           (##car _rest287614287634_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287629287688_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287630287690_))
                            (let* ((_tl287632287693_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287630287690_)))
                                   (_rest287696_ _tl287632287693_))
                              (declare (not safe))
                              (_K287628287685_ _rest287696_))
                            (let ((_opt287657_ _hd287629287688_)
                                  (_rest287659_ _tl287630287690_))
                              (let ()
                                (declare (not safe))
                                (_K287620287649_ _rest287659_ _opt287657_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287629287688_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287630287690_))
                                (let* ((_tl287627287675_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287630287690_)))
                                       (_rest287678_ _tl287627287675_))
                                  (declare (not safe))
                                  (_K287623287667_ _rest287678_))
                                (let ((_opt287657_ _hd287629287688_)
                                      (_rest287659_ _tl287630287690_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287620287649_
                                     _rest287659_
                                     _opt287657_))))
                            (let ((_opt287657_ _hd287629287688_)
                                  (_rest287659_ _tl287630287690_))
                              (let ()
                                (declare (not safe))
                                (_K287620287649_ _rest287659_ _opt287657_))))))
                  (let () (declare (not safe)) (_else287618287642_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287702_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287702_))))
    (define gxc#gsc-link-options
      (lambda _g292951_
        (let ((_g292950_ (let () (declare (not safe)) (##length _g292951_))))
          (cond ((let () (declare (not safe)) (##fx= _g292950_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g292951_))
                ((let () (declare (not safe)) (##fx= _g292950_ 1))
                 (apply (lambda (_phi?287704_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287704_)))
                        _g292951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g292951_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287509_)
        (let _lp287511_ ((_rest287513_ (gxc#current-compile-gsc-options))
                         (_opts287514_ '()))
          (let* ((_rest287515287535_ _rest287513_)
                 (_else287519287543_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287509_))
                             (gxc#current-compile-debug))
                        (let ((__tmp292952
                               (let ((__tmp292953 (reverse _opts287514_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp292953))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp292952))
                        (reverse _opts287514_)))))
            (let ((_K287529287582_
                   (lambda (_rest287579_ _opt287580_)
                     (let ((__tmp292954
                            (let ((__tmp292955
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287514_))))
                              (declare (not safe))
                              (cons _opt287580_ __tmp292955))))
                       (declare (not safe))
                       (_lp287511_ _rest287579_ __tmp292954))))
                  (_K287524287563_
                   (lambda (_rest287561_)
                     (let ()
                       (declare (not safe))
                       (_lp287511_ _rest287561_ _opts287514_))))
                  (_K287521287549_
                   (lambda (_rest287547_)
                     (let ()
                       (declare (not safe))
                       (_lp287511_ _rest287547_ _opts287514_)))))
              (if (let () (declare (not safe)) (##pair? _rest287515287535_))
                  (let ((_tl287531287587_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287515287535_)))
                        (_hd287530287585_
                         (let ()
                           (declare (not safe))
                           (##car _rest287515287535_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287530287585_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287531287587_))
                            (let ((_tl287533287592_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287531287587_)))
                                  (_hd287532287590_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287531287587_))))
                              (let ((_opt287595_ _hd287532287590_)
                                    (_rest287597_ _tl287533287592_))
                                (let ()
                                  (declare (not safe))
                                  (_K287529287582_ _rest287597_ _opt287595_))))
                            (let ((_rest287555_ _tl287531287587_))
                              (declare (not safe))
                              (_K287521287549_ _rest287555_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287530287585_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287531287587_))
                                (let* ((_tl287528287571_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287531287587_)))
                                       (_rest287574_ _tl287528287571_))
                                  (declare (not safe))
                                  (_K287524287563_ _rest287574_))
                                (let ((_rest287555_ _tl287531287587_))
                                  (declare (not safe))
                                  (_K287521287549_ _rest287555_)))
                            (let ((_rest287555_ _tl287531287587_))
                              (declare (not safe))
                              (_K287521287549_ _rest287555_)))))
                  (let () (declare (not safe)) (_else287519287543_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287603_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287603_))))
    (define gxc#gsc-cc-options
      (lambda _g292957_
        (let ((_g292956_ (let () (declare (not safe)) (##length _g292957_))))
          (cond ((let () (declare (not safe)) (##fx= _g292956_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g292957_))
                ((let () (declare (not safe)) (##fx= _g292956_ 1))
                 (apply (lambda (_phi?287605_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287605_)))
                        _g292957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g292957_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287504_)
        (let* ((_user-staticdir287506_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp292958
                (let ((__tmp292959
                       (string-append
                        '"-I "
                        _staticdir287504_
                        '" -I "
                        _user-staticdir287506_)))
                  (declare (not safe))
                  (cons __tmp292959 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp292958))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287416_ ((_rest287418_ (gxc#current-compile-gsc-options))
                         (_opts287419_ '()))
          (let* ((_rest287420287440_ _rest287418_)
                 (_else287424287448_ (lambda () _opts287419_)))
            (let ((_K287434287491_
                   (lambda (_rest287489_)
                     (let ()
                       (declare (not safe))
                       (_lp287416_ _rest287489_ _opts287419_))))
                  (_K287429287469_
                   (lambda (_rest287466_ _opt287467_)
                     (let ((__tmp292960
                            (append _opts287419_
                                    (let ((__tmp292961
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287467_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp292961)))))
                       (declare (not safe))
                       (_lp287416_ _rest287466_ __tmp292960))))
                  (_K287426287454_
                   (lambda (_rest287452_)
                     (let ()
                       (declare (not safe))
                       (_lp287416_ _rest287452_ _opts287419_)))))
              (if (let () (declare (not safe)) (##pair? _rest287420287440_))
                  (let ((_tl287436287496_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287420287440_)))
                        (_hd287435287494_
                         (let ()
                           (declare (not safe))
                           (##car _rest287420287440_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287435287494_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287436287496_))
                            (let* ((_tl287438287499_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287436287496_)))
                                   (_rest287502_ _tl287438287499_))
                              (declare (not safe))
                              (_K287434287491_ _rest287502_))
                            (let ((_rest287460_ _tl287436287496_))
                              (declare (not safe))
                              (_K287426287454_ _rest287460_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287435287494_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287436287496_))
                                (let ((_tl287433287479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287436287496_)))
                                      (_hd287432287477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287436287496_))))
                                  (let ((_opt287482_ _hd287432287477_)
                                        (_rest287484_ _tl287433287479_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287429287469_
                                       _rest287484_
                                       _opt287482_))))
                                (let ((_rest287460_ _tl287436287496_))
                                  (declare (not safe))
                                  (_K287426287454_ _rest287460_)))
                            (let ((_rest287460_ _tl287436287496_))
                              (declare (not safe))
                              (_K287426287454_ _rest287460_)))))
                  (let () (declare (not safe)) (_else287424287448_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287413_)
        (let ((__tmp292962
               (let () (declare (not safe)) (string-empty? _str287413_))))
          (declare (not safe))
          (not __tmp292962))))
    (define gxc#gsc-compile-file
      (lambda (_path287381_ _phi?287382_)
        (letrec ((_gsc-link-path287384_
                  (lambda (_base-path287405_)
                    (let _lp287407_ ((_n287409_ '1))
                      (let ((_path287411_
                             (string-append
                              _base-path287405_
                              '".o"
                              (number->string _n287409_))))
                        (if (file-exists? _path287411_)
                            (let ((__tmp292963
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287409_ '1))))
                              (declare (not safe))
                              (_lp287407_ __tmp292963))
                            _path287411_))))))
          (let* ((_base-path287386_ (path-strip-extension _path287381_))
                 (_path-c287388_ (string-append _base-path287386_ '".c"))
                 (_path-o287390_ (string-append _base-path287386_ '".o"))
                 (_link-path287392_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287384_ _base-path287386_)))
                 (_link-path-c287394_ (string-append _link-path287392_ '".c"))
                 (_link-path-o287396_ (string-append _link-path287392_ '".o"))
                 (_gsc-link-opts287398_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287382_)))
                 (_gsc-cc-opts287400_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287382_)))
                 (_gcc-ld-opts287402_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp292970 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp292964
                   (let ((__tmp292965
                          (let ((__tmp292966
                                 (let ((__tmp292967
                                        (let ((__tmp292968
                                               (let ((__tmp292969
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287381_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp292969
                                                         _gsc-link-opts287398_))))
                                          (declare (not safe))
                                          (cons _link-path-c287394_
                                                __tmp292968))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp292967))))
                            (declare (not safe))
                            (cons '"-flat" __tmp292966))))
                     (declare (not safe))
                     (cons '"-link" __tmp292965))))
              (declare (not safe))
              (gxc#invoke __tmp292970 __tmp292964 'stdout-redirection: '#t))
            (let ((__tmp292977 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp292971
                   (let ((__tmp292972
                          (let ((__tmp292973
                                 (let ((__tmp292974
                                        (let ((__tmp292975
                                               (let ((__tmp292976
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287394_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287388_
                                                       __tmp292976))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp292975
                                                  _gsc-cc-opts287400_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp292974))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp292973))))
                     (declare (not safe))
                     (cons '"-obj" __tmp292972))))
              (declare (not safe))
              (gxc#invoke __tmp292977 __tmp292971 'stdout-redirection: '#t))
            (let ((__tmp292983 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp292978
                   (let ((__tmp292979
                          (let ((__tmp292980
                                 (let ((__tmp292981
                                        (let ((__tmp292982
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287396_
                                                       _gcc-ld-opts287402_))))
                                          (declare (not safe))
                                          (cons _path-o287390_ __tmp292982))))
                                   (declare (not safe))
                                   (cons _link-path287392_ __tmp292981))))
                            (declare (not safe))
                            (cons '"-o" __tmp292980))))
                     (declare (not safe))
                     (cons '"-shared" __tmp292979))))
              (declare (not safe))
              (gxc#invoke __tmp292983 __tmp292978))
            (for-each
             delete-file
             (let ((__tmp292984
                    (let ((__tmp292985
                           (let ((__tmp292986
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287396_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287394_ __tmp292986))))
                      (declare (not safe))
                      (cons _path-o287390_ __tmp292985))))
               (declare (not safe))
               (cons _path-c287388_ __tmp292984)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287352_ _n287353_ _ext287354_)
        (letrec ((_module-relative-path287356_
                  (lambda (_ctx287379_)
                    (path-strip-directory
                     (let ((__tmp292987
                            (##structure-ref
                             _ctx287379_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp292987)))))
                 (_module-source-directory287357_
                  (lambda (_ctx287375_)
                    (path-directory
                     (let ((_mpath287377_
                            (##structure-ref
                             _ctx287375_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287377_))
                           _mpath287377_
                           (let ()
                             (declare (not safe))
                             (last _mpath287377_)))))))
                 (_section-string287358_
                  (lambda (_n287373_)
                    (if (let () (declare (not safe)) (number? _n287373_))
                        (number->string _n287373_)
                        (if (let () (declare (not safe)) (symbol? _n287373_))
                            (symbol->string _n287373_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287373_))
                                _n287373_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287373_)))))))
                 (_file-name287359_
                  (lambda (_path287371_)
                    (if _n287353_
                        (string-append
                         _path287371_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287358_ _n287353_))
                         _ext287354_)
                        (string-append _path287371_ _ext287354_))))
                 (_file-path287360_
                  (lambda ()
                    (let ((_$e287366_ (gxc#current-compile-output-dir)))
                      (if _$e287366_
                          ((lambda (_outdir287369_)
                             (path-expand
                              (let ((__tmp292989
                                     (let ((__tmp292990
                                            (##structure-ref
                                             _ctx287352_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp292990))))
                                (declare (not safe))
                                (_file-name287359_ __tmp292989))
                              _outdir287369_))
                           _$e287366_)
                          (path-expand
                           (let ((__tmp292988
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287356_
                                     _ctx287352_))))
                             (declare (not safe))
                             (_file-name287359_ __tmp292988))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287357_
                              _ctx287352_))))))))
          (let ((_path287362_
                 (let () (declare (not safe)) (_file-path287360_))))
            (let ((__tmp292991
                   (lambda ()
                     (let ((__tmp292992 (path-directory _path287362_)))
                       (declare (not safe))
                       (create-directory* __tmp292992)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp292991))
            _path287362_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287334_)
        (letrec ((_file-name287336_
                  (lambda (_id287350_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287350_))
                     '".scm")))
                 (_file-path287337_
                  (lambda ()
                    (let* ((_file287343_
                            (let ((__tmp292993
                                   (##structure-ref
                                    _ctx287334_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287336_ __tmp292993)))
                           (_$e287345_ (gxc#current-compile-output-dir)))
                      (if _$e287345_
                          ((lambda (_outdir287348_)
                             (path-expand
                              _file287343_
                              (path-expand '"static" _outdir287348_)))
                           _$e287345_)
                          (path-expand _file287343_ '"static"))))))
          (let ((_path287339_
                 (let () (declare (not safe)) (_file-path287337_))))
            (let ((__tmp292994
                   (lambda ()
                     (let ((__tmp292995 (path-directory _path287339_)))
                       (declare (not safe))
                       (create-directory* __tmp292995)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp292994))
            _path287339_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287328_ _opts287329_)
        (let ((_$e287331_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287329_))))
          (if _$e287331_
              (values _$e287331_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287328_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287321_)
        (if (let () (declare (not safe)) (string? _idstr287321_))
            (let* ((_str287323_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287321_)))
                   (_strs287325_
                    (let ()
                      (declare (not safe))
                      (string-split _str287323_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287325_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287321_))
                (let ((__tmp292996 (symbol->string _idstr287321_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp292996))
                (error '"Bad module id" _idstr287321_)))))
    (define gxc#invoke__%
      (lambda (_g292997_
               _stdout-redirection287282287286_
               _stderr-redirection287283287288_
               _program287290_
               _args287291_)
        (let* ((_stdout-redirection287293_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287282287286_ absent-value))
                    '#f
                    _stdout-redirection287282287286_))
               (_stderr-redirection287295_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287283287288_ absent-value))
                    '#f
                    _stderr-redirection287283287288_)))
          (let ((__tmp292998
                 (let ()
                   (declare (not safe))
                   (cons _program287290_ _args287291_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp292998))
          (let* ((_proc287297_
                  (open-process
                   (let ((__tmp292999
                          (let ((__tmp293000
                                 (let ((__tmp293001
                                        (let ((__tmp293002
                                               (let ((__tmp293003
                                                      (let ((__tmp293004
                                                             (let ((__tmp293005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection287295_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp293005))))
                (declare (not safe))
                (cons _stdout-redirection287293_ __tmp293004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp293003))))
                                          (declare (not safe))
                                          (cons _args287291_ __tmp293002))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp293001))))
                            (declare (not safe))
                            (cons _program287290_ __tmp293000))))
                     (declare (not safe))
                     (cons 'path: __tmp292999))))
                 (_output287302_
                  (if (or _stdout-redirection287293_
                          _stderr-redirection287295_)
                      (read-line _proc287297_ '#f)
                      '#f)))
            (let ((_status287305_ (process-status _proc287297_)))
              (close-port _proc287297_)
              (if (let () (declare (not safe)) (zero? _status287305_))
                  '#!void
                  (begin
                    (display _output287302_)
                    (let ((__tmp293006
                           (let ()
                             (declare (not safe))
                             (cons _program287290_ _args287291_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp293006
                       _status287305_)))))))))
    (define gxc#invoke__@
      (lambda (_keys287281287310_ . _args287312_)
        (apply gxc#invoke__%
               _keys287281287310_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys287281287310_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys287281287310_
                  'stderr-redirection:
                  absent-value))
               _args287312_)))
    (define gxc#invoke
      (lambda _args287284287318_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287284287318_)))
    (define gxc#join!
      (lambda (_thread287275_)
        (let ((__tmp293008
               (lambda (_exn287277_)
                 (if (uncaught-exception? _exn287277_)
                     (raise (uncaught-exception-reason _exn287277_))
                     (raise _exn287277_))))
              (__tmp293007 (lambda () (thread-join! _thread287275_))))
          (declare (not safe))
          (with-catch __tmp293008 __tmp293007))))))
