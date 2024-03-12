(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710237316)
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
      (lambda (_path158523_ _fun158524_)
        (with-output-to-file
         (let ((__tmp158617
                (let ()
                  (declare (not safe))
                  (cons _path158523_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158617))
         _fun158524_)))
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
      (lambda (_gerbil-libdir158518_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158518_)))
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
      (lambda (_dir158516_) (delete-file-or-directory _dir158516_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158490_ _opts158491_)
        (if (let () (declare (not safe)) (string? _srcpath158490_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158490_)))
        (let ((_outdir158493_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158491_)))
              (_invoke-gsc?158494_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158491_)))
              (_gsc-options158495_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158491_)))
              (_keep-scm?158496_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158491_)))
              (_verbosity158497_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158491_)))
              (_optimize158498_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158491_)))
              (_debug158499_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158491_)))
              (_gen-ssxi158500_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158491_))))
          (if _outdir158493_
              (let ((__tmp158618
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158493_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158618))
              '#!void)
          (if _optimize158498_
              (let ((__tmp158619
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158619))
              '#!void)
          (let ((__tmp158623
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158490_))
                   (let ((__tmp158624
                          (let ((__tmp158625
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158490_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158625))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158624))))
                (__tmp158622
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158620
                 (let ((__tmp158621
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158490_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158621))))
            (declare (not safe))
            (call-with-parameters
             __tmp158623
             gxc#current-compile-output-dir
             _outdir158493_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158494_
             gxc#current-compile-gsc-options
             _gsc-options158495_
             gxc#current-compile-keep-scm
             _keep-scm?158496_
             gxc#current-compile-verbose
             _verbosity158497_
             gxc#current-compile-optimize
             _optimize158498_
             gxc#current-compile-debug
             _debug158499_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158500_
             gxc#current-compile-timestamp
             __tmp158622
             gxc#current-compile-context
             __tmp158620
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158509_)
        (let ((_opts158511_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158509_ _opts158511_))))
    (define gxc#compile-module
      (lambda _g158627_
        (let ((_g158626_ (let () (declare (not safe)) (##length _g158627_))))
          (cond ((let () (declare (not safe)) (##fx= _g158626_ 1))
                 (apply (lambda (_srcpath158509_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158509_)))
                        _g158627_))
                ((let () (declare (not safe)) (##fx= _g158626_ 2))
                 (apply (lambda (_srcpath158513_ _opts158514_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158513_
                             _opts158514_)))
                        _g158627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158627_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158466_ _opts158467_)
        (if (let () (declare (not safe)) (string? _srcpath158466_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158466_)))
        (let ((_outdir158469_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158467_)))
              (_invoke-gsc?158470_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158467_)))
              (_gsc-options158471_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158467_)))
              (_keep-scm?158472_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158467_)))
              (_verbosity158473_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158467_)))
              (_debug158474_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158467_))))
          (if _outdir158469_
              (let ((__tmp158628
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158469_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158628))
              '#!void)
          (let ((__tmp158632
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158466_))
                   (let ((__tmp158633
                          (let ((__tmp158634
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158466_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158634))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158633
                      _opts158467_))))
                (__tmp158631
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158629
                 (let ((__tmp158630
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158466_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158630))))
            (declare (not safe))
            (call-with-parameters
             __tmp158632
             gxc#current-compile-output-dir
             _outdir158469_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158470_
             gxc#current-compile-gsc-options
             _gsc-options158471_
             gxc#current-compile-keep-scm
             _keep-scm?158472_
             gxc#current-compile-verbose
             _verbosity158473_
             gxc#current-compile-debug
             _debug158474_
             gxc#current-compile-timestamp
             __tmp158631
             gxc#current-compile-context
             __tmp158629
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158482_)
        (let ((_opts158484_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158482_ _opts158484_))))
    (define gxc#compile-exe
      (lambda _g158636_
        (let ((_g158635_ (let () (declare (not safe)) (##length _g158636_))))
          (cond ((let () (declare (not safe)) (##fx= _g158635_ 1))
                 (apply (lambda (_srcpath158482_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158482_)))
                        _g158636_))
                ((let () (declare (not safe)) (##fx= _g158635_ 2))
                 (apply (lambda (_srcpath158486_ _opts158487_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158486_ _opts158487_)))
                        _g158636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158636_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158462_ _opts158463_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158463_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158462_
               _opts158463_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158462_
               _opts158463_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158345_ _opts158346_)
        (letrec ((_generate-stub158348_
                  (lambda (_builtin-modules158458_)
                    (let ((_mod-main158460_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158345_ 'main))))
                      (write (let ((__tmp158637
                                    (let ((__tmp158638
                                           (let ((__tmp158639
                                                  (let ((__tmp158640
                                                         (let ((__tmp158642
                                                                (let ((__tmp158643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158458_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158643)))
                       (__tmp158641
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158642 __tmp158641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158640))))
                                             (declare (not safe))
                                             (cons __tmp158639 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158638))))
                               (declare (not safe))
                               (cons 'define __tmp158637)))
                      (write (let ((__tmp158644
                                    (let ((__tmp158683
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158645
                                           (let ((__tmp158646
                                                  (let ((__tmp158647
                                                         (let ((__tmp158671
                                                                (let ((__tmp158672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158673
                                      (let ((__tmp158681
                                             (let ((__tmp158682
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158682)))
                                            (__tmp158674
                                             (let ((__tmp158675
                                                    (let ((__tmp158676
                                                           (let ((__tmp158677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158678
                                 (let ((__tmp158679
                                        (let ((__tmp158680
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158680 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158679))))
                            (declare (not safe))
                            (cons __tmp158678 '()))))
                     (declare (not safe))
                     (cons _mod-main158460_ __tmp158677))))
              (declare (not safe))
              (cons 'apply __tmp158676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158675 '()))))
                                        (declare (not safe))
                                        (cons __tmp158681 __tmp158674))))
                                 (declare (not safe))
                                 (cons '() __tmp158673))))
                          (declare (not safe))
                          (cons 'lambda __tmp158672)))
                       (__tmp158648
                        (let ((__tmp158649
                               (let ((__tmp158650
                                      (let ((__tmp158651
                                             (let ((__tmp158662
                                                    (let ((__tmp158663
                                                           (let ((__tmp158664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158665
                                 (let ((__tmp158666
                                        (let ((__tmp158667
                                               (let ((__tmp158668
                                                      (let ((__tmp158669
                                                             (let ((__tmp158670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158670 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158668 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158667))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158666))))
                            (declare (not safe))
                            (cons __tmp158665 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158664))))
              (declare (not safe))
              (cons 'with-catch __tmp158663)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158652
                                                    (let ((__tmp158653
                                                           (let ((__tmp158654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158655
                                 (let ((__tmp158656
                                        (let ((__tmp158657
                                               (let ((__tmp158658
                                                      (let ((__tmp158659
                                                             (let ((__tmp158660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158661
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158661 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158660))))
                (declare (not safe))
                (cons __tmp158659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158658))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158657))))
                                   (declare (not safe))
                                   (cons __tmp158656 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158655))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158654))))
              (declare (not safe))
              (cons __tmp158653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158662
                                                     __tmp158652))))
                                        (declare (not safe))
                                        (cons '() __tmp158651))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158650))))
                          (declare (not safe))
                          (cons __tmp158649 '()))))
                   (declare (not safe))
                   (cons __tmp158671 __tmp158648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158647))))
                                             (declare (not safe))
                                             (cons __tmp158646 '()))))
                                      (declare (not safe))
                                      (cons __tmp158683 __tmp158645))))
                               (declare (not safe))
                               (cons 'define __tmp158644)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158349_
                  (lambda (_libgerbil158456_)
                    (call-with-input-file
                     (string-append _libgerbil158456_ '".ldd")
                     read)))
                 (_replace-extension158350_
                  (lambda (_path158453_ _ext158454_)
                    (string-append
                     (path-strip-extension _path158453_)
                     _ext158454_)))
                 (_not-exclude-module?158351_
                  (lambda (_ctx158449_)
                    (let ((_id-str158451_
                           (symbol->string
                            (##structure-ref
                             _ctx158449_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158685
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158451_))))
                            (declare (not safe))
                            (not __tmp158685))
                          (let ((__tmp158684
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158451_))))
                            (declare (not safe))
                            (not __tmp158684))
                          '#f))))
                 (_not-file-empty?158352_
                  (lambda (_path158447_)
                    (let ((__tmp158686
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158447_))))
                      (declare (not safe))
                      (not __tmp158686))))
                 (_compile-stub158353_
                  (lambda (_output-scm158360_ _output-bin158361_)
                    (let* ((_gerbil-home158363_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158365_
                            (path-expand '"lib" _gerbil-home158363_))
                           (_gerbil-staticdir158367_
                            (path-expand '"static" _gerbil-libdir158365_))
                           (_gxlink158369_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158365_))
                           (_tmp158371_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158375_
                            (lambda (_f158373_)
                              (path-expand
                               (path-strip-directory _f158373_)
                               _tmp158371_)))
                           (_deps158377_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158345_)))
                           (_deps158379_
                            (filter _not-exclude-module?158351_ _deps158377_))
                           (_src-deps-scm158381_
                            (map gxc#find-static-module-file _deps158379_))
                           (_src-deps-scm158383_
                            (filter _not-file-empty?158352_
                                    _src-deps-scm158381_))
                           (_src-deps-scm158385_
                            (map path-expand _src-deps-scm158383_))
                           (_deps-scm158387_
                            (map _tmp-path158375_ _src-deps-scm158385_))
                           (_deps-c158393_
                            (map (lambda (_g158388158390_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158350_
                                      _g158388158390_
                                      '".c")))
                                 _deps-scm158387_))
                           (_deps-o158399_
                            (map (lambda (_g158394158396_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158350_
                                      _g158394158396_
                                      '".o")))
                                 _deps-scm158387_))
                           (_src-bin-scm158401_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158345_)))
                           (_src-bin-scm158403_
                            (path-expand _src-bin-scm158401_))
                           (_bin-scm158405_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158375_ _src-bin-scm158403_)))
                           (_bin-c158407_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158350_
                               _bin-scm158405_
                               '".c")))
                           (_bin-o158409_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158350_
                               _bin-scm158405_
                               '".o")))
                           (_output-bin158411_
                            (path-expand _output-bin158361_))
                           (_output-scm158413_
                            (path-expand _output-scm158360_))
                           (_output-c158415_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158350_
                               _output-scm158413_
                               '".c")))
                           (_output-o158417_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158350_
                               _output-scm158413_
                               '".o")))
                           (_output_-c158419_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158350_
                               _output-scm158413_
                               '"_.c")))
                           (_output_-o158421_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158350_
                               _output-scm158413_
                               '"_.o")))
                           (_gsc-link-opts158423_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158425_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158427_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158367_)))
                           (_output-ld-opts158429_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158431_
                            (path-expand '"libgerbil.a" _gerbil-libdir158365_))
                           (_libgerbil.so158433_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158365_))
                           (_libgerbil-ld-opts158435_
                            (if (file-exists? _libgerbil.so158433_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158349_
                                   _libgerbil.so158433_))
                                (if (file-exists? _libgerbil.a158431_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158349_
                                       _libgerbil.a158431_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158431_
                                       _libgerbil.so158433_)))))
                           (_rpath158437_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158365_)))
                           (_builtin-modules158441_
                            (map (lambda (_mod158439_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158439_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158345_ _deps158379_)))))
                      (let ((__tmp158687
                             (lambda ()
                               (let ((__tmp158688
                                      (path-directory _output-bin158411_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158688)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158687))
                      (let ((__tmp158689
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158348_
                                  _builtin-modules158441_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158413_
                         __tmp158689))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158690
                                   (lambda () (create-directory _tmp158371_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158690))
                            (for-each
                             copy-file
                             _src-deps-scm158385_
                             _deps-scm158387_)
                            (copy-file _src-bin-scm158403_ _bin-scm158405_)
                            (let ((__tmp158698
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158691
                                   (let ((__tmp158692
                                          (let ((__tmp158693
                                                 (let ((__tmp158694
                                                        (let ((__tmp158695
                                                               (let ((__tmp158696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158697
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158413_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158405_ __tmp158697))))
                         (declare (not safe))
                         (foldr1 cons __tmp158696 _deps-scm158387_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158695 _gsc-link-opts158423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158369_
                                                         __tmp158694))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158693))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158692))))
                              (declare (not safe))
                              (gxc#invoke __tmp158698 __tmp158691))
                            (let ((__tmp158706
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158699
                                   (let ((__tmp158700
                                          (let ((__tmp158701
                                                 (let ((__tmp158702
                                                        (let ((__tmp158703
                                                               (let ((__tmp158704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158705
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158419_ '()))))
                                (declare (not safe))
                                (cons _output-c158415_ __tmp158705))))
                         (declare (not safe))
                         (cons _bin-c158407_ __tmp158704))))
                  (declare (not safe))
                  (foldr1 cons __tmp158703 _deps-c158393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158702
                                                           _gsc-static-opts158427_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158701
                                                    _gsc-cc-opts158425_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158700))))
                              (declare (not safe))
                              (gxc#invoke __tmp158706 __tmp158699))
                            (let ((__tmp158719
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158707
                                   (let ((__tmp158708
                                          (let ((__tmp158709
                                                 (let ((__tmp158710
                                                        (let ((__tmp158711
                                                               (let ((__tmp158712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158713
                                     (let ((__tmp158714
                                            (let ((__tmp158715
                                                   (let ((__tmp158716
                                                          (let ((__tmp158717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158718
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158435_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158718))))
                    (declare (not safe))
                    (cons _gerbil-libdir158365_ __tmp158717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158716))))
                                              (declare (not safe))
                                              (cons _rpath158437_
                                                    __tmp158715))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158714
                                               _output-ld-opts158429_))))
                                (declare (not safe))
                                (cons _output_-o158421_ __tmp158713))))
                         (declare (not safe))
                         (cons _output-o158417_ __tmp158712))))
                  (declare (not safe))
                  (cons _bin-o158409_ __tmp158711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158710
                                                           _deps-o158399_))))
                                            (declare (not safe))
                                            (cons _output-bin158411_
                                                  __tmp158709))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158708))))
                              (declare (not safe))
                              (gxc#invoke __tmp158719 __tmp158707))
                            (for-each
                             delete-file
                             (let ((__tmp158720
                                    (let ((__tmp158721
                                           (let ((__tmp158722
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158421_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158417_
                                                   __tmp158722))))
                                      (declare (not safe))
                                      (cons _output_-c158419_ __tmp158721))))
                               (declare (not safe))
                               (cons _output-c158415_ __tmp158720)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158371_)))
                          '#!void)))))
          (let* ((_output-bin158355_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158345_ _opts158346_)))
                 (_output-scm158357_
                  (string-append _output-bin158355_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158353_ _output-scm158357_ _output-bin158355_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158357_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158170_ _opts158171_)
        (letrec ((_reset-declare158173_
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
                 (_generate-stub158174_
                  (lambda (_deps158336_)
                    (let ((_mod-main158338_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158170_ 'main)))
                          (_reset-decl158339_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158173_)))
                          (_user-decl158340_
                           (let ()
                             (declare (not safe))
                             (_user-declare158175_))))
                      (for-each
                       (lambda (_dep158342_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158339_)
                         (newline)
                         (if _user-decl158340_
                             (begin (write _user-decl158340_) (newline))
                             '#!void)
                         (write (let ((__tmp158723
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158342_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158723)))
                         (newline))
                       _deps158336_)
                      (write (let ((__tmp158724
                                    (let ((__tmp158737
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158725
                                           (let ((__tmp158733
                                                  (let ((__tmp158734
                                                         (let ((__tmp158735
                                                                (let ((__tmp158736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158736))))
                   (declare (not safe))
                   (cons __tmp158735 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158734)))
                                                 (__tmp158726
                                                  (let ((__tmp158727
                                                         (let ((__tmp158728
                                                                (let ((__tmp158729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158730
                                      (let ((__tmp158731
                                             (let ((__tmp158732
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158732 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158731))))
                                 (declare (not safe))
                                 (cons __tmp158730 '()))))
                          (declare (not safe))
                          (cons _mod-main158338_ __tmp158729))))
                   (declare (not safe))
                   (cons 'apply __tmp158728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158727 '()))))
                                             (declare (not safe))
                                             (cons __tmp158733 __tmp158726))))
                                      (declare (not safe))
                                      (cons __tmp158737 __tmp158725))))
                               (declare (not safe))
                               (cons 'define __tmp158724)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158175_
                  (lambda ()
                    (let* ((_gsc-opts158241_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158171_)))
                           (_gsc-prelude158243_
                            (if _gsc-opts158241_
                                (member '"-prelude" _gsc-opts158241_)
                                '#f))
                           (_gsc-prelude158245_
                            (if _gsc-prelude158243_
                                (read (open-input-string
                                       (cadr _gsc-prelude158243_)))
                                '#f)))
                      (let _lp158248_ ((_rest158250_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158245_ '())))
                                       (_user-decls158251_ '()))
                        (let* ((_rest158252158260_ _rest158250_)
                               (_else158254158268_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158251_))
                                      '#f
                                      (let ((__tmp158738
                                             (reverse _user-decls158251_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158738)))))
                               (_K158256158324_
                                (lambda (_rest158271_ _expr158272_)
                                  (let* ((_expr158273158285_ _expr158272_)
                                         (_else158276158293_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158248_
                                               _rest158271_
                                               _user-decls158251_)))))
                                    (let ((_K158281158314_
                                           (lambda (_decls158312_)
                                             (let ((__tmp158739
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158251_
                                                              _decls158312_))))
                                               (declare (not safe))
                                               (_lp158248_
                                                _rest158271_
                                                __tmp158739))))
                                          (_K158278158299_
                                           (lambda (_exprs158297_)
                                             (let ((__tmp158740
                                                    (append _exprs158297_
                                                            _rest158271_)))
                                               (declare (not safe))
                                               (_lp158248_
                                                __tmp158740
                                                _user-decls158251_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158273158285_))
                                          (let ((_tl158283158319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158273158285_)))
                                                (_hd158282158317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158273158285_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158282158317_
                                                         'declare))
                                                (let ((_decls158322_
                                                       _tl158283158319_))
                                                  (declare (not safe))
                                                  (_K158281158314_
                                                   _decls158322_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158282158317_
                                                             'begin))
                                                    (let ((_exprs158307_
                                                           _tl158283158319_))
                                                      (declare (not safe))
                                                      (_K158278158299_
                                                       _exprs158307_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158276158293_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158276158293_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158252158260_))
                              (let ((_hd158257158327_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158252158260_)))
                                    (_tl158258158329_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158252158260_))))
                                (let* ((_expr158332_ _hd158257158327_)
                                       (_rest158334_ _tl158258158329_))
                                  (declare (not safe))
                                  (_K158256158324_ _rest158334_ _expr158332_)))
                              (let ()
                                (declare (not safe))
                                (_else158254158268_))))))))
                 (_compile-stub158176_
                  (lambda (_output-scm158183_ _output-bin158184_)
                    (let* ((_gerbil-home158186_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158188_
                            (path-expand '"lib" _gerbil-home158186_))
                           (_runtime158190_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158192_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158186_))
                           (_include-gambit-sharp158194_
                            (string-append
                             '"(include \""
                             _gambit-sharp158192_
                             '"\")"))
                           (_bin-scm158196_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158170_)))
                           (_deps158198_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158170_)))
                           (_deps158200_
                            (map gxc#find-static-module-file _deps158198_))
                           (_deps158205_
                            (filter (lambda (_$obj158202_)
                                      (let ((__tmp158741
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158202_))))
                                        (declare (not safe))
                                        (not __tmp158741)))
                                    _deps158200_))
                           (_deps158209_
                            (filter (lambda (_f158207_)
                                      (let ((__tmp158742
                                             (member _f158207_
                                                     _runtime158190_)))
                                        (declare (not safe))
                                        (not __tmp158742)))
                                    _deps158205_))
                           (_output-base158211_
                            (string-append
                             (path-strip-extension _output-scm158183_)))
                           (_output-c158213_
                            (string-append _output-base158211_ '".c"))
                           (_output-o158215_
                            (string-append _output-base158211_ '".o"))
                           (_output-c_158217_
                            (string-append _output-base158211_ '"_.c"))
                           (_output-o_158219_
                            (string-append _output-base158211_ '"_.o"))
                           (_gsc-link-opts158221_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158223_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158225_
                            (let ((__tmp158743
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158188_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158743)))
                           (_output-ld-opts158227_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158229_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158745
                                       (let ((__tmp158746
                                              (let ((__tmp158747
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158194_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158747))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158746))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158745))
                                (let ((__tmp158744
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158194_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158744))))
                           (_gsc-link-opts158231_
                            (append _gsc-link-opts158221_
                                    _gsc-gx-macros158229_))
                           (_rpath158233_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158188_)))
                           (_default-ld-options158235_
                            (let ((__tmp158748
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158748))))
                      (let ((__tmp158749
                             (lambda ()
                               (let ((__tmp158750
                                      (path-directory _output-bin158184_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158750)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158749))
                      (let ((__tmp158751
                             (lambda ()
                               (let ((__tmp158752
                                      (let ((__tmp158753
                                             (let ((__tmp158754
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158196_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158754
                                                       _deps158209_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158753
                                                _runtime158190_))))
                                 (declare (not safe))
                                 (_generate-stub158174_ __tmp158752)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158183_
                         __tmp158751))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158760
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158755
                                   (let ((__tmp158756
                                          (let ((__tmp158757
                                                 (let ((__tmp158758
                                                        (let ((__tmp158759
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158183_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158759 _gsc-link-opts158231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158217_
                                                         __tmp158758))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158757))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158756))))
                              (declare (not safe))
                              (gxc#invoke __tmp158760 __tmp158755))
                            (let ((__tmp158766
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158761
                                   (let ((__tmp158762
                                          (let ((__tmp158763
                                                 (let ((__tmp158764
                                                        (let ((__tmp158765
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158217_ '()))))
                  (declare (not safe))
                  (cons _output-c158213_ __tmp158765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158764
                                                           _gsc-static-opts158225_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158763
                                                    _gsc-cc-opts158223_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158762))))
                              (declare (not safe))
                              (gxc#invoke __tmp158766 __tmp158761))
                            (let ((__tmp158776
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158767
                                   (let ((__tmp158768
                                          (let ((__tmp158769
                                                 (let ((__tmp158770
                                                        (let ((__tmp158771
                                                               (let ((__tmp158772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158773
                                     (let ((__tmp158774
                                            (let ((__tmp158775
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158235_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158188_
                                                    __tmp158775))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158774))))
                                (declare (not safe))
                                (cons _rpath158233_ __tmp158773))))
                         (declare (not safe))
                         (foldr1 cons __tmp158772 _output-ld-opts158227_))))
                  (declare (not safe))
                  (cons _output-o_158219_ __tmp158771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158215_
                                                         __tmp158770))))
                                            (declare (not safe))
                                            (cons _output-bin158184_
                                                  __tmp158769))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158768))))
                              (declare (not safe))
                              (gxc#invoke __tmp158776 __tmp158767)))
                          '#!void)))))
          (let* ((_output-bin158178_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158170_ _opts158171_)))
                 (_output-scm158180_
                  (string-append _output-bin158178_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158176_ _output-scm158180_ _output-bin158178_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158180_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158120_ _id158121_)
        (let ((_$e158167_
               (let ((__tmp158778
                      (lambda (_e158122158124_)
                        (let* ((_g158126158136_ _e158122158124_)
                               (_else158128158144_ (lambda () '#f))
                               (_K158130158148_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158126158136_
                                 'gx#module-export::t))
                              (let* ((_e158131158151_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158126158136_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158132158154_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158126158136_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158133158157_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158126158136_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158133158157_ '0))
                                    (let ((_e158134158160_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158126158136_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158162158164_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158162158164_
                                                    _id158121_)))
                                           _e158134158160_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158130158148_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158128158144_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158128158144_))))
                              (let ()
                                (declare (not safe))
                                (_else158128158144_))))))
                     (__tmp158777
                      (##structure-ref
                       _ctx158120_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158778 __tmp158777))))
          (if _$e158167_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158167_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158112_ _id158113_)
        (let ((_$e158115_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158112_ _id158113_))))
          (if _$e158115_
              ((lambda (_bind158118_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158118_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158113_)))
                 (##structure-ref _bind158118_ '1 gx#binding::t '#f))
               _$e158115_)
              (let ((__tmp158779
                     (##structure-ref
                      _ctx158112_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158779
                 _id158113_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157999_)
        (letrec* ((_ht158001_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template158002_
                   (lambda (_in158064_ _phi158065_)
                     (let ((_iphi158067_
                            (fx+ _phi158065_
                                 (##direct-structure-ref
                                  _in158064_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158068_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158064_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158070_ ((_rest158072_ _imports158068_)
                                        (_r158073_ '()))
                         (let* ((_rest158074158082_ _rest158072_)
                                (_else158076158090_ (lambda () _r158073_))
                                (_K158078158100_
                                 (lambda (_rest158093_ _in158094_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158094_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158067_))
                                           (let ((__tmp158786
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158094_
                                                          _r158073_))))
                                             (declare (not safe))
                                             (_lp158070_
                                              _rest158093_
                                              __tmp158786))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158070_
                                              _rest158093_
                                              _r158073_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158094_
                                              'gx#module-import::t))
                                           (let ((_iphi158096_
                                                  (fx+ _phi158065_
                                                       (##direct-structure-ref
                                                        _in158094_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158096_))
                                                 (let ((__tmp158784
                                                        (let ((__tmp158785
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158094_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158785 _r158073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158070_
                                                    _rest158093_
                                                    __tmp158784))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158070_
                                                    _rest158093_
                                                    _r158073_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158094_
                                                  'gx#import-set::t))
                                               (let ((_xphi158098_
                                                      (fx+ _iphi158067_
                                                           (##direct-structure-ref
                                                            _in158094_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158098_))
                                                     (let ((__tmp158782
                                                            (let ((__tmp158783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158094_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158783 _r158073_))))
               (declare (not safe))
               (_lp158070_ _rest158093_ __tmp158782))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158098_)
                                                         (let ((__tmp158780
                                                                (let ((__tmp158781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template158002_
                                  _in158094_
                                  _iphi158067_))))
                          (declare (not safe))
                          (foldl1 cons _r158073_ __tmp158781))))
                   (declare (not safe))
                   (_lp158070_ _rest158093_ __tmp158780))
                 (let ()
                   (declare (not safe))
                   (_lp158070_ _rest158093_ _r158073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158070_
                                                  _rest158093_
                                                  _r158073_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158074158082_))
                               (let ((_hd158079158103_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158074158082_)))
                                     (_tl158080158105_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158074158082_))))
                                 (let* ((_in158108_ _hd158079158103_)
                                        (_rest158110_ _tl158080158105_))
                                   (declare (not safe))
                                   (_K158078158100_ _rest158110_ _in158108_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158076158090_))))))))
                  (_find-deps158003_
                   (lambda (_rest158010_ _deps158011_)
                     (let* ((_rest158012158020_ _rest158010_)
                            (_else158014158028_ (lambda () _deps158011_))
                            (_K158016158052_
                             (lambda (_rest158031_ _hd158032_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158032_
                                      'gx#module-context::t))
                                   (let ((_id158034_
                                          (##structure-ref
                                           _hd158032_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158035_
                                          (##structure-ref
                                           _hd158032_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht158001_ _id158034_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps158003_
                                            _rest158031_
                                            _deps158011_))
                                         (let ((_$e158037_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158032_))))
                                           (if _$e158037_
                                               ((lambda (_pre158040_)
                                                  (let ((_xdeps158042_
                                                         (let ((__tmp158799
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158040_ _imports158035_))))
                   (declare (not safe))
                   (_find-deps158003_ __tmp158799 _deps158011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht158001_
                                                       _id158034_
                                                       _hd158032_))
                                                    (let ((__tmp158800
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158042_))))
              (declare (not safe))
              (_find-deps158003_ _rest158031_ __tmp158800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158037_)
                                               (let ((_xdeps158044_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps158003_
                                                         _imports158035_
                                                         _deps158011_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht158001_
                                                    _id158034_
                                                    _hd158032_))
                                                 (let ((__tmp158798
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158032_
                                                                _xdeps158044_))))
                                                   (declare (not safe))
                                                   (_find-deps158003_
                                                    _rest158031_
                                                    __tmp158798)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158032_
                                          'gx#prelude-context::t))
                                       (let ((_id158046_
                                              (##structure-ref
                                               _hd158032_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht158001_
                                                _id158046_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps158003_
                                                _rest158031_
                                                _deps158011_))
                                             (let ((_xdeps158048_
                                                    (let ((__tmp158796
                                                           (##structure-ref
                                                            _hd158032_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps158003_
                                                       __tmp158796
                                                       _deps158011_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht158001_
                                                      _id158046_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps158003_
                                                      _rest158031_
                                                      _xdeps158048_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht158001_
                                                        _id158046_
                                                        _hd158032_))
                                                     (let ((__tmp158797
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158048_))))
               (declare (not safe))
               (_find-deps158003_ _rest158031_ __tmp158797)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158032_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158795
                                                      (##direct-structure-ref
                                                       _hd158032_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158795))
                                               (let ((__tmp158793
                                                      (let ((__tmp158794
                                                             (##direct-structure-ref
                                                              _hd158032_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158794
                                                              _rest158031_))))
                                                 (declare (not safe))
                                                 (_find-deps158003_
                                                  __tmp158793
                                                  _deps158011_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps158003_
                                                  _rest158031_
                                                  _deps158011_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158032_
                                                  'gx#module-export::t))
                                               (let ((__tmp158791
                                                      (let ((__tmp158792
                                                             (##direct-structure-ref
                                                              _hd158032_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158792
                                                              _rest158031_))))
                                                 (declare (not safe))
                                                 (_find-deps158003_
                                                  __tmp158791
                                                  _deps158011_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158032_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158790
                                                              (##direct-structure-ref
                                                               _hd158032_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158790))
                                                       (let ((__tmp158788
                                                              (let ((__tmp158789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158032_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158789 _rest158031_))))
                 (declare (not safe))
                 (_find-deps158003_ __tmp158788 _deps158011_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158032_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158050_
                           (let ()
                             (declare (not safe))
                             (_import-set-template158002_ _hd158032_ '0)))
                          (__tmp158787
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158031_ _xdeps158050_))))
                     (declare (not safe))
                     (_find-deps158003_ __tmp158787 _deps158011_))
                   (let ()
                     (declare (not safe))
                     (_find-deps158003_ _rest158031_ _deps158011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158032_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest158012158020_))
                           (let ((_hd158017158055_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest158012158020_)))
                                 (_tl158018158057_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest158012158020_))))
                             (let* ((_hd158060_ _hd158017158055_)
                                    (_rest158062_ _tl158018158057_))
                               (declare (not safe))
                               (_K158016158052_ _rest158062_ _hd158060_)))
                           (let ()
                             (declare (not safe))
                             (_else158014158028_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp158801
                                  (let ((_$e158005_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx157999_))))
                                    (if _$e158005_
                                        ((lambda (_pre158008_)
                                           (let ((__tmp158802
                                                  (##structure-ref
                                                   _ctx157999_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre158008_ __tmp158802)))
                                         _$e158005_)
                                        (##structure-ref
                                         _ctx157999_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps158003_ __tmp158801 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157930_)
        (let* ((_context-id157932_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157930_
                       'gx#module-context::t))
                    (##structure-ref _ctx157930_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157930_)))
               (_scm157934_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157932_))
                 '".scm"))
               (_dirs157936_ (gx#current-expander-module-library-path))
               (_dirs157942_
                (let ((_user-libpath157938_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157938_
                      (let ((_user-libpath157940_
                             (path-expand '"lib" _user-libpath157938_)))
                        (if (member _user-libpath157940_ _dirs157936_)
                            _dirs157936_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157940_ _dirs157936_))))
                      _dirs157936_)))
               (_dirs157951_
                (let ((_$e157944_ (gxc#current-compile-output-dir)))
                  (if _$e157944_
                      ((lambda (_g157946157948_)
                         (let ()
                           (declare (not safe))
                           (cons _g157946157948_ _dirs157942_)))
                       _$e157944_)
                      _dirs157942_)))
               (_dirs157957_
                (map (lambda (_g157952157954_)
                       (path-expand '"static" _g157952157954_))
                     _dirs157951_)))
          (let _lp157960_ ((_rest157962_ _dirs157957_))
            (let* ((_rest157963157971_ _rest157962_)
                   (_else157965157979_
                    (lambda ()
                      (let ((__tmp158803
                             (##structure-ref
                              _ctx157930_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158803
                         _scm157934_))))
                   (_K157967157987_
                    (lambda (_rest157982_ _dir157983_)
                      (let ((_path157985_
                             (path-expand _scm157934_ _dir157983_)))
                        (if (file-exists? _path157985_)
                            _path157985_
                            (let ()
                              (declare (not safe))
                              (_lp157960_ _rest157982_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157963157971_))
                  (let ((_hd157968157990_
                         (let ()
                           (declare (not safe))
                           (##car _rest157963157971_)))
                        (_tl157969157992_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157963157971_))))
                    (let* ((_dir157995_ _hd157968157990_)
                           (_rest157997_ _tl157969157992_))
                      (declare (not safe))
                      (_K157967157987_ _rest157997_ _dir157995_)))
                  (let () (declare (not safe)) (_else157965157979_))))))))
    (define gxc#file-empty?
      (lambda (_path157928_)
        (let ((__tmp158804 (file-info-size (file-info _path157928_ '#t))))
          (declare (not safe))
          (zero? __tmp158804))))
    (define gxc#compile-top-module
      (lambda (_ctx157917_)
        (let ((__tmp158808
               (lambda ()
                 (let ((__tmp158809
                        (##structure-ref
                         _ctx157917_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158809))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158810
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157917_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158810))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157917_))
                 (if (let ((__tmp158813
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157917_))))
                       (declare (not safe))
                       (null? __tmp158813))
                     (let* ((_thr1157922_
                             (let ((__tmp158811
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157917_)))))
                               (declare (not safe))
                               (spawn __tmp158811)))
                            (_thr2157925_
                             (let ((__tmp158812
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157917_)))))
                               (declare (not safe))
                               (spawn __tmp158812))))
                       (let () (declare (not safe)) (gxc#join! _thr1157922_))
                       (let () (declare (not safe)) (gxc#join! _thr2157925_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157917_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157917_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157917_))
                     '#!void)))
              (__tmp158807
               (let ((__obj158615
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158615)
                 __obj158615))
              (__tmp158806 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158805 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158808
           gx#current-expander-context
           _ctx157917_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158807
           gxc#current-compile-runtime-sections
           __tmp158806
           gxc#current-compile-runtime-names
           __tmp158805))))
    (define gxc#collect-bindings
      (lambda (_ctx157915_)
        (let ((__tmp158814
               (##structure-ref _ctx157915_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158814))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157861_)
        (letrec ((_compile1157863_
                  (lambda (_ctx157904_)
                    (let* ((_code157906_
                            (##structure-ref
                             _ctx157904_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157910_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157906_))
                                (let ((_idstr157908_
                                       (let ((__tmp158815
                                              (##structure-ref
                                               _ctx157904_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158815))))
                                  (string-append _idstr157908_ '"__0"))
                                '#f)))
                      (if _rt157910_
                          (begin
                            (let ((__tmp158816
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158816 _ctx157904_ _rt157910_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157865_
                               _ctx157904_
                               _code157906_)))
                          (let ((_path157913_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157904_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157913_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157866_
                         _ctx157904_
                         _code157906_
                         _rt157910_)))))
                 (_context-timestamp157864_
                  (lambda (_ctx157902_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157902_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157865_
                  (lambda (_ctx157884_ _code157885_)
                    (let* ((_lifts157887_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157890_
                            (let ((__tmp158819
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157885_))))
                                  (__tmp158818
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158817
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158819
                               gx#current-expander-context
                               _ctx157884_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157887_
                               gxc#current-compile-marks
                               __tmp158818
                               gxc#current-compile-identifiers
                               __tmp158817)))
                           (_runtime-code157892_
                            (if (let ((__tmp158823 (unbox _lifts157887_)))
                                  (declare (not safe))
                                  (null? __tmp158823))
                                _runtime-code157890_
                                (let ((__tmp158820
                                       (let ((__tmp158822
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157890_
                                                      '())))
                                             (__tmp158821
                                              (reverse (unbox _lifts157887_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158822
                                                 __tmp158821))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158820))))
                           (_runtime-code157894_
                            (let ((__tmp158824
                                   (let ((__tmp158826
                                          (let ((__tmp158827
                                                 (let ((__tmp158830
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157864_
                                                           _ctx157884_)))
                                                       (__tmp158828
                                                        (let ((__tmp158829
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158829
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158830
                                                         __tmp158828))))
                                            (declare (not safe))
                                            (cons 'define __tmp158827)))
                                         (__tmp158825
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157892_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158826 __tmp158825))))
                              (declare (not safe))
                              (cons 'begin __tmp158824)))
                           (_scm0157896_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157884_
                               '0
                               '".scm"))))
                      (let ((_scms157899_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157884_))))
                        (let ((__tmp158831
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157896_
                                    _runtime-code157894_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158831
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157899_)
                            (delete-file _scms157899_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157896_
                           '" => "
                           _scms157899_))
                        (copy-file _scm0157896_ _scms157899_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157896_))))))
                 (_generate-loader-code157866_
                  (lambda (_ctx157873_ _code157874_ _rt157875_)
                    (let* ((_loader-code157878_
                            (let ((__tmp158832
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157874_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158832
                               gx#current-expander-context
                               _ctx157873_)))
                           (_loader-code157880_
                            (if _rt157875_
                                (let ((__tmp158833
                                       (let ((__tmp158834
                                              (let ((__tmp158835
                                                     (let ((__tmp158836
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158835 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157878_
                                               __tmp158834))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158833))
                                _loader-code157878_)))
                      (let ((__tmp158837
                             (lambda ()
                               (let ((__tmp158838
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157873_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158838
                                  _loader-code157880_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158837
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157868_
                 (let ((__tmp158839
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157861_))))
                   (declare (not safe))
                   (cons _ctx157861_ __tmp158839))))
            (for-each
             (lambda (_ctx157870_)
               (let ((__tmp158840
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157863_ _ctx157870_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158840
                  gxc#current-compile-decls
                  '())))
             _all-modules157868_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157758_)
        (letrec ((_compile-ssi157760_
                  (lambda (_code157831_)
                    (let* ((_path157833_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157758_
                               '#f
                               '".ssi")))
                           (_prelude157844_
                            (let* ((_super157835_
                                    (##structure-ref
                                     _ctx157758_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157837_
                                    (##structure-ref
                                     _super157835_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157837_
                                  ((lambda (_g157839157841_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157839157841_)))
                                   _$e157837_)
                                  ':<root>)))
                           (_ns157846_
                            (##structure-ref
                             _ctx157758_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157848_
                            (symbol->string
                             (##structure-ref
                              _ctx157758_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157855_
                            (let ((_$e157850_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157848_ '#\/))))
                              (if _$e157850_
                                  ((lambda (_x157853_)
                                     (string->symbol
                                      (substring _idstr157848_ '0 _x157853_)))
                                   _$e157850_)
                                  '#f)))
                           (_rt157857_
                            (let ((__tmp158841
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158841 _ctx157758_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157833_))
                      (let ((__tmp158842
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157844_))
                               (if _pkg157855_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157855_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157846_))
                               (newline)
                               (pretty-print _code157831_)
                               (if _rt157857_
                                   (pretty-print
                                    (let ((__tmp158843
                                           (let ((__tmp158847
                                                  (let ((__tmp158848
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158848)))
                                                 (__tmp158844
                                                  (let ((__tmp158845
                                                         (let ((__tmp158846
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157857_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158845 '()))))
                                             (declare (not safe))
                                             (cons __tmp158847 __tmp158844))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158843)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157833_
                         __tmp158842)))))
                 (_compile-phi157761_
                  (lambda (_part157771_)
                    (let* ((_part157772157785_ _part157771_)
                           (_E157774157789_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157772157785_))))
                           (_K157775157800_
                            (lambda (_code157792_
                                     _n157793_
                                     _phi157794_
                                     _phi-ctx157795_)
                              (let* ((_code157798_
                                      (let ((__tmp158849
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157792_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158849
                                         gx#current-expander-context
                                         _phi-ctx157795_
                                         gx#current-expander-phi
                                         _phi157794_)))
                                     (__tmp158850
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157758_
                                         _n157793_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158850
                                 _code157798_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157772157785_))
                          (let ((_hd157776157803_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157772157785_)))
                                (_tl157777157805_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157772157785_))))
                            (let ((_phi-ctx157808_ _hd157776157803_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157777157805_))
                                  (let ((_hd157778157810_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157777157805_)))
                                        (_tl157779157812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157777157805_))))
                                    (let ((_phi157815_ _hd157778157810_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157779157812_))
                                          (let ((_hd157780157817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157779157812_)))
                                                (_tl157781157819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157779157812_))))
                                            (let ((_n157822_ _hd157780157817_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157781157819_))
                                                  (let ((_hd157782157824_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157781157819_)))
                                                        (_tl157783157826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157781157819_))))
                                                    (let ((_code157829_
                                                           _hd157782157824_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157783157826_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157775157800_
                                                             _code157829_
                                                             _n157822_
                                                             _phi157815_
                                                             _phi-ctx157808_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157774157789_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157774157789_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157774157789_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157774157789_)))))
                          (let () (declare (not safe)) (_E157774157789_)))))))
          (let ((_g158851_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157758_))))
            (begin
              (let ((_g158852_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158851_)
                           (##vector-length _g158851_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158852_ 2)))
                    (error "Context expects 2 values" _g158852_)))
              (let ((_ssi-code157763_
                     (let () (declare (not safe)) (##vector-ref _g158851_ 0)))
                    (_phi-code157764_
                     (let () (declare (not safe)) (##vector-ref _g158851_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157760_ _ssi-code157763_))
                  (let ((_threads157769_
                         (map (lambda (_code157766_)
                                (let ((__tmp158853
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157761_
                                            _code157766_)))))
                                  (declare (not safe))
                                  (spawn __tmp158853)))
                              _phi-code157764_)))
                    (for-each gxc#join! _threads157769_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157741_)
        (let* ((_path157743_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157741_ '#f '".ssxi.ss")))
               (_code157745_
                (let ((__tmp158854
                       (##structure-ref
                        _ctx157741_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158854)))
               (_idstr157747_
                (symbol->string
                 (##structure-ref _ctx157741_ '1 gx#expander-context::t '#f)))
               (_pkg157754_
                (let ((_$e157749_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157747_ '#\/))))
                  (if _$e157749_
                      ((lambda (_x157752_)
                         (string->symbol
                          (substring _idstr157747_ '0 _x157752_)))
                       _$e157749_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157743_))
          (let ((__tmp158855
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157754_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157754_))
                       '#!void)
                   (newline)
                   (pretty-print _code157745_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157743_ __tmp158855)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157734_)
        (let* ((_state157736_
                (let ((__obj158616
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158616 _ctx157734_)
                  __obj158616))
               (_ssi-code157738_
                (let ((__tmp158856
                       (##structure-ref
                        _ctx157734_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp158856
                   'state:
                   _state157736_))))
          (values _ssi-code157738_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157736_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157727_)
        (let ((_lifts157729_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158859
                 (lambda ()
                   (let ((_code157732_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157727_))))
                     (if (let ((__tmp158863 (unbox _lifts157729_)))
                           (declare (not safe))
                           (null? __tmp158863))
                         _code157732_
                         (let ((__tmp158860
                                (let ((__tmp158862
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157732_ '())))
                                      (__tmp158861
                                       (reverse (unbox _lifts157729_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158862 __tmp158861))))
                           (declare (not safe))
                           (cons 'begin __tmp158860))))))
                (__tmp158858
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158857
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158859
             gxc#current-compile-lift
             _lifts157729_
             gxc#current-compile-marks
             __tmp158858
             gxc#current-compile-identifiers
             __tmp158857)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157723_)
        (let ((_modules157725_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158864
                 (##structure-ref _ctx157723_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158864 'modules: _modules157725_))
          (reverse (unbox _modules157725_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157706_ _code157707_ _phi?157708_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157706_))
        (let ((__tmp158865
               (lambda ()
                 (pretty-print
                  (let ((__tmp158866
                         (let ((__tmp158873
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158867
                                (let ((__tmp158872
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158868
                                       (let ((__tmp158871
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158869
                                              (let ((__tmp158870
                                                     (if _phi?157708_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158870))))
                                         (declare (not safe))
                                         (cons __tmp158871 __tmp158869))))
                                  (declare (not safe))
                                  (cons __tmp158872 __tmp158868))))
                           (declare (not safe))
                           (cons __tmp158873 __tmp158867))))
                    (declare (not safe))
                    (cons 'declare __tmp158866)))
                 (pretty-print _code157707_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157706_ __tmp158865))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157706_ _phi?157708_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157706_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157714_ _code157715_)
        (let ((_phi?157717_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157714_ _code157715_ _phi?157717_))))
    (define gxc#compile-scm-file
      (lambda _g158875_
        (let ((_g158874_ (let () (declare (not safe)) (##length _g158875_))))
          (cond ((let () (declare (not safe)) (##fx= _g158874_ 2))
                 (apply (lambda (_path157714_ _code157715_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157714_
                             _code157715_)))
                        _g158875_))
                ((let () (declare (not safe)) (##fx= _g158874_ 3))
                 (apply (lambda (_path157719_ _code157720_ _phi?157721_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157719_
                             _code157720_
                             _phi?157721_)))
                        _g158875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158875_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157607_)
        (let _lp157609_ ((_rest157611_ (gxc#current-compile-gsc-options))
                         (_opts157612_ '()))
          (let* ((_rest157613157633_ _rest157611_)
                 (_else157617157641_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157607_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158876
                               (let ((__tmp158877 (reverse _opts157612_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158877))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158876))
                        (reverse _opts157612_)))))
            (let ((_K157627157684_
                   (lambda (_rest157682_)
                     (let ()
                       (declare (not safe))
                       (_lp157609_ _rest157682_ _opts157612_))))
                  (_K157622157666_
                   (lambda (_rest157664_)
                     (let ()
                       (declare (not safe))
                       (_lp157609_ _rest157664_ _opts157612_))))
                  (_K157619157648_
                   (lambda (_rest157645_ _opt157646_)
                     (let ((__tmp158878
                            (let ()
                              (declare (not safe))
                              (cons _opt157646_ _opts157612_))))
                       (declare (not safe))
                       (_lp157609_ _rest157645_ __tmp158878)))))
              (if (let () (declare (not safe)) (##pair? _rest157613157633_))
                  (let ((_tl157629157689_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157613157633_)))
                        (_hd157628157687_
                         (let ()
                           (declare (not safe))
                           (##car _rest157613157633_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157628157687_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157629157689_))
                            (let* ((_tl157631157692_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157629157689_)))
                                   (_rest157695_ _tl157631157692_))
                              (declare (not safe))
                              (_K157627157684_ _rest157695_))
                            (let ((_opt157656_ _hd157628157687_)
                                  (_rest157658_ _tl157629157689_))
                              (let ()
                                (declare (not safe))
                                (_K157619157648_ _rest157658_ _opt157656_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157628157687_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157629157689_))
                                (let* ((_tl157626157674_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157629157689_)))
                                       (_rest157677_ _tl157626157674_))
                                  (declare (not safe))
                                  (_K157622157666_ _rest157677_))
                                (let ((_opt157656_ _hd157628157687_)
                                      (_rest157658_ _tl157629157689_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157619157648_
                                     _rest157658_
                                     _opt157656_))))
                            (let ((_opt157656_ _hd157628157687_)
                                  (_rest157658_ _tl157629157689_))
                              (let ()
                                (declare (not safe))
                                (_K157619157648_ _rest157658_ _opt157656_))))))
                  (let () (declare (not safe)) (_else157617157641_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157701_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157701_))))
    (define gxc#gsc-link-options
      (lambda _g158880_
        (let ((_g158879_ (let () (declare (not safe)) (##length _g158880_))))
          (cond ((let () (declare (not safe)) (##fx= _g158879_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158880_))
                ((let () (declare (not safe)) (##fx= _g158879_ 1))
                 (apply (lambda (_phi?157703_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157703_)))
                        _g158880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158880_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157508_)
        (let _lp157510_ ((_rest157512_ (gxc#current-compile-gsc-options))
                         (_opts157513_ '()))
          (let* ((_rest157514157534_ _rest157512_)
                 (_else157518157542_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157508_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158881
                               (let ((__tmp158882 (reverse _opts157513_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158882))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158881))
                        (reverse _opts157513_)))))
            (let ((_K157528157581_
                   (lambda (_rest157578_ _opt157579_)
                     (let ((__tmp158883
                            (let ((__tmp158884
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157513_))))
                              (declare (not safe))
                              (cons _opt157579_ __tmp158884))))
                       (declare (not safe))
                       (_lp157510_ _rest157578_ __tmp158883))))
                  (_K157523157562_
                   (lambda (_rest157560_)
                     (let ()
                       (declare (not safe))
                       (_lp157510_ _rest157560_ _opts157513_))))
                  (_K157520157548_
                   (lambda (_rest157546_)
                     (let ()
                       (declare (not safe))
                       (_lp157510_ _rest157546_ _opts157513_)))))
              (if (let () (declare (not safe)) (##pair? _rest157514157534_))
                  (let ((_tl157530157586_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157514157534_)))
                        (_hd157529157584_
                         (let ()
                           (declare (not safe))
                           (##car _rest157514157534_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157529157584_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157530157586_))
                            (let ((_tl157532157591_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157530157586_)))
                                  (_hd157531157589_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157530157586_))))
                              (let ((_opt157594_ _hd157531157589_)
                                    (_rest157596_ _tl157532157591_))
                                (let ()
                                  (declare (not safe))
                                  (_K157528157581_ _rest157596_ _opt157594_))))
                            (let ((_rest157554_ _tl157530157586_))
                              (declare (not safe))
                              (_K157520157548_ _rest157554_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157529157584_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157530157586_))
                                (let* ((_tl157527157570_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157530157586_)))
                                       (_rest157573_ _tl157527157570_))
                                  (declare (not safe))
                                  (_K157523157562_ _rest157573_))
                                (let ((_rest157554_ _tl157530157586_))
                                  (declare (not safe))
                                  (_K157520157548_ _rest157554_)))
                            (let ((_rest157554_ _tl157530157586_))
                              (declare (not safe))
                              (_K157520157548_ _rest157554_)))))
                  (let () (declare (not safe)) (_else157518157542_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157602_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157602_))))
    (define gxc#gsc-cc-options
      (lambda _g158886_
        (let ((_g158885_ (let () (declare (not safe)) (##length _g158886_))))
          (cond ((let () (declare (not safe)) (##fx= _g158885_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158886_))
                ((let () (declare (not safe)) (##fx= _g158885_ 1))
                 (apply (lambda (_phi?157604_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157604_)))
                        _g158886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158886_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157503_)
        (let* ((_user-staticdir157505_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158887
                (let ((__tmp158888
                       (string-append
                        '"-I "
                        _staticdir157503_
                        '" -I "
                        _user-staticdir157505_)))
                  (declare (not safe))
                  (cons __tmp158888 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158887))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157415_ ((_rest157417_ (gxc#current-compile-gsc-options))
                         (_opts157418_ '()))
          (let* ((_rest157419157439_ _rest157417_)
                 (_else157423157447_ (lambda () _opts157418_)))
            (let ((_K157433157490_
                   (lambda (_rest157488_)
                     (let ()
                       (declare (not safe))
                       (_lp157415_ _rest157488_ _opts157418_))))
                  (_K157428157468_
                   (lambda (_rest157465_ _opt157466_)
                     (let ((__tmp158889
                            (append _opts157418_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157466_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157415_ _rest157465_ __tmp158889))))
                  (_K157425157453_
                   (lambda (_rest157451_)
                     (let ()
                       (declare (not safe))
                       (_lp157415_ _rest157451_ _opts157418_)))))
              (if (let () (declare (not safe)) (##pair? _rest157419157439_))
                  (let ((_tl157435157495_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157419157439_)))
                        (_hd157434157493_
                         (let ()
                           (declare (not safe))
                           (##car _rest157419157439_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157434157493_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157435157495_))
                            (let* ((_tl157437157498_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157435157495_)))
                                   (_rest157501_ _tl157437157498_))
                              (declare (not safe))
                              (_K157433157490_ _rest157501_))
                            (let ((_rest157459_ _tl157435157495_))
                              (declare (not safe))
                              (_K157425157453_ _rest157459_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157434157493_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157435157495_))
                                (let ((_tl157432157478_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157435157495_)))
                                      (_hd157431157476_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157435157495_))))
                                  (let ((_opt157481_ _hd157431157476_)
                                        (_rest157483_ _tl157432157478_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157428157468_
                                       _rest157483_
                                       _opt157481_))))
                                (let ((_rest157459_ _tl157435157495_))
                                  (declare (not safe))
                                  (_K157425157453_ _rest157459_)))
                            (let ((_rest157459_ _tl157435157495_))
                              (declare (not safe))
                              (_K157425157453_ _rest157459_)))))
                  (let () (declare (not safe)) (_else157423157447_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157412_)
        (let ((__tmp158890
               (let () (declare (not safe)) (string-empty? _str157412_))))
          (declare (not safe))
          (not __tmp158890))))
    (define gxc#gsc-compile-file
      (lambda (_path157380_ _phi?157381_)
        (letrec ((_gsc-link-path157383_
                  (lambda (_base-path157404_)
                    (let _lp157406_ ((_n157408_ '1))
                      (let ((_path157410_
                             (string-append
                              _base-path157404_
                              '".o"
                              (number->string _n157408_))))
                        (if (file-exists? _path157410_)
                            (let ((__tmp158891
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157408_ '1))))
                              (declare (not safe))
                              (_lp157406_ __tmp158891))
                            _path157410_))))))
          (let* ((_base-path157385_ (path-strip-extension _path157380_))
                 (_path-c157387_ (string-append _base-path157385_ '".c"))
                 (_path-o157389_ (string-append _base-path157385_ '".o"))
                 (_link-path157391_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157383_ _base-path157385_)))
                 (_link-path-c157393_ (string-append _link-path157391_ '".c"))
                 (_link-path-o157395_ (string-append _link-path157391_ '".o"))
                 (_gsc-link-opts157397_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157381_)))
                 (_gsc-cc-opts157399_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157381_)))
                 (_gcc-ld-opts157401_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158898 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158892
                   (let ((__tmp158893
                          (let ((__tmp158894
                                 (let ((__tmp158895
                                        (let ((__tmp158896
                                               (let ((__tmp158897
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157380_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158897
                                                         _gsc-link-opts157397_))))
                                          (declare (not safe))
                                          (cons _link-path-c157393_
                                                __tmp158896))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158895))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158894))))
                     (declare (not safe))
                     (cons '"-link" __tmp158893))))
              (declare (not safe))
              (gxc#invoke __tmp158898 __tmp158892 'stdout-redirection: '#t))
            (let ((__tmp158905 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158899
                   (let ((__tmp158900
                          (let ((__tmp158901
                                 (let ((__tmp158902
                                        (let ((__tmp158903
                                               (let ((__tmp158904
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157393_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157387_
                                                       __tmp158904))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158903
                                                  _gsc-cc-opts157399_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158902))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158901))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158900))))
              (declare (not safe))
              (gxc#invoke __tmp158905 __tmp158899 'stdout-redirection: '#t))
            (let ((__tmp158911 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158906
                   (let ((__tmp158907
                          (let ((__tmp158908
                                 (let ((__tmp158909
                                        (let ((__tmp158910
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157395_
                                                       _gcc-ld-opts157401_))))
                                          (declare (not safe))
                                          (cons _path-o157389_ __tmp158910))))
                                   (declare (not safe))
                                   (cons _link-path157391_ __tmp158909))))
                            (declare (not safe))
                            (cons '"-o" __tmp158908))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158907))))
              (declare (not safe))
              (gxc#invoke __tmp158911 __tmp158906))
            (for-each
             delete-file
             (let ((__tmp158912
                    (let ((__tmp158913
                           (let ((__tmp158914
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157395_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157393_ __tmp158914))))
                      (declare (not safe))
                      (cons _path-o157389_ __tmp158913))))
               (declare (not safe))
               (cons _path-c157387_ __tmp158912)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157351_ _n157352_ _ext157353_)
        (letrec ((_module-relative-path157355_
                  (lambda (_ctx157378_)
                    (path-strip-directory
                     (let ((__tmp158915
                            (##structure-ref
                             _ctx157378_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158915)))))
                 (_module-source-directory157356_
                  (lambda (_ctx157374_)
                    (path-directory
                     (let ((_mpath157376_
                            (##structure-ref
                             _ctx157374_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157376_))
                           _mpath157376_
                           (last _mpath157376_))))))
                 (_section-string157357_
                  (lambda (_n157372_)
                    (if (let () (declare (not safe)) (number? _n157372_))
                        (number->string _n157372_)
                        (if (let () (declare (not safe)) (symbol? _n157372_))
                            (symbol->string _n157372_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157372_))
                                _n157372_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157372_)))))))
                 (_file-name157358_
                  (lambda (_path157370_)
                    (if _n157352_
                        (string-append
                         _path157370_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157357_ _n157352_))
                         _ext157353_)
                        (string-append _path157370_ _ext157353_))))
                 (_file-path157359_
                  (lambda ()
                    (let ((_$e157365_ (gxc#current-compile-output-dir)))
                      (if _$e157365_
                          ((lambda (_outdir157368_)
                             (path-expand
                              (let ((__tmp158917
                                     (let ((__tmp158918
                                            (##structure-ref
                                             _ctx157351_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158918))))
                                (declare (not safe))
                                (_file-name157358_ __tmp158917))
                              _outdir157368_))
                           _$e157365_)
                          (path-expand
                           (let ((__tmp158916
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157355_
                                     _ctx157351_))))
                             (declare (not safe))
                             (_file-name157358_ __tmp158916))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157356_
                              _ctx157351_))))))))
          (let ((_path157361_
                 (let () (declare (not safe)) (_file-path157359_))))
            (let ((__tmp158919
                   (lambda ()
                     (let ((__tmp158920 (path-directory _path157361_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158920)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158919))
            _path157361_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157333_)
        (letrec ((_file-name157335_
                  (lambda (_id157349_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157349_))
                     '".scm")))
                 (_file-path157336_
                  (lambda ()
                    (let* ((_file157342_
                            (let ((__tmp158921
                                   (##structure-ref
                                    _ctx157333_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157335_ __tmp158921)))
                           (_$e157344_ (gxc#current-compile-output-dir)))
                      (if _$e157344_
                          ((lambda (_outdir157347_)
                             (path-expand
                              _file157342_
                              (path-expand '"static" _outdir157347_)))
                           _$e157344_)
                          (path-expand _file157342_ '"static"))))))
          (let ((_path157338_
                 (let () (declare (not safe)) (_file-path157336_))))
            (let ((__tmp158922
                   (lambda ()
                     (let ((__tmp158923 (path-directory _path157338_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158923)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158922))
            _path157338_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157327_ _opts157328_)
        (let ((_$e157330_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157328_))))
          (if _$e157330_
              (values _$e157330_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157327_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157320_)
        (if (let () (declare (not safe)) (string? _idstr157320_))
            (let* ((_str157322_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157320_)))
                   (_strs157324_
                    (let ()
                      (declare (not safe))
                      (string-split _str157322_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157324_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157320_))
                (let ((__tmp158924 (symbol->string _idstr157320_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158924))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157320_))))))
    (define gxc#invoke__%
      (lambda (_g158925_
               _stdout-redirection157281157285_
               _stderr-redirection157282157287_
               _program157289_
               _args157290_)
        (let* ((_stdout-redirection157292_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157281157285_ absent-value))
                    '#f
                    _stdout-redirection157281157285_))
               (_stderr-redirection157294_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157282157287_ absent-value))
                    '#f
                    _stderr-redirection157282157287_)))
          (let ((__tmp158926
                 (let ()
                   (declare (not safe))
                   (cons _program157289_ _args157290_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158926))
          (let* ((_proc157296_
                  (open-process
                   (let ((__tmp158927
                          (let ((__tmp158928
                                 (let ((__tmp158929
                                        (let ((__tmp158930
                                               (let ((__tmp158931
                                                      (let ((__tmp158932
                                                             (let ((__tmp158933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157294_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158933))))
                (declare (not safe))
                (cons _stdout-redirection157292_ __tmp158932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158931))))
                                          (declare (not safe))
                                          (cons _args157290_ __tmp158930))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158929))))
                            (declare (not safe))
                            (cons _program157289_ __tmp158928))))
                     (declare (not safe))
                     (cons 'path: __tmp158927))))
                 (_output157301_
                  (if (or _stdout-redirection157292_
                          _stderr-redirection157294_)
                      (read-line _proc157296_ '#f)
                      '#f)))
            (let ((_status157304_ (process-status _proc157296_)))
              (close-port _proc157296_)
              (if (let () (declare (not safe)) (zero? _status157304_))
                  '#!void
                  (begin
                    (display _output157301_)
                    (let ((__tmp158934
                           (let ()
                             (declare (not safe))
                             (cons _program157289_ _args157290_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158934
                       _status157304_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157280157309_ . _args157311_)
        (apply gxc#invoke__%
               _keys157280157309_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157280157309_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157280157309_
                  'stderr-redirection:
                  absent-value))
               _args157311_)))
    (define gxc#invoke
      (lambda _args157283157317_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157283157317_)))
    (define gxc#join!
      (lambda (_thread157274_)
        (let ((__tmp158936
               (lambda (_exn157276_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157276_))
                     (let ((__tmp158937
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157276_))))
                       (declare (not safe))
                       (raise __tmp158937))
                     (let () (declare (not safe)) (raise _exn157276_)))))
              (__tmp158935 (lambda () (thread-join! _thread157274_))))
          (declare (not safe))
          (with-catch __tmp158936 __tmp158935))))))
