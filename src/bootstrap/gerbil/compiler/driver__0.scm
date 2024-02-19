(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708334582)
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
      (lambda (_path297300_ _fun297301_)
        (with-output-to-file
         (let ((__tmp301461
                (let ()
                  (declare (not safe))
                  (cons _path297300_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp301461))
         _fun297301_)))
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
      (lambda (_gerbil-libdir297295_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir297295_)))
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
      (lambda (_dir297293_) (delete-file-or-directory _dir297293_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath297267_ _opts297268_)
        (if (let () (declare (not safe)) (string? _srcpath297267_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath297267_)))
        (let ((_outdir297270_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts297268_)))
              (_invoke-gsc?297271_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts297268_)))
              (_gsc-options297272_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts297268_)))
              (_keep-scm?297273_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts297268_)))
              (_verbosity297274_
               (let () (declare (not safe)) (pgetq 'verbose: _opts297268_)))
              (_optimize297275_
               (let () (declare (not safe)) (pgetq 'optimize: _opts297268_)))
              (_debug297276_
               (let () (declare (not safe)) (pgetq 'debug: _opts297268_)))
              (_gen-ssxi297277_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts297268_))))
          (if _outdir297270_
              (let ((__tmp301462
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir297270_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp301462))
              '#!void)
          (if _optimize297275_
              (let ((__tmp301463
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp301463))
              '#!void)
          (let ((__tmp301467
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath297267_))
                   (let ((__tmp301468
                          (let ((__tmp301469
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath297267_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp301469))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp301468))))
                (__tmp301466
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp301464
                 (let ((__tmp301465
                        (let ()
                          (declare (not safe))
                          (cons _srcpath297267_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp301465))))
            (declare (not safe))
            (call-with-parameters
             __tmp301467
             gxc#current-compile-output-dir
             _outdir297270_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?297271_
             gxc#current-compile-gsc-options
             _gsc-options297272_
             gxc#current-compile-keep-scm
             _keep-scm?297273_
             gxc#current-compile-verbose
             _verbosity297274_
             gxc#current-compile-optimize
             _optimize297275_
             gxc#current-compile-debug
             _debug297276_
             gxc#current-compile-generate-ssxi
             _gen-ssxi297277_
             gxc#current-compile-timestamp
             __tmp301466
             gxc#current-compile-context
             __tmp301464
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath297286_)
        (let ((_opts297288_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath297286_ _opts297288_))))
    (define gxc#compile-module
      (lambda _g301471_
        (let ((_g301470_ (let () (declare (not safe)) (##length _g301471_))))
          (cond ((let () (declare (not safe)) (##fx= _g301470_ 1))
                 (apply (lambda (_srcpath297286_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath297286_)))
                        _g301471_))
                ((let () (declare (not safe)) (##fx= _g301470_ 2))
                 (apply (lambda (_srcpath297290_ _opts297291_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath297290_
                             _opts297291_)))
                        _g301471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g301471_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath297243_ _opts297244_)
        (if (let () (declare (not safe)) (string? _srcpath297243_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath297243_)))
        (let ((_outdir297246_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts297244_)))
              (_invoke-gsc?297247_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts297244_)))
              (_gsc-options297248_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts297244_)))
              (_keep-scm?297249_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts297244_)))
              (_verbosity297250_
               (let () (declare (not safe)) (pgetq 'verbose: _opts297244_)))
              (_debug297251_
               (let () (declare (not safe)) (pgetq 'debug: _opts297244_))))
          (if _outdir297246_
              (let ((__tmp301472
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir297246_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp301472))
              '#!void)
          (let ((__tmp301476
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath297243_))
                   (let ((__tmp301477
                          (let ((__tmp301478
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath297243_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp301478))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp301477
                      _opts297244_))))
                (__tmp301475
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp301473
                 (let ((__tmp301474
                        (let ()
                          (declare (not safe))
                          (cons _srcpath297243_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp301474))))
            (declare (not safe))
            (call-with-parameters
             __tmp301476
             gxc#current-compile-output-dir
             _outdir297246_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?297247_
             gxc#current-compile-gsc-options
             _gsc-options297248_
             gxc#current-compile-keep-scm
             _keep-scm?297249_
             gxc#current-compile-verbose
             _verbosity297250_
             gxc#current-compile-debug
             _debug297251_
             gxc#current-compile-timestamp
             __tmp301475
             gxc#current-compile-context
             __tmp301473
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath297259_)
        (let ((_opts297261_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath297259_ _opts297261_))))
    (define gxc#compile-exe
      (lambda _g301480_
        (let ((_g301479_ (let () (declare (not safe)) (##length _g301480_))))
          (cond ((let () (declare (not safe)) (##fx= _g301479_ 1))
                 (apply (lambda (_srcpath297259_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath297259_)))
                        _g301480_))
                ((let () (declare (not safe)) (##fx= _g301479_ 2))
                 (apply (lambda (_srcpath297263_ _opts297264_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath297263_ _opts297264_)))
                        _g301480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g301480_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx297239_ _opts297240_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts297240_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx297239_
               _opts297240_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx297239_
               _opts297240_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx297122_ _opts297123_)
        (letrec ((_generate-stub297125_
                  (lambda (_builtin-modules297235_)
                    (let ((_mod-main297237_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx297122_ 'main))))
                      (write (let ((__tmp301481
                                    (let ((__tmp301482
                                           (let ((__tmp301483
                                                  (let ((__tmp301484
                                                         (let ((__tmp301486
                                                                (let ((__tmp301487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules297235_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp301487)))
                       (__tmp301485
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp301486 __tmp301485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp301484))))
                                             (declare (not safe))
                                             (cons __tmp301483 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp301482))))
                               (declare (not safe))
                               (cons 'define __tmp301481)))
                      (write (let ((__tmp301488
                                    (let ((__tmp301527
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp301489
                                           (let ((__tmp301490
                                                  (let ((__tmp301491
                                                         (let ((__tmp301515
                                                                (let ((__tmp301516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp301517
                                      (let ((__tmp301525
                                             (let ((__tmp301526
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp301526)))
                                            (__tmp301518
                                             (let ((__tmp301519
                                                    (let ((__tmp301520
                                                           (let ((__tmp301521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301522
                                 (let ((__tmp301523
                                        (let ((__tmp301524
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp301524 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp301523))))
                            (declare (not safe))
                            (cons __tmp301522 '()))))
                     (declare (not safe))
                     (cons _mod-main297237_ __tmp301521))))
              (declare (not safe))
              (cons 'apply __tmp301520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301519 '()))))
                                        (declare (not safe))
                                        (cons __tmp301525 __tmp301518))))
                                 (declare (not safe))
                                 (cons '() __tmp301517))))
                          (declare (not safe))
                          (cons 'lambda __tmp301516)))
                       (__tmp301492
                        (let ((__tmp301493
                               (let ((__tmp301494
                                      (let ((__tmp301495
                                             (let ((__tmp301506
                                                    (let ((__tmp301507
                                                           (let ((__tmp301508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301509
                                 (let ((__tmp301510
                                        (let ((__tmp301511
                                               (let ((__tmp301512
                                                      (let ((__tmp301513
                                                             (let ((__tmp301514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp301514 '()))))
                (declare (not safe))
                (cons 'force-output __tmp301513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301512 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp301511))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp301510))))
                            (declare (not safe))
                            (cons __tmp301509 '()))))
                     (declare (not safe))
                     (cons 'void __tmp301508))))
              (declare (not safe))
              (cons 'with-catch __tmp301507)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp301496
                                                    (let ((__tmp301497
                                                           (let ((__tmp301498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301499
                                 (let ((__tmp301500
                                        (let ((__tmp301501
                                               (let ((__tmp301502
                                                      (let ((__tmp301503
                                                             (let ((__tmp301504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp301505
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp301505 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp301504))))
                (declare (not safe))
                (cons __tmp301503 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp301502))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp301501))))
                                   (declare (not safe))
                                   (cons __tmp301500 '()))))
                            (declare (not safe))
                            (cons 'void __tmp301499))))
                     (declare (not safe))
                     (cons 'with-catch __tmp301498))))
              (declare (not safe))
              (cons __tmp301497 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301506
                                                     __tmp301496))))
                                        (declare (not safe))
                                        (cons '() __tmp301495))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp301494))))
                          (declare (not safe))
                          (cons __tmp301493 '()))))
                   (declare (not safe))
                   (cons __tmp301515 __tmp301492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp301491))))
                                             (declare (not safe))
                                             (cons __tmp301490 '()))))
                                      (declare (not safe))
                                      (cons __tmp301527 __tmp301489))))
                               (declare (not safe))
                               (cons 'define __tmp301488)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts297126_
                  (lambda (_libgerbil297233_)
                    (call-with-input-file
                     (string-append _libgerbil297233_ '".ldd")
                     read)))
                 (_replace-extension297127_
                  (lambda (_path297230_ _ext297231_)
                    (string-append
                     (path-strip-extension _path297230_)
                     _ext297231_)))
                 (_not-exclude-module?297128_
                  (lambda (_ctx297226_)
                    (let ((_id-str297228_
                           (symbol->string
                            (##structure-ref
                             _ctx297226_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp301529
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str297228_))))
                            (declare (not safe))
                            (not __tmp301529))
                          (let ((__tmp301528
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str297228_))))
                            (declare (not safe))
                            (not __tmp301528))
                          '#f))))
                 (_not-file-empty?297129_
                  (lambda (_path297224_)
                    (let ((__tmp301530
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path297224_))))
                      (declare (not safe))
                      (not __tmp301530))))
                 (_compile-stub297130_
                  (lambda (_output-scm297137_ _output-bin297138_)
                    (let* ((_gerbil-home297140_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir297142_
                            (path-expand '"lib" _gerbil-home297140_))
                           (_gerbil-staticdir297144_
                            (path-expand '"static" _gerbil-libdir297142_))
                           (_gxlink297146_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir297142_))
                           (_tmp297148_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path297152_
                            (lambda (_f297150_)
                              (path-expand
                               (path-strip-directory _f297150_)
                               _tmp297148_)))
                           (_deps297154_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx297122_)))
                           (_deps297156_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?297128_
                                      _deps297154_)))
                           (_src-deps-scm297158_
                            (map gxc#find-static-module-file _deps297156_))
                           (_src-deps-scm297160_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?297129_
                                      _src-deps-scm297158_)))
                           (_src-deps-scm297162_
                            (map path-expand _src-deps-scm297160_))
                           (_deps-scm297164_
                            (map _tmp-path297152_ _src-deps-scm297162_))
                           (_deps-c297170_
                            (map (lambda (_g297165297167_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension297127_
                                      _g297165297167_
                                      '".c")))
                                 _deps-scm297164_))
                           (_deps-o297176_
                            (map (lambda (_g297171297173_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension297127_
                                      _g297171297173_
                                      '".o")))
                                 _deps-scm297164_))
                           (_src-bin-scm297178_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx297122_)))
                           (_src-bin-scm297180_
                            (path-expand _src-bin-scm297178_))
                           (_bin-scm297182_
                            (let ()
                              (declare (not safe))
                              (_tmp-path297152_ _src-bin-scm297180_)))
                           (_bin-c297184_
                            (let ()
                              (declare (not safe))
                              (_replace-extension297127_
                               _bin-scm297182_
                               '".c")))
                           (_bin-o297186_
                            (let ()
                              (declare (not safe))
                              (_replace-extension297127_
                               _bin-scm297182_
                               '".o")))
                           (_output-bin297188_
                            (path-expand _output-bin297138_))
                           (_output-scm297190_
                            (path-expand _output-scm297137_))
                           (_output-c297192_
                            (let ()
                              (declare (not safe))
                              (_replace-extension297127_
                               _output-scm297190_
                               '".c")))
                           (_output-o297194_
                            (let ()
                              (declare (not safe))
                              (_replace-extension297127_
                               _output-scm297190_
                               '".o")))
                           (_output_-c297196_
                            (let ()
                              (declare (not safe))
                              (_replace-extension297127_
                               _output-scm297190_
                               '"_.c")))
                           (_output_-o297198_
                            (let ()
                              (declare (not safe))
                              (_replace-extension297127_
                               _output-scm297190_
                               '"_.o")))
                           (_gsc-link-opts297200_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts297202_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts297204_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir297144_)))
                           (_output-ld-opts297206_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a297208_
                            (path-expand '"libgerbil.a" _gerbil-libdir297142_))
                           (_libgerbil.so297210_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir297142_))
                           (_libgerbil-ld-opts297212_
                            (if (file-exists? _libgerbil.so297210_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts297126_
                                   _libgerbil.so297210_))
                                (if (file-exists? _libgerbil.a297208_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts297126_
                                       _libgerbil.a297208_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a297208_
                                       _libgerbil.so297210_)))))
                           (_rpath297214_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir297142_)))
                           (_builtin-modules297218_
                            (map (lambda (_mod297216_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod297216_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx297122_ _deps297156_)))))
                      (let ((__tmp301531
                             (lambda ()
                               (let ((__tmp301532
                                      (path-directory _output-bin297188_)))
                                 (declare (not safe))
                                 (create-directory* __tmp301532)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp301531))
                      (let ((__tmp301533
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub297125_
                                  _builtin-modules297218_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm297190_
                         __tmp301533))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp301534
                                   (lambda () (create-directory _tmp297148_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp301534))
                            (for-each
                             copy-file
                             _src-deps-scm297162_
                             _deps-scm297164_)
                            (copy-file _src-bin-scm297180_ _bin-scm297182_)
                            (let ((__tmp301542
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301535
                                   (let ((__tmp301536
                                          (let ((__tmp301537
                                                 (let ((__tmp301538
                                                        (let ((__tmp301539
                                                               (let ((__tmp301540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301541
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm297190_ '()))))
                                (declare (not safe))
                                (cons _bin-scm297182_ __tmp301541))))
                         (declare (not safe))
                         (foldr1 cons __tmp301540 _deps-scm297164_))))
                  (declare (not safe))
                  (foldr1 cons __tmp301539 _gsc-link-opts297200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink297146_
                                                         __tmp301538))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp301537))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp301536))))
                              (declare (not safe))
                              (gxc#invoke __tmp301542 __tmp301535))
                            (let ((__tmp301550
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301543
                                   (let ((__tmp301544
                                          (let ((__tmp301545
                                                 (let ((__tmp301546
                                                        (let ((__tmp301547
                                                               (let ((__tmp301548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301549
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c297196_ '()))))
                                (declare (not safe))
                                (cons _output-c297192_ __tmp301549))))
                         (declare (not safe))
                         (cons _bin-c297184_ __tmp301548))))
                  (declare (not safe))
                  (foldr1 cons __tmp301547 _deps-c297170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp301546
                                                           _gsc-static-opts297204_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp301545
                                                    _gsc-cc-opts297202_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp301544))))
                              (declare (not safe))
                              (gxc#invoke __tmp301550 __tmp301543))
                            (let ((__tmp301563
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp301551
                                   (let ((__tmp301552
                                          (let ((__tmp301553
                                                 (let ((__tmp301554
                                                        (let ((__tmp301555
                                                               (let ((__tmp301556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301557
                                     (let ((__tmp301558
                                            (let ((__tmp301559
                                                   (let ((__tmp301560
                                                          (let ((__tmp301561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301562
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts297212_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp301562))))
                    (declare (not safe))
                    (cons _gerbil-libdir297142_ __tmp301561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp301560))))
                                              (declare (not safe))
                                              (cons _rpath297214_
                                                    __tmp301559))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp301558
                                               _output-ld-opts297206_))))
                                (declare (not safe))
                                (cons _output_-o297198_ __tmp301557))))
                         (declare (not safe))
                         (cons _output-o297194_ __tmp301556))))
                  (declare (not safe))
                  (cons _bin-o297186_ __tmp301555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp301554
                                                           _deps-o297176_))))
                                            (declare (not safe))
                                            (cons _output-bin297188_
                                                  __tmp301553))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp301552))))
                              (declare (not safe))
                              (gxc#invoke __tmp301563 __tmp301551))
                            (for-each
                             delete-file
                             (let ((__tmp301564
                                    (let ((__tmp301565
                                           (let ((__tmp301566
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o297198_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o297194_
                                                   __tmp301566))))
                                      (declare (not safe))
                                      (cons _output_-c297196_ __tmp301565))))
                               (declare (not safe))
                               (cons _output-c297192_ __tmp301564)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp297148_)))
                          '#!void)))))
          (let* ((_output-bin297132_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx297122_ _opts297123_)))
                 (_output-scm297134_
                  (string-append _output-bin297132_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub297130_ _output-scm297134_ _output-bin297132_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm297134_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx296947_ _opts296948_)
        (letrec ((_reset-declare296950_
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
                 (_generate-stub296951_
                  (lambda (_deps297113_)
                    (let ((_mod-main297115_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx296947_ 'main)))
                          (_reset-decl297116_
                           (let ()
                             (declare (not safe))
                             (_reset-declare296950_)))
                          (_user-decl297117_
                           (let ()
                             (declare (not safe))
                             (_user-declare296952_))))
                      (for-each
                       (lambda (_dep297119_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl297116_)
                         (newline)
                         (if _user-decl297117_
                             (begin (write _user-decl297117_) (newline))
                             '#!void)
                         (write (let ((__tmp301567
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep297119_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp301567)))
                         (newline))
                       _deps297113_)
                      (write (let ((__tmp301568
                                    (let ((__tmp301581
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp301569
                                           (let ((__tmp301577
                                                  (let ((__tmp301578
                                                         (let ((__tmp301579
                                                                (let ((__tmp301580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp301580))))
                   (declare (not safe))
                   (cons __tmp301579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp301578)))
                                                 (__tmp301570
                                                  (let ((__tmp301571
                                                         (let ((__tmp301572
                                                                (let ((__tmp301573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp301574
                                      (let ((__tmp301575
                                             (let ((__tmp301576
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp301576 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp301575))))
                                 (declare (not safe))
                                 (cons __tmp301574 '()))))
                          (declare (not safe))
                          (cons _mod-main297115_ __tmp301573))))
                   (declare (not safe))
                   (cons 'apply __tmp301572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp301571 '()))))
                                             (declare (not safe))
                                             (cons __tmp301577 __tmp301570))))
                                      (declare (not safe))
                                      (cons __tmp301581 __tmp301569))))
                               (declare (not safe))
                               (cons 'define __tmp301568)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare296952_
                  (lambda ()
                    (let* ((_gsc-opts297018_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts296948_)))
                           (_gsc-prelude297020_
                            (if _gsc-opts297018_
                                (member '"-prelude" _gsc-opts297018_)
                                '#f))
                           (_gsc-prelude297022_
                            (if _gsc-prelude297020_
                                (read (open-input-string
                                       (cadr _gsc-prelude297020_)))
                                '#f)))
                      (let _lp297025_ ((_rest297027_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude297022_ '())))
                                       (_user-decls297028_ '()))
                        (let* ((_rest297029297037_ _rest297027_)
                               (_else297031297045_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls297028_))
                                      '#f
                                      (let ((__tmp301582
                                             (reverse _user-decls297028_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp301582)))))
                               (_K297033297101_
                                (lambda (_rest297048_ _expr297049_)
                                  (let* ((_expr297050297062_ _expr297049_)
                                         (_else297053297070_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp297025_
                                               _rest297048_
                                               _user-decls297028_)))))
                                    (let ((_K297058297091_
                                           (lambda (_decls297089_)
                                             (let ((__tmp301583
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls297028_
                                                              _decls297089_))))
                                               (declare (not safe))
                                               (_lp297025_
                                                _rest297048_
                                                __tmp301583))))
                                          (_K297055297076_
                                           (lambda (_exprs297074_)
                                             (let ((__tmp301584
                                                    (append _exprs297074_
                                                            _rest297048_)))
                                               (declare (not safe))
                                               (_lp297025_
                                                __tmp301584
                                                _user-decls297028_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr297050297062_))
                                          (let ((_tl297060297096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr297050297062_)))
                                                (_hd297059297094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr297050297062_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd297059297094_
                                                         'declare))
                                                (let ((_decls297099_
                                                       _tl297060297096_))
                                                  (declare (not safe))
                                                  (_K297058297091_
                                                   _decls297099_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd297059297094_
                                                             'begin))
                                                    (let ((_exprs297084_
                                                           _tl297060297096_))
                                                      (declare (not safe))
                                                      (_K297055297076_
                                                       _exprs297084_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else297053297070_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else297053297070_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest297029297037_))
                              (let ((_hd297034297104_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest297029297037_)))
                                    (_tl297035297106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest297029297037_))))
                                (let* ((_expr297109_ _hd297034297104_)
                                       (_rest297111_ _tl297035297106_))
                                  (declare (not safe))
                                  (_K297033297101_ _rest297111_ _expr297109_)))
                              (let ()
                                (declare (not safe))
                                (_else297031297045_))))))))
                 (_compile-stub296953_
                  (lambda (_output-scm296960_ _output-bin296961_)
                    (let* ((_gerbil-home296963_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir296965_
                            (path-expand '"lib" _gerbil-home296963_))
                           (_runtime296967_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp296969_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home296963_))
                           (_include-gambit-sharp296971_
                            (string-append
                             '"(include \""
                             _gambit-sharp296969_
                             '"\")"))
                           (_bin-scm296973_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx296947_)))
                           (_deps296975_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx296947_)))
                           (_deps296977_
                            (map gxc#find-static-module-file _deps296975_))
                           (_deps296982_
                            (let ((__tmp301585
                                   (lambda (_$obj296979_)
                                     (let ((__tmp301586
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj296979_))))
                                       (declare (not safe))
                                       (not __tmp301586)))))
                              (declare (not safe))
                              (filter __tmp301585 _deps296977_)))
                           (_deps296986_
                            (let ((__tmp301587
                                   (lambda (_f296984_)
                                     (let ((__tmp301588
                                            (member _f296984_
                                                    _runtime296967_)))
                                       (declare (not safe))
                                       (not __tmp301588)))))
                              (declare (not safe))
                              (filter __tmp301587 _deps296982_)))
                           (_output-base296988_
                            (string-append
                             (path-strip-extension _output-scm296960_)))
                           (_output-c296990_
                            (string-append _output-base296988_ '".c"))
                           (_output-o296992_
                            (string-append _output-base296988_ '".o"))
                           (_output-c_296994_
                            (string-append _output-base296988_ '"_.c"))
                           (_output-o_296996_
                            (string-append _output-base296988_ '"_.o"))
                           (_gsc-link-opts296998_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts297000_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts297002_
                            (let ((__tmp301589
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir296965_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp301589)))
                           (_output-ld-opts297004_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros297006_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp301591
                                       (let ((__tmp301592
                                              (let ((__tmp301593
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp296971_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp301593))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp301592))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp301591))
                                (let ((__tmp301590
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp296971_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp301590))))
                           (_gsc-link-opts297008_
                            (append _gsc-link-opts296998_
                                    _gsc-gx-macros297006_))
                           (_rpath297010_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir296965_)))
                           (_default-ld-options297012_
                            (let ((__tmp301594
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp301594))))
                      (let ((__tmp301595
                             (lambda ()
                               (let ((__tmp301596
                                      (path-directory _output-bin296961_)))
                                 (declare (not safe))
                                 (create-directory* __tmp301596)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp301595))
                      (let ((__tmp301597
                             (lambda ()
                               (let ((__tmp301598
                                      (let ((__tmp301599
                                             (let ((__tmp301600
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm296973_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp301600
                                                       _deps296986_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp301599
                                                _runtime296967_))))
                                 (declare (not safe))
                                 (_generate-stub296951_ __tmp301598)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm296960_
                         __tmp301597))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp301606
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301601
                                   (let ((__tmp301602
                                          (let ((__tmp301603
                                                 (let ((__tmp301604
                                                        (let ((__tmp301605
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm296960_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp301605 _gsc-link-opts297008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_296994_
                                                         __tmp301604))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp301603))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp301602))))
                              (declare (not safe))
                              (gxc#invoke __tmp301606 __tmp301601))
                            (let ((__tmp301612
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301607
                                   (let ((__tmp301608
                                          (let ((__tmp301609
                                                 (let ((__tmp301610
                                                        (let ((__tmp301611
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_296994_ '()))))
                  (declare (not safe))
                  (cons _output-c296990_ __tmp301611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp301610
                                                           _gsc-static-opts297002_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp301609
                                                    _gsc-cc-opts297000_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp301608))))
                              (declare (not safe))
                              (gxc#invoke __tmp301612 __tmp301607))
                            (let ((__tmp301622
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp301613
                                   (let ((__tmp301614
                                          (let ((__tmp301615
                                                 (let ((__tmp301616
                                                        (let ((__tmp301617
                                                               (let ((__tmp301618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301619
                                     (let ((__tmp301620
                                            (let ((__tmp301621
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options297012_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir296965_
                                                    __tmp301621))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp301620))))
                                (declare (not safe))
                                (cons _rpath297010_ __tmp301619))))
                         (declare (not safe))
                         (foldr1 cons __tmp301618 _output-ld-opts297004_))))
                  (declare (not safe))
                  (cons _output-o_296996_ __tmp301617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o296992_
                                                         __tmp301616))))
                                            (declare (not safe))
                                            (cons _output-bin296961_
                                                  __tmp301615))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp301614))))
                              (declare (not safe))
                              (gxc#invoke __tmp301622 __tmp301613)))
                          '#!void)))))
          (let* ((_output-bin296955_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx296947_ _opts296948_)))
                 (_output-scm296957_
                  (string-append _output-bin296955_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub296953_ _output-scm296957_ _output-bin296955_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm296957_))))))
    (define gxc#find-export-binding
      (lambda (_ctx296897_ _id296898_)
        (let ((_$e296944_
               (let ((__tmp301624
                      (lambda (_e296899296901_)
                        (let* ((_g296903296913_ _e296899296901_)
                               (_else296905296921_ (lambda () '#f))
                               (_K296907296925_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g296903296913_
                                 'gx#module-export::t))
                              (let* ((_e296908296928_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g296903296913_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e296909296931_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g296903296913_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e296910296934_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g296903296913_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e296910296934_ '0))
                                    (let ((_e296911296937_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g296903296913_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g296939296941_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g296939296941_
                                                    _id296898_)))
                                           _e296911296937_)
                                          (let ()
                                            (declare (not safe))
                                            (_K296907296925_))
                                          (let ()
                                            (declare (not safe))
                                            (_else296905296921_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else296905296921_))))
                              (let ()
                                (declare (not safe))
                                (_else296905296921_))))))
                     (__tmp301623
                      (##structure-ref
                       _ctx296897_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp301624 __tmp301623))))
          (if _$e296944_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e296944_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx296889_ _id296890_)
        (let ((_$e296892_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx296889_ _id296890_))))
          (if _$e296892_
              ((lambda (_bind296895_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind296895_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id296890_)))
                 (##structure-ref _bind296895_ '1 gx#binding::t '#f))
               _$e296892_)
              (let ((__tmp301625
                     (##structure-ref
                      _ctx296889_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp301625
                 _id296890_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx296776_)
        (letrec* ((_ht296778_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template296779_
                   (lambda (_in296841_ _phi296842_)
                     (let ((_iphi296844_
                            (fx+ _phi296842_
                                 (##direct-structure-ref
                                  _in296841_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports296845_
                            (##structure-ref
                             (##direct-structure-ref
                              _in296841_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp296847_ ((_rest296849_ _imports296845_)
                                        (_r296850_ '()))
                         (let* ((_rest296851296859_ _rest296849_)
                                (_else296853296867_ (lambda () _r296850_))
                                (_K296855296877_
                                 (lambda (_rest296870_ _in296871_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in296871_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi296844_))
                                           (let ((__tmp301632
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in296871_
                                                          _r296850_))))
                                             (declare (not safe))
                                             (_lp296847_
                                              _rest296870_
                                              __tmp301632))
                                           (let ()
                                             (declare (not safe))
                                             (_lp296847_
                                              _rest296870_
                                              _r296850_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in296871_
                                              'gx#module-import::t))
                                           (let ((_iphi296873_
                                                  (fx+ _phi296842_
                                                       (##direct-structure-ref
                                                        _in296871_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi296873_))
                                                 (let ((__tmp301630
                                                        (let ((__tmp301631
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in296871_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp301631 _r296850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp296847_
                                                    _rest296870_
                                                    __tmp301630))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp296847_
                                                    _rest296870_
                                                    _r296850_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in296871_
                                                  'gx#import-set::t))
                                               (let ((_xphi296875_
                                                      (fx+ _iphi296844_
                                                           (##direct-structure-ref
                                                            _in296871_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi296875_))
                                                     (let ((__tmp301628
                                                            (let ((__tmp301629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in296871_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp301629 _r296850_))))
               (declare (not safe))
               (_lp296847_ _rest296870_ __tmp301628))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi296875_)
                                                         (let ((__tmp301626
                                                                (let ((__tmp301627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template296779_
                                  _in296871_
                                  _iphi296844_))))
                          (declare (not safe))
                          (foldl1 cons _r296850_ __tmp301627))))
                   (declare (not safe))
                   (_lp296847_ _rest296870_ __tmp301626))
                 (let ()
                   (declare (not safe))
                   (_lp296847_ _rest296870_ _r296850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp296847_
                                                  _rest296870_
                                                  _r296850_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest296851296859_))
                               (let ((_hd296856296880_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest296851296859_)))
                                     (_tl296857296882_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest296851296859_))))
                                 (let* ((_in296885_ _hd296856296880_)
                                        (_rest296887_ _tl296857296882_))
                                   (declare (not safe))
                                   (_K296855296877_ _rest296887_ _in296885_)))
                               (let ()
                                 (declare (not safe))
                                 (_else296853296867_))))))))
                  (_find-deps296780_
                   (lambda (_rest296787_ _deps296788_)
                     (let* ((_rest296789296797_ _rest296787_)
                            (_else296791296805_ (lambda () _deps296788_))
                            (_K296793296829_
                             (lambda (_rest296808_ _hd296809_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd296809_
                                      'gx#module-context::t))
                                   (let ((_id296811_
                                          (##structure-ref
                                           _hd296809_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports296812_
                                          (##structure-ref
                                           _hd296809_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht296778_ _id296811_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps296780_
                                            _rest296808_
                                            _deps296788_))
                                         (let ((_$e296814_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd296809_))))
                                           (if _$e296814_
                                               ((lambda (_pre296817_)
                                                  (let ((_xdeps296819_
                                                         (let ((__tmp301645
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre296817_ _imports296812_))))
                   (declare (not safe))
                   (_find-deps296780_ __tmp301645 _deps296788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht296778_
                                                       _id296811_
                                                       _hd296809_))
                                                    (let ((__tmp301646
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd296809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps296819_))))
              (declare (not safe))
              (_find-deps296780_ _rest296808_ __tmp301646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e296814_)
                                               (let ((_xdeps296821_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps296780_
                                                         _imports296812_
                                                         _deps296788_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht296778_
                                                    _id296811_
                                                    _hd296809_))
                                                 (let ((__tmp301644
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd296809_
                                                                _xdeps296821_))))
                                                   (declare (not safe))
                                                   (_find-deps296780_
                                                    _rest296808_
                                                    __tmp301644)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd296809_
                                          'gx#prelude-context::t))
                                       (let ((_id296823_
                                              (##structure-ref
                                               _hd296809_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht296778_
                                                _id296823_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps296780_
                                                _rest296808_
                                                _deps296788_))
                                             (let ((_xdeps296825_
                                                    (let ((__tmp301642
                                                           (##structure-ref
                                                            _hd296809_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps296780_
                                                       __tmp301642
                                                       _deps296788_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht296778_
                                                      _id296823_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps296780_
                                                      _rest296808_
                                                      _xdeps296825_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht296778_
                                                        _id296823_
                                                        _hd296809_))
                                                     (let ((__tmp301643
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd296809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps296825_))))
               (declare (not safe))
               (_find-deps296780_ _rest296808_ __tmp301643)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd296809_
                                              'gx#module-import::t))
                                           (if (let ((__tmp301641
                                                      (##direct-structure-ref
                                                       _hd296809_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp301641))
                                               (let ((__tmp301639
                                                      (let ((__tmp301640
                                                             (##direct-structure-ref
                                                              _hd296809_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp301640
                                                              _rest296808_))))
                                                 (declare (not safe))
                                                 (_find-deps296780_
                                                  __tmp301639
                                                  _deps296788_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps296780_
                                                  _rest296808_
                                                  _deps296788_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd296809_
                                                  'gx#module-export::t))
                                               (let ((__tmp301637
                                                      (let ((__tmp301638
                                                             (##direct-structure-ref
                                                              _hd296809_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp301638
                                                              _rest296808_))))
                                                 (declare (not safe))
                                                 (_find-deps296780_
                                                  __tmp301637
                                                  _deps296788_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd296809_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp301636
                                                              (##direct-structure-ref
                                                               _hd296809_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp301636))
                                                       (let ((__tmp301634
                                                              (let ((__tmp301635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd296809_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp301635 _rest296808_))))
                 (declare (not safe))
                 (_find-deps296780_ __tmp301634 _deps296788_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd296809_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps296827_
                           (let ()
                             (declare (not safe))
                             (_import-set-template296779_ _hd296809_ '0)))
                          (__tmp301633
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest296808_ _xdeps296827_))))
                     (declare (not safe))
                     (_find-deps296780_ __tmp301633 _deps296788_))
                   (let ()
                     (declare (not safe))
                     (_find-deps296780_ _rest296808_ _deps296788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd296809_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest296789296797_))
                           (let ((_hd296794296832_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest296789296797_)))
                                 (_tl296795296834_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest296789296797_))))
                             (let* ((_hd296837_ _hd296794296832_)
                                    (_rest296839_ _tl296795296834_))
                               (declare (not safe))
                               (_K296793296829_ _rest296839_ _hd296837_)))
                           (let ()
                             (declare (not safe))
                             (_else296791296805_)))))))
          (reverse (let ((__tmp301647
                          (let ((__tmp301648
                                 (let ((_$e296782_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx296776_))))
                                   (if _$e296782_
                                       ((lambda (_pre296785_)
                                          (let ((__tmp301649
                                                 (##structure-ref
                                                  _ctx296776_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre296785_ __tmp301649)))
                                        _$e296782_)
                                       (##structure-ref
                                        _ctx296776_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps296780_ __tmp301648 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp301647))))))
    (define gxc#find-static-module-file
      (lambda (_ctx296707_)
        (let* ((_context-id296709_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx296707_
                       'gx#module-context::t))
                    (##structure-ref _ctx296707_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx296707_)))
               (_scm296711_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id296709_))
                 '".scm"))
               (_dirs296713_ (gx#current-expander-module-library-path))
               (_dirs296719_
                (let ((_user-libpath296715_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath296715_
                      (let ((_user-libpath296717_
                             (path-expand '"lib" _user-libpath296715_)))
                        (if (member _user-libpath296717_ _dirs296713_)
                            _dirs296713_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath296717_ _dirs296713_))))
                      _dirs296713_)))
               (_dirs296728_
                (let ((_$e296721_ (gxc#current-compile-output-dir)))
                  (if _$e296721_
                      ((lambda (_g296723296725_)
                         (let ()
                           (declare (not safe))
                           (cons _g296723296725_ _dirs296719_)))
                       _$e296721_)
                      _dirs296719_)))
               (_dirs296734_
                (map (lambda (_g296729296731_)
                       (path-expand '"static" _g296729296731_))
                     _dirs296728_)))
          (let _lp296737_ ((_rest296739_ _dirs296734_))
            (let* ((_rest296740296748_ _rest296739_)
                   (_else296742296756_
                    (lambda ()
                      (let ((__tmp301650
                             (##structure-ref
                              _ctx296707_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp301650
                         _scm296711_))))
                   (_K296744296764_
                    (lambda (_rest296759_ _dir296760_)
                      (let ((_path296762_
                             (path-expand _scm296711_ _dir296760_)))
                        (if (file-exists? _path296762_)
                            _path296762_
                            (let ()
                              (declare (not safe))
                              (_lp296737_ _rest296759_)))))))
              (if (let () (declare (not safe)) (##pair? _rest296740296748_))
                  (let ((_hd296745296767_
                         (let ()
                           (declare (not safe))
                           (##car _rest296740296748_)))
                        (_tl296746296769_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296740296748_))))
                    (let* ((_dir296772_ _hd296745296767_)
                           (_rest296774_ _tl296746296769_))
                      (declare (not safe))
                      (_K296744296764_ _rest296774_ _dir296772_)))
                  (let () (declare (not safe)) (_else296742296756_))))))))
    (define gxc#file-empty?
      (lambda (_path296705_)
        (let ((__tmp301651 (file-info-size (file-info _path296705_ '#t))))
          (declare (not safe))
          (zero? __tmp301651))))
    (define gxc#compile-top-module
      (lambda (_ctx296694_)
        (let ((__tmp301655
               (lambda ()
                 (let ((__tmp301656
                        (##structure-ref
                         _ctx296694_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp301656))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp301657
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx296694_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp301657))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx296694_))
                 (if (let ((__tmp301660
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx296694_))))
                       (declare (not safe))
                       (null? __tmp301660))
                     (let* ((_thr1296699_
                             (let ((__tmp301658
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx296694_)))))
                               (declare (not safe))
                               (spawn __tmp301658)))
                            (_thr2296702_
                             (let ((__tmp301659
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx296694_)))))
                               (declare (not safe))
                               (spawn __tmp301659))))
                       (let () (declare (not safe)) (gxc#join! _thr1296699_))
                       (let () (declare (not safe)) (gxc#join! _thr2296702_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx296694_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx296694_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx296694_))
                     '#!void)))
              (__tmp301654
               (let ((__obj301459
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj301459)
                 __obj301459))
              (__tmp301653 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp301652 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp301655
           gx#current-expander-context
           _ctx296694_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp301654
           gxc#current-compile-runtime-sections
           __tmp301653
           gxc#current-compile-runtime-names
           __tmp301652))))
    (define gxc#collect-bindings
      (lambda (_ctx296692_)
        (let ((__tmp301661
               (##structure-ref _ctx296692_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp301661))))
    (define gxc#compile-runtime-code
      (lambda (_ctx296638_)
        (letrec ((_compile1296640_
                  (lambda (_ctx296681_)
                    (let* ((_code296683_
                            (##structure-ref
                             _ctx296681_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt296687_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code296683_))
                                (let ((_idstr296685_
                                       (let ((__tmp301662
                                              (##structure-ref
                                               _ctx296681_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp301662))))
                                  (string-append _idstr296685_ '"__0"))
                                '#f)))
                      (if _rt296687_
                          (begin
                            (let ((__tmp301663
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp301663 _ctx296681_ _rt296687_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code296642_
                               _ctx296681_
                               _code296683_)))
                          (let ((_path296690_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx296681_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path296690_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code296643_
                         _ctx296681_
                         _code296683_
                         _rt296687_)))))
                 (_context-timestamp296641_
                  (lambda (_ctx296679_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx296679_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code296642_
                  (lambda (_ctx296661_ _code296662_)
                    (let* ((_lifts296664_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code296667_
                            (let ((__tmp301666
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code296662_))))
                                  (__tmp301665
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp301664
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp301666
                               gx#current-expander-context
                               _ctx296661_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts296664_
                               gxc#current-compile-marks
                               __tmp301665
                               gxc#current-compile-identifiers
                               __tmp301664)))
                           (_runtime-code296669_
                            (if (let ((__tmp301670 (unbox _lifts296664_)))
                                  (declare (not safe))
                                  (null? __tmp301670))
                                _runtime-code296667_
                                (let ((__tmp301667
                                       (let ((__tmp301669
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code296667_
                                                      '())))
                                             (__tmp301668
                                              (reverse (unbox _lifts296664_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp301669
                                                 __tmp301668))))
                                  (declare (not safe))
                                  (cons 'begin __tmp301667))))
                           (_runtime-code296671_
                            (let ((__tmp301671
                                   (let ((__tmp301673
                                          (let ((__tmp301674
                                                 (let ((__tmp301677
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp296641_
                                                           _ctx296661_)))
                                                       (__tmp301675
                                                        (let ((__tmp301676
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp301676
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp301677
                                                         __tmp301675))))
                                            (declare (not safe))
                                            (cons 'define __tmp301674)))
                                         (__tmp301672
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code296669_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301673 __tmp301672))))
                              (declare (not safe))
                              (cons 'begin __tmp301671)))
                           (_scm0296673_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx296661_
                               '0
                               '".scm"))))
                      (let ((_scms296676_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx296661_))))
                        (let ((__tmp301678
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0296673_
                                    _runtime-code296671_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp301678
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms296676_)
                            (delete-file _scms296676_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0296673_
                           '" => "
                           _scms296676_))
                        (copy-file _scm0296673_ _scms296676_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0296673_))))))
                 (_generate-loader-code296643_
                  (lambda (_ctx296650_ _code296651_ _rt296652_)
                    (let* ((_loader-code296655_
                            (let ((__tmp301679
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code296651_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp301679
                               gx#current-expander-context
                               _ctx296650_)))
                           (_loader-code296657_
                            (if _rt296652_
                                (let ((__tmp301680
                                       (let ((__tmp301681
                                              (let ((__tmp301682
                                                     (let ((__tmp301683
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt296652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp301683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301682 '()))))
                                         (declare (not safe))
                                         (cons _loader-code296655_
                                               __tmp301681))))
                                  (declare (not safe))
                                  (cons 'begin __tmp301680))
                                _loader-code296655_)))
                      (let ((__tmp301684
                             (lambda ()
                               (let ((__tmp301685
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx296650_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp301685
                                  _loader-code296657_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp301684
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules296645_
                 (let ((__tmp301686
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx296638_))))
                   (declare (not safe))
                   (cons _ctx296638_ __tmp301686))))
            (for-each
             (lambda (_ctx296647_)
               (let ((__tmp301687
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1296640_ _ctx296647_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp301687
                  gxc#current-compile-decls
                  '())))
             _all-modules296645_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx296535_)
        (letrec ((_compile-ssi296537_
                  (lambda (_code296608_)
                    (let* ((_path296610_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx296535_
                               '#f
                               '".ssi")))
                           (_prelude296621_
                            (let* ((_super296612_
                                    (##structure-ref
                                     _ctx296535_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e296614_
                                    (##structure-ref
                                     _super296612_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e296614_
                                  ((lambda (_g296616296618_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g296616296618_)))
                                   _$e296614_)
                                  ':<root>)))
                           (_ns296623_
                            (##structure-ref
                             _ctx296535_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr296625_
                            (symbol->string
                             (##structure-ref
                              _ctx296535_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg296632_
                            (let ((_$e296627_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr296625_ '#\/))))
                              (if _$e296627_
                                  ((lambda (_x296630_)
                                     (string->symbol
                                      (substring _idstr296625_ '0 _x296630_)))
                                   _$e296627_)
                                  '#f)))
                           (_rt296634_
                            (let ((__tmp301688
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp301688 _ctx296535_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path296610_))
                      (let ((__tmp301689
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude296621_))
                               (if _pkg296632_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg296632_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns296623_))
                               (newline)
                               (pretty-print _code296608_)
                               (if _rt296634_
                                   (pretty-print
                                    (let ((__tmp301690
                                           (let ((__tmp301694
                                                  (let ((__tmp301695
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp301695)))
                                                 (__tmp301691
                                                  (let ((__tmp301692
                                                         (let ((__tmp301693
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt296634_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp301693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp301692 '()))))
                                             (declare (not safe))
                                             (cons __tmp301694 __tmp301691))))
                                      (declare (not safe))
                                      (cons '%#call __tmp301690)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path296610_
                         __tmp301689)))))
                 (_compile-phi296538_
                  (lambda (_part296548_)
                    (let* ((_part296549296562_ _part296548_)
                           (_E296551296566_
                            (lambda ()
                              (error '"No clause matching"
                                     _part296549296562_)))
                           (_K296552296577_
                            (lambda (_code296569_
                                     _n296570_
                                     _phi296571_
                                     _phi-ctx296572_)
                              (let* ((_code296575_
                                      (let ((__tmp301696
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code296569_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp301696
                                         gx#current-expander-context
                                         _phi-ctx296572_
                                         gx#current-expander-phi
                                         _phi296571_)))
                                     (__tmp301697
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx296535_
                                         _n296570_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp301697
                                 _code296575_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part296549296562_))
                          (let ((_hd296553296580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part296549296562_)))
                                (_tl296554296582_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part296549296562_))))
                            (let ((_phi-ctx296585_ _hd296553296580_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl296554296582_))
                                  (let ((_hd296555296587_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl296554296582_)))
                                        (_tl296556296589_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl296554296582_))))
                                    (let ((_phi296592_ _hd296555296587_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl296556296589_))
                                          (let ((_hd296557296594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl296556296589_)))
                                                (_tl296558296596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl296556296589_))))
                                            (let ((_n296599_ _hd296557296594_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl296558296596_))
                                                  (let ((_hd296559296601_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl296558296596_)))
                                                        (_tl296560296603_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl296558296596_))))
                                                    (let ((_code296606_
                                                           _hd296559296601_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl296560296603_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K296552296577_
                                                             _code296606_
                                                             _n296599_
                                                             _phi296592_
                                                             _phi-ctx296585_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E296551296566_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E296551296566_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E296551296566_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E296551296566_)))))
                          (let () (declare (not safe)) (_E296551296566_)))))))
          (let ((_g301698_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx296535_))))
            (begin
              (let ((_g301699_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g301698_)
                           (##vector-length _g301698_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g301699_ 2)))
                    (error "Context expects 2 values" _g301699_)))
              (let ((_ssi-code296540_
                     (let () (declare (not safe)) (##vector-ref _g301698_ 0)))
                    (_phi-code296541_
                     (let () (declare (not safe)) (##vector-ref _g301698_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi296537_ _ssi-code296540_))
                  (let ((_threads296546_
                         (map (lambda (_code296543_)
                                (let ((__tmp301700
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi296538_
                                            _code296543_)))))
                                  (declare (not safe))
                                  (spawn __tmp301700)))
                              _phi-code296541_)))
                    (for-each gxc#join! _threads296546_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx296518_)
        (let* ((_path296520_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx296518_ '#f '".ssxi.ss")))
               (_code296522_
                (let ((__tmp301701
                       (##structure-ref
                        _ctx296518_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp301701)))
               (_idstr296524_
                (symbol->string
                 (##structure-ref _ctx296518_ '1 gx#expander-context::t '#f)))
               (_pkg296531_
                (let ((_$e296526_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr296524_ '#\/))))
                  (if _$e296526_
                      ((lambda (_x296529_)
                         (string->symbol
                          (substring _idstr296524_ '0 _x296529_)))
                       _$e296526_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path296520_))
          (let ((__tmp301702
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg296531_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg296531_))
                       '#!void)
                   (newline)
                   (pretty-print _code296522_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path296520_ __tmp301702)))))
    (define gxc#generate-meta-code
      (lambda (_ctx296511_)
        (let* ((_state296513_
                (let ((__obj301460
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj301460 _ctx296511_)
                  __obj301460))
               (_ssi-code296515_
                (let ((__tmp301703
                       (##structure-ref
                        _ctx296511_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp301703 _state296513_))))
          (values _ssi-code296515_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state296513_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx296504_)
        (let ((_lifts296506_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp301706
                 (lambda ()
                   (let ((_code296509_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx296504_))))
                     (if (let ((__tmp301710 (unbox _lifts296506_)))
                           (declare (not safe))
                           (null? __tmp301710))
                         _code296509_
                         (let ((__tmp301707
                                (let ((__tmp301709
                                       (let ()
                                         (declare (not safe))
                                         (cons _code296509_ '())))
                                      (__tmp301708
                                       (reverse (unbox _lifts296506_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp301709 __tmp301708))))
                           (declare (not safe))
                           (cons 'begin __tmp301707))))))
                (__tmp301705
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp301704
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp301706
             gxc#current-compile-lift
             _lifts296506_
             gxc#current-compile-marks
             __tmp301705
             gxc#current-compile-identifiers
             __tmp301704)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx296500_)
        (let ((_modules296502_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp301711
                 (##structure-ref _ctx296500_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp301711 _modules296502_))
          (reverse (unbox _modules296502_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path296483_ _code296484_ _phi?296485_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path296483_))
        (let ((__tmp301712
               (lambda ()
                 (pretty-print
                  (let ((__tmp301713
                         (let ((__tmp301720
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp301714
                                (let ((__tmp301719
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp301715
                                       (let ((__tmp301718
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp301716
                                              (let ((__tmp301717
                                                     (if _phi?296485_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp301717))))
                                         (declare (not safe))
                                         (cons __tmp301718 __tmp301716))))
                                  (declare (not safe))
                                  (cons __tmp301719 __tmp301715))))
                           (declare (not safe))
                           (cons __tmp301720 __tmp301714))))
                    (declare (not safe))
                    (cons 'declare __tmp301713)))
                 (pretty-print _code296484_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path296483_ __tmp301712))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path296483_ _phi?296485_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path296483_))))
    (define gxc#compile-scm-file__0
      (lambda (_path296491_ _code296492_)
        (let ((_phi?296494_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path296491_ _code296492_ _phi?296494_))))
    (define gxc#compile-scm-file
      (lambda _g301722_
        (let ((_g301721_ (let () (declare (not safe)) (##length _g301722_))))
          (cond ((let () (declare (not safe)) (##fx= _g301721_ 2))
                 (apply (lambda (_path296491_ _code296492_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path296491_
                             _code296492_)))
                        _g301722_))
                ((let () (declare (not safe)) (##fx= _g301721_ 3))
                 (apply (lambda (_path296496_ _code296497_ _phi?296498_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path296496_
                             _code296497_
                             _phi?296498_)))
                        _g301722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g301722_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?296384_)
        (let _lp296386_ ((_rest296388_ (gxc#current-compile-gsc-options))
                         (_opts296389_ '()))
          (let* ((_rest296390296410_ _rest296388_)
                 (_else296394296418_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?296384_))
                             (gxc#current-compile-debug))
                        (let ((__tmp301723
                               (let ((__tmp301724 (reverse _opts296389_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp301724))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp301723))
                        (reverse _opts296389_)))))
            (let ((_K296404296461_
                   (lambda (_rest296459_)
                     (let ()
                       (declare (not safe))
                       (_lp296386_ _rest296459_ _opts296389_))))
                  (_K296399296443_
                   (lambda (_rest296441_)
                     (let ()
                       (declare (not safe))
                       (_lp296386_ _rest296441_ _opts296389_))))
                  (_K296396296425_
                   (lambda (_rest296422_ _opt296423_)
                     (let ((__tmp301725
                            (let ()
                              (declare (not safe))
                              (cons _opt296423_ _opts296389_))))
                       (declare (not safe))
                       (_lp296386_ _rest296422_ __tmp301725)))))
              (if (let () (declare (not safe)) (##pair? _rest296390296410_))
                  (let ((_tl296406296466_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296390296410_)))
                        (_hd296405296464_
                         (let ()
                           (declare (not safe))
                           (##car _rest296390296410_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd296405296464_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl296406296466_))
                            (let* ((_tl296408296469_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl296406296466_)))
                                   (_rest296472_ _tl296408296469_))
                              (declare (not safe))
                              (_K296404296461_ _rest296472_))
                            (let ((_opt296433_ _hd296405296464_)
                                  (_rest296435_ _tl296406296466_))
                              (let ()
                                (declare (not safe))
                                (_K296396296425_ _rest296435_ _opt296433_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd296405296464_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl296406296466_))
                                (let* ((_tl296403296451_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl296406296466_)))
                                       (_rest296454_ _tl296403296451_))
                                  (declare (not safe))
                                  (_K296399296443_ _rest296454_))
                                (let ((_opt296433_ _hd296405296464_)
                                      (_rest296435_ _tl296406296466_))
                                  (let ()
                                    (declare (not safe))
                                    (_K296396296425_
                                     _rest296435_
                                     _opt296433_))))
                            (let ((_opt296433_ _hd296405296464_)
                                  (_rest296435_ _tl296406296466_))
                              (let ()
                                (declare (not safe))
                                (_K296396296425_ _rest296435_ _opt296433_))))))
                  (let () (declare (not safe)) (_else296394296418_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?296478_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?296478_))))
    (define gxc#gsc-link-options
      (lambda _g301727_
        (let ((_g301726_ (let () (declare (not safe)) (##length _g301727_))))
          (cond ((let () (declare (not safe)) (##fx= _g301726_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g301727_))
                ((let () (declare (not safe)) (##fx= _g301726_ 1))
                 (apply (lambda (_phi?296480_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?296480_)))
                        _g301727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g301727_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?296285_)
        (let _lp296287_ ((_rest296289_ (gxc#current-compile-gsc-options))
                         (_opts296290_ '()))
          (let* ((_rest296291296311_ _rest296289_)
                 (_else296295296319_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?296285_))
                             (gxc#current-compile-debug))
                        (let ((__tmp301728
                               (let ((__tmp301729 (reverse _opts296290_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp301729))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp301728))
                        (reverse _opts296290_)))))
            (let ((_K296305296358_
                   (lambda (_rest296355_ _opt296356_)
                     (let ((__tmp301730
                            (let ((__tmp301731
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts296290_))))
                              (declare (not safe))
                              (cons _opt296356_ __tmp301731))))
                       (declare (not safe))
                       (_lp296287_ _rest296355_ __tmp301730))))
                  (_K296300296339_
                   (lambda (_rest296337_)
                     (let ()
                       (declare (not safe))
                       (_lp296287_ _rest296337_ _opts296290_))))
                  (_K296297296325_
                   (lambda (_rest296323_)
                     (let ()
                       (declare (not safe))
                       (_lp296287_ _rest296323_ _opts296290_)))))
              (if (let () (declare (not safe)) (##pair? _rest296291296311_))
                  (let ((_tl296307296363_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296291296311_)))
                        (_hd296306296361_
                         (let ()
                           (declare (not safe))
                           (##car _rest296291296311_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd296306296361_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl296307296363_))
                            (let ((_tl296309296368_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl296307296363_)))
                                  (_hd296308296366_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl296307296363_))))
                              (let ((_opt296371_ _hd296308296366_)
                                    (_rest296373_ _tl296309296368_))
                                (let ()
                                  (declare (not safe))
                                  (_K296305296358_ _rest296373_ _opt296371_))))
                            (let ((_rest296331_ _tl296307296363_))
                              (declare (not safe))
                              (_K296297296325_ _rest296331_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd296306296361_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl296307296363_))
                                (let* ((_tl296304296347_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl296307296363_)))
                                       (_rest296350_ _tl296304296347_))
                                  (declare (not safe))
                                  (_K296300296339_ _rest296350_))
                                (let ((_rest296331_ _tl296307296363_))
                                  (declare (not safe))
                                  (_K296297296325_ _rest296331_)))
                            (let ((_rest296331_ _tl296307296363_))
                              (declare (not safe))
                              (_K296297296325_ _rest296331_)))))
                  (let () (declare (not safe)) (_else296295296319_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?296379_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?296379_))))
    (define gxc#gsc-cc-options
      (lambda _g301733_
        (let ((_g301732_ (let () (declare (not safe)) (##length _g301733_))))
          (cond ((let () (declare (not safe)) (##fx= _g301732_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g301733_))
                ((let () (declare (not safe)) (##fx= _g301732_ 1))
                 (apply (lambda (_phi?296381_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?296381_)))
                        _g301733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g301733_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir296280_)
        (let* ((_user-staticdir296282_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp301734
                (let ((__tmp301735
                       (string-append
                        '"-I "
                        _staticdir296280_
                        '" -I "
                        _user-staticdir296282_)))
                  (declare (not safe))
                  (cons __tmp301735 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp301734))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp296192_ ((_rest296194_ (gxc#current-compile-gsc-options))
                         (_opts296195_ '()))
          (let* ((_rest296196296216_ _rest296194_)
                 (_else296200296224_ (lambda () _opts296195_)))
            (let ((_K296210296267_
                   (lambda (_rest296265_)
                     (let ()
                       (declare (not safe))
                       (_lp296192_ _rest296265_ _opts296195_))))
                  (_K296205296245_
                   (lambda (_rest296242_ _opt296243_)
                     (let ((__tmp301736
                            (append _opts296195_
                                    (let ((__tmp301737
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt296243_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp301737)))))
                       (declare (not safe))
                       (_lp296192_ _rest296242_ __tmp301736))))
                  (_K296202296230_
                   (lambda (_rest296228_)
                     (let ()
                       (declare (not safe))
                       (_lp296192_ _rest296228_ _opts296195_)))))
              (if (let () (declare (not safe)) (##pair? _rest296196296216_))
                  (let ((_tl296212296272_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296196296216_)))
                        (_hd296211296270_
                         (let ()
                           (declare (not safe))
                           (##car _rest296196296216_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd296211296270_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl296212296272_))
                            (let* ((_tl296214296275_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl296212296272_)))
                                   (_rest296278_ _tl296214296275_))
                              (declare (not safe))
                              (_K296210296267_ _rest296278_))
                            (let ((_rest296236_ _tl296212296272_))
                              (declare (not safe))
                              (_K296202296230_ _rest296236_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd296211296270_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl296212296272_))
                                (let ((_tl296209296255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl296212296272_)))
                                      (_hd296208296253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl296212296272_))))
                                  (let ((_opt296258_ _hd296208296253_)
                                        (_rest296260_ _tl296209296255_))
                                    (let ()
                                      (declare (not safe))
                                      (_K296205296245_
                                       _rest296260_
                                       _opt296258_))))
                                (let ((_rest296236_ _tl296212296272_))
                                  (declare (not safe))
                                  (_K296202296230_ _rest296236_)))
                            (let ((_rest296236_ _tl296212296272_))
                              (declare (not safe))
                              (_K296202296230_ _rest296236_)))))
                  (let () (declare (not safe)) (_else296200296224_))))))))
    (define gxc#not-string-empty?
      (lambda (_str296189_)
        (let ((__tmp301738
               (let () (declare (not safe)) (string-empty? _str296189_))))
          (declare (not safe))
          (not __tmp301738))))
    (define gxc#gsc-compile-file
      (lambda (_path296157_ _phi?296158_)
        (letrec ((_gsc-link-path296160_
                  (lambda (_base-path296181_)
                    (let _lp296183_ ((_n296185_ '1))
                      (let ((_path296187_
                             (string-append
                              _base-path296181_
                              '".o"
                              (number->string _n296185_))))
                        (if (file-exists? _path296187_)
                            (let ((__tmp301739
                                   (let ()
                                     (declare (not safe))
                                     (+ _n296185_ '1))))
                              (declare (not safe))
                              (_lp296183_ __tmp301739))
                            _path296187_))))))
          (let* ((_base-path296162_ (path-strip-extension _path296157_))
                 (_path-c296164_ (string-append _base-path296162_ '".c"))
                 (_path-o296166_ (string-append _base-path296162_ '".o"))
                 (_link-path296168_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path296160_ _base-path296162_)))
                 (_link-path-c296170_ (string-append _link-path296168_ '".c"))
                 (_link-path-o296172_ (string-append _link-path296168_ '".o"))
                 (_gsc-link-opts296174_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?296158_)))
                 (_gsc-cc-opts296176_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?296158_)))
                 (_gcc-ld-opts296178_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp301746 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp301740
                   (let ((__tmp301741
                          (let ((__tmp301742
                                 (let ((__tmp301743
                                        (let ((__tmp301744
                                               (let ((__tmp301745
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path296157_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp301745
                                                         _gsc-link-opts296174_))))
                                          (declare (not safe))
                                          (cons _link-path-c296170_
                                                __tmp301744))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp301743))))
                            (declare (not safe))
                            (cons '"-flat" __tmp301742))))
                     (declare (not safe))
                     (cons '"-link" __tmp301741))))
              (declare (not safe))
              (gxc#invoke __tmp301746 __tmp301740 'stdout-redirection: '#t))
            (let ((__tmp301753 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp301747
                   (let ((__tmp301748
                          (let ((__tmp301749
                                 (let ((__tmp301750
                                        (let ((__tmp301751
                                               (let ((__tmp301752
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c296170_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c296164_
                                                       __tmp301752))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp301751
                                                  _gsc-cc-opts296176_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp301750))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp301749))))
                     (declare (not safe))
                     (cons '"-obj" __tmp301748))))
              (declare (not safe))
              (gxc#invoke __tmp301753 __tmp301747 'stdout-redirection: '#t))
            (let ((__tmp301759 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp301754
                   (let ((__tmp301755
                          (let ((__tmp301756
                                 (let ((__tmp301757
                                        (let ((__tmp301758
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o296172_
                                                       _gcc-ld-opts296178_))))
                                          (declare (not safe))
                                          (cons _path-o296166_ __tmp301758))))
                                   (declare (not safe))
                                   (cons _link-path296168_ __tmp301757))))
                            (declare (not safe))
                            (cons '"-o" __tmp301756))))
                     (declare (not safe))
                     (cons '"-shared" __tmp301755))))
              (declare (not safe))
              (gxc#invoke __tmp301759 __tmp301754))
            (for-each
             delete-file
             (let ((__tmp301760
                    (let ((__tmp301761
                           (let ((__tmp301762
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o296172_ '()))))
                             (declare (not safe))
                             (cons _link-path-c296170_ __tmp301762))))
                      (declare (not safe))
                      (cons _path-o296166_ __tmp301761))))
               (declare (not safe))
               (cons _path-c296164_ __tmp301760)))))))
    (define gxc#compile-output-file
      (lambda (_ctx296128_ _n296129_ _ext296130_)
        (letrec ((_module-relative-path296132_
                  (lambda (_ctx296155_)
                    (path-strip-directory
                     (let ((__tmp301763
                            (##structure-ref
                             _ctx296155_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp301763)))))
                 (_module-source-directory296133_
                  (lambda (_ctx296151_)
                    (path-directory
                     (let ((_mpath296153_
                            (##structure-ref
                             _ctx296151_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath296153_))
                           _mpath296153_
                           (let ()
                             (declare (not safe))
                             (last _mpath296153_)))))))
                 (_section-string296134_
                  (lambda (_n296149_)
                    (if (let () (declare (not safe)) (number? _n296149_))
                        (number->string _n296149_)
                        (if (let () (declare (not safe)) (symbol? _n296149_))
                            (symbol->string _n296149_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n296149_))
                                _n296149_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n296149_)))))))
                 (_file-name296135_
                  (lambda (_path296147_)
                    (if _n296129_
                        (string-append
                         _path296147_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string296134_ _n296129_))
                         _ext296130_)
                        (string-append _path296147_ _ext296130_))))
                 (_file-path296136_
                  (lambda ()
                    (let ((_$e296142_ (gxc#current-compile-output-dir)))
                      (if _$e296142_
                          ((lambda (_outdir296145_)
                             (path-expand
                              (let ((__tmp301765
                                     (let ((__tmp301766
                                            (##structure-ref
                                             _ctx296128_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp301766))))
                                (declare (not safe))
                                (_file-name296135_ __tmp301765))
                              _outdir296145_))
                           _$e296142_)
                          (path-expand
                           (let ((__tmp301764
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path296132_
                                     _ctx296128_))))
                             (declare (not safe))
                             (_file-name296135_ __tmp301764))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory296133_
                              _ctx296128_))))))))
          (let ((_path296138_
                 (let () (declare (not safe)) (_file-path296136_))))
            (let ((__tmp301767
                   (lambda ()
                     (let ((__tmp301768 (path-directory _path296138_)))
                       (declare (not safe))
                       (create-directory* __tmp301768)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp301767))
            _path296138_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx296110_)
        (letrec ((_file-name296112_
                  (lambda (_id296126_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id296126_))
                     '".scm")))
                 (_file-path296113_
                  (lambda ()
                    (let* ((_file296119_
                            (let ((__tmp301769
                                   (##structure-ref
                                    _ctx296110_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name296112_ __tmp301769)))
                           (_$e296121_ (gxc#current-compile-output-dir)))
                      (if _$e296121_
                          ((lambda (_outdir296124_)
                             (path-expand
                              _file296119_
                              (path-expand '"static" _outdir296124_)))
                           _$e296121_)
                          (path-expand _file296119_ '"static"))))))
          (let ((_path296115_
                 (let () (declare (not safe)) (_file-path296113_))))
            (let ((__tmp301770
                   (lambda ()
                     (let ((__tmp301771 (path-directory _path296115_)))
                       (declare (not safe))
                       (create-directory* __tmp301771)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp301770))
            _path296115_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx296104_ _opts296105_)
        (let ((_$e296107_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts296105_))))
          (if _$e296107_
              (values _$e296107_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx296104_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr296097_)
        (if (let () (declare (not safe)) (string? _idstr296097_))
            (let* ((_str296099_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr296097_)))
                   (_strs296101_
                    (let ()
                      (declare (not safe))
                      (string-split _str296099_ '#\/))))
              (let () (declare (not safe)) (string-join _strs296101_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr296097_))
                (let ((__tmp301772 (symbol->string _idstr296097_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp301772))
                (error '"Bad module id" _idstr296097_)))))
    (define gxc#invoke__%
      (lambda (_g301773_
               _stdout-redirection296058296062_
               _stderr-redirection296059296064_
               _program296066_
               _args296067_)
        (let* ((_stdout-redirection296069_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection296058296062_ absent-value))
                    '#f
                    _stdout-redirection296058296062_))
               (_stderr-redirection296071_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection296059296064_ absent-value))
                    '#f
                    _stderr-redirection296059296064_)))
          (let ((__tmp301774
                 (let ()
                   (declare (not safe))
                   (cons _program296066_ _args296067_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp301774))
          (let* ((_proc296073_
                  (open-process
                   (let ((__tmp301775
                          (let ((__tmp301776
                                 (let ((__tmp301777
                                        (let ((__tmp301778
                                               (let ((__tmp301779
                                                      (let ((__tmp301780
                                                             (let ((__tmp301781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection296071_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp301781))))
                (declare (not safe))
                (cons _stdout-redirection296069_ __tmp301780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp301779))))
                                          (declare (not safe))
                                          (cons _args296067_ __tmp301778))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp301777))))
                            (declare (not safe))
                            (cons _program296066_ __tmp301776))))
                     (declare (not safe))
                     (cons 'path: __tmp301775))))
                 (_output296078_
                  (if (or _stdout-redirection296069_
                          _stderr-redirection296071_)
                      (read-line _proc296073_ '#f)
                      '#f)))
            (let ((_status296081_ (process-status _proc296073_)))
              (close-port _proc296073_)
              (if (let () (declare (not safe)) (zero? _status296081_))
                  '#!void
                  (begin
                    (display _output296078_)
                    (let ((__tmp301782
                           (let ()
                             (declare (not safe))
                             (cons _program296066_ _args296067_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp301782
                       _status296081_)))))))))
    (define gxc#invoke__@
      (lambda (_keys296057296086_ . _args296088_)
        (apply gxc#invoke__%
               _keys296057296086_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys296057296086_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys296057296086_
                  'stderr-redirection:
                  absent-value))
               _args296088_)))
    (define gxc#invoke
      (lambda _args296060296094_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args296060296094_)))
    (define gxc#join!
      (lambda (_thread296051_)
        (let ((__tmp301784
               (lambda (_exn296053_)
                 (if (uncaught-exception? _exn296053_)
                     (raise (uncaught-exception-reason _exn296053_))
                     (raise _exn296053_))))
              (__tmp301783 (lambda () (thread-join! _thread296051_))))
          (declare (not safe))
          (with-catch __tmp301784 __tmp301783))))))
