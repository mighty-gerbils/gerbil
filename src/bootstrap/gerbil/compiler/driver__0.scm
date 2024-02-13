(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707842378)
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
      (lambda (_path293113_ _fun293114_)
        (with-output-to-file
         (let ((__tmp297775
                (let ()
                  (declare (not safe))
                  (cons _path293113_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp297775))
         _fun293114_)))
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
      (lambda (_gerbil-libdir293108_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir293108_)))
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
      (lambda (_dir293106_) (delete-file-or-directory _dir293106_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath293080_ _opts293081_)
        (if (let () (declare (not safe)) (string? _srcpath293080_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293080_)))
        (let ((_outdir293083_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293081_)))
              (_invoke-gsc?293084_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293081_)))
              (_gsc-options293085_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293081_)))
              (_keep-scm?293086_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293081_)))
              (_verbosity293087_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293081_)))
              (_optimize293088_
               (let () (declare (not safe)) (pgetq 'optimize: _opts293081_)))
              (_debug293089_
               (let () (declare (not safe)) (pgetq 'debug: _opts293081_)))
              (_gen-ssxi293090_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts293081_))))
          (if _outdir293083_
              (let ((__tmp297776
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293083_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297776))
              '#!void)
          (if _optimize293088_
              (let ((__tmp297777
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297777))
              '#!void)
          (let ((__tmp297781
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath293080_))
                   (let ((__tmp297782
                          (let ((__tmp297783
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293080_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297783))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp297782))))
                (__tmp297780
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297778
                 (let ((__tmp297779
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293080_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp297779))))
            (declare (not safe))
            (call-with-parameters
             __tmp297781
             gxc#current-compile-output-dir
             _outdir293083_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293084_
             gxc#current-compile-gsc-options
             _gsc-options293085_
             gxc#current-compile-keep-scm
             _keep-scm?293086_
             gxc#current-compile-verbose
             _verbosity293087_
             gxc#current-compile-optimize
             _optimize293088_
             gxc#current-compile-debug
             _debug293089_
             gxc#current-compile-generate-ssxi
             _gen-ssxi293090_
             gxc#current-compile-timestamp
             __tmp297780
             gxc#current-compile-context
             __tmp297778
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath293099_)
        (let ((_opts293101_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath293099_ _opts293101_))))
    (define gxc#compile-module
      (lambda _g297785_
        (let ((_g297784_ (let () (declare (not safe)) (##length _g297785_))))
          (cond ((let () (declare (not safe)) (##fx= _g297784_ 1))
                 (apply (lambda (_srcpath293099_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath293099_)))
                        _g297785_))
                ((let () (declare (not safe)) (##fx= _g297784_ 2))
                 (apply (lambda (_srcpath293103_ _opts293104_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath293103_
                             _opts293104_)))
                        _g297785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g297785_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath293056_ _opts293057_)
        (if (let () (declare (not safe)) (string? _srcpath293056_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293056_)))
        (let ((_outdir293059_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293057_)))
              (_invoke-gsc?293060_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293057_)))
              (_gsc-options293061_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293057_)))
              (_keep-scm?293062_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293057_)))
              (_verbosity293063_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293057_)))
              (_debug293064_
               (let () (declare (not safe)) (pgetq 'debug: _opts293057_))))
          (if _outdir293059_
              (let ((__tmp297786
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293059_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297786))
              '#!void)
          (let ((__tmp297790
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath293056_))
                   (let ((__tmp297791
                          (let ((__tmp297792
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293056_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297792))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp297791
                      _opts293057_))))
                (__tmp297789
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297787
                 (let ((__tmp297788
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293056_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp297788))))
            (declare (not safe))
            (call-with-parameters
             __tmp297790
             gxc#current-compile-output-dir
             _outdir293059_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293060_
             gxc#current-compile-gsc-options
             _gsc-options293061_
             gxc#current-compile-keep-scm
             _keep-scm?293062_
             gxc#current-compile-verbose
             _verbosity293063_
             gxc#current-compile-debug
             _debug293064_
             gxc#current-compile-timestamp
             __tmp297789
             gxc#current-compile-context
             __tmp297787
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath293072_)
        (let ((_opts293074_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath293072_ _opts293074_))))
    (define gxc#compile-exe
      (lambda _g297794_
        (let ((_g297793_ (let () (declare (not safe)) (##length _g297794_))))
          (cond ((let () (declare (not safe)) (##fx= _g297793_ 1))
                 (apply (lambda (_srcpath293072_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath293072_)))
                        _g297794_))
                ((let () (declare (not safe)) (##fx= _g297793_ 2))
                 (apply (lambda (_srcpath293076_ _opts293077_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath293076_ _opts293077_)))
                        _g297794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g297794_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx293052_ _opts293053_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts293053_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx293052_
               _opts293053_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx293052_
               _opts293053_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx292935_ _opts292936_)
        (letrec ((_generate-stub292938_
                  (lambda (_builtin-modules293048_)
                    (let ((_mod-main293050_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292935_ 'main))))
                      (write (let ((__tmp297795
                                    (let ((__tmp297796
                                           (let ((__tmp297797
                                                  (let ((__tmp297798
                                                         (let ((__tmp297800
                                                                (let ((__tmp297801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules293048_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297801)))
                       (__tmp297799
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp297800 __tmp297799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp297798))))
                                             (declare (not safe))
                                             (cons __tmp297797 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp297796))))
                               (declare (not safe))
                               (cons 'define __tmp297795)))
                      (write (let ((__tmp297802
                                    (let ((__tmp297841
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297803
                                           (let ((__tmp297804
                                                  (let ((__tmp297805
                                                         (let ((__tmp297829
                                                                (let ((__tmp297830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297831
                                      (let ((__tmp297839
                                             (let ((__tmp297840
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp297840)))
                                            (__tmp297832
                                             (let ((__tmp297833
                                                    (let ((__tmp297834
                                                           (let ((__tmp297835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297836
                                 (let ((__tmp297837
                                        (let ((__tmp297838
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp297838 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp297837))))
                            (declare (not safe))
                            (cons __tmp297836 '()))))
                     (declare (not safe))
                     (cons _mod-main293050_ __tmp297835))))
              (declare (not safe))
              (cons 'apply __tmp297834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297833 '()))))
                                        (declare (not safe))
                                        (cons __tmp297839 __tmp297832))))
                                 (declare (not safe))
                                 (cons '() __tmp297831))))
                          (declare (not safe))
                          (cons 'lambda __tmp297830)))
                       (__tmp297806
                        (let ((__tmp297807
                               (let ((__tmp297808
                                      (let ((__tmp297809
                                             (let ((__tmp297820
                                                    (let ((__tmp297821
                                                           (let ((__tmp297822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297823
                                 (let ((__tmp297824
                                        (let ((__tmp297825
                                               (let ((__tmp297826
                                                      (let ((__tmp297827
                                                             (let ((__tmp297828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp297828 '()))))
                (declare (not safe))
                (cons 'force-output __tmp297827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp297826 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp297825))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp297824))))
                            (declare (not safe))
                            (cons __tmp297823 '()))))
                     (declare (not safe))
                     (cons 'void __tmp297822))))
              (declare (not safe))
              (cons 'with-catch __tmp297821)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp297810
                                                    (let ((__tmp297811
                                                           (let ((__tmp297812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297813
                                 (let ((__tmp297814
                                        (let ((__tmp297815
                                               (let ((__tmp297816
                                                      (let ((__tmp297817
                                                             (let ((__tmp297818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp297819
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp297819 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp297818))))
                (declare (not safe))
                (cons __tmp297817 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp297816))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp297815))))
                                   (declare (not safe))
                                   (cons __tmp297814 '()))))
                            (declare (not safe))
                            (cons 'void __tmp297813))))
                     (declare (not safe))
                     (cons 'with-catch __tmp297812))))
              (declare (not safe))
              (cons __tmp297811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297820
                                                     __tmp297810))))
                                        (declare (not safe))
                                        (cons '() __tmp297809))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp297808))))
                          (declare (not safe))
                          (cons __tmp297807 '()))))
                   (declare (not safe))
                   (cons __tmp297829 __tmp297806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp297805))))
                                             (declare (not safe))
                                             (cons __tmp297804 '()))))
                                      (declare (not safe))
                                      (cons __tmp297841 __tmp297803))))
                               (declare (not safe))
                               (cons 'define __tmp297802)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts292939_
                  (lambda (_libgerbil293046_)
                    (call-with-input-file
                     (string-append _libgerbil293046_ '".ldd")
                     read)))
                 (_replace-extension292940_
                  (lambda (_path293043_ _ext293044_)
                    (string-append
                     (path-strip-extension _path293043_)
                     _ext293044_)))
                 (_not-exclude-module?292941_
                  (lambda (_ctx293039_)
                    (let ((_id-str293041_
                           (symbol->string
                            (##structure-ref
                             _ctx293039_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp297843
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str293041_))))
                            (declare (not safe))
                            (not __tmp297843))
                          (let ((__tmp297842
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str293041_))))
                            (declare (not safe))
                            (not __tmp297842))
                          '#f))))
                 (_not-file-empty?292942_
                  (lambda (_path293037_)
                    (let ((__tmp297844
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path293037_))))
                      (declare (not safe))
                      (not __tmp297844))))
                 (_compile-stub292943_
                  (lambda (_output-scm292950_ _output-bin292951_)
                    (let* ((_gerbil-home292953_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292955_
                            (path-expand '"lib" _gerbil-home292953_))
                           (_gerbil-staticdir292957_
                            (path-expand '"static" _gerbil-libdir292955_))
                           (_gxlink292959_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir292955_))
                           (_tmp292961_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path292965_
                            (lambda (_f292963_)
                              (path-expand
                               (path-strip-directory _f292963_)
                               _tmp292961_)))
                           (_deps292967_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292935_)))
                           (_deps292969_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?292941_
                                      _deps292967_)))
                           (_src-deps-scm292971_
                            (map gxc#find-static-module-file _deps292969_))
                           (_src-deps-scm292973_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?292942_
                                      _src-deps-scm292971_)))
                           (_src-deps-scm292975_
                            (map path-expand _src-deps-scm292973_))
                           (_deps-scm292977_
                            (map _tmp-path292965_ _src-deps-scm292975_))
                           (_deps-c292983_
                            (map (lambda (_g292978292980_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292940_
                                      _g292978292980_
                                      '".c")))
                                 _deps-scm292977_))
                           (_deps-o292989_
                            (map (lambda (_g292984292986_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292940_
                                      _g292984292986_
                                      '".o")))
                                 _deps-scm292977_))
                           (_src-bin-scm292991_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292935_)))
                           (_src-bin-scm292993_
                            (path-expand _src-bin-scm292991_))
                           (_bin-scm292995_
                            (let ()
                              (declare (not safe))
                              (_tmp-path292965_ _src-bin-scm292993_)))
                           (_bin-c292997_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292940_
                               _bin-scm292995_
                               '".c")))
                           (_bin-o292999_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292940_
                               _bin-scm292995_
                               '".o")))
                           (_output-bin293001_
                            (path-expand _output-bin292951_))
                           (_output-scm293003_
                            (path-expand _output-scm292950_))
                           (_output-c293005_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292940_
                               _output-scm293003_
                               '".c")))
                           (_output-o293007_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292940_
                               _output-scm293003_
                               '".o")))
                           (_output_-c293009_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292940_
                               _output-scm293003_
                               '"_.c")))
                           (_output_-o293011_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292940_
                               _output-scm293003_
                               '"_.o")))
                           (_gsc-link-opts293013_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts293015_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts293017_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir292957_)))
                           (_output-ld-opts293019_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a293021_
                            (path-expand '"libgerbil.a" _gerbil-libdir292955_))
                           (_libgerbil.so293023_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir292955_))
                           (_libgerbil-ld-opts293025_
                            (if (file-exists? _libgerbil.so293023_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts292939_
                                   _libgerbil.so293023_))
                                (if (file-exists? _libgerbil.a293021_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts292939_
                                       _libgerbil.a293021_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a293021_
                                       _libgerbil.so293023_)))))
                           (_rpath293027_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292955_)))
                           (_builtin-modules293031_
                            (map (lambda (_mod293029_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod293029_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx292935_ _deps292969_)))))
                      (let ((__tmp297845
                             (lambda ()
                               (let ((__tmp297846
                                      (path-directory _output-bin293001_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297846)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297845))
                      (let ((__tmp297847
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub292938_
                                  _builtin-modules293031_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm293003_
                         __tmp297847))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297848
                                   (lambda () (create-directory _tmp292961_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp297848))
                            (for-each
                             copy-file
                             _src-deps-scm292975_
                             _deps-scm292977_)
                            (copy-file _src-bin-scm292993_ _bin-scm292995_)
                            (let ((__tmp297856
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297849
                                   (let ((__tmp297850
                                          (let ((__tmp297851
                                                 (let ((__tmp297852
                                                        (let ((__tmp297853
                                                               (let ((__tmp297854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297855
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm293003_ '()))))
                                (declare (not safe))
                                (cons _bin-scm292995_ __tmp297855))))
                         (declare (not safe))
                         (foldr1 cons __tmp297854 _deps-scm292977_))))
                  (declare (not safe))
                  (foldr1 cons __tmp297853 _gsc-link-opts293013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink292959_
                                                         __tmp297852))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp297851))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297850))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297856
                               __tmp297849))
                            (let ((__tmp297864
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297857
                                   (let ((__tmp297858
                                          (let ((__tmp297859
                                                 (let ((__tmp297860
                                                        (let ((__tmp297861
                                                               (let ((__tmp297862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297863
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c293009_ '()))))
                                (declare (not safe))
                                (cons _output-c293005_ __tmp297863))))
                         (declare (not safe))
                         (cons _bin-c292997_ __tmp297862))))
                  (declare (not safe))
                  (foldr1 cons __tmp297861 _deps-c292983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297860
                                                           _gsc-static-opts293017_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297859
                                                    _gsc-cc-opts293015_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297858))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297864
                               __tmp297857))
                            (let ((__tmp297877
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297865
                                   (let ((__tmp297866
                                          (let ((__tmp297867
                                                 (let ((__tmp297868
                                                        (let ((__tmp297869
                                                               (let ((__tmp297870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297871
                                     (let ((__tmp297872
                                            (let ((__tmp297873
                                                   (let ((__tmp297874
                                                          (let ((__tmp297875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp297876
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts293025_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp297876))))
                    (declare (not safe))
                    (cons _gerbil-libdir292955_ __tmp297875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp297874))))
                                              (declare (not safe))
                                              (cons _rpath293027_
                                                    __tmp297873))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp297872
                                               _output-ld-opts293019_))))
                                (declare (not safe))
                                (cons _output_-o293011_ __tmp297871))))
                         (declare (not safe))
                         (cons _output-o293007_ __tmp297870))))
                  (declare (not safe))
                  (cons _bin-o292999_ __tmp297869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297868
                                                           _deps-o292989_))))
                                            (declare (not safe))
                                            (cons _output-bin293001_
                                                  __tmp297867))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297866))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297877
                               __tmp297865))
                            (for-each
                             delete-file
                             (let ((__tmp297878
                                    (let ((__tmp297879
                                           (let ((__tmp297880
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o293011_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o293007_
                                                   __tmp297880))))
                                      (declare (not safe))
                                      (cons _output_-c293009_ __tmp297879))))
                               (declare (not safe))
                               (cons _output-c293005_ __tmp297878)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp292961_)))
                          '#!void)))))
          (let* ((_output-bin292945_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292935_ _opts292936_)))
                 (_output-scm292947_
                  (string-append _output-bin292945_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292943_ _output-scm292947_ _output-bin292945_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292947_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx292760_ _opts292761_)
        (letrec ((_reset-declare292763_
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
                 (_generate-stub292764_
                  (lambda (_deps292926_)
                    (let ((_mod-main292928_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292760_ 'main)))
                          (_reset-decl292929_
                           (let ()
                             (declare (not safe))
                             (_reset-declare292763_)))
                          (_user-decl292930_
                           (let ()
                             (declare (not safe))
                             (_user-declare292765_))))
                      (for-each
                       (lambda (_dep292932_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl292929_)
                         (newline)
                         (if _user-decl292930_
                             (begin (write _user-decl292930_) (newline))
                             '#!void)
                         (write (let ((__tmp297881
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep292932_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp297881)))
                         (newline))
                       _deps292926_)
                      (write (let ((__tmp297882
                                    (let ((__tmp297895
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297883
                                           (let ((__tmp297891
                                                  (let ((__tmp297892
                                                         (let ((__tmp297893
                                                                (let ((__tmp297894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297894))))
                   (declare (not safe))
                   (cons __tmp297893 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp297892)))
                                                 (__tmp297884
                                                  (let ((__tmp297885
                                                         (let ((__tmp297886
                                                                (let ((__tmp297887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297888
                                      (let ((__tmp297889
                                             (let ((__tmp297890
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp297890 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp297889))))
                                 (declare (not safe))
                                 (cons __tmp297888 '()))))
                          (declare (not safe))
                          (cons _mod-main292928_ __tmp297887))))
                   (declare (not safe))
                   (cons 'apply __tmp297886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297885 '()))))
                                             (declare (not safe))
                                             (cons __tmp297891 __tmp297884))))
                                      (declare (not safe))
                                      (cons __tmp297895 __tmp297883))))
                               (declare (not safe))
                               (cons 'define __tmp297882)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare292765_
                  (lambda ()
                    (let* ((_gsc-opts292831_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts292761_)))
                           (_gsc-prelude292833_
                            (if _gsc-opts292831_
                                (member '"-prelude" _gsc-opts292831_)
                                '#f))
                           (_gsc-prelude292835_
                            (if _gsc-prelude292833_
                                (read (open-input-string
                                       (cadr _gsc-prelude292833_)))
                                '#f)))
                      (let _lp292838_ ((_rest292840_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude292835_ '())))
                                       (_user-decls292841_ '()))
                        (let* ((_rest292842292850_ _rest292840_)
                               (_else292844292858_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls292841_))
                                      '#f
                                      (let ((__tmp297896
                                             (reverse _user-decls292841_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp297896)))))
                               (_K292846292914_
                                (lambda (_rest292861_ _expr292862_)
                                  (let* ((_expr292863292875_ _expr292862_)
                                         (_else292866292883_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp292838_
                                               _rest292861_
                                               _user-decls292841_)))))
                                    (let ((_K292871292904_
                                           (lambda (_decls292902_)
                                             (let ((__tmp297897
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls292841_
                                                              _decls292902_))))
                                               (declare (not safe))
                                               (_lp292838_
                                                _rest292861_
                                                __tmp297897))))
                                          (_K292868292889_
                                           (lambda (_exprs292887_)
                                             (let ((__tmp297898
                                                    (append _exprs292887_
                                                            _rest292861_)))
                                               (declare (not safe))
                                               (_lp292838_
                                                __tmp297898
                                                _user-decls292841_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr292863292875_))
                                          (let ((_tl292873292909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr292863292875_)))
                                                (_hd292872292907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr292863292875_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd292872292907_
                                                         'declare))
                                                (let ((_decls292912_
                                                       _tl292873292909_))
                                                  (declare (not safe))
                                                  (_K292871292904_
                                                   _decls292912_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd292872292907_
                                                             'begin))
                                                    (let ((_exprs292897_
                                                           _tl292873292909_))
                                                      (declare (not safe))
                                                      (_K292868292889_
                                                       _exprs292897_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else292866292883_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else292866292883_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest292842292850_))
                              (let ((_hd292847292917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest292842292850_)))
                                    (_tl292848292919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest292842292850_))))
                                (let* ((_expr292922_ _hd292847292917_)
                                       (_rest292924_ _tl292848292919_))
                                  (declare (not safe))
                                  (_K292846292914_ _rest292924_ _expr292922_)))
                              (let ()
                                (declare (not safe))
                                (_else292844292858_))))))))
                 (_compile-stub292766_
                  (lambda (_output-scm292773_ _output-bin292774_)
                    (let* ((_gerbil-home292776_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292778_
                            (path-expand '"lib" _gerbil-home292776_))
                           (_runtime292780_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp292782_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home292776_))
                           (_include-gambit-sharp292784_
                            (string-append
                             '"(include \""
                             _gambit-sharp292782_
                             '"\")"))
                           (_bin-scm292786_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292760_)))
                           (_deps292788_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292760_)))
                           (_deps292790_
                            (map gxc#find-static-module-file _deps292788_))
                           (_deps292795_
                            (let ((__tmp297899
                                   (lambda (_$obj292792_)
                                     (let ((__tmp297900
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj292792_))))
                                       (declare (not safe))
                                       (not __tmp297900)))))
                              (declare (not safe))
                              (filter __tmp297899 _deps292790_)))
                           (_deps292799_
                            (let ((__tmp297901
                                   (lambda (_f292797_)
                                     (let ((__tmp297902
                                            (member _f292797_
                                                    _runtime292780_)))
                                       (declare (not safe))
                                       (not __tmp297902)))))
                              (declare (not safe))
                              (filter __tmp297901 _deps292795_)))
                           (_output-base292801_
                            (string-append
                             (path-strip-extension _output-scm292773_)))
                           (_output-c292803_
                            (string-append _output-base292801_ '".c"))
                           (_output-o292805_
                            (string-append _output-base292801_ '".o"))
                           (_output-c_292807_
                            (string-append _output-base292801_ '"_.c"))
                           (_output-o_292809_
                            (string-append _output-base292801_ '"_.o"))
                           (_gsc-link-opts292811_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292813_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292815_
                            (let ((__tmp297903
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir292778_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp297903)))
                           (_output-ld-opts292817_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros292819_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp297905
                                       (let ((__tmp297906
                                              (let ((__tmp297907
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp292784_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp297907))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp297906))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297905))
                                (let ((__tmp297904
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp292784_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297904))))
                           (_gsc-link-opts292821_
                            (append _gsc-link-opts292811_
                                    _gsc-gx-macros292819_))
                           (_rpath292823_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292778_)))
                           (_default-ld-options292825_
                            (let ((__tmp297908
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp297908))))
                      (let ((__tmp297909
                             (lambda ()
                               (let ((__tmp297910
                                      (path-directory _output-bin292774_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297910)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297909))
                      (let ((__tmp297911
                             (lambda ()
                               (let ((__tmp297912
                                      (let ((__tmp297913
                                             (let ((__tmp297914
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm292786_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp297914
                                                       _deps292799_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp297913
                                                _runtime292780_))))
                                 (declare (not safe))
                                 (_generate-stub292764_ __tmp297912)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292773_
                         __tmp297911))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297920
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297915
                                   (let ((__tmp297916
                                          (let ((__tmp297917
                                                 (let ((__tmp297918
                                                        (let ((__tmp297919
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm292773_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp297919 _gsc-link-opts292821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_292807_
                                                         __tmp297918))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp297917))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297916))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297920
                               __tmp297915))
                            (let ((__tmp297926
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297921
                                   (let ((__tmp297922
                                          (let ((__tmp297923
                                                 (let ((__tmp297924
                                                        (let ((__tmp297925
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_292807_ '()))))
                  (declare (not safe))
                  (cons _output-c292803_ __tmp297925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297924
                                                           _gsc-static-opts292815_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297923
                                                    _gsc-cc-opts292813_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297922))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297926
                               __tmp297921))
                            (let ((__tmp297936
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297927
                                   (let ((__tmp297928
                                          (let ((__tmp297929
                                                 (let ((__tmp297930
                                                        (let ((__tmp297931
                                                               (let ((__tmp297932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297933
                                     (let ((__tmp297934
                                            (let ((__tmp297935
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options292825_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir292778_
                                                    __tmp297935))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp297934))))
                                (declare (not safe))
                                (cons _rpath292823_ __tmp297933))))
                         (declare (not safe))
                         (foldr1 cons __tmp297932 _output-ld-opts292817_))))
                  (declare (not safe))
                  (cons _output-o_292809_ __tmp297931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o292805_
                                                         __tmp297930))))
                                            (declare (not safe))
                                            (cons _output-bin292774_
                                                  __tmp297929))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297928))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297936
                               __tmp297927)))
                          '#!void)))))
          (let* ((_output-bin292768_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292760_ _opts292761_)))
                 (_output-scm292770_
                  (string-append _output-bin292768_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292766_ _output-scm292770_ _output-bin292768_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292770_))))))
    (define gxc#find-export-binding
      (lambda (_ctx292710_ _id292711_)
        (let ((_$e292757_
               (let ((__tmp297938
                      (lambda (_e292712292714_)
                        (let* ((_g292716292726_ _e292712292714_)
                               (_else292718292734_ (lambda () '#f))
                               (_K292720292738_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g292716292726_
                                 'gx#module-export::t))
                              (let* ((_e292721292741_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292716292726_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e292722292744_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292716292726_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e292723292747_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292716292726_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e292723292747_ '0))
                                    (let ((_e292724292750_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g292716292726_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g292752292754_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g292752292754_
                                                    _id292711_)))
                                           _e292724292750_)
                                          (let ()
                                            (declare (not safe))
                                            (_K292720292738_))
                                          (let ()
                                            (declare (not safe))
                                            (_else292718292734_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else292718292734_))))
                              (let ()
                                (declare (not safe))
                                (_else292718292734_))))))
                     (__tmp297937
                      (##structure-ref
                       _ctx292710_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp297938 __tmp297937))))
          (if _$e292757_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e292757_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx292702_ _id292703_)
        (let ((_$e292705_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx292702_ _id292703_))))
          (if _$e292705_
              ((lambda (_bind292708_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind292708_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id292703_)))
                 (##structure-ref _bind292708_ '1 gx#binding::t '#f))
               _$e292705_)
              (let ((__tmp297939
                     (##structure-ref
                      _ctx292702_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp297939
                 _id292703_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx292589_)
        (letrec* ((_ht292591_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template292592_
                   (lambda (_in292654_ _phi292655_)
                     (let ((_iphi292657_
                            (fx+ _phi292655_
                                 (##direct-structure-ref
                                  _in292654_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports292658_
                            (##structure-ref
                             (##direct-structure-ref
                              _in292654_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp292660_ ((_rest292662_ _imports292658_)
                                        (_r292663_ '()))
                         (let* ((_rest292664292672_ _rest292662_)
                                (_else292666292680_ (lambda () _r292663_))
                                (_K292668292690_
                                 (lambda (_rest292683_ _in292684_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in292684_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi292657_))
                                           (let ((__tmp297946
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in292684_
                                                          _r292663_))))
                                             (declare (not safe))
                                             (_lp292660_
                                              _rest292683_
                                              __tmp297946))
                                           (let ()
                                             (declare (not safe))
                                             (_lp292660_
                                              _rest292683_
                                              _r292663_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in292684_
                                              'gx#module-import::t))
                                           (let ((_iphi292686_
                                                  (fx+ _phi292655_
                                                       (##direct-structure-ref
                                                        _in292684_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi292686_))
                                                 (let ((__tmp297944
                                                        (let ((__tmp297945
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in292684_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp297945 _r292663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp292660_
                                                    _rest292683_
                                                    __tmp297944))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp292660_
                                                    _rest292683_
                                                    _r292663_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in292684_
                                                  'gx#import-set::t))
                                               (let ((_xphi292688_
                                                      (fx+ _iphi292657_
                                                           (##direct-structure-ref
                                                            _in292684_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi292688_))
                                                     (let ((__tmp297942
                                                            (let ((__tmp297943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in292684_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp297943 _r292663_))))
               (declare (not safe))
               (_lp292660_ _rest292683_ __tmp297942))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi292688_)
                                                         (let ((__tmp297940
                                                                (let ((__tmp297941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template292592_
                                  _in292684_
                                  _iphi292657_))))
                          (declare (not safe))
                          (foldl1 cons _r292663_ __tmp297941))))
                   (declare (not safe))
                   (_lp292660_ _rest292683_ __tmp297940))
                 (let ()
                   (declare (not safe))
                   (_lp292660_ _rest292683_ _r292663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp292660_
                                                  _rest292683_
                                                  _r292663_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest292664292672_))
                               (let ((_hd292669292693_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest292664292672_)))
                                     (_tl292670292695_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest292664292672_))))
                                 (let* ((_in292698_ _hd292669292693_)
                                        (_rest292700_ _tl292670292695_))
                                   (declare (not safe))
                                   (_K292668292690_ _rest292700_ _in292698_)))
                               (let ()
                                 (declare (not safe))
                                 (_else292666292680_))))))))
                  (_find-deps292593_
                   (lambda (_rest292600_ _deps292601_)
                     (let* ((_rest292602292610_ _rest292600_)
                            (_else292604292618_ (lambda () _deps292601_))
                            (_K292606292642_
                             (lambda (_rest292621_ _hd292622_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd292622_
                                      'gx#module-context::t))
                                   (let ((_id292624_
                                          (##structure-ref
                                           _hd292622_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports292625_
                                          (##structure-ref
                                           _hd292622_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht292591_
                                            _id292624_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps292593_
                                            _rest292621_
                                            _deps292601_))
                                         (let ((_$e292627_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd292622_))))
                                           (if _$e292627_
                                               ((lambda (_pre292630_)
                                                  (let ((_xdeps292632_
                                                         (let ((__tmp297959
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre292630_ _imports292625_))))
                   (declare (not safe))
                   (_find-deps292593_ __tmp297959 _deps292601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht292591_
                                                       _id292624_
                                                       _hd292622_))
                                                    (let ((__tmp297960
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd292622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps292632_))))
              (declare (not safe))
              (_find-deps292593_ _rest292621_ __tmp297960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e292627_)
                                               (let ((_xdeps292634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps292593_
                                                         _imports292625_
                                                         _deps292601_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht292591_
                                                    _id292624_
                                                    _hd292622_))
                                                 (let ((__tmp297958
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd292622_
                                                                _xdeps292634_))))
                                                   (declare (not safe))
                                                   (_find-deps292593_
                                                    _rest292621_
                                                    __tmp297958)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd292622_
                                          'gx#prelude-context::t))
                                       (let ((_id292636_
                                              (##structure-ref
                                               _hd292622_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht292591_
                                                _id292636_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps292593_
                                                _rest292621_
                                                _deps292601_))
                                             (let ((_xdeps292638_
                                                    (let ((__tmp297956
                                                           (##structure-ref
                                                            _hd292622_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps292593_
                                                       __tmp297956
                                                       _deps292601_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht292591_
                                                      _id292636_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps292593_
                                                      _rest292621_
                                                      _xdeps292638_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht292591_
                                                        _id292636_
                                                        _hd292622_))
                                                     (let ((__tmp297957
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd292622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps292638_))))
               (declare (not safe))
               (_find-deps292593_ _rest292621_ __tmp297957)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd292622_
                                              'gx#module-import::t))
                                           (if (let ((__tmp297955
                                                      (##direct-structure-ref
                                                       _hd292622_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp297955))
                                               (let ((__tmp297953
                                                      (let ((__tmp297954
                                                             (##direct-structure-ref
                                                              _hd292622_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297954
                                                              _rest292621_))))
                                                 (declare (not safe))
                                                 (_find-deps292593_
                                                  __tmp297953
                                                  _deps292601_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps292593_
                                                  _rest292621_
                                                  _deps292601_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd292622_
                                                  'gx#module-export::t))
                                               (let ((__tmp297951
                                                      (let ((__tmp297952
                                                             (##direct-structure-ref
                                                              _hd292622_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297952
                                                              _rest292621_))))
                                                 (declare (not safe))
                                                 (_find-deps292593_
                                                  __tmp297951
                                                  _deps292601_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd292622_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp297950
                                                              (##direct-structure-ref
                                                               _hd292622_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp297950))
                                                       (let ((__tmp297948
                                                              (let ((__tmp297949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd292622_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp297949 _rest292621_))))
                 (declare (not safe))
                 (_find-deps292593_ __tmp297948 _deps292601_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd292622_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps292640_
                           (let ()
                             (declare (not safe))
                             (_import-set-template292592_ _hd292622_ '0)))
                          (__tmp297947
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest292621_ _xdeps292640_))))
                     (declare (not safe))
                     (_find-deps292593_ __tmp297947 _deps292601_))
                   (let ()
                     (declare (not safe))
                     (_find-deps292593_ _rest292621_ _deps292601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd292622_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest292602292610_))
                           (let ((_hd292607292645_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest292602292610_)))
                                 (_tl292608292647_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest292602292610_))))
                             (let* ((_hd292650_ _hd292607292645_)
                                    (_rest292652_ _tl292608292647_))
                               (declare (not safe))
                               (_K292606292642_ _rest292652_ _hd292650_)))
                           (let ()
                             (declare (not safe))
                             (_else292604292618_)))))))
          (reverse (let ((__tmp297961
                          (let ((__tmp297962
                                 (let ((_$e292595_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx292589_))))
                                   (if _$e292595_
                                       ((lambda (_pre292598_)
                                          (let ((__tmp297963
                                                 (##structure-ref
                                                  _ctx292589_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre292598_ __tmp297963)))
                                        _$e292595_)
                                       (##structure-ref
                                        _ctx292589_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps292593_ __tmp297962 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp297961))))))
    (define gxc#find-static-module-file
      (lambda (_ctx292520_)
        (let* ((_context-id292522_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx292520_
                       'gx#module-context::t))
                    (##structure-ref _ctx292520_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx292520_)))
               (_scm292524_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id292522_))
                 '".scm"))
               (_dirs292526_ (gx#current-expander-module-library-path))
               (_dirs292532_
                (let ((_user-libpath292528_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath292528_
                      (let ((_user-libpath292530_
                             (path-expand '"lib" _user-libpath292528_)))
                        (if (member _user-libpath292530_ _dirs292526_)
                            _dirs292526_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath292530_ _dirs292526_))))
                      _dirs292526_)))
               (_dirs292541_
                (let ((_$e292534_ (gxc#current-compile-output-dir)))
                  (if _$e292534_
                      ((lambda (_g292536292538_)
                         (let ()
                           (declare (not safe))
                           (cons _g292536292538_ _dirs292532_)))
                       _$e292534_)
                      _dirs292532_)))
               (_dirs292547_
                (map (lambda (_g292542292544_)
                       (path-expand '"static" _g292542292544_))
                     _dirs292541_)))
          (let _lp292550_ ((_rest292552_ _dirs292547_))
            (let* ((_rest292553292561_ _rest292552_)
                   (_else292555292569_
                    (lambda ()
                      (let ((__tmp297964
                             (##structure-ref
                              _ctx292520_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp297964
                         _scm292524_))))
                   (_K292557292577_
                    (lambda (_rest292572_ _dir292573_)
                      (let ((_path292575_
                             (path-expand _scm292524_ _dir292573_)))
                        (if (file-exists? _path292575_)
                            _path292575_
                            (let ()
                              (declare (not safe))
                              (_lp292550_ _rest292572_)))))))
              (if (let () (declare (not safe)) (##pair? _rest292553292561_))
                  (let ((_hd292558292580_
                         (let ()
                           (declare (not safe))
                           (##car _rest292553292561_)))
                        (_tl292559292582_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292553292561_))))
                    (let* ((_dir292585_ _hd292558292580_)
                           (_rest292587_ _tl292559292582_))
                      (declare (not safe))
                      (_K292557292577_ _rest292587_ _dir292585_)))
                  (let () (declare (not safe)) (_else292555292569_))))))))
    (define gxc#file-empty?
      (lambda (_path292518_)
        (let ((__tmp297965 (file-info-size (file-info _path292518_ '#t))))
          (declare (not safe))
          (zero? __tmp297965))))
    (define gxc#compile-top-module
      (lambda (_ctx292507_)
        (let ((__tmp297969
               (lambda ()
                 (let ((__tmp297970
                        (##structure-ref
                         _ctx292507_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp297970))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp297971
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx292507_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp297971))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx292507_))
                 (if (let ((__tmp297974
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx292507_))))
                       (declare (not safe))
                       (null? __tmp297974))
                     (let* ((_thr1292512_
                             (let ((__tmp297972
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx292507_)))))
                               (declare (not safe))
                               (spawn __tmp297972)))
                            (_thr2292515_
                             (let ((__tmp297973
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx292507_)))))
                               (declare (not safe))
                               (spawn __tmp297973))))
                       (let () (declare (not safe)) (gxc#join! _thr1292512_))
                       (let () (declare (not safe)) (gxc#join! _thr2292515_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx292507_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx292507_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx292507_))
                     '#!void)))
              (__tmp297968
               (let ((__obj297773
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj297773)
                 __obj297773))
              (__tmp297967
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp297966 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp297969
           gx#current-expander-context
           _ctx292507_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp297968
           gxc#current-compile-runtime-sections
           __tmp297967
           gxc#current-compile-runtime-names
           __tmp297966))))
    (define gxc#collect-bindings
      (lambda (_ctx292505_)
        (let ((__tmp297975
               (##structure-ref _ctx292505_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp297975))))
    (define gxc#compile-runtime-code
      (lambda (_ctx292451_)
        (letrec ((_compile1292453_
                  (lambda (_ctx292494_)
                    (let* ((_code292496_
                            (##structure-ref
                             _ctx292494_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt292500_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code292496_))
                                (let ((_idstr292498_
                                       (let ((__tmp297976
                                              (##structure-ref
                                               _ctx292494_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp297976))))
                                  (string-append _idstr292498_ '"__0"))
                                '#f)))
                      (if _rt292500_
                          (begin
                            (let ((__tmp297977
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp297977 _ctx292494_ _rt292500_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code292455_
                               _ctx292494_
                               _code292496_)))
                          (let ((_path292503_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx292494_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path292503_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code292456_
                         _ctx292494_
                         _code292496_
                         _rt292500_)))))
                 (_context-timestamp292454_
                  (lambda (_ctx292492_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx292492_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code292455_
                  (lambda (_ctx292474_ _code292475_)
                    (let* ((_lifts292477_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code292480_
                            (let ((__tmp297980
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code292475_))))
                                  (__tmp297979
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp297978
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297980
                               gx#current-expander-context
                               _ctx292474_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts292477_
                               gxc#current-compile-marks
                               __tmp297979
                               gxc#current-compile-identifiers
                               __tmp297978)))
                           (_runtime-code292482_
                            (if (let ((__tmp297984 (unbox _lifts292477_)))
                                  (declare (not safe))
                                  (null? __tmp297984))
                                _runtime-code292480_
                                (let ((__tmp297981
                                       (let ((__tmp297983
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code292480_
                                                      '())))
                                             (__tmp297982
                                              (reverse (unbox _lifts292477_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp297983
                                                 __tmp297982))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297981))))
                           (_runtime-code292484_
                            (let ((__tmp297985
                                   (let ((__tmp297987
                                          (let ((__tmp297988
                                                 (let ((__tmp297991
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp292454_
                                                           _ctx292474_)))
                                                       (__tmp297989
                                                        (let ((__tmp297990
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp297990
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp297991
                                                         __tmp297989))))
                                            (declare (not safe))
                                            (cons 'define __tmp297988)))
                                         (__tmp297986
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code292482_ '()))))
                                     (declare (not safe))
                                     (cons __tmp297987 __tmp297986))))
                              (declare (not safe))
                              (cons 'begin __tmp297985)))
                           (_scm0292486_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292474_
                               '0
                               '".scm"))))
                      (let ((_scms292489_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx292474_))))
                        (let ((__tmp297992
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0292486_
                                    _runtime-code292484_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp297992
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms292489_)
                            (delete-file _scms292489_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0292486_
                           '" => "
                           _scms292489_))
                        (copy-file _scm0292486_ _scms292489_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0292486_))))))
                 (_generate-loader-code292456_
                  (lambda (_ctx292463_ _code292464_ _rt292465_)
                    (let* ((_loader-code292468_
                            (let ((__tmp297993
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code292464_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297993
                               gx#current-expander-context
                               _ctx292463_)))
                           (_loader-code292470_
                            (if _rt292465_
                                (let ((__tmp297994
                                       (let ((__tmp297995
                                              (let ((__tmp297996
                                                     (let ((__tmp297997
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt292465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp297997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp297996 '()))))
                                         (declare (not safe))
                                         (cons _loader-code292468_
                                               __tmp297995))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297994))
                                _loader-code292468_)))
                      (let ((__tmp297998
                             (lambda ()
                               (let ((__tmp297999
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292463_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp297999
                                  _loader-code292470_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp297998
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules292458_
                 (let ((__tmp298000
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx292451_))))
                   (declare (not safe))
                   (cons _ctx292451_ __tmp298000))))
            (for-each
             (lambda (_ctx292460_)
               (let ((__tmp298001
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1292453_ _ctx292460_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp298001
                  gxc#current-compile-decls
                  '())))
             _all-modules292458_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx292348_)
        (letrec ((_compile-ssi292350_
                  (lambda (_code292421_)
                    (let* ((_path292423_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292348_
                               '#f
                               '".ssi")))
                           (_prelude292434_
                            (let* ((_super292425_
                                    (##structure-ref
                                     _ctx292348_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e292427_
                                    (##structure-ref
                                     _super292425_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e292427_
                                  ((lambda (_g292429292431_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g292429292431_)))
                                   _$e292427_)
                                  ':<root>)))
                           (_ns292436_
                            (##structure-ref
                             _ctx292348_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr292438_
                            (symbol->string
                             (##structure-ref
                              _ctx292348_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg292445_
                            (let ((_$e292440_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr292438_ '#\/))))
                              (if _$e292440_
                                  ((lambda (_x292443_)
                                     (string->symbol
                                      (substring _idstr292438_ '0 _x292443_)))
                                   _$e292440_)
                                  '#f)))
                           (_rt292447_
                            (let ((__tmp298002
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp298002 _ctx292348_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path292423_))
                      (let ((__tmp298003
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude292434_))
                               (if _pkg292445_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg292445_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns292436_))
                               (newline)
                               (pretty-print _code292421_)
                               (if _rt292447_
                                   (pretty-print
                                    (let ((__tmp298004
                                           (let ((__tmp298008
                                                  (let ((__tmp298009
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp298009)))
                                                 (__tmp298005
                                                  (let ((__tmp298006
                                                         (let ((__tmp298007
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt292447_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp298007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298006 '()))))
                                             (declare (not safe))
                                             (cons __tmp298008 __tmp298005))))
                                      (declare (not safe))
                                      (cons '%#call __tmp298004)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path292423_
                         __tmp298003)))))
                 (_compile-phi292351_
                  (lambda (_part292361_)
                    (let* ((_part292362292375_ _part292361_)
                           (_E292364292379_
                            (lambda ()
                              (error '"No clause matching"
                                     _part292362292375_)))
                           (_K292365292390_
                            (lambda (_code292382_
                                     _n292383_
                                     _phi292384_
                                     _phi-ctx292385_)
                              (let* ((_code292388_
                                      (let ((__tmp298010
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code292382_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp298010
                                         gx#current-expander-context
                                         _phi-ctx292385_
                                         gx#current-expander-phi
                                         _phi292384_)))
                                     (__tmp298011
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292348_
                                         _n292383_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp298011
                                 _code292388_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part292362292375_))
                          (let ((_hd292366292393_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part292362292375_)))
                                (_tl292367292395_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part292362292375_))))
                            (let ((_phi-ctx292398_ _hd292366292393_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl292367292395_))
                                  (let ((_hd292368292400_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl292367292395_)))
                                        (_tl292369292402_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl292367292395_))))
                                    (let ((_phi292405_ _hd292368292400_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl292369292402_))
                                          (let ((_hd292370292407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl292369292402_)))
                                                (_tl292371292409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl292369292402_))))
                                            (let ((_n292412_ _hd292370292407_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl292371292409_))
                                                  (let ((_hd292372292414_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl292371292409_)))
                                                        (_tl292373292416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl292371292409_))))
                                                    (let ((_code292419_
                                                           _hd292372292414_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl292373292416_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K292365292390_
                                                             _code292419_
                                                             _n292412_
                                                             _phi292405_
                                                             _phi-ctx292398_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E292364292379_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E292364292379_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E292364292379_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E292364292379_)))))
                          (let () (declare (not safe)) (_E292364292379_)))))))
          (let ((_g298012_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx292348_))))
            (begin
              (let ((_g298013_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g298012_)
                           (##vector-length _g298012_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g298013_ 2)))
                    (error "Context expects 2 values" _g298013_)))
              (let ((_ssi-code292353_
                     (let () (declare (not safe)) (##vector-ref _g298012_ 0)))
                    (_phi-code292354_
                     (let () (declare (not safe)) (##vector-ref _g298012_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi292350_ _ssi-code292353_))
                  (let ((_threads292359_
                         (map (lambda (_code292356_)
                                (let ((__tmp298014
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi292351_
                                            _code292356_)))))
                                  (declare (not safe))
                                  (spawn __tmp298014)))
                              _phi-code292354_)))
                    (for-each gxc#join! _threads292359_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx292331_)
        (let* ((_path292333_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx292331_ '#f '".ssxi.ss")))
               (_code292335_
                (let ((__tmp298015
                       (##structure-ref
                        _ctx292331_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp298015)))
               (_idstr292337_
                (symbol->string
                 (##structure-ref _ctx292331_ '1 gx#expander-context::t '#f)))
               (_pkg292344_
                (let ((_$e292339_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr292337_ '#\/))))
                  (if _$e292339_
                      ((lambda (_x292342_)
                         (string->symbol
                          (substring _idstr292337_ '0 _x292342_)))
                       _$e292339_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path292333_))
          (let ((__tmp298016
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg292344_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg292344_))
                       '#!void)
                   (newline)
                   (pretty-print _code292335_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path292333_ __tmp298016)))))
    (define gxc#generate-meta-code
      (lambda (_ctx292324_)
        (let* ((_state292326_
                (let ((__obj297774
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj297774 _ctx292324_)
                  __obj297774))
               (_ssi-code292328_
                (let ((__tmp298017
                       (##structure-ref
                        _ctx292324_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp298017 _state292326_))))
          (values _ssi-code292328_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state292326_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx292317_)
        (let ((_lifts292319_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298020
                 (lambda ()
                   (let ((_code292322_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx292317_))))
                     (if (let ((__tmp298024 (unbox _lifts292319_)))
                           (declare (not safe))
                           (null? __tmp298024))
                         _code292322_
                         (let ((__tmp298021
                                (let ((__tmp298023
                                       (let ()
                                         (declare (not safe))
                                         (cons _code292322_ '())))
                                      (__tmp298022
                                       (reverse (unbox _lifts292319_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp298023 __tmp298022))))
                           (declare (not safe))
                           (cons 'begin __tmp298021))))))
                (__tmp298019
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp298018
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp298020
             gxc#current-compile-lift
             _lifts292319_
             gxc#current-compile-marks
             __tmp298019
             gxc#current-compile-identifiers
             __tmp298018)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx292313_)
        (let ((_modules292315_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298025
                 (##structure-ref _ctx292313_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp298025 _modules292315_))
          (reverse (unbox _modules292315_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path292296_ _code292297_ _phi?292298_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path292296_))
        (let ((__tmp298026
               (lambda ()
                 (pretty-print
                  (let ((__tmp298027
                         (let ((__tmp298034
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp298028
                                (let ((__tmp298033
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp298029
                                       (let ((__tmp298032
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp298030
                                              (let ((__tmp298031
                                                     (if _phi?292298_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp298031))))
                                         (declare (not safe))
                                         (cons __tmp298032 __tmp298030))))
                                  (declare (not safe))
                                  (cons __tmp298033 __tmp298029))))
                           (declare (not safe))
                           (cons __tmp298034 __tmp298028))))
                    (declare (not safe))
                    (cons 'declare __tmp298027)))
                 (pretty-print _code292297_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path292296_ __tmp298026))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path292296_ _phi?292298_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path292296_))))
    (define gxc#compile-scm-file__0
      (lambda (_path292304_ _code292305_)
        (let ((_phi?292307_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path292304_ _code292305_ _phi?292307_))))
    (define gxc#compile-scm-file
      (lambda _g298036_
        (let ((_g298035_ (let () (declare (not safe)) (##length _g298036_))))
          (cond ((let () (declare (not safe)) (##fx= _g298035_ 2))
                 (apply (lambda (_path292304_ _code292305_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path292304_
                             _code292305_)))
                        _g298036_))
                ((let () (declare (not safe)) (##fx= _g298035_ 3))
                 (apply (lambda (_path292309_ _code292310_ _phi?292311_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path292309_
                             _code292310_
                             _phi?292311_)))
                        _g298036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g298036_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?292197_)
        (let _lp292199_ ((_rest292201_ (gxc#current-compile-gsc-options))
                         (_opts292202_ '()))
          (let* ((_rest292203292223_ _rest292201_)
                 (_else292207292231_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292197_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298037
                               (let ((__tmp298038 (reverse _opts292202_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp298038))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp298037))
                        (reverse _opts292202_)))))
            (let ((_K292217292274_
                   (lambda (_rest292272_)
                     (let ()
                       (declare (not safe))
                       (_lp292199_ _rest292272_ _opts292202_))))
                  (_K292212292256_
                   (lambda (_rest292254_)
                     (let ()
                       (declare (not safe))
                       (_lp292199_ _rest292254_ _opts292202_))))
                  (_K292209292238_
                   (lambda (_rest292235_ _opt292236_)
                     (let ((__tmp298039
                            (let ()
                              (declare (not safe))
                              (cons _opt292236_ _opts292202_))))
                       (declare (not safe))
                       (_lp292199_ _rest292235_ __tmp298039)))))
              (if (let () (declare (not safe)) (##pair? _rest292203292223_))
                  (let ((_tl292219292279_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292203292223_)))
                        (_hd292218292277_
                         (let ()
                           (declare (not safe))
                           (##car _rest292203292223_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292218292277_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292219292279_))
                            (let* ((_tl292221292282_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292219292279_)))
                                   (_rest292285_ _tl292221292282_))
                              (declare (not safe))
                              (_K292217292274_ _rest292285_))
                            (let ((_opt292246_ _hd292218292277_)
                                  (_rest292248_ _tl292219292279_))
                              (let ()
                                (declare (not safe))
                                (_K292209292238_ _rest292248_ _opt292246_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292218292277_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292219292279_))
                                (let* ((_tl292216292264_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292219292279_)))
                                       (_rest292267_ _tl292216292264_))
                                  (declare (not safe))
                                  (_K292212292256_ _rest292267_))
                                (let ((_opt292246_ _hd292218292277_)
                                      (_rest292248_ _tl292219292279_))
                                  (let ()
                                    (declare (not safe))
                                    (_K292209292238_
                                     _rest292248_
                                     _opt292246_))))
                            (let ((_opt292246_ _hd292218292277_)
                                  (_rest292248_ _tl292219292279_))
                              (let ()
                                (declare (not safe))
                                (_K292209292238_ _rest292248_ _opt292246_))))))
                  (let () (declare (not safe)) (_else292207292231_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?292291_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?292291_))))
    (define gxc#gsc-link-options
      (lambda _g298041_
        (let ((_g298040_ (let () (declare (not safe)) (##length _g298041_))))
          (cond ((let () (declare (not safe)) (##fx= _g298040_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g298041_))
                ((let () (declare (not safe)) (##fx= _g298040_ 1))
                 (apply (lambda (_phi?292293_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?292293_)))
                        _g298041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g298041_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?292098_)
        (let _lp292100_ ((_rest292102_ (gxc#current-compile-gsc-options))
                         (_opts292103_ '()))
          (let* ((_rest292104292124_ _rest292102_)
                 (_else292108292132_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292098_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298042
                               (let ((__tmp298043 (reverse _opts292103_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp298043))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp298042))
                        (reverse _opts292103_)))))
            (let ((_K292118292171_
                   (lambda (_rest292168_ _opt292169_)
                     (let ((__tmp298044
                            (let ((__tmp298045
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts292103_))))
                              (declare (not safe))
                              (cons _opt292169_ __tmp298045))))
                       (declare (not safe))
                       (_lp292100_ _rest292168_ __tmp298044))))
                  (_K292113292152_
                   (lambda (_rest292150_)
                     (let ()
                       (declare (not safe))
                       (_lp292100_ _rest292150_ _opts292103_))))
                  (_K292110292138_
                   (lambda (_rest292136_)
                     (let ()
                       (declare (not safe))
                       (_lp292100_ _rest292136_ _opts292103_)))))
              (if (let () (declare (not safe)) (##pair? _rest292104292124_))
                  (let ((_tl292120292176_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292104292124_)))
                        (_hd292119292174_
                         (let ()
                           (declare (not safe))
                           (##car _rest292104292124_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292119292174_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292120292176_))
                            (let ((_tl292122292181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl292120292176_)))
                                  (_hd292121292179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl292120292176_))))
                              (let ((_opt292184_ _hd292121292179_)
                                    (_rest292186_ _tl292122292181_))
                                (let ()
                                  (declare (not safe))
                                  (_K292118292171_ _rest292186_ _opt292184_))))
                            (let ((_rest292144_ _tl292120292176_))
                              (declare (not safe))
                              (_K292110292138_ _rest292144_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292119292174_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292120292176_))
                                (let* ((_tl292117292160_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292120292176_)))
                                       (_rest292163_ _tl292117292160_))
                                  (declare (not safe))
                                  (_K292113292152_ _rest292163_))
                                (let ((_rest292144_ _tl292120292176_))
                                  (declare (not safe))
                                  (_K292110292138_ _rest292144_)))
                            (let ((_rest292144_ _tl292120292176_))
                              (declare (not safe))
                              (_K292110292138_ _rest292144_)))))
                  (let () (declare (not safe)) (_else292108292132_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?292192_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?292192_))))
    (define gxc#gsc-cc-options
      (lambda _g298047_
        (let ((_g298046_ (let () (declare (not safe)) (##length _g298047_))))
          (cond ((let () (declare (not safe)) (##fx= _g298046_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g298047_))
                ((let () (declare (not safe)) (##fx= _g298046_ 1))
                 (apply (lambda (_phi?292194_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?292194_)))
                        _g298047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g298047_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir292093_)
        (let* ((_user-staticdir292095_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp298048
                (let ((__tmp298049
                       (string-append
                        '"-I "
                        _staticdir292093_
                        '" -I "
                        _user-staticdir292095_)))
                  (declare (not safe))
                  (cons __tmp298049 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp298048))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp292005_ ((_rest292007_ (gxc#current-compile-gsc-options))
                         (_opts292008_ '()))
          (let* ((_rest292009292029_ _rest292007_)
                 (_else292013292037_ (lambda () _opts292008_)))
            (let ((_K292023292080_
                   (lambda (_rest292078_)
                     (let ()
                       (declare (not safe))
                       (_lp292005_ _rest292078_ _opts292008_))))
                  (_K292018292058_
                   (lambda (_rest292055_ _opt292056_)
                     (let ((__tmp298050
                            (append _opts292008_
                                    (let ((__tmp298051
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt292056_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp298051)))))
                       (declare (not safe))
                       (_lp292005_ _rest292055_ __tmp298050))))
                  (_K292015292043_
                   (lambda (_rest292041_)
                     (let ()
                       (declare (not safe))
                       (_lp292005_ _rest292041_ _opts292008_)))))
              (if (let () (declare (not safe)) (##pair? _rest292009292029_))
                  (let ((_tl292025292085_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292009292029_)))
                        (_hd292024292083_
                         (let ()
                           (declare (not safe))
                           (##car _rest292009292029_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292024292083_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292025292085_))
                            (let* ((_tl292027292088_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292025292085_)))
                                   (_rest292091_ _tl292027292088_))
                              (declare (not safe))
                              (_K292023292080_ _rest292091_))
                            (let ((_rest292049_ _tl292025292085_))
                              (declare (not safe))
                              (_K292015292043_ _rest292049_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292024292083_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292025292085_))
                                (let ((_tl292022292068_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl292025292085_)))
                                      (_hd292021292066_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl292025292085_))))
                                  (let ((_opt292071_ _hd292021292066_)
                                        (_rest292073_ _tl292022292068_))
                                    (let ()
                                      (declare (not safe))
                                      (_K292018292058_
                                       _rest292073_
                                       _opt292071_))))
                                (let ((_rest292049_ _tl292025292085_))
                                  (declare (not safe))
                                  (_K292015292043_ _rest292049_)))
                            (let ((_rest292049_ _tl292025292085_))
                              (declare (not safe))
                              (_K292015292043_ _rest292049_)))))
                  (let () (declare (not safe)) (_else292013292037_))))))))
    (define gxc#not-string-empty?
      (lambda (_str292002_)
        (let ((__tmp298052
               (let () (declare (not safe)) (string-empty? _str292002_))))
          (declare (not safe))
          (not __tmp298052))))
    (define gxc#gsc-compile-file
      (lambda (_path291970_ _phi?291971_)
        (letrec ((_gsc-link-path291973_
                  (lambda (_base-path291994_)
                    (let _lp291996_ ((_n291998_ '1))
                      (let ((_path292000_
                             (string-append
                              _base-path291994_
                              '".o"
                              (number->string _n291998_))))
                        (if (file-exists? _path292000_)
                            (let ((__tmp298053
                                   (let ()
                                     (declare (not safe))
                                     (+ _n291998_ '1))))
                              (declare (not safe))
                              (_lp291996_ __tmp298053))
                            _path292000_))))))
          (let* ((_base-path291975_ (path-strip-extension _path291970_))
                 (_path-c291977_ (string-append _base-path291975_ '".c"))
                 (_path-o291979_ (string-append _base-path291975_ '".o"))
                 (_link-path291981_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path291973_ _base-path291975_)))
                 (_link-path-c291983_ (string-append _link-path291981_ '".c"))
                 (_link-path-o291985_ (string-append _link-path291981_ '".o"))
                 (_gsc-link-opts291987_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?291971_)))
                 (_gsc-cc-opts291989_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?291971_)))
                 (_gcc-ld-opts291991_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp298060 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298054
                   (let ((__tmp298055
                          (let ((__tmp298056
                                 (let ((__tmp298057
                                        (let ((__tmp298058
                                               (let ((__tmp298059
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path291970_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp298059
                                                         _gsc-link-opts291987_))))
                                          (declare (not safe))
                                          (cons _link-path-c291983_
                                                __tmp298058))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp298057))))
                            (declare (not safe))
                            (cons '"-flat" __tmp298056))))
                     (declare (not safe))
                     (cons '"-link" __tmp298055))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298060 __tmp298054))
            (let ((__tmp298067 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298061
                   (let ((__tmp298062
                          (let ((__tmp298063
                                 (let ((__tmp298064
                                        (let ((__tmp298065
                                               (let ((__tmp298066
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c291983_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c291977_
                                                       __tmp298066))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp298065
                                                  _gsc-cc-opts291989_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp298064))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp298063))))
                     (declare (not safe))
                     (cons '"-obj" __tmp298062))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298067 __tmp298061))
            (let ((__tmp298073 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp298068
                   (let ((__tmp298069
                          (let ((__tmp298070
                                 (let ((__tmp298071
                                        (let ((__tmp298072
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o291985_
                                                       _gcc-ld-opts291991_))))
                                          (declare (not safe))
                                          (cons _path-o291979_ __tmp298072))))
                                   (declare (not safe))
                                   (cons _link-path291981_ __tmp298071))))
                            (declare (not safe))
                            (cons '"-o" __tmp298070))))
                     (declare (not safe))
                     (cons '"-shared" __tmp298069))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp298073
               __tmp298068))
            (for-each
             delete-file
             (let ((__tmp298074
                    (let ((__tmp298075
                           (let ((__tmp298076
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o291985_ '()))))
                             (declare (not safe))
                             (cons _link-path-c291983_ __tmp298076))))
                      (declare (not safe))
                      (cons _path-o291979_ __tmp298075))))
               (declare (not safe))
               (cons _path-c291977_ __tmp298074)))))))
    (define gxc#compile-output-file
      (lambda (_ctx291941_ _n291942_ _ext291943_)
        (letrec ((_module-relative-path291945_
                  (lambda (_ctx291968_)
                    (path-strip-directory
                     (let ((__tmp298077
                            (##structure-ref
                             _ctx291968_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp298077)))))
                 (_module-source-directory291946_
                  (lambda (_ctx291964_)
                    (path-directory
                     (let ((_mpath291966_
                            (##structure-ref
                             _ctx291964_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath291966_))
                           _mpath291966_
                           (let ()
                             (declare (not safe))
                             (last _mpath291966_)))))))
                 (_section-string291947_
                  (lambda (_n291962_)
                    (if (let () (declare (not safe)) (number? _n291962_))
                        (number->string _n291962_)
                        (if (let () (declare (not safe)) (symbol? _n291962_))
                            (symbol->string _n291962_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n291962_))
                                _n291962_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n291962_)))))))
                 (_file-name291948_
                  (lambda (_path291960_)
                    (if _n291942_
                        (string-append
                         _path291960_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string291947_ _n291942_))
                         _ext291943_)
                        (string-append _path291960_ _ext291943_))))
                 (_file-path291949_
                  (lambda ()
                    (let ((_$e291955_ (gxc#current-compile-output-dir)))
                      (if _$e291955_
                          ((lambda (_outdir291958_)
                             (path-expand
                              (let ((__tmp298079
                                     (let ((__tmp298080
                                            (##structure-ref
                                             _ctx291941_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp298080))))
                                (declare (not safe))
                                (_file-name291948_ __tmp298079))
                              _outdir291958_))
                           _$e291955_)
                          (path-expand
                           (let ((__tmp298078
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path291945_
                                     _ctx291941_))))
                             (declare (not safe))
                             (_file-name291948_ __tmp298078))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory291946_
                              _ctx291941_))))))))
          (let ((_path291951_
                 (let () (declare (not safe)) (_file-path291949_))))
            (let ((__tmp298081
                   (lambda ()
                     (let ((__tmp298082 (path-directory _path291951_)))
                       (declare (not safe))
                       (create-directory* __tmp298082)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298081))
            _path291951_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx291923_)
        (letrec ((_file-name291925_
                  (lambda (_id291939_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id291939_))
                     '".scm")))
                 (_file-path291926_
                  (lambda ()
                    (let* ((_file291932_
                            (let ((__tmp298083
                                   (##structure-ref
                                    _ctx291923_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name291925_ __tmp298083)))
                           (_$e291934_ (gxc#current-compile-output-dir)))
                      (if _$e291934_
                          ((lambda (_outdir291937_)
                             (path-expand
                              _file291932_
                              (path-expand '"static" _outdir291937_)))
                           _$e291934_)
                          (path-expand _file291932_ '"static"))))))
          (let ((_path291928_
                 (let () (declare (not safe)) (_file-path291926_))))
            (let ((__tmp298084
                   (lambda ()
                     (let ((__tmp298085 (path-directory _path291928_)))
                       (declare (not safe))
                       (create-directory* __tmp298085)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298084))
            _path291928_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx291917_ _opts291918_)
        (let ((_$e291920_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts291918_))))
          (if _$e291920_
              (values _$e291920_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx291917_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr291910_)
        (if (let () (declare (not safe)) (string? _idstr291910_))
            (let* ((_str291912_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr291910_)))
                   (_strs291914_
                    (let ()
                      (declare (not safe))
                      (string-split _str291912_ '#\/))))
              (let () (declare (not safe)) (string-join _strs291914_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr291910_))
                (let ((__tmp298086 (symbol->string _idstr291910_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp298086))
                (error '"Bad module id" _idstr291910_)))))
    (define gxc#invoke__%
      (lambda (_g298087_
               _stdout-redirection291874291878_
               _stderr-redirection291875291880_
               _program291882_
               _args291883_)
        (let* ((_stdout-redirection291885_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection291874291878_ absent-value))
                    '#f
                    _stdout-redirection291874291878_))
               (_stderr-redirection291887_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection291875291880_ absent-value))
                    '#f
                    _stderr-redirection291875291880_)))
          (let ((__tmp298088
                 (let ()
                   (declare (not safe))
                   (cons _program291882_ _args291883_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp298088))
          (let ((_proc291889_
                 (open-process
                  (let ((__tmp298089
                         (let ((__tmp298090
                                (let ((__tmp298091
                                       (let ((__tmp298092
                                              (let ((__tmp298093
                                                     (let ((__tmp298094
                                                            (let ((__tmp298095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection291887_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp298095))))
               (declare (not safe))
               (cons _stdout-redirection291885_ __tmp298094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp298093))))
                                         (declare (not safe))
                                         (cons _args291883_ __tmp298092))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp298091))))
                           (declare (not safe))
                           (cons _program291882_ __tmp298090))))
                    (declare (not safe))
                    (cons 'path: __tmp298089)))))
            (if (or _stdout-redirection291885_ _stderr-redirection291887_)
                (read-line _proc291889_ '#f)
                '#!void)
            (let ((_status291894_ (process-status _proc291889_)))
              (close-port _proc291889_)
              (if (let () (declare (not safe)) (zero? _status291894_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program291882_))))))))
    (define gxc#invoke__@
      (lambda (_keys291873291899_ . _args291901_)
        (apply gxc#invoke__%
               _keys291873291899_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291873291899_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291873291899_
                  'stderr-redirection:
                  absent-value))
               _args291901_)))
    (define gxc#invoke
      (lambda _args291876291907_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args291876291907_)))
    (define gxc#join!
      (lambda (_thread291867_)
        (let ((__tmp298097
               (lambda (_exn291869_)
                 (if (uncaught-exception? _exn291869_)
                     (raise (uncaught-exception-reason _exn291869_))
                     (raise _exn291869_))))
              (__tmp298096 (lambda () (thread-join! _thread291867_))))
          (declare (not safe))
          (with-catch __tmp298097 __tmp298096))))))
