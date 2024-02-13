(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707846536)
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
      (lambda (_path293117_ _fun293118_)
        (with-output-to-file
         (let ((__tmp297779
                (let ()
                  (declare (not safe))
                  (cons _path293117_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp297779))
         _fun293118_)))
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
      (lambda (_gerbil-libdir293112_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir293112_)))
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
      (lambda (_dir293110_) (delete-file-or-directory _dir293110_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath293084_ _opts293085_)
        (if (let () (declare (not safe)) (string? _srcpath293084_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293084_)))
        (let ((_outdir293087_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293085_)))
              (_invoke-gsc?293088_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293085_)))
              (_gsc-options293089_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293085_)))
              (_keep-scm?293090_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293085_)))
              (_verbosity293091_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293085_)))
              (_optimize293092_
               (let () (declare (not safe)) (pgetq 'optimize: _opts293085_)))
              (_debug293093_
               (let () (declare (not safe)) (pgetq 'debug: _opts293085_)))
              (_gen-ssxi293094_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts293085_))))
          (if _outdir293087_
              (let ((__tmp297780
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293087_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297780))
              '#!void)
          (if _optimize293092_
              (let ((__tmp297781
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297781))
              '#!void)
          (let ((__tmp297785
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath293084_))
                   (let ((__tmp297786
                          (let ((__tmp297787
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293084_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297787))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp297786))))
                (__tmp297784
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297782
                 (let ((__tmp297783
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293084_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp297783))))
            (declare (not safe))
            (call-with-parameters
             __tmp297785
             gxc#current-compile-output-dir
             _outdir293087_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293088_
             gxc#current-compile-gsc-options
             _gsc-options293089_
             gxc#current-compile-keep-scm
             _keep-scm?293090_
             gxc#current-compile-verbose
             _verbosity293091_
             gxc#current-compile-optimize
             _optimize293092_
             gxc#current-compile-debug
             _debug293093_
             gxc#current-compile-generate-ssxi
             _gen-ssxi293094_
             gxc#current-compile-timestamp
             __tmp297784
             gxc#current-compile-context
             __tmp297782
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath293103_)
        (let ((_opts293105_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath293103_ _opts293105_))))
    (define gxc#compile-module
      (lambda _g297789_
        (let ((_g297788_ (let () (declare (not safe)) (##length _g297789_))))
          (cond ((let () (declare (not safe)) (##fx= _g297788_ 1))
                 (apply (lambda (_srcpath293103_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath293103_)))
                        _g297789_))
                ((let () (declare (not safe)) (##fx= _g297788_ 2))
                 (apply (lambda (_srcpath293107_ _opts293108_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath293107_
                             _opts293108_)))
                        _g297789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g297789_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath293060_ _opts293061_)
        (if (let () (declare (not safe)) (string? _srcpath293060_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293060_)))
        (let ((_outdir293063_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293061_)))
              (_invoke-gsc?293064_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293061_)))
              (_gsc-options293065_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293061_)))
              (_keep-scm?293066_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293061_)))
              (_verbosity293067_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293061_)))
              (_debug293068_
               (let () (declare (not safe)) (pgetq 'debug: _opts293061_))))
          (if _outdir293063_
              (let ((__tmp297790
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293063_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297790))
              '#!void)
          (let ((__tmp297794
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath293060_))
                   (let ((__tmp297795
                          (let ((__tmp297796
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293060_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297796))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp297795
                      _opts293061_))))
                (__tmp297793
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297791
                 (let ((__tmp297792
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293060_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp297792))))
            (declare (not safe))
            (call-with-parameters
             __tmp297794
             gxc#current-compile-output-dir
             _outdir293063_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293064_
             gxc#current-compile-gsc-options
             _gsc-options293065_
             gxc#current-compile-keep-scm
             _keep-scm?293066_
             gxc#current-compile-verbose
             _verbosity293067_
             gxc#current-compile-debug
             _debug293068_
             gxc#current-compile-timestamp
             __tmp297793
             gxc#current-compile-context
             __tmp297791
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath293076_)
        (let ((_opts293078_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath293076_ _opts293078_))))
    (define gxc#compile-exe
      (lambda _g297798_
        (let ((_g297797_ (let () (declare (not safe)) (##length _g297798_))))
          (cond ((let () (declare (not safe)) (##fx= _g297797_ 1))
                 (apply (lambda (_srcpath293076_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath293076_)))
                        _g297798_))
                ((let () (declare (not safe)) (##fx= _g297797_ 2))
                 (apply (lambda (_srcpath293080_ _opts293081_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath293080_ _opts293081_)))
                        _g297798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g297798_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx293056_ _opts293057_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts293057_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx293056_
               _opts293057_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx293056_
               _opts293057_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx292939_ _opts292940_)
        (letrec ((_generate-stub292942_
                  (lambda (_builtin-modules293052_)
                    (let ((_mod-main293054_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292939_ 'main))))
                      (write (let ((__tmp297799
                                    (let ((__tmp297800
                                           (let ((__tmp297801
                                                  (let ((__tmp297802
                                                         (let ((__tmp297804
                                                                (let ((__tmp297805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules293052_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297805)))
                       (__tmp297803
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp297804 __tmp297803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp297802))))
                                             (declare (not safe))
                                             (cons __tmp297801 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp297800))))
                               (declare (not safe))
                               (cons 'define __tmp297799)))
                      (write (let ((__tmp297806
                                    (let ((__tmp297845
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297807
                                           (let ((__tmp297808
                                                  (let ((__tmp297809
                                                         (let ((__tmp297833
                                                                (let ((__tmp297834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297835
                                      (let ((__tmp297843
                                             (let ((__tmp297844
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp297844)))
                                            (__tmp297836
                                             (let ((__tmp297837
                                                    (let ((__tmp297838
                                                           (let ((__tmp297839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297840
                                 (let ((__tmp297841
                                        (let ((__tmp297842
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp297842 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp297841))))
                            (declare (not safe))
                            (cons __tmp297840 '()))))
                     (declare (not safe))
                     (cons _mod-main293054_ __tmp297839))))
              (declare (not safe))
              (cons 'apply __tmp297838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297837 '()))))
                                        (declare (not safe))
                                        (cons __tmp297843 __tmp297836))))
                                 (declare (not safe))
                                 (cons '() __tmp297835))))
                          (declare (not safe))
                          (cons 'lambda __tmp297834)))
                       (__tmp297810
                        (let ((__tmp297811
                               (let ((__tmp297812
                                      (let ((__tmp297813
                                             (let ((__tmp297824
                                                    (let ((__tmp297825
                                                           (let ((__tmp297826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297827
                                 (let ((__tmp297828
                                        (let ((__tmp297829
                                               (let ((__tmp297830
                                                      (let ((__tmp297831
                                                             (let ((__tmp297832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp297832 '()))))
                (declare (not safe))
                (cons 'force-output __tmp297831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp297830 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp297829))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp297828))))
                            (declare (not safe))
                            (cons __tmp297827 '()))))
                     (declare (not safe))
                     (cons 'void __tmp297826))))
              (declare (not safe))
              (cons 'with-catch __tmp297825)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp297814
                                                    (let ((__tmp297815
                                                           (let ((__tmp297816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297817
                                 (let ((__tmp297818
                                        (let ((__tmp297819
                                               (let ((__tmp297820
                                                      (let ((__tmp297821
                                                             (let ((__tmp297822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp297823
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp297823 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp297822))))
                (declare (not safe))
                (cons __tmp297821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp297820))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp297819))))
                                   (declare (not safe))
                                   (cons __tmp297818 '()))))
                            (declare (not safe))
                            (cons 'void __tmp297817))))
                     (declare (not safe))
                     (cons 'with-catch __tmp297816))))
              (declare (not safe))
              (cons __tmp297815 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297824
                                                     __tmp297814))))
                                        (declare (not safe))
                                        (cons '() __tmp297813))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp297812))))
                          (declare (not safe))
                          (cons __tmp297811 '()))))
                   (declare (not safe))
                   (cons __tmp297833 __tmp297810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp297809))))
                                             (declare (not safe))
                                             (cons __tmp297808 '()))))
                                      (declare (not safe))
                                      (cons __tmp297845 __tmp297807))))
                               (declare (not safe))
                               (cons 'define __tmp297806)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts292943_
                  (lambda (_libgerbil293050_)
                    (call-with-input-file
                     (string-append _libgerbil293050_ '".ldd")
                     read)))
                 (_replace-extension292944_
                  (lambda (_path293047_ _ext293048_)
                    (string-append
                     (path-strip-extension _path293047_)
                     _ext293048_)))
                 (_not-exclude-module?292945_
                  (lambda (_ctx293043_)
                    (let ((_id-str293045_
                           (symbol->string
                            (##structure-ref
                             _ctx293043_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp297847
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str293045_))))
                            (declare (not safe))
                            (not __tmp297847))
                          (let ((__tmp297846
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str293045_))))
                            (declare (not safe))
                            (not __tmp297846))
                          '#f))))
                 (_not-file-empty?292946_
                  (lambda (_path293041_)
                    (let ((__tmp297848
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path293041_))))
                      (declare (not safe))
                      (not __tmp297848))))
                 (_compile-stub292947_
                  (lambda (_output-scm292954_ _output-bin292955_)
                    (let* ((_gerbil-home292957_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292959_
                            (path-expand '"lib" _gerbil-home292957_))
                           (_gerbil-staticdir292961_
                            (path-expand '"static" _gerbil-libdir292959_))
                           (_gxlink292963_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir292959_))
                           (_tmp292965_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path292969_
                            (lambda (_f292967_)
                              (path-expand
                               (path-strip-directory _f292967_)
                               _tmp292965_)))
                           (_deps292971_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292939_)))
                           (_deps292973_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?292945_
                                      _deps292971_)))
                           (_src-deps-scm292975_
                            (map gxc#find-static-module-file _deps292973_))
                           (_src-deps-scm292977_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?292946_
                                      _src-deps-scm292975_)))
                           (_src-deps-scm292979_
                            (map path-expand _src-deps-scm292977_))
                           (_deps-scm292981_
                            (map _tmp-path292969_ _src-deps-scm292979_))
                           (_deps-c292987_
                            (map (lambda (_g292982292984_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292944_
                                      _g292982292984_
                                      '".c")))
                                 _deps-scm292981_))
                           (_deps-o292993_
                            (map (lambda (_g292988292990_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292944_
                                      _g292988292990_
                                      '".o")))
                                 _deps-scm292981_))
                           (_src-bin-scm292995_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292939_)))
                           (_src-bin-scm292997_
                            (path-expand _src-bin-scm292995_))
                           (_bin-scm292999_
                            (let ()
                              (declare (not safe))
                              (_tmp-path292969_ _src-bin-scm292997_)))
                           (_bin-c293001_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292944_
                               _bin-scm292999_
                               '".c")))
                           (_bin-o293003_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292944_
                               _bin-scm292999_
                               '".o")))
                           (_output-bin293005_
                            (path-expand _output-bin292955_))
                           (_output-scm293007_
                            (path-expand _output-scm292954_))
                           (_output-c293009_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292944_
                               _output-scm293007_
                               '".c")))
                           (_output-o293011_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292944_
                               _output-scm293007_
                               '".o")))
                           (_output_-c293013_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292944_
                               _output-scm293007_
                               '"_.c")))
                           (_output_-o293015_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292944_
                               _output-scm293007_
                               '"_.o")))
                           (_gsc-link-opts293017_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts293019_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts293021_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir292961_)))
                           (_output-ld-opts293023_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a293025_
                            (path-expand '"libgerbil.a" _gerbil-libdir292959_))
                           (_libgerbil.so293027_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir292959_))
                           (_libgerbil-ld-opts293029_
                            (if (file-exists? _libgerbil.so293027_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts292943_
                                   _libgerbil.so293027_))
                                (if (file-exists? _libgerbil.a293025_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts292943_
                                       _libgerbil.a293025_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a293025_
                                       _libgerbil.so293027_)))))
                           (_rpath293031_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292959_)))
                           (_builtin-modules293035_
                            (map (lambda (_mod293033_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod293033_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx292939_ _deps292973_)))))
                      (let ((__tmp297849
                             (lambda ()
                               (let ((__tmp297850
                                      (path-directory _output-bin293005_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297850)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297849))
                      (let ((__tmp297851
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub292942_
                                  _builtin-modules293035_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm293007_
                         __tmp297851))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297852
                                   (lambda () (create-directory _tmp292965_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp297852))
                            (for-each
                             copy-file
                             _src-deps-scm292979_
                             _deps-scm292981_)
                            (copy-file _src-bin-scm292997_ _bin-scm292999_)
                            (let ((__tmp297860
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297853
                                   (let ((__tmp297854
                                          (let ((__tmp297855
                                                 (let ((__tmp297856
                                                        (let ((__tmp297857
                                                               (let ((__tmp297858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297859
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm293007_ '()))))
                                (declare (not safe))
                                (cons _bin-scm292999_ __tmp297859))))
                         (declare (not safe))
                         (foldr1 cons __tmp297858 _deps-scm292981_))))
                  (declare (not safe))
                  (foldr1 cons __tmp297857 _gsc-link-opts293017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink292963_
                                                         __tmp297856))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp297855))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297854))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297860
                               __tmp297853))
                            (let ((__tmp297868
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297861
                                   (let ((__tmp297862
                                          (let ((__tmp297863
                                                 (let ((__tmp297864
                                                        (let ((__tmp297865
                                                               (let ((__tmp297866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297867
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c293013_ '()))))
                                (declare (not safe))
                                (cons _output-c293009_ __tmp297867))))
                         (declare (not safe))
                         (cons _bin-c293001_ __tmp297866))))
                  (declare (not safe))
                  (foldr1 cons __tmp297865 _deps-c292987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297864
                                                           _gsc-static-opts293021_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297863
                                                    _gsc-cc-opts293019_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297862))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297868
                               __tmp297861))
                            (let ((__tmp297881
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297869
                                   (let ((__tmp297870
                                          (let ((__tmp297871
                                                 (let ((__tmp297872
                                                        (let ((__tmp297873
                                                               (let ((__tmp297874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297875
                                     (let ((__tmp297876
                                            (let ((__tmp297877
                                                   (let ((__tmp297878
                                                          (let ((__tmp297879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp297880
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts293029_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp297880))))
                    (declare (not safe))
                    (cons _gerbil-libdir292959_ __tmp297879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp297878))))
                                              (declare (not safe))
                                              (cons _rpath293031_
                                                    __tmp297877))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp297876
                                               _output-ld-opts293023_))))
                                (declare (not safe))
                                (cons _output_-o293015_ __tmp297875))))
                         (declare (not safe))
                         (cons _output-o293011_ __tmp297874))))
                  (declare (not safe))
                  (cons _bin-o293003_ __tmp297873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297872
                                                           _deps-o292993_))))
                                            (declare (not safe))
                                            (cons _output-bin293005_
                                                  __tmp297871))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297870))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297881
                               __tmp297869))
                            (for-each
                             delete-file
                             (let ((__tmp297882
                                    (let ((__tmp297883
                                           (let ((__tmp297884
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o293015_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o293011_
                                                   __tmp297884))))
                                      (declare (not safe))
                                      (cons _output_-c293013_ __tmp297883))))
                               (declare (not safe))
                               (cons _output-c293009_ __tmp297882)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp292965_)))
                          '#!void)))))
          (let* ((_output-bin292949_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292939_ _opts292940_)))
                 (_output-scm292951_
                  (string-append _output-bin292949_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292947_ _output-scm292951_ _output-bin292949_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292951_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx292764_ _opts292765_)
        (letrec ((_reset-declare292767_
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
                 (_generate-stub292768_
                  (lambda (_deps292930_)
                    (let ((_mod-main292932_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292764_ 'main)))
                          (_reset-decl292933_
                           (let ()
                             (declare (not safe))
                             (_reset-declare292767_)))
                          (_user-decl292934_
                           (let ()
                             (declare (not safe))
                             (_user-declare292769_))))
                      (for-each
                       (lambda (_dep292936_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl292933_)
                         (newline)
                         (if _user-decl292934_
                             (begin (write _user-decl292934_) (newline))
                             '#!void)
                         (write (let ((__tmp297885
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep292936_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp297885)))
                         (newline))
                       _deps292930_)
                      (write (let ((__tmp297886
                                    (let ((__tmp297899
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297887
                                           (let ((__tmp297895
                                                  (let ((__tmp297896
                                                         (let ((__tmp297897
                                                                (let ((__tmp297898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297898))))
                   (declare (not safe))
                   (cons __tmp297897 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp297896)))
                                                 (__tmp297888
                                                  (let ((__tmp297889
                                                         (let ((__tmp297890
                                                                (let ((__tmp297891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297892
                                      (let ((__tmp297893
                                             (let ((__tmp297894
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp297894 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp297893))))
                                 (declare (not safe))
                                 (cons __tmp297892 '()))))
                          (declare (not safe))
                          (cons _mod-main292932_ __tmp297891))))
                   (declare (not safe))
                   (cons 'apply __tmp297890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297889 '()))))
                                             (declare (not safe))
                                             (cons __tmp297895 __tmp297888))))
                                      (declare (not safe))
                                      (cons __tmp297899 __tmp297887))))
                               (declare (not safe))
                               (cons 'define __tmp297886)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare292769_
                  (lambda ()
                    (let* ((_gsc-opts292835_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts292765_)))
                           (_gsc-prelude292837_
                            (if _gsc-opts292835_
                                (member '"-prelude" _gsc-opts292835_)
                                '#f))
                           (_gsc-prelude292839_
                            (if _gsc-prelude292837_
                                (read (open-input-string
                                       (cadr _gsc-prelude292837_)))
                                '#f)))
                      (let _lp292842_ ((_rest292844_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude292839_ '())))
                                       (_user-decls292845_ '()))
                        (let* ((_rest292846292854_ _rest292844_)
                               (_else292848292862_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls292845_))
                                      '#f
                                      (let ((__tmp297900
                                             (reverse _user-decls292845_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp297900)))))
                               (_K292850292918_
                                (lambda (_rest292865_ _expr292866_)
                                  (let* ((_expr292867292879_ _expr292866_)
                                         (_else292870292887_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp292842_
                                               _rest292865_
                                               _user-decls292845_)))))
                                    (let ((_K292875292908_
                                           (lambda (_decls292906_)
                                             (let ((__tmp297901
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls292845_
                                                              _decls292906_))))
                                               (declare (not safe))
                                               (_lp292842_
                                                _rest292865_
                                                __tmp297901))))
                                          (_K292872292893_
                                           (lambda (_exprs292891_)
                                             (let ((__tmp297902
                                                    (append _exprs292891_
                                                            _rest292865_)))
                                               (declare (not safe))
                                               (_lp292842_
                                                __tmp297902
                                                _user-decls292845_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr292867292879_))
                                          (let ((_tl292877292913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr292867292879_)))
                                                (_hd292876292911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr292867292879_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd292876292911_
                                                         'declare))
                                                (let ((_decls292916_
                                                       _tl292877292913_))
                                                  (declare (not safe))
                                                  (_K292875292908_
                                                   _decls292916_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd292876292911_
                                                             'begin))
                                                    (let ((_exprs292901_
                                                           _tl292877292913_))
                                                      (declare (not safe))
                                                      (_K292872292893_
                                                       _exprs292901_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else292870292887_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else292870292887_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest292846292854_))
                              (let ((_hd292851292921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest292846292854_)))
                                    (_tl292852292923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest292846292854_))))
                                (let* ((_expr292926_ _hd292851292921_)
                                       (_rest292928_ _tl292852292923_))
                                  (declare (not safe))
                                  (_K292850292918_ _rest292928_ _expr292926_)))
                              (let ()
                                (declare (not safe))
                                (_else292848292862_))))))))
                 (_compile-stub292770_
                  (lambda (_output-scm292777_ _output-bin292778_)
                    (let* ((_gerbil-home292780_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292782_
                            (path-expand '"lib" _gerbil-home292780_))
                           (_runtime292784_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp292786_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home292780_))
                           (_include-gambit-sharp292788_
                            (string-append
                             '"(include \""
                             _gambit-sharp292786_
                             '"\")"))
                           (_bin-scm292790_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292764_)))
                           (_deps292792_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292764_)))
                           (_deps292794_
                            (map gxc#find-static-module-file _deps292792_))
                           (_deps292799_
                            (let ((__tmp297903
                                   (lambda (_$obj292796_)
                                     (let ((__tmp297904
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj292796_))))
                                       (declare (not safe))
                                       (not __tmp297904)))))
                              (declare (not safe))
                              (filter __tmp297903 _deps292794_)))
                           (_deps292803_
                            (let ((__tmp297905
                                   (lambda (_f292801_)
                                     (let ((__tmp297906
                                            (member _f292801_
                                                    _runtime292784_)))
                                       (declare (not safe))
                                       (not __tmp297906)))))
                              (declare (not safe))
                              (filter __tmp297905 _deps292799_)))
                           (_output-base292805_
                            (string-append
                             (path-strip-extension _output-scm292777_)))
                           (_output-c292807_
                            (string-append _output-base292805_ '".c"))
                           (_output-o292809_
                            (string-append _output-base292805_ '".o"))
                           (_output-c_292811_
                            (string-append _output-base292805_ '"_.c"))
                           (_output-o_292813_
                            (string-append _output-base292805_ '"_.o"))
                           (_gsc-link-opts292815_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292817_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292819_
                            (let ((__tmp297907
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir292782_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp297907)))
                           (_output-ld-opts292821_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros292823_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp297909
                                       (let ((__tmp297910
                                              (let ((__tmp297911
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp292788_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp297911))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp297910))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297909))
                                (let ((__tmp297908
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp292788_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297908))))
                           (_gsc-link-opts292825_
                            (append _gsc-link-opts292815_
                                    _gsc-gx-macros292823_))
                           (_rpath292827_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292782_)))
                           (_default-ld-options292829_
                            (let ((__tmp297912
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp297912))))
                      (let ((__tmp297913
                             (lambda ()
                               (let ((__tmp297914
                                      (path-directory _output-bin292778_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297914)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297913))
                      (let ((__tmp297915
                             (lambda ()
                               (let ((__tmp297916
                                      (let ((__tmp297917
                                             (let ((__tmp297918
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm292790_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp297918
                                                       _deps292803_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp297917
                                                _runtime292784_))))
                                 (declare (not safe))
                                 (_generate-stub292768_ __tmp297916)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292777_
                         __tmp297915))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297924
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297919
                                   (let ((__tmp297920
                                          (let ((__tmp297921
                                                 (let ((__tmp297922
                                                        (let ((__tmp297923
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm292777_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp297923 _gsc-link-opts292825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_292811_
                                                         __tmp297922))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp297921))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297920))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297924
                               __tmp297919))
                            (let ((__tmp297930
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297925
                                   (let ((__tmp297926
                                          (let ((__tmp297927
                                                 (let ((__tmp297928
                                                        (let ((__tmp297929
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_292811_ '()))))
                  (declare (not safe))
                  (cons _output-c292807_ __tmp297929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297928
                                                           _gsc-static-opts292819_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297927
                                                    _gsc-cc-opts292817_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297926))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297930
                               __tmp297925))
                            (let ((__tmp297940
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297931
                                   (let ((__tmp297932
                                          (let ((__tmp297933
                                                 (let ((__tmp297934
                                                        (let ((__tmp297935
                                                               (let ((__tmp297936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297937
                                     (let ((__tmp297938
                                            (let ((__tmp297939
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options292829_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir292782_
                                                    __tmp297939))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp297938))))
                                (declare (not safe))
                                (cons _rpath292827_ __tmp297937))))
                         (declare (not safe))
                         (foldr1 cons __tmp297936 _output-ld-opts292821_))))
                  (declare (not safe))
                  (cons _output-o_292813_ __tmp297935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o292809_
                                                         __tmp297934))))
                                            (declare (not safe))
                                            (cons _output-bin292778_
                                                  __tmp297933))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297932))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297940
                               __tmp297931)))
                          '#!void)))))
          (let* ((_output-bin292772_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292764_ _opts292765_)))
                 (_output-scm292774_
                  (string-append _output-bin292772_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292770_ _output-scm292774_ _output-bin292772_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292774_))))))
    (define gxc#find-export-binding
      (lambda (_ctx292714_ _id292715_)
        (let ((_$e292761_
               (let ((__tmp297942
                      (lambda (_e292716292718_)
                        (let* ((_g292720292730_ _e292716292718_)
                               (_else292722292738_ (lambda () '#f))
                               (_K292724292742_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g292720292730_
                                 'gx#module-export::t))
                              (let* ((_e292725292745_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292720292730_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e292726292748_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292720292730_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e292727292751_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292720292730_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e292727292751_ '0))
                                    (let ((_e292728292754_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g292720292730_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g292756292758_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g292756292758_
                                                    _id292715_)))
                                           _e292728292754_)
                                          (let ()
                                            (declare (not safe))
                                            (_K292724292742_))
                                          (let ()
                                            (declare (not safe))
                                            (_else292722292738_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else292722292738_))))
                              (let ()
                                (declare (not safe))
                                (_else292722292738_))))))
                     (__tmp297941
                      (##structure-ref
                       _ctx292714_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp297942 __tmp297941))))
          (if _$e292761_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e292761_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx292706_ _id292707_)
        (let ((_$e292709_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx292706_ _id292707_))))
          (if _$e292709_
              ((lambda (_bind292712_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind292712_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id292707_)))
                 (##structure-ref _bind292712_ '1 gx#binding::t '#f))
               _$e292709_)
              (let ((__tmp297943
                     (##structure-ref
                      _ctx292706_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp297943
                 _id292707_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx292593_)
        (letrec* ((_ht292595_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template292596_
                   (lambda (_in292658_ _phi292659_)
                     (let ((_iphi292661_
                            (fx+ _phi292659_
                                 (##direct-structure-ref
                                  _in292658_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports292662_
                            (##structure-ref
                             (##direct-structure-ref
                              _in292658_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp292664_ ((_rest292666_ _imports292662_)
                                        (_r292667_ '()))
                         (let* ((_rest292668292676_ _rest292666_)
                                (_else292670292684_ (lambda () _r292667_))
                                (_K292672292694_
                                 (lambda (_rest292687_ _in292688_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in292688_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi292661_))
                                           (let ((__tmp297950
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in292688_
                                                          _r292667_))))
                                             (declare (not safe))
                                             (_lp292664_
                                              _rest292687_
                                              __tmp297950))
                                           (let ()
                                             (declare (not safe))
                                             (_lp292664_
                                              _rest292687_
                                              _r292667_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in292688_
                                              'gx#module-import::t))
                                           (let ((_iphi292690_
                                                  (fx+ _phi292659_
                                                       (##direct-structure-ref
                                                        _in292688_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi292690_))
                                                 (let ((__tmp297948
                                                        (let ((__tmp297949
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in292688_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp297949 _r292667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp292664_
                                                    _rest292687_
                                                    __tmp297948))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp292664_
                                                    _rest292687_
                                                    _r292667_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in292688_
                                                  'gx#import-set::t))
                                               (let ((_xphi292692_
                                                      (fx+ _iphi292661_
                                                           (##direct-structure-ref
                                                            _in292688_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi292692_))
                                                     (let ((__tmp297946
                                                            (let ((__tmp297947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in292688_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp297947 _r292667_))))
               (declare (not safe))
               (_lp292664_ _rest292687_ __tmp297946))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi292692_)
                                                         (let ((__tmp297944
                                                                (let ((__tmp297945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template292596_
                                  _in292688_
                                  _iphi292661_))))
                          (declare (not safe))
                          (foldl1 cons _r292667_ __tmp297945))))
                   (declare (not safe))
                   (_lp292664_ _rest292687_ __tmp297944))
                 (let ()
                   (declare (not safe))
                   (_lp292664_ _rest292687_ _r292667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp292664_
                                                  _rest292687_
                                                  _r292667_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest292668292676_))
                               (let ((_hd292673292697_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest292668292676_)))
                                     (_tl292674292699_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest292668292676_))))
                                 (let* ((_in292702_ _hd292673292697_)
                                        (_rest292704_ _tl292674292699_))
                                   (declare (not safe))
                                   (_K292672292694_ _rest292704_ _in292702_)))
                               (let ()
                                 (declare (not safe))
                                 (_else292670292684_))))))))
                  (_find-deps292597_
                   (lambda (_rest292604_ _deps292605_)
                     (let* ((_rest292606292614_ _rest292604_)
                            (_else292608292622_ (lambda () _deps292605_))
                            (_K292610292646_
                             (lambda (_rest292625_ _hd292626_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd292626_
                                      'gx#module-context::t))
                                   (let ((_id292628_
                                          (##structure-ref
                                           _hd292626_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports292629_
                                          (##structure-ref
                                           _hd292626_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht292595_
                                            _id292628_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps292597_
                                            _rest292625_
                                            _deps292605_))
                                         (let ((_$e292631_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd292626_))))
                                           (if _$e292631_
                                               ((lambda (_pre292634_)
                                                  (let ((_xdeps292636_
                                                         (let ((__tmp297963
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre292634_ _imports292629_))))
                   (declare (not safe))
                   (_find-deps292597_ __tmp297963 _deps292605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht292595_
                                                       _id292628_
                                                       _hd292626_))
                                                    (let ((__tmp297964
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd292626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps292636_))))
              (declare (not safe))
              (_find-deps292597_ _rest292625_ __tmp297964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e292631_)
                                               (let ((_xdeps292638_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps292597_
                                                         _imports292629_
                                                         _deps292605_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht292595_
                                                    _id292628_
                                                    _hd292626_))
                                                 (let ((__tmp297962
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd292626_
                                                                _xdeps292638_))))
                                                   (declare (not safe))
                                                   (_find-deps292597_
                                                    _rest292625_
                                                    __tmp297962)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd292626_
                                          'gx#prelude-context::t))
                                       (let ((_id292640_
                                              (##structure-ref
                                               _hd292626_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht292595_
                                                _id292640_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps292597_
                                                _rest292625_
                                                _deps292605_))
                                             (let ((_xdeps292642_
                                                    (let ((__tmp297960
                                                           (##structure-ref
                                                            _hd292626_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps292597_
                                                       __tmp297960
                                                       _deps292605_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht292595_
                                                      _id292640_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps292597_
                                                      _rest292625_
                                                      _xdeps292642_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht292595_
                                                        _id292640_
                                                        _hd292626_))
                                                     (let ((__tmp297961
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd292626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps292642_))))
               (declare (not safe))
               (_find-deps292597_ _rest292625_ __tmp297961)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd292626_
                                              'gx#module-import::t))
                                           (if (let ((__tmp297959
                                                      (##direct-structure-ref
                                                       _hd292626_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp297959))
                                               (let ((__tmp297957
                                                      (let ((__tmp297958
                                                             (##direct-structure-ref
                                                              _hd292626_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297958
                                                              _rest292625_))))
                                                 (declare (not safe))
                                                 (_find-deps292597_
                                                  __tmp297957
                                                  _deps292605_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps292597_
                                                  _rest292625_
                                                  _deps292605_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd292626_
                                                  'gx#module-export::t))
                                               (let ((__tmp297955
                                                      (let ((__tmp297956
                                                             (##direct-structure-ref
                                                              _hd292626_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297956
                                                              _rest292625_))))
                                                 (declare (not safe))
                                                 (_find-deps292597_
                                                  __tmp297955
                                                  _deps292605_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd292626_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp297954
                                                              (##direct-structure-ref
                                                               _hd292626_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp297954))
                                                       (let ((__tmp297952
                                                              (let ((__tmp297953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd292626_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp297953 _rest292625_))))
                 (declare (not safe))
                 (_find-deps292597_ __tmp297952 _deps292605_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd292626_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps292644_
                           (let ()
                             (declare (not safe))
                             (_import-set-template292596_ _hd292626_ '0)))
                          (__tmp297951
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest292625_ _xdeps292644_))))
                     (declare (not safe))
                     (_find-deps292597_ __tmp297951 _deps292605_))
                   (let ()
                     (declare (not safe))
                     (_find-deps292597_ _rest292625_ _deps292605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd292626_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest292606292614_))
                           (let ((_hd292611292649_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest292606292614_)))
                                 (_tl292612292651_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest292606292614_))))
                             (let* ((_hd292654_ _hd292611292649_)
                                    (_rest292656_ _tl292612292651_))
                               (declare (not safe))
                               (_K292610292646_ _rest292656_ _hd292654_)))
                           (let ()
                             (declare (not safe))
                             (_else292608292622_)))))))
          (reverse (let ((__tmp297965
                          (let ((__tmp297966
                                 (let ((_$e292599_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx292593_))))
                                   (if _$e292599_
                                       ((lambda (_pre292602_)
                                          (let ((__tmp297967
                                                 (##structure-ref
                                                  _ctx292593_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre292602_ __tmp297967)))
                                        _$e292599_)
                                       (##structure-ref
                                        _ctx292593_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps292597_ __tmp297966 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp297965))))))
    (define gxc#find-static-module-file
      (lambda (_ctx292524_)
        (let* ((_context-id292526_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx292524_
                       'gx#module-context::t))
                    (##structure-ref _ctx292524_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx292524_)))
               (_scm292528_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id292526_))
                 '".scm"))
               (_dirs292530_ (gx#current-expander-module-library-path))
               (_dirs292536_
                (let ((_user-libpath292532_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath292532_
                      (let ((_user-libpath292534_
                             (path-expand '"lib" _user-libpath292532_)))
                        (if (member _user-libpath292534_ _dirs292530_)
                            _dirs292530_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath292534_ _dirs292530_))))
                      _dirs292530_)))
               (_dirs292545_
                (let ((_$e292538_ (gxc#current-compile-output-dir)))
                  (if _$e292538_
                      ((lambda (_g292540292542_)
                         (let ()
                           (declare (not safe))
                           (cons _g292540292542_ _dirs292536_)))
                       _$e292538_)
                      _dirs292536_)))
               (_dirs292551_
                (map (lambda (_g292546292548_)
                       (path-expand '"static" _g292546292548_))
                     _dirs292545_)))
          (let _lp292554_ ((_rest292556_ _dirs292551_))
            (let* ((_rest292557292565_ _rest292556_)
                   (_else292559292573_
                    (lambda ()
                      (let ((__tmp297968
                             (##structure-ref
                              _ctx292524_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp297968
                         _scm292528_))))
                   (_K292561292581_
                    (lambda (_rest292576_ _dir292577_)
                      (let ((_path292579_
                             (path-expand _scm292528_ _dir292577_)))
                        (if (file-exists? _path292579_)
                            _path292579_
                            (let ()
                              (declare (not safe))
                              (_lp292554_ _rest292576_)))))))
              (if (let () (declare (not safe)) (##pair? _rest292557292565_))
                  (let ((_hd292562292584_
                         (let ()
                           (declare (not safe))
                           (##car _rest292557292565_)))
                        (_tl292563292586_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292557292565_))))
                    (let* ((_dir292589_ _hd292562292584_)
                           (_rest292591_ _tl292563292586_))
                      (declare (not safe))
                      (_K292561292581_ _rest292591_ _dir292589_)))
                  (let () (declare (not safe)) (_else292559292573_))))))))
    (define gxc#file-empty?
      (lambda (_path292522_)
        (let ((__tmp297969 (file-info-size (file-info _path292522_ '#t))))
          (declare (not safe))
          (zero? __tmp297969))))
    (define gxc#compile-top-module
      (lambda (_ctx292511_)
        (let ((__tmp297973
               (lambda ()
                 (let ((__tmp297974
                        (##structure-ref
                         _ctx292511_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp297974))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp297975
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx292511_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp297975))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx292511_))
                 (if (let ((__tmp297978
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx292511_))))
                       (declare (not safe))
                       (null? __tmp297978))
                     (let* ((_thr1292516_
                             (let ((__tmp297976
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx292511_)))))
                               (declare (not safe))
                               (spawn __tmp297976)))
                            (_thr2292519_
                             (let ((__tmp297977
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx292511_)))))
                               (declare (not safe))
                               (spawn __tmp297977))))
                       (let () (declare (not safe)) (gxc#join! _thr1292516_))
                       (let () (declare (not safe)) (gxc#join! _thr2292519_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx292511_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx292511_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx292511_))
                     '#!void)))
              (__tmp297972
               (let ((__obj297777
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj297777)
                 __obj297777))
              (__tmp297971
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp297970 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp297973
           gx#current-expander-context
           _ctx292511_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp297972
           gxc#current-compile-runtime-sections
           __tmp297971
           gxc#current-compile-runtime-names
           __tmp297970))))
    (define gxc#collect-bindings
      (lambda (_ctx292509_)
        (let ((__tmp297979
               (##structure-ref _ctx292509_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp297979))))
    (define gxc#compile-runtime-code
      (lambda (_ctx292455_)
        (letrec ((_compile1292457_
                  (lambda (_ctx292498_)
                    (let* ((_code292500_
                            (##structure-ref
                             _ctx292498_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt292504_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code292500_))
                                (let ((_idstr292502_
                                       (let ((__tmp297980
                                              (##structure-ref
                                               _ctx292498_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp297980))))
                                  (string-append _idstr292502_ '"__0"))
                                '#f)))
                      (if _rt292504_
                          (begin
                            (let ((__tmp297981
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp297981 _ctx292498_ _rt292504_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code292459_
                               _ctx292498_
                               _code292500_)))
                          (let ((_path292507_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx292498_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path292507_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code292460_
                         _ctx292498_
                         _code292500_
                         _rt292504_)))))
                 (_context-timestamp292458_
                  (lambda (_ctx292496_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx292496_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code292459_
                  (lambda (_ctx292478_ _code292479_)
                    (let* ((_lifts292481_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code292484_
                            (let ((__tmp297984
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code292479_))))
                                  (__tmp297983
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp297982
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297984
                               gx#current-expander-context
                               _ctx292478_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts292481_
                               gxc#current-compile-marks
                               __tmp297983
                               gxc#current-compile-identifiers
                               __tmp297982)))
                           (_runtime-code292486_
                            (if (let ((__tmp297988 (unbox _lifts292481_)))
                                  (declare (not safe))
                                  (null? __tmp297988))
                                _runtime-code292484_
                                (let ((__tmp297985
                                       (let ((__tmp297987
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code292484_
                                                      '())))
                                             (__tmp297986
                                              (reverse (unbox _lifts292481_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp297987
                                                 __tmp297986))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297985))))
                           (_runtime-code292488_
                            (let ((__tmp297989
                                   (let ((__tmp297991
                                          (let ((__tmp297992
                                                 (let ((__tmp297995
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp292458_
                                                           _ctx292478_)))
                                                       (__tmp297993
                                                        (let ((__tmp297994
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp297994
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp297995
                                                         __tmp297993))))
                                            (declare (not safe))
                                            (cons 'define __tmp297992)))
                                         (__tmp297990
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code292486_ '()))))
                                     (declare (not safe))
                                     (cons __tmp297991 __tmp297990))))
                              (declare (not safe))
                              (cons 'begin __tmp297989)))
                           (_scm0292490_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292478_
                               '0
                               '".scm"))))
                      (let ((_scms292493_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx292478_))))
                        (let ((__tmp297996
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0292490_
                                    _runtime-code292488_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp297996
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms292493_)
                            (delete-file _scms292493_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0292490_
                           '" => "
                           _scms292493_))
                        (copy-file _scm0292490_ _scms292493_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0292490_))))))
                 (_generate-loader-code292460_
                  (lambda (_ctx292467_ _code292468_ _rt292469_)
                    (let* ((_loader-code292472_
                            (let ((__tmp297997
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code292468_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297997
                               gx#current-expander-context
                               _ctx292467_)))
                           (_loader-code292474_
                            (if _rt292469_
                                (let ((__tmp297998
                                       (let ((__tmp297999
                                              (let ((__tmp298000
                                                     (let ((__tmp298001
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt292469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp298001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298000 '()))))
                                         (declare (not safe))
                                         (cons _loader-code292472_
                                               __tmp297999))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297998))
                                _loader-code292472_)))
                      (let ((__tmp298002
                             (lambda ()
                               (let ((__tmp298003
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292467_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp298003
                                  _loader-code292474_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp298002
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules292462_
                 (let ((__tmp298004
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx292455_))))
                   (declare (not safe))
                   (cons _ctx292455_ __tmp298004))))
            (for-each
             (lambda (_ctx292464_)
               (let ((__tmp298005
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1292457_ _ctx292464_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp298005
                  gxc#current-compile-decls
                  '())))
             _all-modules292462_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx292352_)
        (letrec ((_compile-ssi292354_
                  (lambda (_code292425_)
                    (let* ((_path292427_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292352_
                               '#f
                               '".ssi")))
                           (_prelude292438_
                            (let* ((_super292429_
                                    (##structure-ref
                                     _ctx292352_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e292431_
                                    (##structure-ref
                                     _super292429_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e292431_
                                  ((lambda (_g292433292435_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g292433292435_)))
                                   _$e292431_)
                                  ':<root>)))
                           (_ns292440_
                            (##structure-ref
                             _ctx292352_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr292442_
                            (symbol->string
                             (##structure-ref
                              _ctx292352_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg292449_
                            (let ((_$e292444_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr292442_ '#\/))))
                              (if _$e292444_
                                  ((lambda (_x292447_)
                                     (string->symbol
                                      (substring _idstr292442_ '0 _x292447_)))
                                   _$e292444_)
                                  '#f)))
                           (_rt292451_
                            (let ((__tmp298006
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp298006 _ctx292352_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path292427_))
                      (let ((__tmp298007
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude292438_))
                               (if _pkg292449_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg292449_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns292440_))
                               (newline)
                               (pretty-print _code292425_)
                               (if _rt292451_
                                   (pretty-print
                                    (let ((__tmp298008
                                           (let ((__tmp298012
                                                  (let ((__tmp298013
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp298013)))
                                                 (__tmp298009
                                                  (let ((__tmp298010
                                                         (let ((__tmp298011
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt292451_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp298011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298010 '()))))
                                             (declare (not safe))
                                             (cons __tmp298012 __tmp298009))))
                                      (declare (not safe))
                                      (cons '%#call __tmp298008)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path292427_
                         __tmp298007)))))
                 (_compile-phi292355_
                  (lambda (_part292365_)
                    (let* ((_part292366292379_ _part292365_)
                           (_E292368292383_
                            (lambda ()
                              (error '"No clause matching"
                                     _part292366292379_)))
                           (_K292369292394_
                            (lambda (_code292386_
                                     _n292387_
                                     _phi292388_
                                     _phi-ctx292389_)
                              (let* ((_code292392_
                                      (let ((__tmp298014
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code292386_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp298014
                                         gx#current-expander-context
                                         _phi-ctx292389_
                                         gx#current-expander-phi
                                         _phi292388_)))
                                     (__tmp298015
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292352_
                                         _n292387_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp298015
                                 _code292392_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part292366292379_))
                          (let ((_hd292370292397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part292366292379_)))
                                (_tl292371292399_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part292366292379_))))
                            (let ((_phi-ctx292402_ _hd292370292397_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl292371292399_))
                                  (let ((_hd292372292404_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl292371292399_)))
                                        (_tl292373292406_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl292371292399_))))
                                    (let ((_phi292409_ _hd292372292404_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl292373292406_))
                                          (let ((_hd292374292411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl292373292406_)))
                                                (_tl292375292413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl292373292406_))))
                                            (let ((_n292416_ _hd292374292411_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl292375292413_))
                                                  (let ((_hd292376292418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl292375292413_)))
                                                        (_tl292377292420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl292375292413_))))
                                                    (let ((_code292423_
                                                           _hd292376292418_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl292377292420_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K292369292394_
                                                             _code292423_
                                                             _n292416_
                                                             _phi292409_
                                                             _phi-ctx292402_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E292368292383_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E292368292383_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E292368292383_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E292368292383_)))))
                          (let () (declare (not safe)) (_E292368292383_)))))))
          (let ((_g298016_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx292352_))))
            (begin
              (let ((_g298017_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g298016_)
                           (##vector-length _g298016_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g298017_ 2)))
                    (error "Context expects 2 values" _g298017_)))
              (let ((_ssi-code292357_
                     (let () (declare (not safe)) (##vector-ref _g298016_ 0)))
                    (_phi-code292358_
                     (let () (declare (not safe)) (##vector-ref _g298016_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi292354_ _ssi-code292357_))
                  (let ((_threads292363_
                         (map (lambda (_code292360_)
                                (let ((__tmp298018
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi292355_
                                            _code292360_)))))
                                  (declare (not safe))
                                  (spawn __tmp298018)))
                              _phi-code292358_)))
                    (for-each gxc#join! _threads292363_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx292335_)
        (let* ((_path292337_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx292335_ '#f '".ssxi.ss")))
               (_code292339_
                (let ((__tmp298019
                       (##structure-ref
                        _ctx292335_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp298019)))
               (_idstr292341_
                (symbol->string
                 (##structure-ref _ctx292335_ '1 gx#expander-context::t '#f)))
               (_pkg292348_
                (let ((_$e292343_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr292341_ '#\/))))
                  (if _$e292343_
                      ((lambda (_x292346_)
                         (string->symbol
                          (substring _idstr292341_ '0 _x292346_)))
                       _$e292343_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path292337_))
          (let ((__tmp298020
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg292348_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg292348_))
                       '#!void)
                   (newline)
                   (pretty-print _code292339_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path292337_ __tmp298020)))))
    (define gxc#generate-meta-code
      (lambda (_ctx292328_)
        (let* ((_state292330_
                (let ((__obj297778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj297778 _ctx292328_)
                  __obj297778))
               (_ssi-code292332_
                (let ((__tmp298021
                       (##structure-ref
                        _ctx292328_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp298021 _state292330_))))
          (values _ssi-code292332_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state292330_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx292321_)
        (let ((_lifts292323_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298024
                 (lambda ()
                   (let ((_code292326_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx292321_))))
                     (if (let ((__tmp298028 (unbox _lifts292323_)))
                           (declare (not safe))
                           (null? __tmp298028))
                         _code292326_
                         (let ((__tmp298025
                                (let ((__tmp298027
                                       (let ()
                                         (declare (not safe))
                                         (cons _code292326_ '())))
                                      (__tmp298026
                                       (reverse (unbox _lifts292323_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp298027 __tmp298026))))
                           (declare (not safe))
                           (cons 'begin __tmp298025))))))
                (__tmp298023
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp298022
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp298024
             gxc#current-compile-lift
             _lifts292323_
             gxc#current-compile-marks
             __tmp298023
             gxc#current-compile-identifiers
             __tmp298022)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx292317_)
        (let ((_modules292319_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298029
                 (##structure-ref _ctx292317_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp298029 _modules292319_))
          (reverse (unbox _modules292319_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path292300_ _code292301_ _phi?292302_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path292300_))
        (let ((__tmp298030
               (lambda ()
                 (pretty-print
                  (let ((__tmp298031
                         (let ((__tmp298038
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp298032
                                (let ((__tmp298037
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp298033
                                       (let ((__tmp298036
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp298034
                                              (let ((__tmp298035
                                                     (if _phi?292302_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp298035))))
                                         (declare (not safe))
                                         (cons __tmp298036 __tmp298034))))
                                  (declare (not safe))
                                  (cons __tmp298037 __tmp298033))))
                           (declare (not safe))
                           (cons __tmp298038 __tmp298032))))
                    (declare (not safe))
                    (cons 'declare __tmp298031)))
                 (pretty-print _code292301_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path292300_ __tmp298030))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path292300_ _phi?292302_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path292300_))))
    (define gxc#compile-scm-file__0
      (lambda (_path292308_ _code292309_)
        (let ((_phi?292311_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path292308_ _code292309_ _phi?292311_))))
    (define gxc#compile-scm-file
      (lambda _g298040_
        (let ((_g298039_ (let () (declare (not safe)) (##length _g298040_))))
          (cond ((let () (declare (not safe)) (##fx= _g298039_ 2))
                 (apply (lambda (_path292308_ _code292309_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path292308_
                             _code292309_)))
                        _g298040_))
                ((let () (declare (not safe)) (##fx= _g298039_ 3))
                 (apply (lambda (_path292313_ _code292314_ _phi?292315_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path292313_
                             _code292314_
                             _phi?292315_)))
                        _g298040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g298040_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?292201_)
        (let _lp292203_ ((_rest292205_ (gxc#current-compile-gsc-options))
                         (_opts292206_ '()))
          (let* ((_rest292207292227_ _rest292205_)
                 (_else292211292235_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292201_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298041
                               (let ((__tmp298042 (reverse _opts292206_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp298042))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp298041))
                        (reverse _opts292206_)))))
            (let ((_K292221292278_
                   (lambda (_rest292276_)
                     (let ()
                       (declare (not safe))
                       (_lp292203_ _rest292276_ _opts292206_))))
                  (_K292216292260_
                   (lambda (_rest292258_)
                     (let ()
                       (declare (not safe))
                       (_lp292203_ _rest292258_ _opts292206_))))
                  (_K292213292242_
                   (lambda (_rest292239_ _opt292240_)
                     (let ((__tmp298043
                            (let ()
                              (declare (not safe))
                              (cons _opt292240_ _opts292206_))))
                       (declare (not safe))
                       (_lp292203_ _rest292239_ __tmp298043)))))
              (if (let () (declare (not safe)) (##pair? _rest292207292227_))
                  (let ((_tl292223292283_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292207292227_)))
                        (_hd292222292281_
                         (let ()
                           (declare (not safe))
                           (##car _rest292207292227_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292222292281_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292223292283_))
                            (let* ((_tl292225292286_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292223292283_)))
                                   (_rest292289_ _tl292225292286_))
                              (declare (not safe))
                              (_K292221292278_ _rest292289_))
                            (let ((_opt292250_ _hd292222292281_)
                                  (_rest292252_ _tl292223292283_))
                              (let ()
                                (declare (not safe))
                                (_K292213292242_ _rest292252_ _opt292250_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292222292281_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292223292283_))
                                (let* ((_tl292220292268_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292223292283_)))
                                       (_rest292271_ _tl292220292268_))
                                  (declare (not safe))
                                  (_K292216292260_ _rest292271_))
                                (let ((_opt292250_ _hd292222292281_)
                                      (_rest292252_ _tl292223292283_))
                                  (let ()
                                    (declare (not safe))
                                    (_K292213292242_
                                     _rest292252_
                                     _opt292250_))))
                            (let ((_opt292250_ _hd292222292281_)
                                  (_rest292252_ _tl292223292283_))
                              (let ()
                                (declare (not safe))
                                (_K292213292242_ _rest292252_ _opt292250_))))))
                  (let () (declare (not safe)) (_else292211292235_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?292295_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?292295_))))
    (define gxc#gsc-link-options
      (lambda _g298045_
        (let ((_g298044_ (let () (declare (not safe)) (##length _g298045_))))
          (cond ((let () (declare (not safe)) (##fx= _g298044_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g298045_))
                ((let () (declare (not safe)) (##fx= _g298044_ 1))
                 (apply (lambda (_phi?292297_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?292297_)))
                        _g298045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g298045_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?292102_)
        (let _lp292104_ ((_rest292106_ (gxc#current-compile-gsc-options))
                         (_opts292107_ '()))
          (let* ((_rest292108292128_ _rest292106_)
                 (_else292112292136_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292102_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298046
                               (let ((__tmp298047 (reverse _opts292107_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp298047))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp298046))
                        (reverse _opts292107_)))))
            (let ((_K292122292175_
                   (lambda (_rest292172_ _opt292173_)
                     (let ((__tmp298048
                            (let ((__tmp298049
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts292107_))))
                              (declare (not safe))
                              (cons _opt292173_ __tmp298049))))
                       (declare (not safe))
                       (_lp292104_ _rest292172_ __tmp298048))))
                  (_K292117292156_
                   (lambda (_rest292154_)
                     (let ()
                       (declare (not safe))
                       (_lp292104_ _rest292154_ _opts292107_))))
                  (_K292114292142_
                   (lambda (_rest292140_)
                     (let ()
                       (declare (not safe))
                       (_lp292104_ _rest292140_ _opts292107_)))))
              (if (let () (declare (not safe)) (##pair? _rest292108292128_))
                  (let ((_tl292124292180_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292108292128_)))
                        (_hd292123292178_
                         (let ()
                           (declare (not safe))
                           (##car _rest292108292128_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292123292178_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292124292180_))
                            (let ((_tl292126292185_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl292124292180_)))
                                  (_hd292125292183_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl292124292180_))))
                              (let ((_opt292188_ _hd292125292183_)
                                    (_rest292190_ _tl292126292185_))
                                (let ()
                                  (declare (not safe))
                                  (_K292122292175_ _rest292190_ _opt292188_))))
                            (let ((_rest292148_ _tl292124292180_))
                              (declare (not safe))
                              (_K292114292142_ _rest292148_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292123292178_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292124292180_))
                                (let* ((_tl292121292164_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292124292180_)))
                                       (_rest292167_ _tl292121292164_))
                                  (declare (not safe))
                                  (_K292117292156_ _rest292167_))
                                (let ((_rest292148_ _tl292124292180_))
                                  (declare (not safe))
                                  (_K292114292142_ _rest292148_)))
                            (let ((_rest292148_ _tl292124292180_))
                              (declare (not safe))
                              (_K292114292142_ _rest292148_)))))
                  (let () (declare (not safe)) (_else292112292136_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?292196_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?292196_))))
    (define gxc#gsc-cc-options
      (lambda _g298051_
        (let ((_g298050_ (let () (declare (not safe)) (##length _g298051_))))
          (cond ((let () (declare (not safe)) (##fx= _g298050_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g298051_))
                ((let () (declare (not safe)) (##fx= _g298050_ 1))
                 (apply (lambda (_phi?292198_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?292198_)))
                        _g298051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g298051_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir292097_)
        (let* ((_user-staticdir292099_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp298052
                (let ((__tmp298053
                       (string-append
                        '"-I "
                        _staticdir292097_
                        '" -I "
                        _user-staticdir292099_)))
                  (declare (not safe))
                  (cons __tmp298053 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp298052))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp292009_ ((_rest292011_ (gxc#current-compile-gsc-options))
                         (_opts292012_ '()))
          (let* ((_rest292013292033_ _rest292011_)
                 (_else292017292041_ (lambda () _opts292012_)))
            (let ((_K292027292084_
                   (lambda (_rest292082_)
                     (let ()
                       (declare (not safe))
                       (_lp292009_ _rest292082_ _opts292012_))))
                  (_K292022292062_
                   (lambda (_rest292059_ _opt292060_)
                     (let ((__tmp298054
                            (append _opts292012_
                                    (let ((__tmp298055
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt292060_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp298055)))))
                       (declare (not safe))
                       (_lp292009_ _rest292059_ __tmp298054))))
                  (_K292019292047_
                   (lambda (_rest292045_)
                     (let ()
                       (declare (not safe))
                       (_lp292009_ _rest292045_ _opts292012_)))))
              (if (let () (declare (not safe)) (##pair? _rest292013292033_))
                  (let ((_tl292029292089_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292013292033_)))
                        (_hd292028292087_
                         (let ()
                           (declare (not safe))
                           (##car _rest292013292033_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292028292087_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292029292089_))
                            (let* ((_tl292031292092_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292029292089_)))
                                   (_rest292095_ _tl292031292092_))
                              (declare (not safe))
                              (_K292027292084_ _rest292095_))
                            (let ((_rest292053_ _tl292029292089_))
                              (declare (not safe))
                              (_K292019292047_ _rest292053_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292028292087_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292029292089_))
                                (let ((_tl292026292072_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl292029292089_)))
                                      (_hd292025292070_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl292029292089_))))
                                  (let ((_opt292075_ _hd292025292070_)
                                        (_rest292077_ _tl292026292072_))
                                    (let ()
                                      (declare (not safe))
                                      (_K292022292062_
                                       _rest292077_
                                       _opt292075_))))
                                (let ((_rest292053_ _tl292029292089_))
                                  (declare (not safe))
                                  (_K292019292047_ _rest292053_)))
                            (let ((_rest292053_ _tl292029292089_))
                              (declare (not safe))
                              (_K292019292047_ _rest292053_)))))
                  (let () (declare (not safe)) (_else292017292041_))))))))
    (define gxc#not-string-empty?
      (lambda (_str292006_)
        (let ((__tmp298056
               (let () (declare (not safe)) (string-empty? _str292006_))))
          (declare (not safe))
          (not __tmp298056))))
    (define gxc#gsc-compile-file
      (lambda (_path291974_ _phi?291975_)
        (letrec ((_gsc-link-path291977_
                  (lambda (_base-path291998_)
                    (let _lp292000_ ((_n292002_ '1))
                      (let ((_path292004_
                             (string-append
                              _base-path291998_
                              '".o"
                              (number->string _n292002_))))
                        (if (file-exists? _path292004_)
                            (let ((__tmp298057
                                   (let ()
                                     (declare (not safe))
                                     (+ _n292002_ '1))))
                              (declare (not safe))
                              (_lp292000_ __tmp298057))
                            _path292004_))))))
          (let* ((_base-path291979_ (path-strip-extension _path291974_))
                 (_path-c291981_ (string-append _base-path291979_ '".c"))
                 (_path-o291983_ (string-append _base-path291979_ '".o"))
                 (_link-path291985_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path291977_ _base-path291979_)))
                 (_link-path-c291987_ (string-append _link-path291985_ '".c"))
                 (_link-path-o291989_ (string-append _link-path291985_ '".o"))
                 (_gsc-link-opts291991_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?291975_)))
                 (_gsc-cc-opts291993_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?291975_)))
                 (_gcc-ld-opts291995_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp298064 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298058
                   (let ((__tmp298059
                          (let ((__tmp298060
                                 (let ((__tmp298061
                                        (let ((__tmp298062
                                               (let ((__tmp298063
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path291974_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp298063
                                                         _gsc-link-opts291991_))))
                                          (declare (not safe))
                                          (cons _link-path-c291987_
                                                __tmp298062))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp298061))))
                            (declare (not safe))
                            (cons '"-flat" __tmp298060))))
                     (declare (not safe))
                     (cons '"-link" __tmp298059))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298064 __tmp298058))
            (let ((__tmp298071 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298065
                   (let ((__tmp298066
                          (let ((__tmp298067
                                 (let ((__tmp298068
                                        (let ((__tmp298069
                                               (let ((__tmp298070
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c291987_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c291981_
                                                       __tmp298070))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp298069
                                                  _gsc-cc-opts291993_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp298068))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp298067))))
                     (declare (not safe))
                     (cons '"-obj" __tmp298066))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298071 __tmp298065))
            (let ((__tmp298077 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp298072
                   (let ((__tmp298073
                          (let ((__tmp298074
                                 (let ((__tmp298075
                                        (let ((__tmp298076
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o291989_
                                                       _gcc-ld-opts291995_))))
                                          (declare (not safe))
                                          (cons _path-o291983_ __tmp298076))))
                                   (declare (not safe))
                                   (cons _link-path291985_ __tmp298075))))
                            (declare (not safe))
                            (cons '"-o" __tmp298074))))
                     (declare (not safe))
                     (cons '"-shared" __tmp298073))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp298077
               __tmp298072))
            (for-each
             delete-file
             (let ((__tmp298078
                    (let ((__tmp298079
                           (let ((__tmp298080
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o291989_ '()))))
                             (declare (not safe))
                             (cons _link-path-c291987_ __tmp298080))))
                      (declare (not safe))
                      (cons _path-o291983_ __tmp298079))))
               (declare (not safe))
               (cons _path-c291981_ __tmp298078)))))))
    (define gxc#compile-output-file
      (lambda (_ctx291945_ _n291946_ _ext291947_)
        (letrec ((_module-relative-path291949_
                  (lambda (_ctx291972_)
                    (path-strip-directory
                     (let ((__tmp298081
                            (##structure-ref
                             _ctx291972_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp298081)))))
                 (_module-source-directory291950_
                  (lambda (_ctx291968_)
                    (path-directory
                     (let ((_mpath291970_
                            (##structure-ref
                             _ctx291968_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath291970_))
                           _mpath291970_
                           (let ()
                             (declare (not safe))
                             (last _mpath291970_)))))))
                 (_section-string291951_
                  (lambda (_n291966_)
                    (if (let () (declare (not safe)) (number? _n291966_))
                        (number->string _n291966_)
                        (if (let () (declare (not safe)) (symbol? _n291966_))
                            (symbol->string _n291966_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n291966_))
                                _n291966_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n291966_)))))))
                 (_file-name291952_
                  (lambda (_path291964_)
                    (if _n291946_
                        (string-append
                         _path291964_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string291951_ _n291946_))
                         _ext291947_)
                        (string-append _path291964_ _ext291947_))))
                 (_file-path291953_
                  (lambda ()
                    (let ((_$e291959_ (gxc#current-compile-output-dir)))
                      (if _$e291959_
                          ((lambda (_outdir291962_)
                             (path-expand
                              (let ((__tmp298083
                                     (let ((__tmp298084
                                            (##structure-ref
                                             _ctx291945_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp298084))))
                                (declare (not safe))
                                (_file-name291952_ __tmp298083))
                              _outdir291962_))
                           _$e291959_)
                          (path-expand
                           (let ((__tmp298082
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path291949_
                                     _ctx291945_))))
                             (declare (not safe))
                             (_file-name291952_ __tmp298082))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory291950_
                              _ctx291945_))))))))
          (let ((_path291955_
                 (let () (declare (not safe)) (_file-path291953_))))
            (let ((__tmp298085
                   (lambda ()
                     (let ((__tmp298086 (path-directory _path291955_)))
                       (declare (not safe))
                       (create-directory* __tmp298086)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298085))
            _path291955_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx291927_)
        (letrec ((_file-name291929_
                  (lambda (_id291943_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id291943_))
                     '".scm")))
                 (_file-path291930_
                  (lambda ()
                    (let* ((_file291936_
                            (let ((__tmp298087
                                   (##structure-ref
                                    _ctx291927_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name291929_ __tmp298087)))
                           (_$e291938_ (gxc#current-compile-output-dir)))
                      (if _$e291938_
                          ((lambda (_outdir291941_)
                             (path-expand
                              _file291936_
                              (path-expand '"static" _outdir291941_)))
                           _$e291938_)
                          (path-expand _file291936_ '"static"))))))
          (let ((_path291932_
                 (let () (declare (not safe)) (_file-path291930_))))
            (let ((__tmp298088
                   (lambda ()
                     (let ((__tmp298089 (path-directory _path291932_)))
                       (declare (not safe))
                       (create-directory* __tmp298089)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298088))
            _path291932_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx291921_ _opts291922_)
        (let ((_$e291924_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts291922_))))
          (if _$e291924_
              (values _$e291924_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx291921_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr291914_)
        (if (let () (declare (not safe)) (string? _idstr291914_))
            (let* ((_str291916_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr291914_)))
                   (_strs291918_
                    (let ()
                      (declare (not safe))
                      (string-split _str291916_ '#\/))))
              (let () (declare (not safe)) (string-join _strs291918_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr291914_))
                (let ((__tmp298090 (symbol->string _idstr291914_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp298090))
                (error '"Bad module id" _idstr291914_)))))
    (define gxc#invoke__%
      (lambda (_g298091_
               _stdout-redirection291878291882_
               _stderr-redirection291879291884_
               _program291886_
               _args291887_)
        (let* ((_stdout-redirection291889_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection291878291882_ absent-value))
                    '#f
                    _stdout-redirection291878291882_))
               (_stderr-redirection291891_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection291879291884_ absent-value))
                    '#f
                    _stderr-redirection291879291884_)))
          (let ((__tmp298092
                 (let ()
                   (declare (not safe))
                   (cons _program291886_ _args291887_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp298092))
          (let ((_proc291893_
                 (open-process
                  (let ((__tmp298093
                         (let ((__tmp298094
                                (let ((__tmp298095
                                       (let ((__tmp298096
                                              (let ((__tmp298097
                                                     (let ((__tmp298098
                                                            (let ((__tmp298099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection291891_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp298099))))
               (declare (not safe))
               (cons _stdout-redirection291889_ __tmp298098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp298097))))
                                         (declare (not safe))
                                         (cons _args291887_ __tmp298096))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp298095))))
                           (declare (not safe))
                           (cons _program291886_ __tmp298094))))
                    (declare (not safe))
                    (cons 'path: __tmp298093)))))
            (if (or _stdout-redirection291889_ _stderr-redirection291891_)
                (read-line _proc291893_ '#f)
                '#!void)
            (let ((_status291898_ (process-status _proc291893_)))
              (close-port _proc291893_)
              (if (let () (declare (not safe)) (zero? _status291898_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program291886_))))))))
    (define gxc#invoke__@
      (lambda (_keys291877291903_ . _args291905_)
        (apply gxc#invoke__%
               _keys291877291903_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291877291903_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291877291903_
                  'stderr-redirection:
                  absent-value))
               _args291905_)))
    (define gxc#invoke
      (lambda _args291880291911_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args291880291911_)))
    (define gxc#join!
      (lambda (_thread291871_)
        (let ((__tmp298101
               (lambda (_exn291873_)
                 (if (uncaught-exception? _exn291873_)
                     (raise (uncaught-exception-reason _exn291873_))
                     (raise _exn291873_))))
              (__tmp298100 (lambda () (thread-join! _thread291871_))))
          (declare (not safe))
          (with-catch __tmp298101 __tmp298100))))))
