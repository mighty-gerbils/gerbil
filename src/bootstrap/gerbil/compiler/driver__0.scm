(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707773076)
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
      (lambda (_path291816_ _fun291817_)
        (with-output-to-file
         (let ((__tmp296478
                (let ()
                  (declare (not safe))
                  (cons _path291816_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp296478))
         _fun291817_)))
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
      (lambda (_gerbil-libdir291811_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir291811_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir291809_) (delete-file-or-directory _dir291809_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath291783_ _opts291784_)
        (if (let () (declare (not safe)) (string? _srcpath291783_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291783_)))
        (let ((_outdir291786_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291784_)))
              (_invoke-gsc?291787_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291784_)))
              (_gsc-options291788_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291784_)))
              (_keep-scm?291789_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291784_)))
              (_verbosity291790_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291784_)))
              (_optimize291791_
               (let () (declare (not safe)) (pgetq 'optimize: _opts291784_)))
              (_debug291792_
               (let () (declare (not safe)) (pgetq 'debug: _opts291784_)))
              (_gen-ssxi291793_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts291784_))))
          (if _outdir291786_
              (let ((__tmp296479
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291786_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296479))
              '#!void)
          (if _optimize291791_
              (let ((__tmp296480
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296480))
              '#!void)
          (let ((__tmp296484
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath291783_))
                   (let ((__tmp296485
                          (let ((__tmp296486
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291783_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296486))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp296485))))
                (__tmp296483
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296481
                 (let ((__tmp296482
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291783_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp296482))))
            (declare (not safe))
            (call-with-parameters
             __tmp296484
             gxc#current-compile-output-dir
             _outdir291786_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291787_
             gxc#current-compile-gsc-options
             _gsc-options291788_
             gxc#current-compile-keep-scm
             _keep-scm?291789_
             gxc#current-compile-verbose
             _verbosity291790_
             gxc#current-compile-optimize
             _optimize291791_
             gxc#current-compile-debug
             _debug291792_
             gxc#current-compile-generate-ssxi
             _gen-ssxi291793_
             gxc#current-compile-timestamp
             __tmp296483
             gxc#current-compile-context
             __tmp296481
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath291802_)
        (let ((_opts291804_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath291802_ _opts291804_))))
    (define gxc#compile-module
      (lambda _g296488_
        (let ((_g296487_ (let () (declare (not safe)) (##length _g296488_))))
          (cond ((let () (declare (not safe)) (##fx= _g296487_ 1))
                 (apply (lambda (_srcpath291802_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath291802_)))
                        _g296488_))
                ((let () (declare (not safe)) (##fx= _g296487_ 2))
                 (apply (lambda (_srcpath291806_ _opts291807_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath291806_
                             _opts291807_)))
                        _g296488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g296488_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath291759_ _opts291760_)
        (if (let () (declare (not safe)) (string? _srcpath291759_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291759_)))
        (let ((_outdir291762_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291760_)))
              (_invoke-gsc?291763_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291760_)))
              (_gsc-options291764_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291760_)))
              (_keep-scm?291765_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291760_)))
              (_verbosity291766_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291760_)))
              (_debug291767_
               (let () (declare (not safe)) (pgetq 'debug: _opts291760_))))
          (if _outdir291762_
              (let ((__tmp296489
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291762_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296489))
              '#!void)
          (let ((__tmp296493
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath291759_))
                   (let ((__tmp296494
                          (let ((__tmp296495
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291759_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296495))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp296494
                      _opts291760_))))
                (__tmp296492
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296490
                 (let ((__tmp296491
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291759_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp296491))))
            (declare (not safe))
            (call-with-parameters
             __tmp296493
             gxc#current-compile-output-dir
             _outdir291762_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291763_
             gxc#current-compile-gsc-options
             _gsc-options291764_
             gxc#current-compile-keep-scm
             _keep-scm?291765_
             gxc#current-compile-verbose
             _verbosity291766_
             gxc#current-compile-debug
             _debug291767_
             gxc#current-compile-timestamp
             __tmp296492
             gxc#current-compile-context
             __tmp296490
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath291775_)
        (let ((_opts291777_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath291775_ _opts291777_))))
    (define gxc#compile-exe
      (lambda _g296497_
        (let ((_g296496_ (let () (declare (not safe)) (##length _g296497_))))
          (cond ((let () (declare (not safe)) (##fx= _g296496_ 1))
                 (apply (lambda (_srcpath291775_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath291775_)))
                        _g296497_))
                ((let () (declare (not safe)) (##fx= _g296496_ 2))
                 (apply (lambda (_srcpath291779_ _opts291780_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath291779_ _opts291780_)))
                        _g296497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g296497_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx291755_ _opts291756_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts291756_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx291755_
               _opts291756_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx291755_
               _opts291756_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx291638_ _opts291639_)
        (letrec ((_generate-stub291641_
                  (lambda (_builtin-modules291751_)
                    (let ((_mod-main291753_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291638_ 'main))))
                      (write (let ((__tmp296498
                                    (let ((__tmp296499
                                           (let ((__tmp296500
                                                  (let ((__tmp296501
                                                         (let ((__tmp296503
                                                                (let ((__tmp296504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules291751_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296504)))
                       (__tmp296502
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp296503 __tmp296502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp296501))))
                                             (declare (not safe))
                                             (cons __tmp296500 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp296499))))
                               (declare (not safe))
                               (cons 'define __tmp296498)))
                      (write (let ((__tmp296505
                                    (let ((__tmp296544
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296506
                                           (let ((__tmp296507
                                                  (let ((__tmp296508
                                                         (let ((__tmp296532
                                                                (let ((__tmp296533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296534
                                      (let ((__tmp296542
                                             (let ((__tmp296543
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp296543)))
                                            (__tmp296535
                                             (let ((__tmp296536
                                                    (let ((__tmp296537
                                                           (let ((__tmp296538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296539
                                 (let ((__tmp296540
                                        (let ((__tmp296541
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp296541 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp296540))))
                            (declare (not safe))
                            (cons __tmp296539 '()))))
                     (declare (not safe))
                     (cons _mod-main291753_ __tmp296538))))
              (declare (not safe))
              (cons 'apply __tmp296537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296536 '()))))
                                        (declare (not safe))
                                        (cons __tmp296542 __tmp296535))))
                                 (declare (not safe))
                                 (cons '() __tmp296534))))
                          (declare (not safe))
                          (cons 'lambda __tmp296533)))
                       (__tmp296509
                        (let ((__tmp296510
                               (let ((__tmp296511
                                      (let ((__tmp296512
                                             (let ((__tmp296523
                                                    (let ((__tmp296524
                                                           (let ((__tmp296525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296526
                                 (let ((__tmp296527
                                        (let ((__tmp296528
                                               (let ((__tmp296529
                                                      (let ((__tmp296530
                                                             (let ((__tmp296531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp296531 '()))))
                (declare (not safe))
                (cons 'force-output __tmp296530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp296529 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp296528))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp296527))))
                            (declare (not safe))
                            (cons __tmp296526 '()))))
                     (declare (not safe))
                     (cons 'void __tmp296525))))
              (declare (not safe))
              (cons 'with-catch __tmp296524)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp296513
                                                    (let ((__tmp296514
                                                           (let ((__tmp296515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296516
                                 (let ((__tmp296517
                                        (let ((__tmp296518
                                               (let ((__tmp296519
                                                      (let ((__tmp296520
                                                             (let ((__tmp296521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp296522
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp296522 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp296521))))
                (declare (not safe))
                (cons __tmp296520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp296519))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp296518))))
                                   (declare (not safe))
                                   (cons __tmp296517 '()))))
                            (declare (not safe))
                            (cons 'void __tmp296516))))
                     (declare (not safe))
                     (cons 'with-catch __tmp296515))))
              (declare (not safe))
              (cons __tmp296514 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296523
                                                     __tmp296513))))
                                        (declare (not safe))
                                        (cons '() __tmp296512))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp296511))))
                          (declare (not safe))
                          (cons __tmp296510 '()))))
                   (declare (not safe))
                   (cons __tmp296532 __tmp296509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp296508))))
                                             (declare (not safe))
                                             (cons __tmp296507 '()))))
                                      (declare (not safe))
                                      (cons __tmp296544 __tmp296506))))
                               (declare (not safe))
                               (cons 'define __tmp296505)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts291642_
                  (lambda (_libgerbil291749_)
                    (call-with-input-file
                     (string-append _libgerbil291749_ '".ldd")
                     read)))
                 (_replace-extension291643_
                  (lambda (_path291746_ _ext291747_)
                    (string-append
                     (path-strip-extension _path291746_)
                     _ext291747_)))
                 (_not-exclude-module?291644_
                  (lambda (_ctx291742_)
                    (let ((_id-str291744_
                           (symbol->string
                            (##structure-ref
                             _ctx291742_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp296546
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str291744_))))
                            (declare (not safe))
                            (not __tmp296546))
                          (let ((__tmp296545
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str291744_))))
                            (declare (not safe))
                            (not __tmp296545))
                          '#f))))
                 (_not-file-empty?291645_
                  (lambda (_path291740_)
                    (let ((__tmp296547
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path291740_))))
                      (declare (not safe))
                      (not __tmp296547))))
                 (_compile-stub291646_
                  (lambda (_output-scm291653_ _output-bin291654_)
                    (let* ((_gerbil-home291656_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291658_
                            (path-expand '"lib" _gerbil-home291656_))
                           (_gerbil-staticdir291660_
                            (path-expand '"static" _gerbil-libdir291658_))
                           (_gxlink291662_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir291658_))
                           (_tmp291664_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path291668_
                            (lambda (_f291666_)
                              (path-expand
                               (path-strip-directory _f291666_)
                               _tmp291664_)))
                           (_deps291670_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291638_)))
                           (_deps291672_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?291644_
                                      _deps291670_)))
                           (_src-deps-scm291674_
                            (map gxc#find-static-module-file _deps291672_))
                           (_src-deps-scm291676_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?291645_
                                      _src-deps-scm291674_)))
                           (_src-deps-scm291678_
                            (map path-expand _src-deps-scm291676_))
                           (_deps-scm291680_
                            (map _tmp-path291668_ _src-deps-scm291678_))
                           (_deps-c291686_
                            (map (lambda (_g291681291683_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291643_
                                      _g291681291683_
                                      '".c")))
                                 _deps-scm291680_))
                           (_deps-o291692_
                            (map (lambda (_g291687291689_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291643_
                                      _g291687291689_
                                      '".o")))
                                 _deps-scm291680_))
                           (_src-bin-scm291694_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291638_)))
                           (_src-bin-scm291696_
                            (path-expand _src-bin-scm291694_))
                           (_bin-scm291698_
                            (let ()
                              (declare (not safe))
                              (_tmp-path291668_ _src-bin-scm291696_)))
                           (_bin-c291700_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291643_
                               _bin-scm291698_
                               '".c")))
                           (_bin-o291702_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291643_
                               _bin-scm291698_
                               '".o")))
                           (_output-bin291704_
                            (path-expand _output-bin291654_))
                           (_output-scm291706_
                            (path-expand _output-scm291653_))
                           (_output-c291708_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291643_
                               _output-scm291706_
                               '".c")))
                           (_output-o291710_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291643_
                               _output-scm291706_
                               '".o")))
                           (_output_-c291712_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291643_
                               _output-scm291706_
                               '"_.c")))
                           (_output_-o291714_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291643_
                               _output-scm291706_
                               '"_.o")))
                           (_gsc-link-opts291716_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291718_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291720_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir291660_)))
                           (_output-ld-opts291722_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a291724_
                            (path-expand '"libgerbil.a" _gerbil-libdir291658_))
                           (_libgerbil.so291726_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir291658_))
                           (_libgerbil-ld-opts291728_
                            (if (file-exists? _libgerbil.so291726_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts291642_
                                   _libgerbil.so291726_))
                                (if (file-exists? _libgerbil.a291724_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts291642_
                                       _libgerbil.a291724_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a291724_
                                       _libgerbil.so291726_)))))
                           (_rpath291730_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291658_)))
                           (_builtin-modules291734_
                            (map (lambda (_mod291732_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod291732_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx291638_ _deps291672_)))))
                      (let ((__tmp296548
                             (lambda ()
                               (let ((__tmp296549
                                      (path-directory _output-bin291704_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296549)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296548))
                      (let ((__tmp296550
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub291641_
                                  _builtin-modules291734_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291706_
                         __tmp296550))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296551
                                   (lambda () (create-directory _tmp291664_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp296551))
                            (for-each
                             copy-file
                             _src-deps-scm291678_
                             _deps-scm291680_)
                            (copy-file _src-bin-scm291696_ _bin-scm291698_)
                            (let ((__tmp296559
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296552
                                   (let ((__tmp296553
                                          (let ((__tmp296554
                                                 (let ((__tmp296555
                                                        (let ((__tmp296556
                                                               (let ((__tmp296557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296558
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm291706_ '()))))
                                (declare (not safe))
                                (cons _bin-scm291698_ __tmp296558))))
                         (declare (not safe))
                         (foldr1 cons __tmp296557 _deps-scm291680_))))
                  (declare (not safe))
                  (foldr1 cons __tmp296556 _gsc-link-opts291716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink291662_
                                                         __tmp296555))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp296554))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296553))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296559
                               __tmp296552))
                            (let ((__tmp296567
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296560
                                   (let ((__tmp296561
                                          (let ((__tmp296562
                                                 (let ((__tmp296563
                                                        (let ((__tmp296564
                                                               (let ((__tmp296565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296566
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c291712_ '()))))
                                (declare (not safe))
                                (cons _output-c291708_ __tmp296566))))
                         (declare (not safe))
                         (cons _bin-c291700_ __tmp296565))))
                  (declare (not safe))
                  (foldr1 cons __tmp296564 _deps-c291686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296563
                                                           _gsc-static-opts291720_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296562
                                                    _gsc-cc-opts291718_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296561))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296567
                               __tmp296560))
                            (let ((__tmp296580
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296568
                                   (let ((__tmp296569
                                          (let ((__tmp296570
                                                 (let ((__tmp296571
                                                        (let ((__tmp296572
                                                               (let ((__tmp296573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296574
                                     (let ((__tmp296575
                                            (let ((__tmp296576
                                                   (let ((__tmp296577
                                                          (let ((__tmp296578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp296579
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts291728_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp296579))))
                    (declare (not safe))
                    (cons _gerbil-libdir291658_ __tmp296578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp296577))))
                                              (declare (not safe))
                                              (cons _rpath291730_
                                                    __tmp296576))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp296575
                                               _output-ld-opts291722_))))
                                (declare (not safe))
                                (cons _output_-o291714_ __tmp296574))))
                         (declare (not safe))
                         (cons _output-o291710_ __tmp296573))))
                  (declare (not safe))
                  (cons _bin-o291702_ __tmp296572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296571
                                                           _deps-o291692_))))
                                            (declare (not safe))
                                            (cons _output-bin291704_
                                                  __tmp296570))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296569))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296580
                               __tmp296568))
                            (for-each
                             delete-file
                             (let ((__tmp296581
                                    (let ((__tmp296582
                                           (let ((__tmp296583
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o291714_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o291710_
                                                   __tmp296583))))
                                      (declare (not safe))
                                      (cons _output_-c291712_ __tmp296582))))
                               (declare (not safe))
                               (cons _output-c291708_ __tmp296581)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp291664_)))
                          '#!void)))))
          (let* ((_output-bin291648_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291638_ _opts291639_)))
                 (_output-scm291650_
                  (string-append _output-bin291648_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291646_ _output-scm291650_ _output-bin291648_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291650_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx291463_ _opts291464_)
        (letrec ((_reset-declare291466_
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
                 (_generate-stub291467_
                  (lambda (_deps291629_)
                    (let ((_mod-main291631_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291463_ 'main)))
                          (_reset-decl291632_
                           (let ()
                             (declare (not safe))
                             (_reset-declare291466_)))
                          (_user-decl291633_
                           (let ()
                             (declare (not safe))
                             (_user-declare291468_))))
                      (for-each
                       (lambda (_dep291635_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl291632_)
                         (newline)
                         (if _user-decl291633_
                             (begin (write _user-decl291633_) (newline))
                             '#!void)
                         (write (let ((__tmp296584
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep291635_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp296584)))
                         (newline))
                       _deps291629_)
                      (write (let ((__tmp296585
                                    (let ((__tmp296598
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296586
                                           (let ((__tmp296594
                                                  (let ((__tmp296595
                                                         (let ((__tmp296596
                                                                (let ((__tmp296597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296597))))
                   (declare (not safe))
                   (cons __tmp296596 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp296595)))
                                                 (__tmp296587
                                                  (let ((__tmp296588
                                                         (let ((__tmp296589
                                                                (let ((__tmp296590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296591
                                      (let ((__tmp296592
                                             (let ((__tmp296593
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp296593 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp296592))))
                                 (declare (not safe))
                                 (cons __tmp296591 '()))))
                          (declare (not safe))
                          (cons _mod-main291631_ __tmp296590))))
                   (declare (not safe))
                   (cons 'apply __tmp296589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296588 '()))))
                                             (declare (not safe))
                                             (cons __tmp296594 __tmp296587))))
                                      (declare (not safe))
                                      (cons __tmp296598 __tmp296586))))
                               (declare (not safe))
                               (cons 'define __tmp296585)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare291468_
                  (lambda ()
                    (let* ((_gsc-opts291534_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts291464_)))
                           (_gsc-prelude291536_
                            (if _gsc-opts291534_
                                (member '"-prelude" _gsc-opts291534_)
                                '#f))
                           (_gsc-prelude291538_
                            (if _gsc-prelude291536_
                                (read (open-input-string
                                       (cadr _gsc-prelude291536_)))
                                '#f)))
                      (let _lp291541_ ((_rest291543_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude291538_ '())))
                                       (_user-decls291544_ '()))
                        (let* ((_rest291545291553_ _rest291543_)
                               (_else291547291561_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls291544_))
                                      '#f
                                      (let ((__tmp296599
                                             (reverse _user-decls291544_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp296599)))))
                               (_K291549291617_
                                (lambda (_rest291564_ _expr291565_)
                                  (let* ((_expr291566291578_ _expr291565_)
                                         (_else291569291586_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp291541_
                                               _rest291564_
                                               _user-decls291544_)))))
                                    (let ((_K291574291607_
                                           (lambda (_decls291605_)
                                             (let ((__tmp296600
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls291544_
                                                              _decls291605_))))
                                               (declare (not safe))
                                               (_lp291541_
                                                _rest291564_
                                                __tmp296600))))
                                          (_K291571291592_
                                           (lambda (_exprs291590_)
                                             (let ((__tmp296601
                                                    (append _exprs291590_
                                                            _rest291564_)))
                                               (declare (not safe))
                                               (_lp291541_
                                                __tmp296601
                                                _user-decls291544_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr291566291578_))
                                          (let ((_tl291576291612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr291566291578_)))
                                                (_hd291575291610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr291566291578_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd291575291610_
                                                         'declare))
                                                (let ((_decls291615_
                                                       _tl291576291612_))
                                                  (declare (not safe))
                                                  (_K291574291607_
                                                   _decls291615_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd291575291610_
                                                             'begin))
                                                    (let ((_exprs291600_
                                                           _tl291576291612_))
                                                      (declare (not safe))
                                                      (_K291571291592_
                                                       _exprs291600_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else291569291586_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else291569291586_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest291545291553_))
                              (let ((_hd291550291620_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest291545291553_)))
                                    (_tl291551291622_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest291545291553_))))
                                (let* ((_expr291625_ _hd291550291620_)
                                       (_rest291627_ _tl291551291622_))
                                  (declare (not safe))
                                  (_K291549291617_ _rest291627_ _expr291625_)))
                              (let ()
                                (declare (not safe))
                                (_else291547291561_))))))))
                 (_compile-stub291469_
                  (lambda (_output-scm291476_ _output-bin291477_)
                    (let* ((_gerbil-home291479_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291481_
                            (path-expand '"lib" _gerbil-home291479_))
                           (_runtime291483_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp291485_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home291479_))
                           (_include-gambit-sharp291487_
                            (string-append
                             '"(include \""
                             _gambit-sharp291485_
                             '"\")"))
                           (_bin-scm291489_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291463_)))
                           (_deps291491_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291463_)))
                           (_deps291493_
                            (map gxc#find-static-module-file _deps291491_))
                           (_deps291498_
                            (let ((__tmp296602
                                   (lambda (_$obj291495_)
                                     (let ((__tmp296603
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj291495_))))
                                       (declare (not safe))
                                       (not __tmp296603)))))
                              (declare (not safe))
                              (filter __tmp296602 _deps291493_)))
                           (_deps291502_
                            (let ((__tmp296604
                                   (lambda (_f291500_)
                                     (let ((__tmp296605
                                            (member _f291500_
                                                    _runtime291483_)))
                                       (declare (not safe))
                                       (not __tmp296605)))))
                              (declare (not safe))
                              (filter __tmp296604 _deps291498_)))
                           (_output-base291504_
                            (string-append
                             (path-strip-extension _output-scm291476_)))
                           (_output-c291506_
                            (string-append _output-base291504_ '".c"))
                           (_output-o291508_
                            (string-append _output-base291504_ '".o"))
                           (_output-c_291510_
                            (string-append _output-base291504_ '"_.c"))
                           (_output-o_291512_
                            (string-append _output-base291504_ '"_.o"))
                           (_gsc-link-opts291514_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291516_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291518_
                            (let ((__tmp296606
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir291481_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp296606)))
                           (_output-ld-opts291520_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros291522_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp296608
                                       (let ((__tmp296609
                                              (let ((__tmp296610
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp291487_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp296610))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp296609))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296608))
                                (let ((__tmp296607
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp291487_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296607))))
                           (_gsc-link-opts291524_
                            (append _gsc-link-opts291514_
                                    _gsc-gx-macros291522_))
                           (_rpath291526_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291481_)))
                           (_default-ld-options291528_
                            (let ((__tmp296611
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp296611))))
                      (let ((__tmp296612
                             (lambda ()
                               (let ((__tmp296613
                                      (path-directory _output-bin291477_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296613)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296612))
                      (let ((__tmp296614
                             (lambda ()
                               (let ((__tmp296615
                                      (let ((__tmp296616
                                             (let ((__tmp296617
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm291489_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp296617
                                                       _deps291502_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp296616
                                                _runtime291483_))))
                                 (declare (not safe))
                                 (_generate-stub291467_ __tmp296615)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291476_
                         __tmp296614))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296623
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296618
                                   (let ((__tmp296619
                                          (let ((__tmp296620
                                                 (let ((__tmp296621
                                                        (let ((__tmp296622
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm291476_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp296622 _gsc-link-opts291524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_291510_
                                                         __tmp296621))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp296620))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296619))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296623
                               __tmp296618))
                            (let ((__tmp296629
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296624
                                   (let ((__tmp296625
                                          (let ((__tmp296626
                                                 (let ((__tmp296627
                                                        (let ((__tmp296628
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_291510_ '()))))
                  (declare (not safe))
                  (cons _output-c291506_ __tmp296628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296627
                                                           _gsc-static-opts291518_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296626
                                                    _gsc-cc-opts291516_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296625))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296629
                               __tmp296624))
                            (let ((__tmp296639
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296630
                                   (let ((__tmp296631
                                          (let ((__tmp296632
                                                 (let ((__tmp296633
                                                        (let ((__tmp296634
                                                               (let ((__tmp296635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296636
                                     (let ((__tmp296637
                                            (let ((__tmp296638
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options291528_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir291481_
                                                    __tmp296638))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp296637))))
                                (declare (not safe))
                                (cons _rpath291526_ __tmp296636))))
                         (declare (not safe))
                         (foldr1 cons __tmp296635 _output-ld-opts291520_))))
                  (declare (not safe))
                  (cons _output-o_291512_ __tmp296634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o291508_
                                                         __tmp296633))))
                                            (declare (not safe))
                                            (cons _output-bin291477_
                                                  __tmp296632))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296631))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296639
                               __tmp296630)))
                          '#!void)))))
          (let* ((_output-bin291471_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291463_ _opts291464_)))
                 (_output-scm291473_
                  (string-append _output-bin291471_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291469_ _output-scm291473_ _output-bin291471_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291473_))))))
    (define gxc#find-export-binding
      (lambda (_ctx291413_ _id291414_)
        (let ((_$e291460_
               (let ((__tmp296641
                      (lambda (_e291415291417_)
                        (let* ((_g291419291429_ _e291415291417_)
                               (_else291421291437_ (lambda () '#f))
                               (_K291423291441_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g291419291429_
                                 'gx#module-export::t))
                              (let* ((_e291424291444_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291419291429_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e291425291447_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291419291429_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e291426291450_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291419291429_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e291426291450_ '0))
                                    (let ((_e291427291453_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g291419291429_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g291455291457_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g291455291457_
                                                    _id291414_)))
                                           _e291427291453_)
                                          (let ()
                                            (declare (not safe))
                                            (_K291423291441_))
                                          (let ()
                                            (declare (not safe))
                                            (_else291421291437_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else291421291437_))))
                              (let ()
                                (declare (not safe))
                                (_else291421291437_))))))
                     (__tmp296640
                      (##structure-ref
                       _ctx291413_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp296641 __tmp296640))))
          (if _$e291460_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e291460_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx291405_ _id291406_)
        (let ((_$e291408_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx291405_ _id291406_))))
          (if _$e291408_
              ((lambda (_bind291411_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind291411_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id291406_)))
                 (##structure-ref _bind291411_ '1 gx#binding::t '#f))
               _$e291408_)
              (let ((__tmp296642
                     (##structure-ref
                      _ctx291405_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp296642
                 _id291406_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx291292_)
        (letrec* ((_ht291294_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template291295_
                   (lambda (_in291357_ _phi291358_)
                     (let ((_iphi291360_
                            (fx+ _phi291358_
                                 (##direct-structure-ref
                                  _in291357_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports291361_
                            (##structure-ref
                             (##direct-structure-ref
                              _in291357_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp291363_ ((_rest291365_ _imports291361_)
                                        (_r291366_ '()))
                         (let* ((_rest291367291375_ _rest291365_)
                                (_else291369291383_ (lambda () _r291366_))
                                (_K291371291393_
                                 (lambda (_rest291386_ _in291387_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in291387_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi291360_))
                                           (let ((__tmp296649
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in291387_
                                                          _r291366_))))
                                             (declare (not safe))
                                             (_lp291363_
                                              _rest291386_
                                              __tmp296649))
                                           (let ()
                                             (declare (not safe))
                                             (_lp291363_
                                              _rest291386_
                                              _r291366_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in291387_
                                              'gx#module-import::t))
                                           (let ((_iphi291389_
                                                  (fx+ _phi291358_
                                                       (##direct-structure-ref
                                                        _in291387_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi291389_))
                                                 (let ((__tmp296647
                                                        (let ((__tmp296648
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in291387_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp296648 _r291366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp291363_
                                                    _rest291386_
                                                    __tmp296647))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp291363_
                                                    _rest291386_
                                                    _r291366_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in291387_
                                                  'gx#import-set::t))
                                               (let ((_xphi291391_
                                                      (fx+ _iphi291360_
                                                           (##direct-structure-ref
                                                            _in291387_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi291391_))
                                                     (let ((__tmp296645
                                                            (let ((__tmp296646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in291387_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp296646 _r291366_))))
               (declare (not safe))
               (_lp291363_ _rest291386_ __tmp296645))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi291391_)
                                                         (let ((__tmp296643
                                                                (let ((__tmp296644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template291295_
                                  _in291387_
                                  _iphi291360_))))
                          (declare (not safe))
                          (foldl1 cons _r291366_ __tmp296644))))
                   (declare (not safe))
                   (_lp291363_ _rest291386_ __tmp296643))
                 (let ()
                   (declare (not safe))
                   (_lp291363_ _rest291386_ _r291366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp291363_
                                                  _rest291386_
                                                  _r291366_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest291367291375_))
                               (let ((_hd291372291396_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest291367291375_)))
                                     (_tl291373291398_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest291367291375_))))
                                 (let* ((_in291401_ _hd291372291396_)
                                        (_rest291403_ _tl291373291398_))
                                   (declare (not safe))
                                   (_K291371291393_ _rest291403_ _in291401_)))
                               (let ()
                                 (declare (not safe))
                                 (_else291369291383_))))))))
                  (_find-deps291296_
                   (lambda (_rest291303_ _deps291304_)
                     (let* ((_rest291305291313_ _rest291303_)
                            (_else291307291321_ (lambda () _deps291304_))
                            (_K291309291345_
                             (lambda (_rest291324_ _hd291325_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd291325_
                                      'gx#module-context::t))
                                   (let ((_id291327_
                                          (##structure-ref
                                           _hd291325_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports291328_
                                          (##structure-ref
                                           _hd291325_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht291294_
                                            _id291327_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps291296_
                                            _rest291324_
                                            _deps291304_))
                                         (let ((_$e291330_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd291325_))))
                                           (if _$e291330_
                                               ((lambda (_pre291333_)
                                                  (let ((_xdeps291335_
                                                         (let ((__tmp296662
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre291333_ _imports291328_))))
                   (declare (not safe))
                   (_find-deps291296_ __tmp296662 _deps291304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht291294_
                                                       _id291327_
                                                       _hd291325_))
                                                    (let ((__tmp296663
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd291325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps291335_))))
              (declare (not safe))
              (_find-deps291296_ _rest291324_ __tmp296663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e291330_)
                                               (let ((_xdeps291337_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps291296_
                                                         _imports291328_
                                                         _deps291304_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht291294_
                                                    _id291327_
                                                    _hd291325_))
                                                 (let ((__tmp296661
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd291325_
                                                                _xdeps291337_))))
                                                   (declare (not safe))
                                                   (_find-deps291296_
                                                    _rest291324_
                                                    __tmp296661)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd291325_
                                          'gx#prelude-context::t))
                                       (let ((_id291339_
                                              (##structure-ref
                                               _hd291325_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht291294_
                                                _id291339_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps291296_
                                                _rest291324_
                                                _deps291304_))
                                             (let ((_xdeps291341_
                                                    (let ((__tmp296659
                                                           (##structure-ref
                                                            _hd291325_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps291296_
                                                       __tmp296659
                                                       _deps291304_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht291294_
                                                      _id291339_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps291296_
                                                      _rest291324_
                                                      _xdeps291341_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht291294_
                                                        _id291339_
                                                        _hd291325_))
                                                     (let ((__tmp296660
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd291325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps291341_))))
               (declare (not safe))
               (_find-deps291296_ _rest291324_ __tmp296660)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd291325_
                                              'gx#module-import::t))
                                           (if (let ((__tmp296658
                                                      (##direct-structure-ref
                                                       _hd291325_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp296658))
                                               (let ((__tmp296656
                                                      (let ((__tmp296657
                                                             (##direct-structure-ref
                                                              _hd291325_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296657
                                                              _rest291324_))))
                                                 (declare (not safe))
                                                 (_find-deps291296_
                                                  __tmp296656
                                                  _deps291304_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps291296_
                                                  _rest291324_
                                                  _deps291304_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd291325_
                                                  'gx#module-export::t))
                                               (let ((__tmp296654
                                                      (let ((__tmp296655
                                                             (##direct-structure-ref
                                                              _hd291325_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296655
                                                              _rest291324_))))
                                                 (declare (not safe))
                                                 (_find-deps291296_
                                                  __tmp296654
                                                  _deps291304_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd291325_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp296653
                                                              (##direct-structure-ref
                                                               _hd291325_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp296653))
                                                       (let ((__tmp296651
                                                              (let ((__tmp296652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd291325_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp296652 _rest291324_))))
                 (declare (not safe))
                 (_find-deps291296_ __tmp296651 _deps291304_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd291325_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps291343_
                           (let ()
                             (declare (not safe))
                             (_import-set-template291295_ _hd291325_ '0)))
                          (__tmp296650
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest291324_ _xdeps291343_))))
                     (declare (not safe))
                     (_find-deps291296_ __tmp296650 _deps291304_))
                   (let ()
                     (declare (not safe))
                     (_find-deps291296_ _rest291324_ _deps291304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd291325_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest291305291313_))
                           (let ((_hd291310291348_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest291305291313_)))
                                 (_tl291311291350_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest291305291313_))))
                             (let* ((_hd291353_ _hd291310291348_)
                                    (_rest291355_ _tl291311291350_))
                               (declare (not safe))
                               (_K291309291345_ _rest291355_ _hd291353_)))
                           (let ()
                             (declare (not safe))
                             (_else291307291321_)))))))
          (reverse (let ((__tmp296664
                          (let ((__tmp296665
                                 (let ((_$e291298_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx291292_))))
                                   (if _$e291298_
                                       ((lambda (_pre291301_)
                                          (let ((__tmp296666
                                                 (##structure-ref
                                                  _ctx291292_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre291301_ __tmp296666)))
                                        _$e291298_)
                                       (##structure-ref
                                        _ctx291292_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps291296_ __tmp296665 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp296664))))))
    (define gxc#find-static-module-file
      (lambda (_ctx291223_)
        (let* ((_context-id291225_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx291223_
                       'gx#module-context::t))
                    (##structure-ref _ctx291223_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx291223_)))
               (_scm291227_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id291225_))
                 '".scm"))
               (_dirs291229_ (gx#current-expander-module-library-path))
               (_dirs291235_
                (let ((_user-libpath291231_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath291231_
                      (let ((_user-libpath291233_
                             (path-expand '"lib" _user-libpath291231_)))
                        (if (member _user-libpath291233_ _dirs291229_)
                            _dirs291229_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath291233_ _dirs291229_))))
                      _dirs291229_)))
               (_dirs291244_
                (let ((_$e291237_ (gxc#current-compile-output-dir)))
                  (if _$e291237_
                      ((lambda (_g291239291241_)
                         (let ()
                           (declare (not safe))
                           (cons _g291239291241_ _dirs291235_)))
                       _$e291237_)
                      _dirs291235_)))
               (_dirs291250_
                (map (lambda (_g291245291247_)
                       (path-expand '"static" _g291245291247_))
                     _dirs291244_)))
          (let _lp291253_ ((_rest291255_ _dirs291250_))
            (let* ((_rest291256291264_ _rest291255_)
                   (_else291258291272_
                    (lambda ()
                      (let ((__tmp296667
                             (##structure-ref
                              _ctx291223_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp296667
                         _scm291227_))))
                   (_K291260291280_
                    (lambda (_rest291275_ _dir291276_)
                      (let ((_path291278_
                             (path-expand _scm291227_ _dir291276_)))
                        (if (file-exists? _path291278_)
                            _path291278_
                            (let ()
                              (declare (not safe))
                              (_lp291253_ _rest291275_)))))))
              (if (let () (declare (not safe)) (##pair? _rest291256291264_))
                  (let ((_hd291261291283_
                         (let ()
                           (declare (not safe))
                           (##car _rest291256291264_)))
                        (_tl291262291285_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291256291264_))))
                    (let* ((_dir291288_ _hd291261291283_)
                           (_rest291290_ _tl291262291285_))
                      (declare (not safe))
                      (_K291260291280_ _rest291290_ _dir291288_)))
                  (let () (declare (not safe)) (_else291258291272_))))))))
    (define gxc#file-empty?
      (lambda (_path291221_)
        (let ((__tmp296668 (file-info-size (file-info _path291221_ '#t))))
          (declare (not safe))
          (zero? __tmp296668))))
    (define gxc#compile-top-module
      (lambda (_ctx291210_)
        (let ((__tmp296672
               (lambda ()
                 (let ((__tmp296673
                        (##structure-ref
                         _ctx291210_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp296673))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp296674
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx291210_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp296674))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx291210_))
                 (if (let ((__tmp296677
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx291210_))))
                       (declare (not safe))
                       (null? __tmp296677))
                     (let* ((_thr1291215_
                             (let ((__tmp296675
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx291210_)))))
                               (declare (not safe))
                               (spawn __tmp296675)))
                            (_thr2291218_
                             (let ((__tmp296676
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx291210_)))))
                               (declare (not safe))
                               (spawn __tmp296676))))
                       (let () (declare (not safe)) (gxc#join! _thr1291215_))
                       (let () (declare (not safe)) (gxc#join! _thr2291218_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx291210_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx291210_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx291210_))
                     '#!void)))
              (__tmp296671
               (let ((__obj296476
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj296476)
                 __obj296476))
              (__tmp296670
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp296669 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp296672
           gx#current-expander-context
           _ctx291210_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp296671
           gxc#current-compile-runtime-sections
           __tmp296670
           gxc#current-compile-runtime-names
           __tmp296669))))
    (define gxc#collect-bindings
      (lambda (_ctx291208_)
        (let ((__tmp296678
               (##structure-ref _ctx291208_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp296678))))
    (define gxc#compile-runtime-code
      (lambda (_ctx291154_)
        (letrec ((_compile1291156_
                  (lambda (_ctx291197_)
                    (let* ((_code291199_
                            (##structure-ref
                             _ctx291197_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt291203_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code291199_))
                                (let ((_idstr291201_
                                       (let ((__tmp296679
                                              (##structure-ref
                                               _ctx291197_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp296679))))
                                  (string-append _idstr291201_ '"__0"))
                                '#f)))
                      (if _rt291203_
                          (begin
                            (let ((__tmp296680
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp296680 _ctx291197_ _rt291203_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code291158_
                               _ctx291197_
                               _code291199_)))
                          (let ((_path291206_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx291197_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path291206_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code291159_
                         _ctx291197_
                         _code291199_
                         _rt291203_)))))
                 (_context-timestamp291157_
                  (lambda (_ctx291195_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx291195_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code291158_
                  (lambda (_ctx291177_ _code291178_)
                    (let* ((_lifts291180_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code291183_
                            (let ((__tmp296683
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code291178_))))
                                  (__tmp296682
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp296681
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296683
                               gx#current-expander-context
                               _ctx291177_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts291180_
                               gxc#current-compile-marks
                               __tmp296682
                               gxc#current-compile-identifiers
                               __tmp296681)))
                           (_runtime-code291185_
                            (if (let ((__tmp296687 (unbox _lifts291180_)))
                                  (declare (not safe))
                                  (null? __tmp296687))
                                _runtime-code291183_
                                (let ((__tmp296684
                                       (let ((__tmp296686
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code291183_
                                                      '())))
                                             (__tmp296685
                                              (reverse (unbox _lifts291180_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp296686
                                                 __tmp296685))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296684))))
                           (_runtime-code291187_
                            (let ((__tmp296688
                                   (let ((__tmp296690
                                          (let ((__tmp296691
                                                 (let ((__tmp296694
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp291157_
                                                           _ctx291177_)))
                                                       (__tmp296692
                                                        (let ((__tmp296693
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp296693
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp296694
                                                         __tmp296692))))
                                            (declare (not safe))
                                            (cons 'define __tmp296691)))
                                         (__tmp296689
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code291185_ '()))))
                                     (declare (not safe))
                                     (cons __tmp296690 __tmp296689))))
                              (declare (not safe))
                              (cons 'begin __tmp296688)))
                           (_scm0291189_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx291177_
                               '0
                               '".scm"))))
                      (let ((_scms291192_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx291177_))))
                        (let ((__tmp296695
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0291189_
                                    _runtime-code291187_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp296695
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms291192_)
                            (delete-file _scms291192_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0291189_
                           '" => "
                           _scms291192_))
                        (copy-file _scm0291189_ _scms291192_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0291189_))))))
                 (_generate-loader-code291159_
                  (lambda (_ctx291166_ _code291167_ _rt291168_)
                    (let* ((_loader-code291171_
                            (let ((__tmp296696
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code291167_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296696
                               gx#current-expander-context
                               _ctx291166_)))
                           (_loader-code291173_
                            (if _rt291168_
                                (let ((__tmp296697
                                       (let ((__tmp296698
                                              (let ((__tmp296699
                                                     (let ((__tmp296700
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt291168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp296700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296699 '()))))
                                         (declare (not safe))
                                         (cons _loader-code291171_
                                               __tmp296698))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296697))
                                _loader-code291171_)))
                      (let ((__tmp296701
                             (lambda ()
                               (let ((__tmp296702
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx291166_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp296702
                                  _loader-code291173_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp296701
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules291161_
                 (let ((__tmp296703
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx291154_))))
                   (declare (not safe))
                   (cons _ctx291154_ __tmp296703))))
            (for-each
             (lambda (_ctx291163_)
               (let ((__tmp296704
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1291156_ _ctx291163_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp296704
                  gxc#current-compile-decls
                  '())))
             _all-modules291161_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx291051_)
        (letrec ((_compile-ssi291053_
                  (lambda (_code291124_)
                    (let* ((_path291126_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx291051_
                               '#f
                               '".ssi")))
                           (_prelude291137_
                            (let* ((_super291128_
                                    (##structure-ref
                                     _ctx291051_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e291130_
                                    (##structure-ref
                                     _super291128_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e291130_
                                  ((lambda (_g291132291134_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g291132291134_)))
                                   _$e291130_)
                                  ':<root>)))
                           (_ns291139_
                            (##structure-ref
                             _ctx291051_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr291141_
                            (symbol->string
                             (##structure-ref
                              _ctx291051_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg291148_
                            (let ((_$e291143_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr291141_ '#\/))))
                              (if _$e291143_
                                  ((lambda (_x291146_)
                                     (string->symbol
                                      (substring _idstr291141_ '0 _x291146_)))
                                   _$e291143_)
                                  '#f)))
                           (_rt291150_
                            (let ((__tmp296705
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp296705 _ctx291051_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path291126_))
                      (let ((__tmp296706
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude291137_))
                               (if _pkg291148_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg291148_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns291139_))
                               (newline)
                               (pretty-print _code291124_)
                               (if _rt291150_
                                   (pretty-print
                                    (let ((__tmp296707
                                           (let ((__tmp296711
                                                  (let ((__tmp296712
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp296712)))
                                                 (__tmp296708
                                                  (let ((__tmp296709
                                                         (let ((__tmp296710
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt291150_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp296710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296709 '()))))
                                             (declare (not safe))
                                             (cons __tmp296711 __tmp296708))))
                                      (declare (not safe))
                                      (cons '%#call __tmp296707)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path291126_
                         __tmp296706)))))
                 (_compile-phi291054_
                  (lambda (_part291064_)
                    (let* ((_part291065291078_ _part291064_)
                           (_E291067291082_
                            (lambda ()
                              (error '"No clause matching"
                                     _part291065291078_)))
                           (_K291068291093_
                            (lambda (_code291085_
                                     _n291086_
                                     _phi291087_
                                     _phi-ctx291088_)
                              (let* ((_code291091_
                                      (let ((__tmp296713
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code291085_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp296713
                                         gx#current-expander-context
                                         _phi-ctx291088_
                                         gx#current-expander-phi
                                         _phi291087_)))
                                     (__tmp296714
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx291051_
                                         _n291086_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp296714
                                 _code291091_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part291065291078_))
                          (let ((_hd291069291096_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part291065291078_)))
                                (_tl291070291098_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part291065291078_))))
                            (let ((_phi-ctx291101_ _hd291069291096_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl291070291098_))
                                  (let ((_hd291071291103_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl291070291098_)))
                                        (_tl291072291105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl291070291098_))))
                                    (let ((_phi291108_ _hd291071291103_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl291072291105_))
                                          (let ((_hd291073291110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl291072291105_)))
                                                (_tl291074291112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl291072291105_))))
                                            (let ((_n291115_ _hd291073291110_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl291074291112_))
                                                  (let ((_hd291075291117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl291074291112_)))
                                                        (_tl291076291119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl291074291112_))))
                                                    (let ((_code291122_
                                                           _hd291075291117_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl291076291119_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K291068291093_
                                                             _code291122_
                                                             _n291115_
                                                             _phi291108_
                                                             _phi-ctx291101_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E291067291082_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E291067291082_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E291067291082_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E291067291082_)))))
                          (let () (declare (not safe)) (_E291067291082_)))))))
          (let ((_g296715_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx291051_))))
            (begin
              (let ((_g296716_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g296715_)
                           (##vector-length _g296715_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g296716_ 2)))
                    (error "Context expects 2 values" _g296716_)))
              (let ((_ssi-code291056_
                     (let () (declare (not safe)) (##vector-ref _g296715_ 0)))
                    (_phi-code291057_
                     (let () (declare (not safe)) (##vector-ref _g296715_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi291053_ _ssi-code291056_))
                  (let ((_threads291062_
                         (map (lambda (_code291059_)
                                (let ((__tmp296717
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi291054_
                                            _code291059_)))))
                                  (declare (not safe))
                                  (spawn __tmp296717)))
                              _phi-code291057_)))
                    (for-each gxc#join! _threads291062_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx291034_)
        (let* ((_path291036_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx291034_ '#f '".ssxi.ss")))
               (_code291038_
                (let ((__tmp296718
                       (##structure-ref
                        _ctx291034_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp296718)))
               (_idstr291040_
                (symbol->string
                 (##structure-ref _ctx291034_ '1 gx#expander-context::t '#f)))
               (_pkg291047_
                (let ((_$e291042_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr291040_ '#\/))))
                  (if _$e291042_
                      ((lambda (_x291045_)
                         (string->symbol
                          (substring _idstr291040_ '0 _x291045_)))
                       _$e291042_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path291036_))
          (let ((__tmp296719
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg291047_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg291047_))
                       '#!void)
                   (newline)
                   (pretty-print _code291038_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path291036_ __tmp296719)))))
    (define gxc#generate-meta-code
      (lambda (_ctx291027_)
        (let* ((_state291029_
                (let ((__obj296477
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj296477 _ctx291027_)
                  __obj296477))
               (_ssi-code291031_
                (let ((__tmp296720
                       (##structure-ref
                        _ctx291027_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp296720 _state291029_))))
          (values _ssi-code291031_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state291029_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx291020_)
        (let ((_lifts291022_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296723
                 (lambda ()
                   (let ((_code291025_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx291020_))))
                     (if (let ((__tmp296727 (unbox _lifts291022_)))
                           (declare (not safe))
                           (null? __tmp296727))
                         _code291025_
                         (let ((__tmp296724
                                (let ((__tmp296726
                                       (let ()
                                         (declare (not safe))
                                         (cons _code291025_ '())))
                                      (__tmp296725
                                       (reverse (unbox _lifts291022_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp296726 __tmp296725))))
                           (declare (not safe))
                           (cons 'begin __tmp296724))))))
                (__tmp296722
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp296721
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp296723
             gxc#current-compile-lift
             _lifts291022_
             gxc#current-compile-marks
             __tmp296722
             gxc#current-compile-identifiers
             __tmp296721)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx291016_)
        (let ((_modules291018_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296728
                 (##structure-ref _ctx291016_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp296728 _modules291018_))
          (reverse (unbox _modules291018_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path290999_ _code291000_ _phi?291001_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path290999_))
        (let ((__tmp296729
               (lambda ()
                 (pretty-print
                  (let ((__tmp296730
                         (let ((__tmp296737
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp296731
                                (let ((__tmp296736
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp296732
                                       (let ((__tmp296735
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp296733
                                              (let ((__tmp296734
                                                     (if _phi?291001_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp296734))))
                                         (declare (not safe))
                                         (cons __tmp296735 __tmp296733))))
                                  (declare (not safe))
                                  (cons __tmp296736 __tmp296732))))
                           (declare (not safe))
                           (cons __tmp296737 __tmp296731))))
                    (declare (not safe))
                    (cons 'declare __tmp296730)))
                 (pretty-print _code291000_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path290999_ __tmp296729))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path290999_ _phi?291001_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path290999_))))
    (define gxc#compile-scm-file__0
      (lambda (_path291007_ _code291008_)
        (let ((_phi?291010_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path291007_ _code291008_ _phi?291010_))))
    (define gxc#compile-scm-file
      (lambda _g296739_
        (let ((_g296738_ (let () (declare (not safe)) (##length _g296739_))))
          (cond ((let () (declare (not safe)) (##fx= _g296738_ 2))
                 (apply (lambda (_path291007_ _code291008_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path291007_
                             _code291008_)))
                        _g296739_))
                ((let () (declare (not safe)) (##fx= _g296738_ 3))
                 (apply (lambda (_path291012_ _code291013_ _phi?291014_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path291012_
                             _code291013_
                             _phi?291014_)))
                        _g296739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g296739_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?290900_)
        (let _lp290902_ ((_rest290904_ (gxc#current-compile-gsc-options))
                         (_opts290905_ '()))
          (let* ((_rest290906290926_ _rest290904_)
                 (_else290910290934_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290900_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296740
                               (let ((__tmp296741 (reverse _opts290905_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp296741))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp296740))
                        (reverse _opts290905_)))))
            (let ((_K290920290977_
                   (lambda (_rest290975_)
                     (let ()
                       (declare (not safe))
                       (_lp290902_ _rest290975_ _opts290905_))))
                  (_K290915290959_
                   (lambda (_rest290957_)
                     (let ()
                       (declare (not safe))
                       (_lp290902_ _rest290957_ _opts290905_))))
                  (_K290912290941_
                   (lambda (_rest290938_ _opt290939_)
                     (let ((__tmp296742
                            (let ()
                              (declare (not safe))
                              (cons _opt290939_ _opts290905_))))
                       (declare (not safe))
                       (_lp290902_ _rest290938_ __tmp296742)))))
              (if (let () (declare (not safe)) (##pair? _rest290906290926_))
                  (let ((_tl290922290982_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290906290926_)))
                        (_hd290921290980_
                         (let ()
                           (declare (not safe))
                           (##car _rest290906290926_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290921290980_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290922290982_))
                            (let* ((_tl290924290985_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290922290982_)))
                                   (_rest290988_ _tl290924290985_))
                              (declare (not safe))
                              (_K290920290977_ _rest290988_))
                            (let ((_opt290949_ _hd290921290980_)
                                  (_rest290951_ _tl290922290982_))
                              (let ()
                                (declare (not safe))
                                (_K290912290941_ _rest290951_ _opt290949_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290921290980_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290922290982_))
                                (let* ((_tl290919290967_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290922290982_)))
                                       (_rest290970_ _tl290919290967_))
                                  (declare (not safe))
                                  (_K290915290959_ _rest290970_))
                                (let ((_opt290949_ _hd290921290980_)
                                      (_rest290951_ _tl290922290982_))
                                  (let ()
                                    (declare (not safe))
                                    (_K290912290941_
                                     _rest290951_
                                     _opt290949_))))
                            (let ((_opt290949_ _hd290921290980_)
                                  (_rest290951_ _tl290922290982_))
                              (let ()
                                (declare (not safe))
                                (_K290912290941_ _rest290951_ _opt290949_))))))
                  (let () (declare (not safe)) (_else290910290934_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?290994_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?290994_))))
    (define gxc#gsc-link-options
      (lambda _g296744_
        (let ((_g296743_ (let () (declare (not safe)) (##length _g296744_))))
          (cond ((let () (declare (not safe)) (##fx= _g296743_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g296744_))
                ((let () (declare (not safe)) (##fx= _g296743_ 1))
                 (apply (lambda (_phi?290996_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?290996_)))
                        _g296744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g296744_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?290801_)
        (let _lp290803_ ((_rest290805_ (gxc#current-compile-gsc-options))
                         (_opts290806_ '()))
          (let* ((_rest290807290827_ _rest290805_)
                 (_else290811290835_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290801_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296745
                               (let ((__tmp296746 (reverse _opts290806_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp296746))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp296745))
                        (reverse _opts290806_)))))
            (let ((_K290821290874_
                   (lambda (_rest290871_ _opt290872_)
                     (let ((__tmp296747
                            (let ((__tmp296748
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts290806_))))
                              (declare (not safe))
                              (cons _opt290872_ __tmp296748))))
                       (declare (not safe))
                       (_lp290803_ _rest290871_ __tmp296747))))
                  (_K290816290855_
                   (lambda (_rest290853_)
                     (let ()
                       (declare (not safe))
                       (_lp290803_ _rest290853_ _opts290806_))))
                  (_K290813290841_
                   (lambda (_rest290839_)
                     (let ()
                       (declare (not safe))
                       (_lp290803_ _rest290839_ _opts290806_)))))
              (if (let () (declare (not safe)) (##pair? _rest290807290827_))
                  (let ((_tl290823290879_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290807290827_)))
                        (_hd290822290877_
                         (let ()
                           (declare (not safe))
                           (##car _rest290807290827_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290822290877_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290823290879_))
                            (let ((_tl290825290884_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl290823290879_)))
                                  (_hd290824290882_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl290823290879_))))
                              (let ((_opt290887_ _hd290824290882_)
                                    (_rest290889_ _tl290825290884_))
                                (let ()
                                  (declare (not safe))
                                  (_K290821290874_ _rest290889_ _opt290887_))))
                            (let ((_rest290847_ _tl290823290879_))
                              (declare (not safe))
                              (_K290813290841_ _rest290847_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290822290877_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290823290879_))
                                (let* ((_tl290820290863_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290823290879_)))
                                       (_rest290866_ _tl290820290863_))
                                  (declare (not safe))
                                  (_K290816290855_ _rest290866_))
                                (let ((_rest290847_ _tl290823290879_))
                                  (declare (not safe))
                                  (_K290813290841_ _rest290847_)))
                            (let ((_rest290847_ _tl290823290879_))
                              (declare (not safe))
                              (_K290813290841_ _rest290847_)))))
                  (let () (declare (not safe)) (_else290811290835_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?290895_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?290895_))))
    (define gxc#gsc-cc-options
      (lambda _g296750_
        (let ((_g296749_ (let () (declare (not safe)) (##length _g296750_))))
          (cond ((let () (declare (not safe)) (##fx= _g296749_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g296750_))
                ((let () (declare (not safe)) (##fx= _g296749_ 1))
                 (apply (lambda (_phi?290897_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?290897_)))
                        _g296750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g296750_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir290796_)
        (let* ((_user-staticdir290798_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp296751
                (let ((__tmp296752
                       (string-append
                        '"-I "
                        _staticdir290796_
                        '" -I "
                        _user-staticdir290798_)))
                  (declare (not safe))
                  (cons __tmp296752 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp296751))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp290708_ ((_rest290710_ (gxc#current-compile-gsc-options))
                         (_opts290711_ '()))
          (let* ((_rest290712290732_ _rest290710_)
                 (_else290716290740_ (lambda () _opts290711_)))
            (let ((_K290726290783_
                   (lambda (_rest290781_)
                     (let ()
                       (declare (not safe))
                       (_lp290708_ _rest290781_ _opts290711_))))
                  (_K290721290761_
                   (lambda (_rest290758_ _opt290759_)
                     (let ((__tmp296753
                            (append _opts290711_
                                    (let ((__tmp296754
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt290759_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp296754)))))
                       (declare (not safe))
                       (_lp290708_ _rest290758_ __tmp296753))))
                  (_K290718290746_
                   (lambda (_rest290744_)
                     (let ()
                       (declare (not safe))
                       (_lp290708_ _rest290744_ _opts290711_)))))
              (if (let () (declare (not safe)) (##pair? _rest290712290732_))
                  (let ((_tl290728290788_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290712290732_)))
                        (_hd290727290786_
                         (let ()
                           (declare (not safe))
                           (##car _rest290712290732_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290727290786_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290728290788_))
                            (let* ((_tl290730290791_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290728290788_)))
                                   (_rest290794_ _tl290730290791_))
                              (declare (not safe))
                              (_K290726290783_ _rest290794_))
                            (let ((_rest290752_ _tl290728290788_))
                              (declare (not safe))
                              (_K290718290746_ _rest290752_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290727290786_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290728290788_))
                                (let ((_tl290725290771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl290728290788_)))
                                      (_hd290724290769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl290728290788_))))
                                  (let ((_opt290774_ _hd290724290769_)
                                        (_rest290776_ _tl290725290771_))
                                    (let ()
                                      (declare (not safe))
                                      (_K290721290761_
                                       _rest290776_
                                       _opt290774_))))
                                (let ((_rest290752_ _tl290728290788_))
                                  (declare (not safe))
                                  (_K290718290746_ _rest290752_)))
                            (let ((_rest290752_ _tl290728290788_))
                              (declare (not safe))
                              (_K290718290746_ _rest290752_)))))
                  (let () (declare (not safe)) (_else290716290740_))))))))
    (define gxc#not-string-empty?
      (lambda (_str290705_)
        (let ((__tmp296755
               (let () (declare (not safe)) (string-empty? _str290705_))))
          (declare (not safe))
          (not __tmp296755))))
    (define gxc#gsc-compile-file
      (lambda (_path290673_ _phi?290674_)
        (letrec ((_gsc-link-path290676_
                  (lambda (_base-path290697_)
                    (let _lp290699_ ((_n290701_ '1))
                      (let ((_path290703_
                             (string-append
                              _base-path290697_
                              '".o"
                              (number->string _n290701_))))
                        (if (file-exists? _path290703_)
                            (let ((__tmp296756
                                   (let ()
                                     (declare (not safe))
                                     (+ _n290701_ '1))))
                              (declare (not safe))
                              (_lp290699_ __tmp296756))
                            _path290703_))))))
          (let* ((_base-path290678_ (path-strip-extension _path290673_))
                 (_path-c290680_ (string-append _base-path290678_ '".c"))
                 (_path-o290682_ (string-append _base-path290678_ '".o"))
                 (_link-path290684_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path290676_ _base-path290678_)))
                 (_link-path-c290686_ (string-append _link-path290684_ '".c"))
                 (_link-path-o290688_ (string-append _link-path290684_ '".o"))
                 (_gsc-link-opts290690_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?290674_)))
                 (_gsc-cc-opts290692_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?290674_)))
                 (_gcc-ld-opts290694_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp296763 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296757
                   (let ((__tmp296758
                          (let ((__tmp296759
                                 (let ((__tmp296760
                                        (let ((__tmp296761
                                               (let ((__tmp296762
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path290673_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp296762
                                                         _gsc-link-opts290690_))))
                                          (declare (not safe))
                                          (cons _link-path-c290686_
                                                __tmp296761))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp296760))))
                            (declare (not safe))
                            (cons '"-flat" __tmp296759))))
                     (declare (not safe))
                     (cons '"-link" __tmp296758))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296763 __tmp296757))
            (let ((__tmp296770 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296764
                   (let ((__tmp296765
                          (let ((__tmp296766
                                 (let ((__tmp296767
                                        (let ((__tmp296768
                                               (let ((__tmp296769
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c290686_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c290680_
                                                       __tmp296769))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp296768
                                                  _gsc-cc-opts290692_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp296767))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp296766))))
                     (declare (not safe))
                     (cons '"-obj" __tmp296765))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296770 __tmp296764))
            (let ((__tmp296776 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp296771
                   (let ((__tmp296772
                          (let ((__tmp296773
                                 (let ((__tmp296774
                                        (let ((__tmp296775
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o290688_
                                                       _gcc-ld-opts290694_))))
                                          (declare (not safe))
                                          (cons _path-o290682_ __tmp296775))))
                                   (declare (not safe))
                                   (cons _link-path290684_ __tmp296774))))
                            (declare (not safe))
                            (cons '"-o" __tmp296773))))
                     (declare (not safe))
                     (cons '"-shared" __tmp296772))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp296776
               __tmp296771))
            (for-each
             delete-file
             (let ((__tmp296777
                    (let ((__tmp296778
                           (let ((__tmp296779
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o290688_ '()))))
                             (declare (not safe))
                             (cons _link-path-c290686_ __tmp296779))))
                      (declare (not safe))
                      (cons _path-o290682_ __tmp296778))))
               (declare (not safe))
               (cons _path-c290680_ __tmp296777)))))))
    (define gxc#compile-output-file
      (lambda (_ctx290644_ _n290645_ _ext290646_)
        (letrec ((_module-relative-path290648_
                  (lambda (_ctx290671_)
                    (path-strip-directory
                     (let ((__tmp296780
                            (##structure-ref
                             _ctx290671_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp296780)))))
                 (_module-source-directory290649_
                  (lambda (_ctx290667_)
                    (path-directory
                     (let ((_mpath290669_
                            (##structure-ref
                             _ctx290667_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath290669_))
                           _mpath290669_
                           (let ()
                             (declare (not safe))
                             (last _mpath290669_)))))))
                 (_section-string290650_
                  (lambda (_n290665_)
                    (if (let () (declare (not safe)) (number? _n290665_))
                        (number->string _n290665_)
                        (if (let () (declare (not safe)) (symbol? _n290665_))
                            (symbol->string _n290665_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n290665_))
                                _n290665_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n290665_)))))))
                 (_file-name290651_
                  (lambda (_path290663_)
                    (if _n290645_
                        (string-append
                         _path290663_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string290650_ _n290645_))
                         _ext290646_)
                        (string-append _path290663_ _ext290646_))))
                 (_file-path290652_
                  (lambda ()
                    (let ((_$e290658_ (gxc#current-compile-output-dir)))
                      (if _$e290658_
                          ((lambda (_outdir290661_)
                             (path-expand
                              (let ((__tmp296782
                                     (let ((__tmp296783
                                            (##structure-ref
                                             _ctx290644_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp296783))))
                                (declare (not safe))
                                (_file-name290651_ __tmp296782))
                              _outdir290661_))
                           _$e290658_)
                          (path-expand
                           (let ((__tmp296781
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path290648_
                                     _ctx290644_))))
                             (declare (not safe))
                             (_file-name290651_ __tmp296781))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory290649_
                              _ctx290644_))))))))
          (let ((_path290654_
                 (let () (declare (not safe)) (_file-path290652_))))
            (let ((__tmp296784
                   (lambda ()
                     (let ((__tmp296785 (path-directory _path290654_)))
                       (declare (not safe))
                       (create-directory* __tmp296785)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296784))
            _path290654_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx290626_)
        (letrec ((_file-name290628_
                  (lambda (_id290642_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id290642_))
                     '".scm")))
                 (_file-path290629_
                  (lambda ()
                    (let* ((_file290635_
                            (let ((__tmp296786
                                   (##structure-ref
                                    _ctx290626_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name290628_ __tmp296786)))
                           (_$e290637_ (gxc#current-compile-output-dir)))
                      (if _$e290637_
                          ((lambda (_outdir290640_)
                             (path-expand
                              _file290635_
                              (path-expand '"static" _outdir290640_)))
                           _$e290637_)
                          (path-expand _file290635_ '"static"))))))
          (let ((_path290631_
                 (let () (declare (not safe)) (_file-path290629_))))
            (let ((__tmp296787
                   (lambda ()
                     (let ((__tmp296788 (path-directory _path290631_)))
                       (declare (not safe))
                       (create-directory* __tmp296788)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296787))
            _path290631_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx290620_ _opts290621_)
        (let ((_$e290623_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts290621_))))
          (if _$e290623_
              (values _$e290623_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx290620_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr290613_)
        (if (let () (declare (not safe)) (string? _idstr290613_))
            (let* ((_str290615_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr290613_)))
                   (_strs290617_
                    (let ()
                      (declare (not safe))
                      (string-split _str290615_ '#\/))))
              (let () (declare (not safe)) (string-join _strs290617_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr290613_))
                (let ((__tmp296789 (symbol->string _idstr290613_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp296789))
                (error '"Bad module id" _idstr290613_)))))
    (define gxc#invoke__%
      (lambda (_g296790_
               _stdout-redirection290577290581_
               _stderr-redirection290578290583_
               _program290585_
               _args290586_)
        (let* ((_stdout-redirection290588_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection290577290581_ absent-value))
                    '#f
                    _stdout-redirection290577290581_))
               (_stderr-redirection290590_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection290578290583_ absent-value))
                    '#f
                    _stderr-redirection290578290583_)))
          (let ((__tmp296791
                 (let ()
                   (declare (not safe))
                   (cons _program290585_ _args290586_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp296791))
          (let ((_proc290592_
                 (open-process
                  (let ((__tmp296792
                         (let ((__tmp296793
                                (let ((__tmp296794
                                       (let ((__tmp296795
                                              (let ((__tmp296796
                                                     (let ((__tmp296797
                                                            (let ((__tmp296798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection290590_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp296798))))
               (declare (not safe))
               (cons _stdout-redirection290588_ __tmp296797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp296796))))
                                         (declare (not safe))
                                         (cons _args290586_ __tmp296795))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp296794))))
                           (declare (not safe))
                           (cons _program290585_ __tmp296793))))
                    (declare (not safe))
                    (cons 'path: __tmp296792)))))
            (if (or _stdout-redirection290588_ _stderr-redirection290590_)
                (read-line _proc290592_ '#f)
                '#!void)
            (let ((_status290597_ (process-status _proc290592_)))
              (close-port _proc290592_)
              (if (let () (declare (not safe)) (zero? _status290597_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program290585_))))))))
    (define gxc#invoke__@
      (lambda (_keys290576290602_ . _args290604_)
        (apply gxc#invoke__%
               _keys290576290602_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290576290602_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290576290602_
                  'stderr-redirection:
                  absent-value))
               _args290604_)))
    (define gxc#invoke
      (lambda _args290579290610_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args290579290610_)))
    (define gxc#join!
      (lambda (_thread290570_)
        (let ((__tmp296800
               (lambda (_exn290572_)
                 (if (uncaught-exception? _exn290572_)
                     (raise (uncaught-exception-reason _exn290572_))
                     (raise _exn290572_))))
              (__tmp296799 (lambda () (thread-join! _thread290570_))))
          (declare (not safe))
          (with-catch __tmp296800 __tmp296799))))))
