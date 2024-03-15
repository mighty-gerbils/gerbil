(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710488245)
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
      (lambda (_path158493_ _fun158494_)
        (with-output-to-file
         (let ((__tmp158587
                (let ()
                  (declare (not safe))
                  (cons _path158493_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158587))
         _fun158494_)))
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
      (lambda (_gerbil-libdir158488_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158488_)))
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
      (lambda (_dir158486_) (delete-file-or-directory _dir158486_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158460_ _opts158461_)
        (if (let () (declare (not safe)) (string? _srcpath158460_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158460_)))
        (let ((_outdir158463_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158461_)))
              (_invoke-gsc?158464_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158461_)))
              (_gsc-options158465_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158461_)))
              (_keep-scm?158466_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158461_)))
              (_verbosity158467_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158461_)))
              (_optimize158468_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158461_)))
              (_debug158469_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158461_)))
              (_gen-ssxi158470_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158461_))))
          (if _outdir158463_
              (let ((__tmp158588
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158463_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158588))
              '#!void)
          (if _optimize158468_
              (let ((__tmp158589
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158589))
              '#!void)
          (let ((__tmp158593
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158460_))
                   (let ((__tmp158594
                          (let ((__tmp158595
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158460_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158595))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158594))))
                (__tmp158592
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158590
                 (let ((__tmp158591
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158460_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158591))))
            (declare (not safe))
            (call-with-parameters
             __tmp158593
             gxc#current-compile-output-dir
             _outdir158463_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158464_
             gxc#current-compile-gsc-options
             _gsc-options158465_
             gxc#current-compile-keep-scm
             _keep-scm?158466_
             gxc#current-compile-verbose
             _verbosity158467_
             gxc#current-compile-optimize
             _optimize158468_
             gxc#current-compile-debug
             _debug158469_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158470_
             gxc#current-compile-timestamp
             __tmp158592
             gxc#current-compile-context
             __tmp158590
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158479_)
        (let ((_opts158481_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158479_ _opts158481_))))
    (define gxc#compile-module
      (lambda _g158597_
        (let ((_g158596_ (let () (declare (not safe)) (##length _g158597_))))
          (cond ((let () (declare (not safe)) (##fx= _g158596_ 1))
                 (apply (lambda (_srcpath158479_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158479_)))
                        _g158597_))
                ((let () (declare (not safe)) (##fx= _g158596_ 2))
                 (apply (lambda (_srcpath158483_ _opts158484_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158483_
                             _opts158484_)))
                        _g158597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158597_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158436_ _opts158437_)
        (if (let () (declare (not safe)) (string? _srcpath158436_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158436_)))
        (let ((_outdir158439_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158437_)))
              (_invoke-gsc?158440_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158437_)))
              (_gsc-options158441_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158437_)))
              (_keep-scm?158442_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158437_)))
              (_verbosity158443_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158437_)))
              (_debug158444_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158437_))))
          (if _outdir158439_
              (let ((__tmp158598
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158439_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158598))
              '#!void)
          (let ((__tmp158602
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158436_))
                   (let ((__tmp158603
                          (let ((__tmp158604
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158436_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158604))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158603
                      _opts158437_))))
                (__tmp158601
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158599
                 (let ((__tmp158600
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158436_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158600))))
            (declare (not safe))
            (call-with-parameters
             __tmp158602
             gxc#current-compile-output-dir
             _outdir158439_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158440_
             gxc#current-compile-gsc-options
             _gsc-options158441_
             gxc#current-compile-keep-scm
             _keep-scm?158442_
             gxc#current-compile-verbose
             _verbosity158443_
             gxc#current-compile-debug
             _debug158444_
             gxc#current-compile-timestamp
             __tmp158601
             gxc#current-compile-context
             __tmp158599
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158452_)
        (let ((_opts158454_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158452_ _opts158454_))))
    (define gxc#compile-exe
      (lambda _g158606_
        (let ((_g158605_ (let () (declare (not safe)) (##length _g158606_))))
          (cond ((let () (declare (not safe)) (##fx= _g158605_ 1))
                 (apply (lambda (_srcpath158452_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158452_)))
                        _g158606_))
                ((let () (declare (not safe)) (##fx= _g158605_ 2))
                 (apply (lambda (_srcpath158456_ _opts158457_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158456_ _opts158457_)))
                        _g158606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158606_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158432_ _opts158433_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158433_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158432_
               _opts158433_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158432_
               _opts158433_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158314_ _opts158315_)
        (letrec ((_generate-stub158317_
                  (lambda (_linker158425_ _builtin-modules158426_)
                    (let ((_mod-main158428_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158314_ 'main))))
                      (for-each
                       (lambda (_mod158430_)
                         (write (let ((__tmp158607
                                       (let ()
                                         (declare (not safe))
                                         (cons _mod158430_ '()))))
                                  (declare (not safe))
                                  (cons '##supply-module __tmp158607)))
                         (newline))
                       _builtin-modules158426_)
                      (write (let ((__tmp158608
                                    (let ()
                                      (declare (not safe))
                                      (cons _linker158425_ '()))))
                               (declare (not safe))
                               (cons '##supply-module __tmp158608)))
                      (newline)
                      (write (let ((__tmp158609
                                    (let ((__tmp158610
                                           (let ((__tmp158611
                                                  (let ((__tmp158612
                                                         (let ((__tmp158614
                                                                (let ((__tmp158615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158426_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158615)))
                       (__tmp158613
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158614 __tmp158613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158612))))
                                             (declare (not safe))
                                             (cons __tmp158611 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158610))))
                               (declare (not safe))
                               (cons 'define __tmp158609)))
                      (newline)
                      (write (let ((__tmp158616
                                    (let ((__tmp158655
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158617
                                           (let ((__tmp158618
                                                  (let ((__tmp158619
                                                         (let ((__tmp158643
                                                                (let ((__tmp158644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158645
                                      (let ((__tmp158653
                                             (let ((__tmp158654
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158654)))
                                            (__tmp158646
                                             (let ((__tmp158647
                                                    (let ((__tmp158648
                                                           (let ((__tmp158649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158650
                                 (let ((__tmp158651
                                        (let ((__tmp158652
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158652 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158651))))
                            (declare (not safe))
                            (cons __tmp158650 '()))))
                     (declare (not safe))
                     (cons _mod-main158428_ __tmp158649))))
              (declare (not safe))
              (cons 'apply __tmp158648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158647 '()))))
                                        (declare (not safe))
                                        (cons __tmp158653 __tmp158646))))
                                 (declare (not safe))
                                 (cons '() __tmp158645))))
                          (declare (not safe))
                          (cons 'lambda __tmp158644)))
                       (__tmp158620
                        (let ((__tmp158621
                               (let ((__tmp158622
                                      (let ((__tmp158623
                                             (let ((__tmp158634
                                                    (let ((__tmp158635
                                                           (let ((__tmp158636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158637
                                 (let ((__tmp158638
                                        (let ((__tmp158639
                                               (let ((__tmp158640
                                                      (let ((__tmp158641
                                                             (let ((__tmp158642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158642 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158640 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158639))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158638))))
                            (declare (not safe))
                            (cons __tmp158637 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158636))))
              (declare (not safe))
              (cons 'with-catch __tmp158635)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158624
                                                    (let ((__tmp158625
                                                           (let ((__tmp158626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158627
                                 (let ((__tmp158628
                                        (let ((__tmp158629
                                               (let ((__tmp158630
                                                      (let ((__tmp158631
                                                             (let ((__tmp158632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158633
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158633 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158632))))
                (declare (not safe))
                (cons __tmp158631 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158630))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158629))))
                                   (declare (not safe))
                                   (cons __tmp158628 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158627))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158626))))
              (declare (not safe))
              (cons __tmp158625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158634
                                                     __tmp158624))))
                                        (declare (not safe))
                                        (cons '() __tmp158623))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158622))))
                          (declare (not safe))
                          (cons __tmp158621 '()))))
                   (declare (not safe))
                   (cons __tmp158643 __tmp158620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158619))))
                                             (declare (not safe))
                                             (cons __tmp158618 '()))))
                                      (declare (not safe))
                                      (cons __tmp158655 __tmp158617))))
                               (declare (not safe))
                               (cons 'define __tmp158616)))
                      (newline)
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158318_
                  (lambda (_libgerbil158423_)
                    (call-with-input-file
                     (string-append _libgerbil158423_ '".ldd")
                     read)))
                 (_replace-extension158319_
                  (lambda (_path158420_ _ext158421_)
                    (string-append
                     (path-strip-extension _path158420_)
                     _ext158421_)))
                 (_not-exclude-module?158320_
                  (lambda (_ctx158416_)
                    (let ((_id-str158418_
                           (symbol->string
                            (##structure-ref
                             _ctx158416_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158657
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158418_))))
                            (declare (not safe))
                            (not __tmp158657))
                          (let ((__tmp158656
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158418_))))
                            (declare (not safe))
                            (not __tmp158656))
                          '#f))))
                 (_not-file-empty?158321_
                  (lambda (_path158414_)
                    (let ((__tmp158658
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158414_))))
                      (declare (not safe))
                      (not __tmp158658))))
                 (_compile-stub158322_
                  (lambda (_output-scm158329_ _output-bin158330_)
                    (let* ((_gerbil-home158332_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158334_
                            (path-expand '"lib" _gerbil-home158332_))
                           (_gerbil-staticdir158336_
                            (path-expand '"static" _gerbil-libdir158334_))
                           (_gxlink158338_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158334_))
                           (_tmp158340_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158344_
                            (lambda (_f158342_)
                              (path-expand
                               (path-strip-directory _f158342_)
                               _tmp158340_)))
                           (_deps158346_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158314_)))
                           (_deps158348_
                            (filter _not-exclude-module?158320_ _deps158346_))
                           (_src-deps-scm158350_
                            (map gxc#find-static-module-file _deps158348_))
                           (_src-deps-scm158352_
                            (filter _not-file-empty?158321_
                                    _src-deps-scm158350_))
                           (_src-deps-scm158354_
                            (map path-expand _src-deps-scm158352_))
                           (_deps-scm158356_
                            (map _tmp-path158344_ _src-deps-scm158354_))
                           (_deps-c158362_
                            (map (lambda (_g158357158359_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158319_
                                      _g158357158359_
                                      '".c")))
                                 _deps-scm158356_))
                           (_deps-o158368_
                            (map (lambda (_g158363158365_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158319_
                                      _g158363158365_
                                      '".o")))
                                 _deps-scm158356_))
                           (_src-bin-scm158370_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158314_)))
                           (_src-bin-scm158372_
                            (path-expand _src-bin-scm158370_))
                           (_bin-scm158374_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158344_ _src-bin-scm158372_)))
                           (_bin-c158376_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158319_
                               _bin-scm158374_
                               '".c")))
                           (_bin-o158378_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158319_
                               _bin-scm158374_
                               '".o")))
                           (_output-bin158380_
                            (path-expand _output-bin158330_))
                           (_output-scm158382_
                            (path-expand _output-scm158329_))
                           (_output-c158384_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158319_
                               _output-scm158382_
                               '".c")))
                           (_output-o158386_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158319_
                               _output-scm158382_
                               '".o")))
                           (_output_-c158388_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158319_
                               _output-scm158382_
                               '"_.c")))
                           (_output_-o158390_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158319_
                               _output-scm158382_
                               '"_.o")))
                           (_gsc-link-opts158392_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158394_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158396_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158336_)))
                           (_output-ld-opts158398_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158400_
                            (path-expand '"libgerbil.a" _gerbil-libdir158334_))
                           (_libgerbil.so158402_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158334_))
                           (_libgerbil-ld-opts158404_
                            (if (file-exists? _libgerbil.so158402_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158318_
                                   _libgerbil.so158402_))
                                (if (file-exists? _libgerbil.a158400_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158318_
                                       _libgerbil.a158400_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158400_
                                       _libgerbil.so158402_)))))
                           (_rpath158406_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158334_)))
                           (_builtin-modules158408_
                            (map gx#expander-context-id
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158314_ _deps158348_)))))
                      (let ((__tmp158659
                             (lambda ()
                               (let ((__tmp158660
                                      (path-directory _output-bin158380_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158660)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158659))
                      (let ((__tmp158661
                             (lambda ()
                               (let ((__tmp158662
                                      (string->symbol
                                       (path-strip-extension
                                        (path-strip-directory
                                         _output-scm158382_)))))
                                 (declare (not safe))
                                 (_generate-stub158317_
                                  __tmp158662
                                  _builtin-modules158408_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158382_
                         __tmp158661))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158663
                                   (lambda () (create-directory _tmp158340_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158663))
                            (for-each
                             copy-file
                             _src-deps-scm158354_
                             _deps-scm158356_)
                            (copy-file _src-bin-scm158372_ _bin-scm158374_)
                            (let ((__tmp158671
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158664
                                   (let ((__tmp158665
                                          (let ((__tmp158666
                                                 (let ((__tmp158667
                                                        (let ((__tmp158668
                                                               (let ((__tmp158669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158670
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158382_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158374_ __tmp158670))))
                         (declare (not safe))
                         (foldr1 cons __tmp158669 _deps-scm158356_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158668 _gsc-link-opts158392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158338_
                                                         __tmp158667))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158666))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158665))))
                              (declare (not safe))
                              (gxc#invoke __tmp158671 __tmp158664))
                            (let ((__tmp158679
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158672
                                   (let ((__tmp158673
                                          (let ((__tmp158674
                                                 (let ((__tmp158675
                                                        (let ((__tmp158676
                                                               (let ((__tmp158677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158678
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158388_ '()))))
                                (declare (not safe))
                                (cons _output-c158384_ __tmp158678))))
                         (declare (not safe))
                         (cons _bin-c158376_ __tmp158677))))
                  (declare (not safe))
                  (foldr1 cons __tmp158676 _deps-c158362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158675
                                                           _gsc-static-opts158396_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158674
                                                    _gsc-cc-opts158394_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158673))))
                              (declare (not safe))
                              (gxc#invoke __tmp158679 __tmp158672))
                            (let ((__tmp158692
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158680
                                   (let ((__tmp158681
                                          (let ((__tmp158682
                                                 (let ((__tmp158683
                                                        (let ((__tmp158684
                                                               (let ((__tmp158685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158686
                                     (let ((__tmp158687
                                            (let ((__tmp158688
                                                   (let ((__tmp158689
                                                          (let ((__tmp158690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158691
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158404_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158691))))
                    (declare (not safe))
                    (cons _gerbil-libdir158334_ __tmp158690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158689))))
                                              (declare (not safe))
                                              (cons _rpath158406_
                                                    __tmp158688))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158687
                                               _output-ld-opts158398_))))
                                (declare (not safe))
                                (cons _output_-o158390_ __tmp158686))))
                         (declare (not safe))
                         (cons _output-o158386_ __tmp158685))))
                  (declare (not safe))
                  (cons _bin-o158378_ __tmp158684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158683
                                                           _deps-o158368_))))
                                            (declare (not safe))
                                            (cons _output-bin158380_
                                                  __tmp158682))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158681))))
                              (declare (not safe))
                              (gxc#invoke __tmp158692 __tmp158680))
                            (for-each
                             delete-file
                             (let ((__tmp158693
                                    (let ((__tmp158694
                                           (let ((__tmp158695
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158390_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158386_
                                                   __tmp158695))))
                                      (declare (not safe))
                                      (cons _output_-c158388_ __tmp158694))))
                               (declare (not safe))
                               (cons _output-c158384_ __tmp158693)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158340_)))
                          '#!void)))))
          (let* ((_output-bin158324_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158314_ _opts158315_)))
                 (_output-scm158326_
                  (string-append _output-bin158324_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158322_ _output-scm158326_ _output-bin158324_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158326_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158139_ _opts158140_)
        (letrec ((_reset-declare158142_
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
                 (_generate-stub158143_
                  (lambda (_deps158305_)
                    (let ((_mod-main158307_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158139_ 'main)))
                          (_reset-decl158308_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158142_)))
                          (_user-decl158309_
                           (let ()
                             (declare (not safe))
                             (_user-declare158144_))))
                      (for-each
                       (lambda (_dep158311_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158308_)
                         (newline)
                         (if _user-decl158309_
                             (begin (write _user-decl158309_) (newline))
                             '#!void)
                         (write (let ((__tmp158696
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158311_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158696)))
                         (newline))
                       _deps158305_)
                      (write (let ((__tmp158697
                                    (let ((__tmp158710
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158698
                                           (let ((__tmp158706
                                                  (let ((__tmp158707
                                                         (let ((__tmp158708
                                                                (let ((__tmp158709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158709))))
                   (declare (not safe))
                   (cons __tmp158708 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158707)))
                                                 (__tmp158699
                                                  (let ((__tmp158700
                                                         (let ((__tmp158701
                                                                (let ((__tmp158702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158703
                                      (let ((__tmp158704
                                             (let ((__tmp158705
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158705 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158704))))
                                 (declare (not safe))
                                 (cons __tmp158703 '()))))
                          (declare (not safe))
                          (cons _mod-main158307_ __tmp158702))))
                   (declare (not safe))
                   (cons 'apply __tmp158701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158700 '()))))
                                             (declare (not safe))
                                             (cons __tmp158706 __tmp158699))))
                                      (declare (not safe))
                                      (cons __tmp158710 __tmp158698))))
                               (declare (not safe))
                               (cons 'define __tmp158697)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158144_
                  (lambda ()
                    (let* ((_gsc-opts158210_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158140_)))
                           (_gsc-prelude158212_
                            (if _gsc-opts158210_
                                (member '"-prelude" _gsc-opts158210_)
                                '#f))
                           (_gsc-prelude158214_
                            (if _gsc-prelude158212_
                                (read (open-input-string
                                       (cadr _gsc-prelude158212_)))
                                '#f)))
                      (let _lp158217_ ((_rest158219_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158214_ '())))
                                       (_user-decls158220_ '()))
                        (let* ((_rest158221158229_ _rest158219_)
                               (_else158223158237_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158220_))
                                      '#f
                                      (let ((__tmp158711
                                             (reverse _user-decls158220_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158711)))))
                               (_K158225158293_
                                (lambda (_rest158240_ _expr158241_)
                                  (let* ((_expr158242158254_ _expr158241_)
                                         (_else158245158262_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158217_
                                               _rest158240_
                                               _user-decls158220_)))))
                                    (let ((_K158250158283_
                                           (lambda (_decls158281_)
                                             (let ((__tmp158712
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158220_
                                                              _decls158281_))))
                                               (declare (not safe))
                                               (_lp158217_
                                                _rest158240_
                                                __tmp158712))))
                                          (_K158247158268_
                                           (lambda (_exprs158266_)
                                             (let ((__tmp158713
                                                    (append _exprs158266_
                                                            _rest158240_)))
                                               (declare (not safe))
                                               (_lp158217_
                                                __tmp158713
                                                _user-decls158220_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158242158254_))
                                          (let ((_tl158252158288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158242158254_)))
                                                (_hd158251158286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158242158254_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158251158286_
                                                         'declare))
                                                (let ((_decls158291_
                                                       _tl158252158288_))
                                                  (declare (not safe))
                                                  (_K158250158283_
                                                   _decls158291_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158251158286_
                                                             'begin))
                                                    (let ((_exprs158276_
                                                           _tl158252158288_))
                                                      (declare (not safe))
                                                      (_K158247158268_
                                                       _exprs158276_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158245158262_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158245158262_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158221158229_))
                              (let ((_hd158226158296_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158221158229_)))
                                    (_tl158227158298_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158221158229_))))
                                (let* ((_expr158301_ _hd158226158296_)
                                       (_rest158303_ _tl158227158298_))
                                  (declare (not safe))
                                  (_K158225158293_ _rest158303_ _expr158301_)))
                              (let ()
                                (declare (not safe))
                                (_else158223158237_))))))))
                 (_compile-stub158145_
                  (lambda (_output-scm158152_ _output-bin158153_)
                    (let* ((_gerbil-home158155_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158157_
                            (path-expand '"lib" _gerbil-home158155_))
                           (_runtime158159_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158161_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158155_))
                           (_include-gambit-sharp158163_
                            (string-append
                             '"(include \""
                             _gambit-sharp158161_
                             '"\")"))
                           (_bin-scm158165_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158139_)))
                           (_deps158167_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158139_)))
                           (_deps158169_
                            (map gxc#find-static-module-file _deps158167_))
                           (_deps158174_
                            (filter (lambda (_$obj158171_)
                                      (let ((__tmp158714
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158171_))))
                                        (declare (not safe))
                                        (not __tmp158714)))
                                    _deps158169_))
                           (_deps158178_
                            (filter (lambda (_f158176_)
                                      (let ((__tmp158715
                                             (member _f158176_
                                                     _runtime158159_)))
                                        (declare (not safe))
                                        (not __tmp158715)))
                                    _deps158174_))
                           (_output-base158180_
                            (string-append
                             (path-strip-extension _output-scm158152_)))
                           (_output-c158182_
                            (string-append _output-base158180_ '".c"))
                           (_output-o158184_
                            (string-append _output-base158180_ '".o"))
                           (_output-c_158186_
                            (string-append _output-base158180_ '"_.c"))
                           (_output-o_158188_
                            (string-append _output-base158180_ '"_.o"))
                           (_gsc-link-opts158190_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158192_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158194_
                            (let ((__tmp158716
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158157_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158716)))
                           (_output-ld-opts158196_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158198_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158718
                                       (let ((__tmp158719
                                              (let ((__tmp158720
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158163_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158720))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158719))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158718))
                                (let ((__tmp158717
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158163_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158717))))
                           (_gsc-link-opts158200_
                            (append _gsc-link-opts158190_
                                    _gsc-gx-macros158198_))
                           (_rpath158202_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158157_)))
                           (_default-ld-options158204_
                            (let ((__tmp158721
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158721))))
                      (let ((__tmp158722
                             (lambda ()
                               (let ((__tmp158723
                                      (path-directory _output-bin158153_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158723)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158722))
                      (let ((__tmp158724
                             (lambda ()
                               (let ((__tmp158725
                                      (let ((__tmp158726
                                             (let ((__tmp158727
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158165_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158727
                                                       _deps158178_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158726
                                                _runtime158159_))))
                                 (declare (not safe))
                                 (_generate-stub158143_ __tmp158725)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158152_
                         __tmp158724))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158733
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158728
                                   (let ((__tmp158729
                                          (let ((__tmp158730
                                                 (let ((__tmp158731
                                                        (let ((__tmp158732
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158152_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158732 _gsc-link-opts158200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158186_
                                                         __tmp158731))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158730))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158729))))
                              (declare (not safe))
                              (gxc#invoke __tmp158733 __tmp158728))
                            (let ((__tmp158739
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158734
                                   (let ((__tmp158735
                                          (let ((__tmp158736
                                                 (let ((__tmp158737
                                                        (let ((__tmp158738
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158186_ '()))))
                  (declare (not safe))
                  (cons _output-c158182_ __tmp158738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158737
                                                           _gsc-static-opts158194_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158736
                                                    _gsc-cc-opts158192_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158735))))
                              (declare (not safe))
                              (gxc#invoke __tmp158739 __tmp158734))
                            (let ((__tmp158749
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158740
                                   (let ((__tmp158741
                                          (let ((__tmp158742
                                                 (let ((__tmp158743
                                                        (let ((__tmp158744
                                                               (let ((__tmp158745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158746
                                     (let ((__tmp158747
                                            (let ((__tmp158748
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158204_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158157_
                                                    __tmp158748))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158747))))
                                (declare (not safe))
                                (cons _rpath158202_ __tmp158746))))
                         (declare (not safe))
                         (foldr1 cons __tmp158745 _output-ld-opts158196_))))
                  (declare (not safe))
                  (cons _output-o_158188_ __tmp158744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158184_
                                                         __tmp158743))))
                                            (declare (not safe))
                                            (cons _output-bin158153_
                                                  __tmp158742))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158741))))
                              (declare (not safe))
                              (gxc#invoke __tmp158749 __tmp158740)))
                          '#!void)))))
          (let* ((_output-bin158147_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158139_ _opts158140_)))
                 (_output-scm158149_
                  (string-append _output-bin158147_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158145_ _output-scm158149_ _output-bin158147_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158149_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158089_ _id158090_)
        (let ((_$e158136_
               (let ((__tmp158751
                      (lambda (_e158091158093_)
                        (let* ((_g158095158105_ _e158091158093_)
                               (_else158097158113_ (lambda () '#f))
                               (_K158099158117_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158095158105_
                                 'gx#module-export::t))
                              (let* ((_e158100158120_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158095158105_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158101158123_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158095158105_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158102158126_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158095158105_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158102158126_ '0))
                                    (let ((_e158103158129_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158095158105_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158131158133_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158131158133_
                                                    _id158090_)))
                                           _e158103158129_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158099158117_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158097158113_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158097158113_))))
                              (let ()
                                (declare (not safe))
                                (_else158097158113_))))))
                     (__tmp158750
                      (##structure-ref
                       _ctx158089_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158751 __tmp158750))))
          (if _$e158136_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158136_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158081_ _id158082_)
        (let ((_$e158084_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158081_ _id158082_))))
          (if _$e158084_
              ((lambda (_bind158087_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158087_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158082_)))
                 (##structure-ref _bind158087_ '1 gx#binding::t '#f))
               _$e158084_)
              (let ((__tmp158752
                     (##structure-ref
                      _ctx158081_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158752
                 _id158082_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157968_)
        (letrec* ((_ht157970_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157971_
                   (lambda (_in158033_ _phi158034_)
                     (let ((_iphi158036_
                            (fx+ _phi158034_
                                 (##direct-structure-ref
                                  _in158033_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158037_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158033_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158039_ ((_rest158041_ _imports158037_)
                                        (_r158042_ '()))
                         (let* ((_rest158043158051_ _rest158041_)
                                (_else158045158059_ (lambda () _r158042_))
                                (_K158047158069_
                                 (lambda (_rest158062_ _in158063_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158063_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158036_))
                                           (let ((__tmp158759
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158063_
                                                          _r158042_))))
                                             (declare (not safe))
                                             (_lp158039_
                                              _rest158062_
                                              __tmp158759))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158039_
                                              _rest158062_
                                              _r158042_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158063_
                                              'gx#module-import::t))
                                           (let ((_iphi158065_
                                                  (fx+ _phi158034_
                                                       (##direct-structure-ref
                                                        _in158063_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158065_))
                                                 (let ((__tmp158757
                                                        (let ((__tmp158758
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158063_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158758 _r158042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158039_
                                                    _rest158062_
                                                    __tmp158757))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158039_
                                                    _rest158062_
                                                    _r158042_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158063_
                                                  'gx#import-set::t))
                                               (let ((_xphi158067_
                                                      (fx+ _iphi158036_
                                                           (##direct-structure-ref
                                                            _in158063_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158067_))
                                                     (let ((__tmp158755
                                                            (let ((__tmp158756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158063_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158756 _r158042_))))
               (declare (not safe))
               (_lp158039_ _rest158062_ __tmp158755))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158067_)
                                                         (let ((__tmp158753
                                                                (let ((__tmp158754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157971_
                                  _in158063_
                                  _iphi158036_))))
                          (declare (not safe))
                          (foldl1 cons _r158042_ __tmp158754))))
                   (declare (not safe))
                   (_lp158039_ _rest158062_ __tmp158753))
                 (let ()
                   (declare (not safe))
                   (_lp158039_ _rest158062_ _r158042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158039_
                                                  _rest158062_
                                                  _r158042_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158043158051_))
                               (let ((_hd158048158072_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158043158051_)))
                                     (_tl158049158074_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158043158051_))))
                                 (let* ((_in158077_ _hd158048158072_)
                                        (_rest158079_ _tl158049158074_))
                                   (declare (not safe))
                                   (_K158047158069_ _rest158079_ _in158077_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158045158059_))))))))
                  (_find-deps157972_
                   (lambda (_rest157979_ _deps157980_)
                     (let* ((_rest157981157989_ _rest157979_)
                            (_else157983157997_ (lambda () _deps157980_))
                            (_K157985158021_
                             (lambda (_rest158000_ _hd158001_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158001_
                                      'gx#module-context::t))
                                   (let ((_id158003_
                                          (##structure-ref
                                           _hd158001_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158004_
                                          (##structure-ref
                                           _hd158001_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157970_ _id158003_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157972_
                                            _rest158000_
                                            _deps157980_))
                                         (let ((_$e158006_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158001_))))
                                           (if _$e158006_
                                               ((lambda (_pre158009_)
                                                  (let ((_xdeps158011_
                                                         (let ((__tmp158772
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158009_ _imports158004_))))
                   (declare (not safe))
                   (_find-deps157972_ __tmp158772 _deps157980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157970_
                                                       _id158003_
                                                       _hd158001_))
                                                    (let ((__tmp158773
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158011_))))
              (declare (not safe))
              (_find-deps157972_ _rest158000_ __tmp158773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158006_)
                                               (let ((_xdeps158013_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157972_
                                                         _imports158004_
                                                         _deps157980_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157970_
                                                    _id158003_
                                                    _hd158001_))
                                                 (let ((__tmp158771
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158001_
                                                                _xdeps158013_))))
                                                   (declare (not safe))
                                                   (_find-deps157972_
                                                    _rest158000_
                                                    __tmp158771)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158001_
                                          'gx#prelude-context::t))
                                       (let ((_id158015_
                                              (##structure-ref
                                               _hd158001_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157970_
                                                _id158015_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157972_
                                                _rest158000_
                                                _deps157980_))
                                             (let ((_xdeps158017_
                                                    (let ((__tmp158769
                                                           (##structure-ref
                                                            _hd158001_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157972_
                                                       __tmp158769
                                                       _deps157980_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157970_
                                                      _id158015_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157972_
                                                      _rest158000_
                                                      _xdeps158017_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157970_
                                                        _id158015_
                                                        _hd158001_))
                                                     (let ((__tmp158770
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158017_))))
               (declare (not safe))
               (_find-deps157972_ _rest158000_ __tmp158770)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158001_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158768
                                                      (##direct-structure-ref
                                                       _hd158001_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158768))
                                               (let ((__tmp158766
                                                      (let ((__tmp158767
                                                             (##direct-structure-ref
                                                              _hd158001_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158767
                                                              _rest158000_))))
                                                 (declare (not safe))
                                                 (_find-deps157972_
                                                  __tmp158766
                                                  _deps157980_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157972_
                                                  _rest158000_
                                                  _deps157980_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158001_
                                                  'gx#module-export::t))
                                               (let ((__tmp158764
                                                      (let ((__tmp158765
                                                             (##direct-structure-ref
                                                              _hd158001_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158765
                                                              _rest158000_))))
                                                 (declare (not safe))
                                                 (_find-deps157972_
                                                  __tmp158764
                                                  _deps157980_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158001_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158763
                                                              (##direct-structure-ref
                                                               _hd158001_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158763))
                                                       (let ((__tmp158761
                                                              (let ((__tmp158762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158001_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158762 _rest158000_))))
                 (declare (not safe))
                 (_find-deps157972_ __tmp158761 _deps157980_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158001_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158019_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157971_ _hd158001_ '0)))
                          (__tmp158760
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158000_ _xdeps158019_))))
                     (declare (not safe))
                     (_find-deps157972_ __tmp158760 _deps157980_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157972_ _rest158000_ _deps157980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158001_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157981157989_))
                           (let ((_hd157986158024_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157981157989_)))
                                 (_tl157987158026_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157981157989_))))
                             (let* ((_hd158029_ _hd157986158024_)
                                    (_rest158031_ _tl157987158026_))
                               (declare (not safe))
                               (_K157985158021_ _rest158031_ _hd158029_)))
                           (let ()
                             (declare (not safe))
                             (_else157983157997_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp158774
                                  (let ((_$e157974_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx157968_))))
                                    (if _$e157974_
                                        ((lambda (_pre157977_)
                                           (let ((__tmp158775
                                                  (##structure-ref
                                                   _ctx157968_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre157977_ __tmp158775)))
                                         _$e157974_)
                                        (##structure-ref
                                         _ctx157968_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps157972_ __tmp158774 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157899_)
        (let* ((_context-id157901_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157899_
                       'gx#module-context::t))
                    (##structure-ref _ctx157899_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157899_)))
               (_scm157903_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157901_))
                 '".scm"))
               (_dirs157905_ (let () (declare (not safe)) (load-path)))
               (_dirs157911_
                (let ((_user-libpath157907_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157907_
                      (let ((_user-libpath157909_
                             (path-expand '"lib" _user-libpath157907_)))
                        (if (member _user-libpath157909_ _dirs157905_)
                            _dirs157905_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157909_ _dirs157905_))))
                      _dirs157905_)))
               (_dirs157920_
                (let ((_$e157913_ (gxc#current-compile-output-dir)))
                  (if _$e157913_
                      ((lambda (_g157915157917_)
                         (let ()
                           (declare (not safe))
                           (cons _g157915157917_ _dirs157911_)))
                       _$e157913_)
                      _dirs157911_)))
               (_dirs157926_
                (map (lambda (_g157921157923_)
                       (path-expand '"static" _g157921157923_))
                     _dirs157920_)))
          (let _lp157929_ ((_rest157931_ _dirs157926_))
            (let* ((_rest157932157940_ _rest157931_)
                   (_else157934157948_
                    (lambda ()
                      (let ((__tmp158776
                             (##structure-ref
                              _ctx157899_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158776
                         _scm157903_))))
                   (_K157936157956_
                    (lambda (_rest157951_ _dir157952_)
                      (let ((_path157954_
                             (path-expand _scm157903_ _dir157952_)))
                        (if (file-exists? _path157954_)
                            _path157954_
                            (let ()
                              (declare (not safe))
                              (_lp157929_ _rest157951_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157932157940_))
                  (let ((_hd157937157959_
                         (let ()
                           (declare (not safe))
                           (##car _rest157932157940_)))
                        (_tl157938157961_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157932157940_))))
                    (let* ((_dir157964_ _hd157937157959_)
                           (_rest157966_ _tl157938157961_))
                      (declare (not safe))
                      (_K157936157956_ _rest157966_ _dir157964_)))
                  (let () (declare (not safe)) (_else157934157948_))))))))
    (define gxc#file-empty?
      (lambda (_path157897_)
        (let ((__tmp158777 (file-info-size (file-info _path157897_ '#t))))
          (declare (not safe))
          (zero? __tmp158777))))
    (define gxc#compile-top-module
      (lambda (_ctx157886_)
        (let ((__tmp158781
               (lambda ()
                 (let ((__tmp158782
                        (##structure-ref
                         _ctx157886_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158782))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158783
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157886_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158783))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157886_))
                 (if (let ((__tmp158786
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157886_))))
                       (declare (not safe))
                       (null? __tmp158786))
                     (let* ((_thr1157891_
                             (let ((__tmp158784
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157886_)))))
                               (declare (not safe))
                               (spawn __tmp158784)))
                            (_thr2157894_
                             (let ((__tmp158785
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157886_)))))
                               (declare (not safe))
                               (spawn __tmp158785))))
                       (let () (declare (not safe)) (gxc#join! _thr1157891_))
                       (let () (declare (not safe)) (gxc#join! _thr2157894_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157886_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157886_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157886_))
                     '#!void)))
              (__tmp158780
               (let ((__obj158585
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158585)
                 __obj158585))
              (__tmp158779 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158778 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158781
           gx#current-expander-context
           _ctx157886_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158780
           gxc#current-compile-runtime-sections
           __tmp158779
           gxc#current-compile-runtime-names
           __tmp158778))))
    (define gxc#collect-bindings
      (lambda (_ctx157884_)
        (let ((__tmp158787
               (##structure-ref _ctx157884_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158787))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157825_)
        (letrec ((_compile1157827_
                  (lambda (_ctx157873_)
                    (let* ((_code157875_
                            (##structure-ref
                             _ctx157873_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157879_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157875_))
                                (let ((_idstr157877_
                                       (let ((__tmp158788
                                              (##structure-ref
                                               _ctx157873_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158788))))
                                  (string->symbol
                                   (string-append _idstr157877_ '"--0")))
                                '#f)))
                      (if _rt157879_
                          (begin
                            (let ((__tmp158789
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158789 _ctx157873_ _rt157879_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157829_
                               _ctx157873_
                               _code157875_)))
                          (let ((_path157882_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157873_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157882_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157830_
                         _ctx157873_
                         _code157875_
                         _rt157879_)))))
                 (_context-timestamp157828_
                  (lambda (_ctx157871_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157871_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"##timestamp"))))
                 (_generate-runtime-code157829_
                  (lambda (_ctx157851_ _code157852_)
                    (let* ((_lifts157854_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157857_
                            (let ((__tmp158792
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157852_))))
                                  (__tmp158791
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158790
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158792
                               gx#current-expander-context
                               _ctx157851_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157854_
                               gxc#current-compile-marks
                               __tmp158791
                               gxc#current-compile-identifiers
                               __tmp158790)))
                           (_runtime-code157859_
                            (if (let ((__tmp158796 (unbox _lifts157854_)))
                                  (declare (not safe))
                                  (null? __tmp158796))
                                _runtime-code157857_
                                (let ((__tmp158793
                                       (let ((__tmp158795
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157857_
                                                      '())))
                                             (__tmp158794
                                              (reverse (unbox _lifts157854_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158795
                                                 __tmp158794))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158793))))
                           (_runtime-code157861_
                            (let ((__tmp158797
                                   (let ((__tmp158799
                                          (let ((__tmp158800
                                                 (let ((__tmp158803
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157828_
                                                           _ctx157851_)))
                                                       (__tmp158801
                                                        (let ((__tmp158802
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158802
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158803
                                                         __tmp158801))))
                                            (declare (not safe))
                                            (cons 'define __tmp158800)))
                                         (__tmp158798
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157859_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158799 __tmp158798))))
                              (declare (not safe))
                              (cons 'begin __tmp158797)))
                           (_runtime-module-id157863_
                            (let ((__tmp158804
                                   (##structure-ref
                                    _ctx157851_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 __tmp158804 '"--" '0)))
                           (_scm0157865_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157851_
                               '0
                               '".scm")))
                           (_scms157867_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _ctx157851_))))
                      (let ()
                        (declare (not safe))
                        (gxc#compile-scm-file
                         _scm0157865_
                         _runtime-code157861_
                         'supply:
                         _runtime-module-id157863_))
                      (if (file-exists? _scms157867_)
                          (delete-file _scms157867_)
                          '#!void)
                      (let ((__tmp158805
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file
                                  _scms157867_
                                  _runtime-code157861_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158805
                         gxc#current-compile-invoke-gsc
                         '#f
                         gxc#current-compile-keep-scm
                         '#t)))))
                 (_generate-loader-code157830_
                  (lambda (_ctx157837_ _code157838_ _rt157839_)
                    (let* ((_loader-deps157841_
                            (let () (declare (not safe)) (box '())))
                           (_g158807_
                            (let ((__tmp158806
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-collect-loader-deps
                                        _code157838_
                                        'deps:
                                        _loader-deps157841_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158806
                               gx#current-expander-context
                               _ctx157837_)))
                           (_loader-deps157845_
                            (reverse (unbox _loader-deps157841_)))
                           (_loader-deps157847_
                            (if _rt157839_
                                (append _loader-deps157845_
                                        (let ()
                                          (declare (not safe))
                                          (cons _rt157839_ '())))
                                _loader-deps157845_)))
                      (let ((__tmp158808
                             (lambda ()
                               (let ((__tmp158810
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157837_
                                         '#f
                                         '".scm")))
                                     (__tmp158809
                                      (##structure-ref
                                       _ctx157837_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#compile-scm-file
                                  __tmp158810
                                  '(void)
                                  'supply:
                                  __tmp158809
                                  'demand:
                                  _loader-deps157847_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158808
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157832_
                 (let ((__tmp158811
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157825_))))
                   (declare (not safe))
                   (cons _ctx157825_ __tmp158811))))
            (for-each
             (lambda (_ctx157834_)
               (let ((__tmp158812
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157827_ _ctx157834_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158812
                  gxc#current-compile-decls
                  '())))
             _all-modules157832_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157719_)
        (letrec ((_compile-ssi157721_
                  (lambda (_code157795_)
                    (let* ((_path157797_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157719_
                               '#f
                               '".ssi")))
                           (_prelude157808_
                            (let* ((_super157799_
                                    (##structure-ref
                                     _ctx157719_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157801_
                                    (##structure-ref
                                     _super157799_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157801_
                                  ((lambda (_g157803157805_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157803157805_)))
                                   _$e157801_)
                                  ':<root>)))
                           (_ns157810_
                            (##structure-ref
                             _ctx157719_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157812_
                            (symbol->string
                             (##structure-ref
                              _ctx157719_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157819_
                            (let ((_$e157814_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157812_ '#\/))))
                              (if _$e157814_
                                  ((lambda (_x157817_)
                                     (string->symbol
                                      (substring _idstr157812_ '0 _x157817_)))
                                   _$e157814_)
                                  '#f)))
                           (_rt157821_
                            (let ((__tmp158813
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158813 _ctx157719_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157797_))
                      (let ((__tmp158814
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157808_))
                               (if _pkg157819_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157819_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157810_))
                               (newline)
                               (pretty-print _code157795_)
                               (if _rt157821_
                                   (pretty-print
                                    (let ((__tmp158815
                                           (let ((__tmp158820
                                                  (let ((__tmp158821
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158821)))
                                                 (__tmp158816
                                                  (let ((__tmp158817
                                                         (let ((__tmp158818
                                                                (let ((__tmp158819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (##structure-ref
                                _ctx157719_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (cons __tmp158819 '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158817 '()))))
                                             (declare (not safe))
                                             (cons __tmp158820 __tmp158816))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158815)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157797_
                         __tmp158814)))))
                 (_compile-phi157722_
                  (lambda (_part157732_)
                    (let* ((_part157733157746_ _part157732_)
                           (_E157735157750_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157733157746_))))
                           (_K157736157764_
                            (lambda (_code157753_
                                     _n157754_
                                     _phi157755_
                                     _phi-ctx157756_)
                              (let* ((_code157759_
                                      (let ((__tmp158822
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157753_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158822
                                         gx#current-expander-context
                                         _phi-ctx157756_
                                         gx#current-expander-phi
                                         _phi157755_)))
                                     (_module-id157761_
                                      (let ((__tmp158823
                                             (##structure-ref
                                              _ctx157719_
                                              '1
                                              gx#expander-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (make-symbol__1
                                         __tmp158823
                                         '"--"
                                         _n157754_))))
                                (let ((__tmp158824
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-output-file
                                          _ctx157719_
                                          _n157754_
                                          '".scm"))))
                                  (declare (not safe))
                                  (gxc#compile-scm-file
                                   __tmp158824
                                   _code157759_
                                   '#t
                                   'supply:
                                   _module-id157761_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157733157746_))
                          (let ((_hd157737157767_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157733157746_)))
                                (_tl157738157769_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157733157746_))))
                            (let ((_phi-ctx157772_ _hd157737157767_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157738157769_))
                                  (let ((_hd157739157774_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157738157769_)))
                                        (_tl157740157776_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157738157769_))))
                                    (let ((_phi157779_ _hd157739157774_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157740157776_))
                                          (let ((_hd157741157781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157740157776_)))
                                                (_tl157742157783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157740157776_))))
                                            (let ((_n157786_ _hd157741157781_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157742157783_))
                                                  (let ((_hd157743157788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157742157783_)))
                                                        (_tl157744157790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157742157783_))))
                                                    (let ((_code157793_
                                                           _hd157743157788_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157744157790_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157736157764_
                                                             _code157793_
                                                             _n157786_
                                                             _phi157779_
                                                             _phi-ctx157772_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157735157750_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157735157750_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157735157750_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157735157750_)))))
                          (let () (declare (not safe)) (_E157735157750_)))))))
          (let ((_g158825_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157719_))))
            (begin
              (let ((_g158826_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158825_)
                           (##vector-length _g158825_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158826_ 2)))
                    (error "Context expects 2 values" _g158826_)))
              (let ((_ssi-code157724_
                     (let () (declare (not safe)) (##vector-ref _g158825_ 0)))
                    (_phi-code157725_
                     (let () (declare (not safe)) (##vector-ref _g158825_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157721_ _ssi-code157724_))
                  (let ((_threads157730_
                         (map (lambda (_code157727_)
                                (let ((__tmp158827
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157722_
                                            _code157727_)))))
                                  (declare (not safe))
                                  (spawn __tmp158827)))
                              _phi-code157725_)))
                    (for-each gxc#join! _threads157730_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157702_)
        (let* ((_path157704_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157702_ '#f '".ssxi.ss")))
               (_code157706_
                (let ((__tmp158828
                       (##structure-ref
                        _ctx157702_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158828)))
               (_idstr157708_
                (symbol->string
                 (##structure-ref _ctx157702_ '1 gx#expander-context::t '#f)))
               (_pkg157715_
                (let ((_$e157710_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157708_ '#\/))))
                  (if _$e157710_
                      ((lambda (_x157713_)
                         (string->symbol
                          (substring _idstr157708_ '0 _x157713_)))
                       _$e157710_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157704_))
          (let ((__tmp158829
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157715_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157715_))
                       '#!void)
                   (newline)
                   (pretty-print _code157706_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157704_ __tmp158829)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157695_)
        (let* ((_state157697_
                (let ((__obj158586
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158586 _ctx157695_)
                  __obj158586))
               (_ssi-code157699_
                (let ((__tmp158830
                       (##structure-ref
                        _ctx157695_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp158830
                   'state:
                   _state157697_))))
          (values _ssi-code157699_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157697_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157688_)
        (let ((_lifts157690_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158833
                 (lambda ()
                   (let ((_code157693_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157688_))))
                     (if (let ((__tmp158837 (unbox _lifts157690_)))
                           (declare (not safe))
                           (null? __tmp158837))
                         _code157693_
                         (let ((__tmp158834
                                (let ((__tmp158836
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157693_ '())))
                                      (__tmp158835
                                       (reverse (unbox _lifts157690_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158836 __tmp158835))))
                           (declare (not safe))
                           (cons 'begin __tmp158834))))))
                (__tmp158832
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158831
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158833
             gxc#current-compile-lift
             _lifts157690_
             gxc#current-compile-marks
             __tmp158832
             gxc#current-compile-identifiers
             __tmp158831)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157684_)
        (let ((_modules157686_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158838
                 (##structure-ref _ctx157684_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158838 'modules: _modules157686_))
          (reverse (unbox _modules157686_)))))
    (define gxc#compile-scm-file__%__%
      (lambda (__157632157635_
               _module-id157629157637_
               _module-deps157630157639_
               _path157641_
               _code157642_
               _phi?157643_)
        (let* ((_module-id157645_
                (if (let ()
                      (declare (not safe))
                      (eq? _module-id157629157637_ absent-value))
                    '#f
                    _module-id157629157637_))
               (_module-deps157647_
                (if (let ()
                      (declare (not safe))
                      (eq? _module-deps157630157639_ absent-value))
                    '#f
                    _module-deps157630157639_)))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157641_))
          (let ((__tmp158839
                 (lambda ()
                   (pretty-print
                    (let ((__tmp158840
                           (let ((__tmp158847
                                  (let ()
                                    (declare (not safe))
                                    (cons 'block '())))
                                 (__tmp158841
                                  (let ((__tmp158846
                                         (let ()
                                           (declare (not safe))
                                           (cons 'standard-bindings '())))
                                        (__tmp158842
                                         (let ((__tmp158845
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'extended-bindings
                                                        '())))
                                               (__tmp158843
                                                (let ((__tmp158844
                                                       (if _phi?157643_
                                                           '((inlining-limit
                                                              200))
                                                           '())))
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          '()
                                                          __tmp158844))))
                                           (declare (not safe))
                                           (cons __tmp158845 __tmp158843))))
                                    (declare (not safe))
                                    (cons __tmp158846 __tmp158842))))
                             (declare (not safe))
                             (cons __tmp158847 __tmp158841))))
                      (declare (not safe))
                      (cons 'declare __tmp158840)))
                   (if _module-id157645_
                       (begin
                         (write (let ((__tmp158848
                                       (let ()
                                         (declare (not safe))
                                         (cons _module-id157645_ '()))))
                                  (declare (not safe))
                                  (cons '##supply-module __tmp158848)))
                         (newline))
                       '#!void)
                   (if _module-deps157647_
                       (for-each
                        (lambda (_dep157650_)
                          (if _dep157650_
                              (begin
                                (write (let ((__tmp158849
                                              (let ((__tmp158850
                                                     (let ((__tmp158851
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _dep157650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'quote __tmp158851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158850 '()))))
                                         (declare (not safe))
                                         (cons 'load-module __tmp158849)))
                                (newline))
                              '#!void))
                        _module-deps157647_)
                       '#!void)
                   (pretty-print _code157642_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157641_ __tmp158839))
          (if (gxc#current-compile-invoke-gsc)
              (begin
                (if _module-id157645_
                    '#!void
                    (let ()
                      (declare (not safe))
                      (error '"cannot compile module without module id"
                             _path157641_)))
                (let ()
                  (declare (not safe))
                  (gxc#gsc-compile-module
                   _path157641_
                   _phi?157643_
                   _module-id157645_)))
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path157641_)))))
    (define gxc#compile-scm-file__%__0
      (lambda (__157632157655_
               _module-id157629157656_
               _module-deps157630157657_
               _path157658_
               _code157659_)
        (let ((_phi?157661_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%__%
           __157632157655_
           _module-id157629157656_
           _module-deps157630157657_
           _path157658_
           _code157659_
           _phi?157661_))))
    (define gxc#compile-scm-file__%
      (lambda _g158853_
        (let ((_g158852_ (let () (declare (not safe)) (##length _g158853_))))
          (cond ((let () (declare (not safe)) (##fx= _g158852_ 5))
                 (apply (lambda (__157632157655_
                                 _module-id157629157656_
                                 _module-deps157630157657_
                                 _path157658_
                                 _code157659_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%__0
                             __157632157655_
                             _module-id157629157656_
                             _module-deps157630157657_
                             _path157658_
                             _code157659_)))
                        _g158853_))
                ((let () (declare (not safe)) (##fx= _g158852_ 6))
                 (apply (lambda (__157632157663_
                                 _module-id157629157664_
                                 _module-deps157630157665_
                                 _path157666_
                                 _code157667_
                                 _phi?157668_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%__%
                             __157632157663_
                             _module-id157629157664_
                             _module-deps157630157665_
                             _path157666_
                             _code157667_
                             _phi?157668_)))
                        _g158853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file__%
                  _g158853_))))))
    (define gxc#compile-scm-file__@
      (lambda (_keys157628157673_ . _args157675_)
        (apply gxc#compile-scm-file__%
               _keys157628157673_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys157628157673_ 'supply: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys157628157673_ 'demand: absent-value))
               _args157675_)))
    (define gxc#compile-scm-file
      (lambda _args157631157681_
        (apply keyword-dispatch
               '#(demand: supply: #f)
               gxc#compile-scm-file__@
               _args157631157681_)))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157529_)
        (let _lp157531_ ((_rest157533_ (gxc#current-compile-gsc-options))
                         (_opts157534_ '()))
          (let* ((_rest157535157555_ _rest157533_)
                 (_else157539157563_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157529_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158854
                               (let ((__tmp158855 (reverse _opts157534_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158855))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158854))
                        (reverse _opts157534_)))))
            (let ((_K157549157606_
                   (lambda (_rest157604_)
                     (let ()
                       (declare (not safe))
                       (_lp157531_ _rest157604_ _opts157534_))))
                  (_K157544157588_
                   (lambda (_rest157586_)
                     (let ()
                       (declare (not safe))
                       (_lp157531_ _rest157586_ _opts157534_))))
                  (_K157541157570_
                   (lambda (_rest157567_ _opt157568_)
                     (let ((__tmp158856
                            (let ()
                              (declare (not safe))
                              (cons _opt157568_ _opts157534_))))
                       (declare (not safe))
                       (_lp157531_ _rest157567_ __tmp158856)))))
              (if (let () (declare (not safe)) (##pair? _rest157535157555_))
                  (let ((_tl157551157611_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157535157555_)))
                        (_hd157550157609_
                         (let ()
                           (declare (not safe))
                           (##car _rest157535157555_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157550157609_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157551157611_))
                            (let* ((_tl157553157614_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157551157611_)))
                                   (_rest157617_ _tl157553157614_))
                              (declare (not safe))
                              (_K157549157606_ _rest157617_))
                            (let ((_opt157578_ _hd157550157609_)
                                  (_rest157580_ _tl157551157611_))
                              (let ()
                                (declare (not safe))
                                (_K157541157570_ _rest157580_ _opt157578_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157550157609_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157551157611_))
                                (let* ((_tl157548157596_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157551157611_)))
                                       (_rest157599_ _tl157548157596_))
                                  (declare (not safe))
                                  (_K157544157588_ _rest157599_))
                                (let ((_opt157578_ _hd157550157609_)
                                      (_rest157580_ _tl157551157611_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157541157570_
                                     _rest157580_
                                     _opt157578_))))
                            (let ((_opt157578_ _hd157550157609_)
                                  (_rest157580_ _tl157551157611_))
                              (let ()
                                (declare (not safe))
                                (_K157541157570_ _rest157580_ _opt157578_))))))
                  (let () (declare (not safe)) (_else157539157563_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157623_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157623_))))
    (define gxc#gsc-link-options
      (lambda _g158858_
        (let ((_g158857_ (let () (declare (not safe)) (##length _g158858_))))
          (cond ((let () (declare (not safe)) (##fx= _g158857_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158858_))
                ((let () (declare (not safe)) (##fx= _g158857_ 1))
                 (apply (lambda (_phi?157625_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157625_)))
                        _g158858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158858_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157430_)
        (let _lp157432_ ((_rest157434_ (gxc#current-compile-gsc-options))
                         (_opts157435_ '()))
          (let* ((_rest157436157456_ _rest157434_)
                 (_else157440157464_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157430_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158859
                               (let ((__tmp158860 (reverse _opts157435_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158860))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158859))
                        (reverse _opts157435_)))))
            (let ((_K157450157503_
                   (lambda (_rest157500_ _opt157501_)
                     (let ((__tmp158861
                            (let ((__tmp158862
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157435_))))
                              (declare (not safe))
                              (cons _opt157501_ __tmp158862))))
                       (declare (not safe))
                       (_lp157432_ _rest157500_ __tmp158861))))
                  (_K157445157484_
                   (lambda (_rest157482_)
                     (let ()
                       (declare (not safe))
                       (_lp157432_ _rest157482_ _opts157435_))))
                  (_K157442157470_
                   (lambda (_rest157468_)
                     (let ()
                       (declare (not safe))
                       (_lp157432_ _rest157468_ _opts157435_)))))
              (if (let () (declare (not safe)) (##pair? _rest157436157456_))
                  (let ((_tl157452157508_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157436157456_)))
                        (_hd157451157506_
                         (let ()
                           (declare (not safe))
                           (##car _rest157436157456_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157451157506_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157452157508_))
                            (let ((_tl157454157513_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157452157508_)))
                                  (_hd157453157511_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157452157508_))))
                              (let ((_opt157516_ _hd157453157511_)
                                    (_rest157518_ _tl157454157513_))
                                (let ()
                                  (declare (not safe))
                                  (_K157450157503_ _rest157518_ _opt157516_))))
                            (let ((_rest157476_ _tl157452157508_))
                              (declare (not safe))
                              (_K157442157470_ _rest157476_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157451157506_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157452157508_))
                                (let* ((_tl157449157492_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157452157508_)))
                                       (_rest157495_ _tl157449157492_))
                                  (declare (not safe))
                                  (_K157445157484_ _rest157495_))
                                (let ((_rest157476_ _tl157452157508_))
                                  (declare (not safe))
                                  (_K157442157470_ _rest157476_)))
                            (let ((_rest157476_ _tl157452157508_))
                              (declare (not safe))
                              (_K157442157470_ _rest157476_)))))
                  (let () (declare (not safe)) (_else157440157464_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157524_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157524_))))
    (define gxc#gsc-cc-options
      (lambda _g158864_
        (let ((_g158863_ (let () (declare (not safe)) (##length _g158864_))))
          (cond ((let () (declare (not safe)) (##fx= _g158863_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158864_))
                ((let () (declare (not safe)) (##fx= _g158863_ 1))
                 (apply (lambda (_phi?157526_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157526_)))
                        _g158864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158864_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157425_)
        (let* ((_user-staticdir157427_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158865
                (let ((__tmp158866
                       (string-append
                        '"-I "
                        _staticdir157425_
                        '" -I "
                        _user-staticdir157427_)))
                  (declare (not safe))
                  (cons __tmp158866 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158865))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157337_ ((_rest157339_ (gxc#current-compile-gsc-options))
                         (_opts157340_ '()))
          (let* ((_rest157341157361_ _rest157339_)
                 (_else157345157369_ (lambda () _opts157340_)))
            (let ((_K157355157412_
                   (lambda (_rest157410_)
                     (let ()
                       (declare (not safe))
                       (_lp157337_ _rest157410_ _opts157340_))))
                  (_K157350157390_
                   (lambda (_rest157387_ _opt157388_)
                     (let ((__tmp158867
                            (append _opts157340_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157388_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157337_ _rest157387_ __tmp158867))))
                  (_K157347157375_
                   (lambda (_rest157373_)
                     (let ()
                       (declare (not safe))
                       (_lp157337_ _rest157373_ _opts157340_)))))
              (if (let () (declare (not safe)) (##pair? _rest157341157361_))
                  (let ((_tl157357157417_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157341157361_)))
                        (_hd157356157415_
                         (let ()
                           (declare (not safe))
                           (##car _rest157341157361_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157356157415_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157357157417_))
                            (let* ((_tl157359157420_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157357157417_)))
                                   (_rest157423_ _tl157359157420_))
                              (declare (not safe))
                              (_K157355157412_ _rest157423_))
                            (let ((_rest157381_ _tl157357157417_))
                              (declare (not safe))
                              (_K157347157375_ _rest157381_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157356157415_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157357157417_))
                                (let ((_tl157354157400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157357157417_)))
                                      (_hd157353157398_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157357157417_))))
                                  (let ((_opt157403_ _hd157353157398_)
                                        (_rest157405_ _tl157354157400_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157350157390_
                                       _rest157405_
                                       _opt157403_))))
                                (let ((_rest157381_ _tl157357157417_))
                                  (declare (not safe))
                                  (_K157347157375_ _rest157381_)))
                            (let ((_rest157381_ _tl157357157417_))
                              (declare (not safe))
                              (_K157347157375_ _rest157381_)))))
                  (let () (declare (not safe)) (_else157345157369_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157334_)
        (let ((__tmp158868
               (let () (declare (not safe)) (string-empty? _str157334_))))
          (declare (not safe))
          (not __tmp158868))))
    (define gxc#gsc-compile-module
      (lambda (_path157316_ _phi?157317_ _module-id157318_)
        (let* ((_gsc-link-opts157320_
                (let ()
                  (declare (not safe))
                  (gxc#gsc-link-options__% _phi?157317_)))
               (_gsc-cc-opts157322_
                (let ()
                  (declare (not safe))
                  (gxc#gsc-cc-options__% _phi?157317_)))
               (_gcc-ld-opts157324_
                (let () (declare (not safe)) (gxc#gcc-ld-options)))
               (_gsc-ld-opts157329_
                (let ((__tmp158869
                       (lambda (_opt157326_ _r157327_)
                         (let ((__tmp158870
                                (let ()
                                  (declare (not safe))
                                  (cons _opt157326_ _r157327_))))
                           (declare (not safe))
                           (cons '"-ld-options" __tmp158870)))))
                  (declare (not safe))
                  (foldr1 __tmp158869 '() _gcc-ld-opts157324_)))
               (_mod-ref157331_
                (let ((__tmp158871
                       (let ((__tmp158872 (symbol->string _module-id157318_)))
                         (declare (not safe))
                         (cons __tmp158872 '()))))
                  (declare (not safe))
                  (cons '"-module-ref" __tmp158871))))
          (let ((__tmp158877 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                (__tmp158873
                 (let ((__tmp158874
                        (let ((__tmp158875
                               (let ((__tmp158876
                                      (let ()
                                        (declare (not safe))
                                        (cons _path157316_ '()))))
                                 (declare (not safe))
                                 (foldr1 cons
                                         __tmp158876
                                         _gsc-ld-opts157329_))))
                          (declare (not safe))
                          (foldr1 cons __tmp158875 _gsc-cc-opts157322_))))
                   (declare (not safe))
                   (foldr1 cons __tmp158874 _mod-ref157331_))))
            (declare (not safe))
            (gxc#invoke __tmp158877 __tmp158873)))))
    (define gxc#compile-output-file
      (lambda (_ctx157287_ _n157288_ _ext157289_)
        (letrec ((_module-relative-path157291_
                  (lambda (_ctx157314_)
                    (path-strip-directory
                     (let ((__tmp158878
                            (##structure-ref
                             _ctx157314_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158878)))))
                 (_module-source-directory157292_
                  (lambda (_ctx157310_)
                    (path-directory
                     (let ((_mpath157312_
                            (##structure-ref
                             _ctx157310_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157312_))
                           _mpath157312_
                           (last _mpath157312_))))))
                 (_section-string157293_
                  (lambda (_n157308_)
                    (if (let () (declare (not safe)) (number? _n157308_))
                        (number->string _n157308_)
                        (if (let () (declare (not safe)) (symbol? _n157308_))
                            (symbol->string _n157308_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157308_))
                                _n157308_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157308_)))))))
                 (_file-name157294_
                  (lambda (_path157306_)
                    (if _n157288_
                        (string-append
                         _path157306_
                         '"--"
                         (let ()
                           (declare (not safe))
                           (_section-string157293_ _n157288_))
                         _ext157289_)
                        (string-append _path157306_ _ext157289_))))
                 (_file-path157295_
                  (lambda ()
                    (let ((_$e157301_ (gxc#current-compile-output-dir)))
                      (if _$e157301_
                          ((lambda (_outdir157304_)
                             (path-expand
                              (let ((__tmp158880
                                     (let ((__tmp158881
                                            (##structure-ref
                                             _ctx157287_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158881))))
                                (declare (not safe))
                                (_file-name157294_ __tmp158880))
                              _outdir157304_))
                           _$e157301_)
                          (path-expand
                           (let ((__tmp158879
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157291_
                                     _ctx157287_))))
                             (declare (not safe))
                             (_file-name157294_ __tmp158879))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157292_
                              _ctx157287_))))))))
          (let ((_path157297_
                 (let () (declare (not safe)) (_file-path157295_))))
            (let ((__tmp158882
                   (lambda ()
                     (let ((__tmp158883 (path-directory _path157297_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158883)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158882))
            _path157297_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157269_)
        (letrec ((_file-name157271_
                  (lambda (_id157285_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157285_))
                     '".scm")))
                 (_file-path157272_
                  (lambda ()
                    (let* ((_file157278_
                            (let ((__tmp158884
                                   (##structure-ref
                                    _ctx157269_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157271_ __tmp158884)))
                           (_$e157280_ (gxc#current-compile-output-dir)))
                      (if _$e157280_
                          ((lambda (_outdir157283_)
                             (path-expand
                              _file157278_
                              (path-expand '"static" _outdir157283_)))
                           _$e157280_)
                          (path-expand _file157278_ '"static"))))))
          (let ((_path157274_
                 (let () (declare (not safe)) (_file-path157272_))))
            (let ((__tmp158885
                   (lambda ()
                     (let ((__tmp158886 (path-directory _path157274_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158886)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158885))
            _path157274_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157263_ _opts157264_)
        (let ((_$e157266_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157264_))))
          (if _$e157266_
              (values _$e157266_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157263_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157256_)
        (if (let () (declare (not safe)) (string? _idstr157256_))
            (let* ((_str157258_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157256_)))
                   (_strs157260_
                    (let ()
                      (declare (not safe))
                      (string-split _str157258_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157260_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157256_))
                (let ((__tmp158887 (symbol->string _idstr157256_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158887))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157256_))))))
    (define gxc#invoke__%
      (lambda (_g158888_
               _stdout-redirection157217157221_
               _stderr-redirection157218157223_
               _program157225_
               _args157226_)
        (let* ((_stdout-redirection157228_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157217157221_ absent-value))
                    '#f
                    _stdout-redirection157217157221_))
               (_stderr-redirection157230_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157218157223_ absent-value))
                    '#f
                    _stderr-redirection157218157223_)))
          (let ((__tmp158889
                 (let ()
                   (declare (not safe))
                   (cons _program157225_ _args157226_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158889))
          (let* ((_proc157232_
                  (open-process
                   (let ((__tmp158890
                          (let ((__tmp158891
                                 (let ((__tmp158892
                                        (let ((__tmp158893
                                               (let ((__tmp158894
                                                      (let ((__tmp158895
                                                             (let ((__tmp158896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157230_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158896))))
                (declare (not safe))
                (cons _stdout-redirection157228_ __tmp158895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158894))))
                                          (declare (not safe))
                                          (cons _args157226_ __tmp158893))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158892))))
                            (declare (not safe))
                            (cons _program157225_ __tmp158891))))
                     (declare (not safe))
                     (cons 'path: __tmp158890))))
                 (_output157237_
                  (if (or _stdout-redirection157228_
                          _stderr-redirection157230_)
                      (read-line _proc157232_ '#f)
                      '#f)))
            (let ((_status157240_ (process-status _proc157232_)))
              (close-port _proc157232_)
              (if (let () (declare (not safe)) (zero? _status157240_))
                  '#!void
                  (begin
                    (display _output157237_)
                    (let ((__tmp158897
                           (let ()
                             (declare (not safe))
                             (cons _program157225_ _args157226_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158897
                       _status157240_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157216157245_ . _args157247_)
        (apply gxc#invoke__%
               _keys157216157245_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157216157245_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157216157245_
                  'stderr-redirection:
                  absent-value))
               _args157247_)))
    (define gxc#invoke
      (lambda _args157219157253_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157219157253_)))
    (define gxc#join!
      (lambda (_thread157210_)
        (let ((__tmp158899
               (lambda (_exn157212_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157212_))
                     (let ((__tmp158900
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157212_))))
                       (declare (not safe))
                       (raise __tmp158900))
                     (let () (declare (not safe)) (raise _exn157212_)))))
              (__tmp158898 (lambda () (thread-join! _thread157210_))))
          (declare (not safe))
          (with-catch __tmp158899 __tmp158898))))))
