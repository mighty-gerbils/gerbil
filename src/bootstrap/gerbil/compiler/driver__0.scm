(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707847734)
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
      (lambda (_path293118_ _fun293119_)
        (with-output-to-file
         (let ((__tmp297780
                (let ()
                  (declare (not safe))
                  (cons _path293118_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp297780))
         _fun293119_)))
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
      (lambda (_gerbil-libdir293113_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir293113_)))
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
      (lambda (_dir293111_) (delete-file-or-directory _dir293111_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath293085_ _opts293086_)
        (if (let () (declare (not safe)) (string? _srcpath293085_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293085_)))
        (let ((_outdir293088_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293086_)))
              (_invoke-gsc?293089_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293086_)))
              (_gsc-options293090_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293086_)))
              (_keep-scm?293091_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293086_)))
              (_verbosity293092_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293086_)))
              (_optimize293093_
               (let () (declare (not safe)) (pgetq 'optimize: _opts293086_)))
              (_debug293094_
               (let () (declare (not safe)) (pgetq 'debug: _opts293086_)))
              (_gen-ssxi293095_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts293086_))))
          (if _outdir293088_
              (let ((__tmp297781
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293088_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297781))
              '#!void)
          (if _optimize293093_
              (let ((__tmp297782
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297782))
              '#!void)
          (let ((__tmp297786
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath293085_))
                   (let ((__tmp297787
                          (let ((__tmp297788
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293085_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297788))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp297787))))
                (__tmp297785
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297783
                 (let ((__tmp297784
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293085_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp297784))))
            (declare (not safe))
            (call-with-parameters
             __tmp297786
             gxc#current-compile-output-dir
             _outdir293088_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293089_
             gxc#current-compile-gsc-options
             _gsc-options293090_
             gxc#current-compile-keep-scm
             _keep-scm?293091_
             gxc#current-compile-verbose
             _verbosity293092_
             gxc#current-compile-optimize
             _optimize293093_
             gxc#current-compile-debug
             _debug293094_
             gxc#current-compile-generate-ssxi
             _gen-ssxi293095_
             gxc#current-compile-timestamp
             __tmp297785
             gxc#current-compile-context
             __tmp297783
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath293104_)
        (let ((_opts293106_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath293104_ _opts293106_))))
    (define gxc#compile-module
      (lambda _g297790_
        (let ((_g297789_ (let () (declare (not safe)) (##length _g297790_))))
          (cond ((let () (declare (not safe)) (##fx= _g297789_ 1))
                 (apply (lambda (_srcpath293104_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath293104_)))
                        _g297790_))
                ((let () (declare (not safe)) (##fx= _g297789_ 2))
                 (apply (lambda (_srcpath293108_ _opts293109_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath293108_
                             _opts293109_)))
                        _g297790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g297790_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath293061_ _opts293062_)
        (if (let () (declare (not safe)) (string? _srcpath293061_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293061_)))
        (let ((_outdir293064_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293062_)))
              (_invoke-gsc?293065_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293062_)))
              (_gsc-options293066_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293062_)))
              (_keep-scm?293067_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293062_)))
              (_verbosity293068_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293062_)))
              (_debug293069_
               (let () (declare (not safe)) (pgetq 'debug: _opts293062_))))
          (if _outdir293064_
              (let ((__tmp297791
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293064_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297791))
              '#!void)
          (let ((__tmp297795
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath293061_))
                   (let ((__tmp297796
                          (let ((__tmp297797
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293061_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297797))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp297796
                      _opts293062_))))
                (__tmp297794
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297792
                 (let ((__tmp297793
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293061_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp297793))))
            (declare (not safe))
            (call-with-parameters
             __tmp297795
             gxc#current-compile-output-dir
             _outdir293064_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293065_
             gxc#current-compile-gsc-options
             _gsc-options293066_
             gxc#current-compile-keep-scm
             _keep-scm?293067_
             gxc#current-compile-verbose
             _verbosity293068_
             gxc#current-compile-debug
             _debug293069_
             gxc#current-compile-timestamp
             __tmp297794
             gxc#current-compile-context
             __tmp297792
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath293077_)
        (let ((_opts293079_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath293077_ _opts293079_))))
    (define gxc#compile-exe
      (lambda _g297799_
        (let ((_g297798_ (let () (declare (not safe)) (##length _g297799_))))
          (cond ((let () (declare (not safe)) (##fx= _g297798_ 1))
                 (apply (lambda (_srcpath293077_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath293077_)))
                        _g297799_))
                ((let () (declare (not safe)) (##fx= _g297798_ 2))
                 (apply (lambda (_srcpath293081_ _opts293082_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath293081_ _opts293082_)))
                        _g297799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g297799_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx293057_ _opts293058_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts293058_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx293057_
               _opts293058_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx293057_
               _opts293058_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx292940_ _opts292941_)
        (letrec ((_generate-stub292943_
                  (lambda (_builtin-modules293053_)
                    (let ((_mod-main293055_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292940_ 'main))))
                      (write (let ((__tmp297800
                                    (let ((__tmp297801
                                           (let ((__tmp297802
                                                  (let ((__tmp297803
                                                         (let ((__tmp297805
                                                                (let ((__tmp297806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules293053_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297806)))
                       (__tmp297804
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp297805 __tmp297804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp297803))))
                                             (declare (not safe))
                                             (cons __tmp297802 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp297801))))
                               (declare (not safe))
                               (cons 'define __tmp297800)))
                      (write (let ((__tmp297807
                                    (let ((__tmp297846
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297808
                                           (let ((__tmp297809
                                                  (let ((__tmp297810
                                                         (let ((__tmp297834
                                                                (let ((__tmp297835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297836
                                      (let ((__tmp297844
                                             (let ((__tmp297845
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp297845)))
                                            (__tmp297837
                                             (let ((__tmp297838
                                                    (let ((__tmp297839
                                                           (let ((__tmp297840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297841
                                 (let ((__tmp297842
                                        (let ((__tmp297843
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp297843 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp297842))))
                            (declare (not safe))
                            (cons __tmp297841 '()))))
                     (declare (not safe))
                     (cons _mod-main293055_ __tmp297840))))
              (declare (not safe))
              (cons 'apply __tmp297839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297838 '()))))
                                        (declare (not safe))
                                        (cons __tmp297844 __tmp297837))))
                                 (declare (not safe))
                                 (cons '() __tmp297836))))
                          (declare (not safe))
                          (cons 'lambda __tmp297835)))
                       (__tmp297811
                        (let ((__tmp297812
                               (let ((__tmp297813
                                      (let ((__tmp297814
                                             (let ((__tmp297825
                                                    (let ((__tmp297826
                                                           (let ((__tmp297827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297828
                                 (let ((__tmp297829
                                        (let ((__tmp297830
                                               (let ((__tmp297831
                                                      (let ((__tmp297832
                                                             (let ((__tmp297833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp297833 '()))))
                (declare (not safe))
                (cons 'force-output __tmp297832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp297831 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp297830))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp297829))))
                            (declare (not safe))
                            (cons __tmp297828 '()))))
                     (declare (not safe))
                     (cons 'void __tmp297827))))
              (declare (not safe))
              (cons 'with-catch __tmp297826)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp297815
                                                    (let ((__tmp297816
                                                           (let ((__tmp297817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297818
                                 (let ((__tmp297819
                                        (let ((__tmp297820
                                               (let ((__tmp297821
                                                      (let ((__tmp297822
                                                             (let ((__tmp297823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp297824
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp297824 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp297823))))
                (declare (not safe))
                (cons __tmp297822 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp297821))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp297820))))
                                   (declare (not safe))
                                   (cons __tmp297819 '()))))
                            (declare (not safe))
                            (cons 'void __tmp297818))))
                     (declare (not safe))
                     (cons 'with-catch __tmp297817))))
              (declare (not safe))
              (cons __tmp297816 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297825
                                                     __tmp297815))))
                                        (declare (not safe))
                                        (cons '() __tmp297814))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp297813))))
                          (declare (not safe))
                          (cons __tmp297812 '()))))
                   (declare (not safe))
                   (cons __tmp297834 __tmp297811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp297810))))
                                             (declare (not safe))
                                             (cons __tmp297809 '()))))
                                      (declare (not safe))
                                      (cons __tmp297846 __tmp297808))))
                               (declare (not safe))
                               (cons 'define __tmp297807)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts292944_
                  (lambda (_libgerbil293051_)
                    (call-with-input-file
                     (string-append _libgerbil293051_ '".ldd")
                     read)))
                 (_replace-extension292945_
                  (lambda (_path293048_ _ext293049_)
                    (string-append
                     (path-strip-extension _path293048_)
                     _ext293049_)))
                 (_not-exclude-module?292946_
                  (lambda (_ctx293044_)
                    (let ((_id-str293046_
                           (symbol->string
                            (##structure-ref
                             _ctx293044_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp297848
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str293046_))))
                            (declare (not safe))
                            (not __tmp297848))
                          (let ((__tmp297847
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str293046_))))
                            (declare (not safe))
                            (not __tmp297847))
                          '#f))))
                 (_not-file-empty?292947_
                  (lambda (_path293042_)
                    (let ((__tmp297849
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path293042_))))
                      (declare (not safe))
                      (not __tmp297849))))
                 (_compile-stub292948_
                  (lambda (_output-scm292955_ _output-bin292956_)
                    (let* ((_gerbil-home292958_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292960_
                            (path-expand '"lib" _gerbil-home292958_))
                           (_gerbil-staticdir292962_
                            (path-expand '"static" _gerbil-libdir292960_))
                           (_gxlink292964_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir292960_))
                           (_tmp292966_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path292970_
                            (lambda (_f292968_)
                              (path-expand
                               (path-strip-directory _f292968_)
                               _tmp292966_)))
                           (_deps292972_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292940_)))
                           (_deps292974_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?292946_
                                      _deps292972_)))
                           (_src-deps-scm292976_
                            (map gxc#find-static-module-file _deps292974_))
                           (_src-deps-scm292978_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?292947_
                                      _src-deps-scm292976_)))
                           (_src-deps-scm292980_
                            (map path-expand _src-deps-scm292978_))
                           (_deps-scm292982_
                            (map _tmp-path292970_ _src-deps-scm292980_))
                           (_deps-c292988_
                            (map (lambda (_g292983292985_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292945_
                                      _g292983292985_
                                      '".c")))
                                 _deps-scm292982_))
                           (_deps-o292994_
                            (map (lambda (_g292989292991_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292945_
                                      _g292989292991_
                                      '".o")))
                                 _deps-scm292982_))
                           (_src-bin-scm292996_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292940_)))
                           (_src-bin-scm292998_
                            (path-expand _src-bin-scm292996_))
                           (_bin-scm293000_
                            (let ()
                              (declare (not safe))
                              (_tmp-path292970_ _src-bin-scm292998_)))
                           (_bin-c293002_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292945_
                               _bin-scm293000_
                               '".c")))
                           (_bin-o293004_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292945_
                               _bin-scm293000_
                               '".o")))
                           (_output-bin293006_
                            (path-expand _output-bin292956_))
                           (_output-scm293008_
                            (path-expand _output-scm292955_))
                           (_output-c293010_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292945_
                               _output-scm293008_
                               '".c")))
                           (_output-o293012_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292945_
                               _output-scm293008_
                               '".o")))
                           (_output_-c293014_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292945_
                               _output-scm293008_
                               '"_.c")))
                           (_output_-o293016_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292945_
                               _output-scm293008_
                               '"_.o")))
                           (_gsc-link-opts293018_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts293020_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts293022_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir292962_)))
                           (_output-ld-opts293024_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a293026_
                            (path-expand '"libgerbil.a" _gerbil-libdir292960_))
                           (_libgerbil.so293028_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir292960_))
                           (_libgerbil-ld-opts293030_
                            (if (file-exists? _libgerbil.so293028_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts292944_
                                   _libgerbil.so293028_))
                                (if (file-exists? _libgerbil.a293026_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts292944_
                                       _libgerbil.a293026_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a293026_
                                       _libgerbil.so293028_)))))
                           (_rpath293032_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292960_)))
                           (_builtin-modules293036_
                            (map (lambda (_mod293034_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod293034_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx292940_ _deps292974_)))))
                      (let ((__tmp297850
                             (lambda ()
                               (let ((__tmp297851
                                      (path-directory _output-bin293006_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297851)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297850))
                      (let ((__tmp297852
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub292943_
                                  _builtin-modules293036_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm293008_
                         __tmp297852))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297853
                                   (lambda () (create-directory _tmp292966_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp297853))
                            (for-each
                             copy-file
                             _src-deps-scm292980_
                             _deps-scm292982_)
                            (copy-file _src-bin-scm292998_ _bin-scm293000_)
                            (let ((__tmp297861
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297854
                                   (let ((__tmp297855
                                          (let ((__tmp297856
                                                 (let ((__tmp297857
                                                        (let ((__tmp297858
                                                               (let ((__tmp297859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297860
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm293008_ '()))))
                                (declare (not safe))
                                (cons _bin-scm293000_ __tmp297860))))
                         (declare (not safe))
                         (foldr1 cons __tmp297859 _deps-scm292982_))))
                  (declare (not safe))
                  (foldr1 cons __tmp297858 _gsc-link-opts293018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink292964_
                                                         __tmp297857))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp297856))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297855))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297861
                               __tmp297854))
                            (let ((__tmp297869
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297862
                                   (let ((__tmp297863
                                          (let ((__tmp297864
                                                 (let ((__tmp297865
                                                        (let ((__tmp297866
                                                               (let ((__tmp297867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297868
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c293014_ '()))))
                                (declare (not safe))
                                (cons _output-c293010_ __tmp297868))))
                         (declare (not safe))
                         (cons _bin-c293002_ __tmp297867))))
                  (declare (not safe))
                  (foldr1 cons __tmp297866 _deps-c292988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297865
                                                           _gsc-static-opts293022_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297864
                                                    _gsc-cc-opts293020_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297863))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297869
                               __tmp297862))
                            (let ((__tmp297882
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297870
                                   (let ((__tmp297871
                                          (let ((__tmp297872
                                                 (let ((__tmp297873
                                                        (let ((__tmp297874
                                                               (let ((__tmp297875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297876
                                     (let ((__tmp297877
                                            (let ((__tmp297878
                                                   (let ((__tmp297879
                                                          (let ((__tmp297880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp297881
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts293030_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp297881))))
                    (declare (not safe))
                    (cons _gerbil-libdir292960_ __tmp297880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp297879))))
                                              (declare (not safe))
                                              (cons _rpath293032_
                                                    __tmp297878))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp297877
                                               _output-ld-opts293024_))))
                                (declare (not safe))
                                (cons _output_-o293016_ __tmp297876))))
                         (declare (not safe))
                         (cons _output-o293012_ __tmp297875))))
                  (declare (not safe))
                  (cons _bin-o293004_ __tmp297874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297873
                                                           _deps-o292994_))))
                                            (declare (not safe))
                                            (cons _output-bin293006_
                                                  __tmp297872))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297871))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297882
                               __tmp297870))
                            (for-each
                             delete-file
                             (let ((__tmp297883
                                    (let ((__tmp297884
                                           (let ((__tmp297885
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o293016_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o293012_
                                                   __tmp297885))))
                                      (declare (not safe))
                                      (cons _output_-c293014_ __tmp297884))))
                               (declare (not safe))
                               (cons _output-c293010_ __tmp297883)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp292966_)))
                          '#!void)))))
          (let* ((_output-bin292950_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292940_ _opts292941_)))
                 (_output-scm292952_
                  (string-append _output-bin292950_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292948_ _output-scm292952_ _output-bin292950_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292952_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx292765_ _opts292766_)
        (letrec ((_reset-declare292768_
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
                 (_generate-stub292769_
                  (lambda (_deps292931_)
                    (let ((_mod-main292933_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292765_ 'main)))
                          (_reset-decl292934_
                           (let ()
                             (declare (not safe))
                             (_reset-declare292768_)))
                          (_user-decl292935_
                           (let ()
                             (declare (not safe))
                             (_user-declare292770_))))
                      (for-each
                       (lambda (_dep292937_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl292934_)
                         (newline)
                         (if _user-decl292935_
                             (begin (write _user-decl292935_) (newline))
                             '#!void)
                         (write (let ((__tmp297886
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep292937_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp297886)))
                         (newline))
                       _deps292931_)
                      (write (let ((__tmp297887
                                    (let ((__tmp297900
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297888
                                           (let ((__tmp297896
                                                  (let ((__tmp297897
                                                         (let ((__tmp297898
                                                                (let ((__tmp297899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297899))))
                   (declare (not safe))
                   (cons __tmp297898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp297897)))
                                                 (__tmp297889
                                                  (let ((__tmp297890
                                                         (let ((__tmp297891
                                                                (let ((__tmp297892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297893
                                      (let ((__tmp297894
                                             (let ((__tmp297895
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp297895 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp297894))))
                                 (declare (not safe))
                                 (cons __tmp297893 '()))))
                          (declare (not safe))
                          (cons _mod-main292933_ __tmp297892))))
                   (declare (not safe))
                   (cons 'apply __tmp297891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297890 '()))))
                                             (declare (not safe))
                                             (cons __tmp297896 __tmp297889))))
                                      (declare (not safe))
                                      (cons __tmp297900 __tmp297888))))
                               (declare (not safe))
                               (cons 'define __tmp297887)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare292770_
                  (lambda ()
                    (let* ((_gsc-opts292836_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts292766_)))
                           (_gsc-prelude292838_
                            (if _gsc-opts292836_
                                (member '"-prelude" _gsc-opts292836_)
                                '#f))
                           (_gsc-prelude292840_
                            (if _gsc-prelude292838_
                                (read (open-input-string
                                       (cadr _gsc-prelude292838_)))
                                '#f)))
                      (let _lp292843_ ((_rest292845_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude292840_ '())))
                                       (_user-decls292846_ '()))
                        (let* ((_rest292847292855_ _rest292845_)
                               (_else292849292863_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls292846_))
                                      '#f
                                      (let ((__tmp297901
                                             (reverse _user-decls292846_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp297901)))))
                               (_K292851292919_
                                (lambda (_rest292866_ _expr292867_)
                                  (let* ((_expr292868292880_ _expr292867_)
                                         (_else292871292888_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp292843_
                                               _rest292866_
                                               _user-decls292846_)))))
                                    (let ((_K292876292909_
                                           (lambda (_decls292907_)
                                             (let ((__tmp297902
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls292846_
                                                              _decls292907_))))
                                               (declare (not safe))
                                               (_lp292843_
                                                _rest292866_
                                                __tmp297902))))
                                          (_K292873292894_
                                           (lambda (_exprs292892_)
                                             (let ((__tmp297903
                                                    (append _exprs292892_
                                                            _rest292866_)))
                                               (declare (not safe))
                                               (_lp292843_
                                                __tmp297903
                                                _user-decls292846_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr292868292880_))
                                          (let ((_tl292878292914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr292868292880_)))
                                                (_hd292877292912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr292868292880_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd292877292912_
                                                         'declare))
                                                (let ((_decls292917_
                                                       _tl292878292914_))
                                                  (declare (not safe))
                                                  (_K292876292909_
                                                   _decls292917_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd292877292912_
                                                             'begin))
                                                    (let ((_exprs292902_
                                                           _tl292878292914_))
                                                      (declare (not safe))
                                                      (_K292873292894_
                                                       _exprs292902_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else292871292888_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else292871292888_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest292847292855_))
                              (let ((_hd292852292922_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest292847292855_)))
                                    (_tl292853292924_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest292847292855_))))
                                (let* ((_expr292927_ _hd292852292922_)
                                       (_rest292929_ _tl292853292924_))
                                  (declare (not safe))
                                  (_K292851292919_ _rest292929_ _expr292927_)))
                              (let ()
                                (declare (not safe))
                                (_else292849292863_))))))))
                 (_compile-stub292771_
                  (lambda (_output-scm292778_ _output-bin292779_)
                    (let* ((_gerbil-home292781_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292783_
                            (path-expand '"lib" _gerbil-home292781_))
                           (_runtime292785_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp292787_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home292781_))
                           (_include-gambit-sharp292789_
                            (string-append
                             '"(include \""
                             _gambit-sharp292787_
                             '"\")"))
                           (_bin-scm292791_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292765_)))
                           (_deps292793_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292765_)))
                           (_deps292795_
                            (map gxc#find-static-module-file _deps292793_))
                           (_deps292800_
                            (let ((__tmp297904
                                   (lambda (_$obj292797_)
                                     (let ((__tmp297905
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj292797_))))
                                       (declare (not safe))
                                       (not __tmp297905)))))
                              (declare (not safe))
                              (filter __tmp297904 _deps292795_)))
                           (_deps292804_
                            (let ((__tmp297906
                                   (lambda (_f292802_)
                                     (let ((__tmp297907
                                            (member _f292802_
                                                    _runtime292785_)))
                                       (declare (not safe))
                                       (not __tmp297907)))))
                              (declare (not safe))
                              (filter __tmp297906 _deps292800_)))
                           (_output-base292806_
                            (string-append
                             (path-strip-extension _output-scm292778_)))
                           (_output-c292808_
                            (string-append _output-base292806_ '".c"))
                           (_output-o292810_
                            (string-append _output-base292806_ '".o"))
                           (_output-c_292812_
                            (string-append _output-base292806_ '"_.c"))
                           (_output-o_292814_
                            (string-append _output-base292806_ '"_.o"))
                           (_gsc-link-opts292816_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292818_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292820_
                            (let ((__tmp297908
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir292783_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp297908)))
                           (_output-ld-opts292822_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros292824_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp297910
                                       (let ((__tmp297911
                                              (let ((__tmp297912
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp292789_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp297912))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp297911))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297910))
                                (let ((__tmp297909
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp292789_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297909))))
                           (_gsc-link-opts292826_
                            (append _gsc-link-opts292816_
                                    _gsc-gx-macros292824_))
                           (_rpath292828_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292783_)))
                           (_default-ld-options292830_
                            (let ((__tmp297913
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp297913))))
                      (let ((__tmp297914
                             (lambda ()
                               (let ((__tmp297915
                                      (path-directory _output-bin292779_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297915)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297914))
                      (let ((__tmp297916
                             (lambda ()
                               (let ((__tmp297917
                                      (let ((__tmp297918
                                             (let ((__tmp297919
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm292791_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp297919
                                                       _deps292804_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp297918
                                                _runtime292785_))))
                                 (declare (not safe))
                                 (_generate-stub292769_ __tmp297917)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292778_
                         __tmp297916))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297925
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297920
                                   (let ((__tmp297921
                                          (let ((__tmp297922
                                                 (let ((__tmp297923
                                                        (let ((__tmp297924
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm292778_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp297924 _gsc-link-opts292826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_292812_
                                                         __tmp297923))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp297922))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297921))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297925
                               __tmp297920))
                            (let ((__tmp297931
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297926
                                   (let ((__tmp297927
                                          (let ((__tmp297928
                                                 (let ((__tmp297929
                                                        (let ((__tmp297930
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_292812_ '()))))
                  (declare (not safe))
                  (cons _output-c292808_ __tmp297930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297929
                                                           _gsc-static-opts292820_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297928
                                                    _gsc-cc-opts292818_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297927))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297931
                               __tmp297926))
                            (let ((__tmp297941
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297932
                                   (let ((__tmp297933
                                          (let ((__tmp297934
                                                 (let ((__tmp297935
                                                        (let ((__tmp297936
                                                               (let ((__tmp297937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297938
                                     (let ((__tmp297939
                                            (let ((__tmp297940
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options292830_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir292783_
                                                    __tmp297940))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp297939))))
                                (declare (not safe))
                                (cons _rpath292828_ __tmp297938))))
                         (declare (not safe))
                         (foldr1 cons __tmp297937 _output-ld-opts292822_))))
                  (declare (not safe))
                  (cons _output-o_292814_ __tmp297936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o292810_
                                                         __tmp297935))))
                                            (declare (not safe))
                                            (cons _output-bin292779_
                                                  __tmp297934))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297933))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297941
                               __tmp297932)))
                          '#!void)))))
          (let* ((_output-bin292773_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292765_ _opts292766_)))
                 (_output-scm292775_
                  (string-append _output-bin292773_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292771_ _output-scm292775_ _output-bin292773_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292775_))))))
    (define gxc#find-export-binding
      (lambda (_ctx292715_ _id292716_)
        (let ((_$e292762_
               (let ((__tmp297943
                      (lambda (_e292717292719_)
                        (let* ((_g292721292731_ _e292717292719_)
                               (_else292723292739_ (lambda () '#f))
                               (_K292725292743_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g292721292731_
                                 'gx#module-export::t))
                              (let* ((_e292726292746_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292721292731_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e292727292749_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292721292731_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e292728292752_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292721292731_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e292728292752_ '0))
                                    (let ((_e292729292755_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g292721292731_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g292757292759_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g292757292759_
                                                    _id292716_)))
                                           _e292729292755_)
                                          (let ()
                                            (declare (not safe))
                                            (_K292725292743_))
                                          (let ()
                                            (declare (not safe))
                                            (_else292723292739_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else292723292739_))))
                              (let ()
                                (declare (not safe))
                                (_else292723292739_))))))
                     (__tmp297942
                      (##structure-ref
                       _ctx292715_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp297943 __tmp297942))))
          (if _$e292762_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e292762_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx292707_ _id292708_)
        (let ((_$e292710_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx292707_ _id292708_))))
          (if _$e292710_
              ((lambda (_bind292713_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind292713_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id292708_)))
                 (##structure-ref _bind292713_ '1 gx#binding::t '#f))
               _$e292710_)
              (let ((__tmp297944
                     (##structure-ref
                      _ctx292707_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp297944
                 _id292708_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx292594_)
        (letrec* ((_ht292596_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template292597_
                   (lambda (_in292659_ _phi292660_)
                     (let ((_iphi292662_
                            (fx+ _phi292660_
                                 (##direct-structure-ref
                                  _in292659_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports292663_
                            (##structure-ref
                             (##direct-structure-ref
                              _in292659_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp292665_ ((_rest292667_ _imports292663_)
                                        (_r292668_ '()))
                         (let* ((_rest292669292677_ _rest292667_)
                                (_else292671292685_ (lambda () _r292668_))
                                (_K292673292695_
                                 (lambda (_rest292688_ _in292689_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in292689_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi292662_))
                                           (let ((__tmp297951
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in292689_
                                                          _r292668_))))
                                             (declare (not safe))
                                             (_lp292665_
                                              _rest292688_
                                              __tmp297951))
                                           (let ()
                                             (declare (not safe))
                                             (_lp292665_
                                              _rest292688_
                                              _r292668_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in292689_
                                              'gx#module-import::t))
                                           (let ((_iphi292691_
                                                  (fx+ _phi292660_
                                                       (##direct-structure-ref
                                                        _in292689_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi292691_))
                                                 (let ((__tmp297949
                                                        (let ((__tmp297950
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in292689_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp297950 _r292668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp292665_
                                                    _rest292688_
                                                    __tmp297949))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp292665_
                                                    _rest292688_
                                                    _r292668_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in292689_
                                                  'gx#import-set::t))
                                               (let ((_xphi292693_
                                                      (fx+ _iphi292662_
                                                           (##direct-structure-ref
                                                            _in292689_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi292693_))
                                                     (let ((__tmp297947
                                                            (let ((__tmp297948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in292689_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp297948 _r292668_))))
               (declare (not safe))
               (_lp292665_ _rest292688_ __tmp297947))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi292693_)
                                                         (let ((__tmp297945
                                                                (let ((__tmp297946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template292597_
                                  _in292689_
                                  _iphi292662_))))
                          (declare (not safe))
                          (foldl1 cons _r292668_ __tmp297946))))
                   (declare (not safe))
                   (_lp292665_ _rest292688_ __tmp297945))
                 (let ()
                   (declare (not safe))
                   (_lp292665_ _rest292688_ _r292668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp292665_
                                                  _rest292688_
                                                  _r292668_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest292669292677_))
                               (let ((_hd292674292698_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest292669292677_)))
                                     (_tl292675292700_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest292669292677_))))
                                 (let* ((_in292703_ _hd292674292698_)
                                        (_rest292705_ _tl292675292700_))
                                   (declare (not safe))
                                   (_K292673292695_ _rest292705_ _in292703_)))
                               (let ()
                                 (declare (not safe))
                                 (_else292671292685_))))))))
                  (_find-deps292598_
                   (lambda (_rest292605_ _deps292606_)
                     (let* ((_rest292607292615_ _rest292605_)
                            (_else292609292623_ (lambda () _deps292606_))
                            (_K292611292647_
                             (lambda (_rest292626_ _hd292627_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd292627_
                                      'gx#module-context::t))
                                   (let ((_id292629_
                                          (##structure-ref
                                           _hd292627_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports292630_
                                          (##structure-ref
                                           _hd292627_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht292596_
                                            _id292629_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps292598_
                                            _rest292626_
                                            _deps292606_))
                                         (let ((_$e292632_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd292627_))))
                                           (if _$e292632_
                                               ((lambda (_pre292635_)
                                                  (let ((_xdeps292637_
                                                         (let ((__tmp297964
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre292635_ _imports292630_))))
                   (declare (not safe))
                   (_find-deps292598_ __tmp297964 _deps292606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht292596_
                                                       _id292629_
                                                       _hd292627_))
                                                    (let ((__tmp297965
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd292627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps292637_))))
              (declare (not safe))
              (_find-deps292598_ _rest292626_ __tmp297965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e292632_)
                                               (let ((_xdeps292639_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps292598_
                                                         _imports292630_
                                                         _deps292606_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht292596_
                                                    _id292629_
                                                    _hd292627_))
                                                 (let ((__tmp297963
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd292627_
                                                                _xdeps292639_))))
                                                   (declare (not safe))
                                                   (_find-deps292598_
                                                    _rest292626_
                                                    __tmp297963)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd292627_
                                          'gx#prelude-context::t))
                                       (let ((_id292641_
                                              (##structure-ref
                                               _hd292627_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht292596_
                                                _id292641_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps292598_
                                                _rest292626_
                                                _deps292606_))
                                             (let ((_xdeps292643_
                                                    (let ((__tmp297961
                                                           (##structure-ref
                                                            _hd292627_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps292598_
                                                       __tmp297961
                                                       _deps292606_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht292596_
                                                      _id292641_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps292598_
                                                      _rest292626_
                                                      _xdeps292643_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht292596_
                                                        _id292641_
                                                        _hd292627_))
                                                     (let ((__tmp297962
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd292627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps292643_))))
               (declare (not safe))
               (_find-deps292598_ _rest292626_ __tmp297962)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd292627_
                                              'gx#module-import::t))
                                           (if (let ((__tmp297960
                                                      (##direct-structure-ref
                                                       _hd292627_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp297960))
                                               (let ((__tmp297958
                                                      (let ((__tmp297959
                                                             (##direct-structure-ref
                                                              _hd292627_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297959
                                                              _rest292626_))))
                                                 (declare (not safe))
                                                 (_find-deps292598_
                                                  __tmp297958
                                                  _deps292606_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps292598_
                                                  _rest292626_
                                                  _deps292606_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd292627_
                                                  'gx#module-export::t))
                                               (let ((__tmp297956
                                                      (let ((__tmp297957
                                                             (##direct-structure-ref
                                                              _hd292627_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297957
                                                              _rest292626_))))
                                                 (declare (not safe))
                                                 (_find-deps292598_
                                                  __tmp297956
                                                  _deps292606_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd292627_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp297955
                                                              (##direct-structure-ref
                                                               _hd292627_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp297955))
                                                       (let ((__tmp297953
                                                              (let ((__tmp297954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd292627_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp297954 _rest292626_))))
                 (declare (not safe))
                 (_find-deps292598_ __tmp297953 _deps292606_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd292627_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps292645_
                           (let ()
                             (declare (not safe))
                             (_import-set-template292597_ _hd292627_ '0)))
                          (__tmp297952
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest292626_ _xdeps292645_))))
                     (declare (not safe))
                     (_find-deps292598_ __tmp297952 _deps292606_))
                   (let ()
                     (declare (not safe))
                     (_find-deps292598_ _rest292626_ _deps292606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd292627_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest292607292615_))
                           (let ((_hd292612292650_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest292607292615_)))
                                 (_tl292613292652_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest292607292615_))))
                             (let* ((_hd292655_ _hd292612292650_)
                                    (_rest292657_ _tl292613292652_))
                               (declare (not safe))
                               (_K292611292647_ _rest292657_ _hd292655_)))
                           (let ()
                             (declare (not safe))
                             (_else292609292623_)))))))
          (reverse (let ((__tmp297966
                          (let ((__tmp297967
                                 (let ((_$e292600_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx292594_))))
                                   (if _$e292600_
                                       ((lambda (_pre292603_)
                                          (let ((__tmp297968
                                                 (##structure-ref
                                                  _ctx292594_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre292603_ __tmp297968)))
                                        _$e292600_)
                                       (##structure-ref
                                        _ctx292594_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps292598_ __tmp297967 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp297966))))))
    (define gxc#find-static-module-file
      (lambda (_ctx292525_)
        (let* ((_context-id292527_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx292525_
                       'gx#module-context::t))
                    (##structure-ref _ctx292525_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx292525_)))
               (_scm292529_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id292527_))
                 '".scm"))
               (_dirs292531_ (gx#current-expander-module-library-path))
               (_dirs292537_
                (let ((_user-libpath292533_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath292533_
                      (let ((_user-libpath292535_
                             (path-expand '"lib" _user-libpath292533_)))
                        (if (member _user-libpath292535_ _dirs292531_)
                            _dirs292531_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath292535_ _dirs292531_))))
                      _dirs292531_)))
               (_dirs292546_
                (let ((_$e292539_ (gxc#current-compile-output-dir)))
                  (if _$e292539_
                      ((lambda (_g292541292543_)
                         (let ()
                           (declare (not safe))
                           (cons _g292541292543_ _dirs292537_)))
                       _$e292539_)
                      _dirs292537_)))
               (_dirs292552_
                (map (lambda (_g292547292549_)
                       (path-expand '"static" _g292547292549_))
                     _dirs292546_)))
          (let _lp292555_ ((_rest292557_ _dirs292552_))
            (let* ((_rest292558292566_ _rest292557_)
                   (_else292560292574_
                    (lambda ()
                      (let ((__tmp297969
                             (##structure-ref
                              _ctx292525_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp297969
                         _scm292529_))))
                   (_K292562292582_
                    (lambda (_rest292577_ _dir292578_)
                      (let ((_path292580_
                             (path-expand _scm292529_ _dir292578_)))
                        (if (file-exists? _path292580_)
                            _path292580_
                            (let ()
                              (declare (not safe))
                              (_lp292555_ _rest292577_)))))))
              (if (let () (declare (not safe)) (##pair? _rest292558292566_))
                  (let ((_hd292563292585_
                         (let ()
                           (declare (not safe))
                           (##car _rest292558292566_)))
                        (_tl292564292587_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292558292566_))))
                    (let* ((_dir292590_ _hd292563292585_)
                           (_rest292592_ _tl292564292587_))
                      (declare (not safe))
                      (_K292562292582_ _rest292592_ _dir292590_)))
                  (let () (declare (not safe)) (_else292560292574_))))))))
    (define gxc#file-empty?
      (lambda (_path292523_)
        (let ((__tmp297970 (file-info-size (file-info _path292523_ '#t))))
          (declare (not safe))
          (zero? __tmp297970))))
    (define gxc#compile-top-module
      (lambda (_ctx292512_)
        (let ((__tmp297974
               (lambda ()
                 (let ((__tmp297975
                        (##structure-ref
                         _ctx292512_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp297975))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp297976
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx292512_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp297976))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx292512_))
                 (if (let ((__tmp297979
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx292512_))))
                       (declare (not safe))
                       (null? __tmp297979))
                     (let* ((_thr1292517_
                             (let ((__tmp297977
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx292512_)))))
                               (declare (not safe))
                               (spawn __tmp297977)))
                            (_thr2292520_
                             (let ((__tmp297978
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx292512_)))))
                               (declare (not safe))
                               (spawn __tmp297978))))
                       (let () (declare (not safe)) (gxc#join! _thr1292517_))
                       (let () (declare (not safe)) (gxc#join! _thr2292520_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx292512_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx292512_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx292512_))
                     '#!void)))
              (__tmp297973
               (let ((__obj297778
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj297778)
                 __obj297778))
              (__tmp297972
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp297971 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp297974
           gx#current-expander-context
           _ctx292512_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp297973
           gxc#current-compile-runtime-sections
           __tmp297972
           gxc#current-compile-runtime-names
           __tmp297971))))
    (define gxc#collect-bindings
      (lambda (_ctx292510_)
        (let ((__tmp297980
               (##structure-ref _ctx292510_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp297980))))
    (define gxc#compile-runtime-code
      (lambda (_ctx292456_)
        (letrec ((_compile1292458_
                  (lambda (_ctx292499_)
                    (let* ((_code292501_
                            (##structure-ref
                             _ctx292499_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt292505_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code292501_))
                                (let ((_idstr292503_
                                       (let ((__tmp297981
                                              (##structure-ref
                                               _ctx292499_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp297981))))
                                  (string-append _idstr292503_ '"__0"))
                                '#f)))
                      (if _rt292505_
                          (begin
                            (let ((__tmp297982
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp297982 _ctx292499_ _rt292505_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code292460_
                               _ctx292499_
                               _code292501_)))
                          (let ((_path292508_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx292499_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path292508_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code292461_
                         _ctx292499_
                         _code292501_
                         _rt292505_)))))
                 (_context-timestamp292459_
                  (lambda (_ctx292497_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx292497_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code292460_
                  (lambda (_ctx292479_ _code292480_)
                    (let* ((_lifts292482_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code292485_
                            (let ((__tmp297985
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code292480_))))
                                  (__tmp297984
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp297983
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297985
                               gx#current-expander-context
                               _ctx292479_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts292482_
                               gxc#current-compile-marks
                               __tmp297984
                               gxc#current-compile-identifiers
                               __tmp297983)))
                           (_runtime-code292487_
                            (if (let ((__tmp297989 (unbox _lifts292482_)))
                                  (declare (not safe))
                                  (null? __tmp297989))
                                _runtime-code292485_
                                (let ((__tmp297986
                                       (let ((__tmp297988
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code292485_
                                                      '())))
                                             (__tmp297987
                                              (reverse (unbox _lifts292482_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp297988
                                                 __tmp297987))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297986))))
                           (_runtime-code292489_
                            (let ((__tmp297990
                                   (let ((__tmp297992
                                          (let ((__tmp297993
                                                 (let ((__tmp297996
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp292459_
                                                           _ctx292479_)))
                                                       (__tmp297994
                                                        (let ((__tmp297995
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp297995
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp297996
                                                         __tmp297994))))
                                            (declare (not safe))
                                            (cons 'define __tmp297993)))
                                         (__tmp297991
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code292487_ '()))))
                                     (declare (not safe))
                                     (cons __tmp297992 __tmp297991))))
                              (declare (not safe))
                              (cons 'begin __tmp297990)))
                           (_scm0292491_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292479_
                               '0
                               '".scm"))))
                      (let ((_scms292494_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx292479_))))
                        (let ((__tmp297997
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0292491_
                                    _runtime-code292489_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp297997
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms292494_)
                            (delete-file _scms292494_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0292491_
                           '" => "
                           _scms292494_))
                        (copy-file _scm0292491_ _scms292494_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0292491_))))))
                 (_generate-loader-code292461_
                  (lambda (_ctx292468_ _code292469_ _rt292470_)
                    (let* ((_loader-code292473_
                            (let ((__tmp297998
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code292469_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297998
                               gx#current-expander-context
                               _ctx292468_)))
                           (_loader-code292475_
                            (if _rt292470_
                                (let ((__tmp297999
                                       (let ((__tmp298000
                                              (let ((__tmp298001
                                                     (let ((__tmp298002
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt292470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp298002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298001 '()))))
                                         (declare (not safe))
                                         (cons _loader-code292473_
                                               __tmp298000))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297999))
                                _loader-code292473_)))
                      (let ((__tmp298003
                             (lambda ()
                               (let ((__tmp298004
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292468_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp298004
                                  _loader-code292475_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp298003
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules292463_
                 (let ((__tmp298005
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx292456_))))
                   (declare (not safe))
                   (cons _ctx292456_ __tmp298005))))
            (for-each
             (lambda (_ctx292465_)
               (let ((__tmp298006
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1292458_ _ctx292465_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp298006
                  gxc#current-compile-decls
                  '())))
             _all-modules292463_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx292353_)
        (letrec ((_compile-ssi292355_
                  (lambda (_code292426_)
                    (let* ((_path292428_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292353_
                               '#f
                               '".ssi")))
                           (_prelude292439_
                            (let* ((_super292430_
                                    (##structure-ref
                                     _ctx292353_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e292432_
                                    (##structure-ref
                                     _super292430_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e292432_
                                  ((lambda (_g292434292436_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g292434292436_)))
                                   _$e292432_)
                                  ':<root>)))
                           (_ns292441_
                            (##structure-ref
                             _ctx292353_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr292443_
                            (symbol->string
                             (##structure-ref
                              _ctx292353_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg292450_
                            (let ((_$e292445_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr292443_ '#\/))))
                              (if _$e292445_
                                  ((lambda (_x292448_)
                                     (string->symbol
                                      (substring _idstr292443_ '0 _x292448_)))
                                   _$e292445_)
                                  '#f)))
                           (_rt292452_
                            (let ((__tmp298007
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp298007 _ctx292353_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path292428_))
                      (let ((__tmp298008
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude292439_))
                               (if _pkg292450_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg292450_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns292441_))
                               (newline)
                               (pretty-print _code292426_)
                               (if _rt292452_
                                   (pretty-print
                                    (let ((__tmp298009
                                           (let ((__tmp298013
                                                  (let ((__tmp298014
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp298014)))
                                                 (__tmp298010
                                                  (let ((__tmp298011
                                                         (let ((__tmp298012
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt292452_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp298012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298011 '()))))
                                             (declare (not safe))
                                             (cons __tmp298013 __tmp298010))))
                                      (declare (not safe))
                                      (cons '%#call __tmp298009)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path292428_
                         __tmp298008)))))
                 (_compile-phi292356_
                  (lambda (_part292366_)
                    (let* ((_part292367292380_ _part292366_)
                           (_E292369292384_
                            (lambda ()
                              (error '"No clause matching"
                                     _part292367292380_)))
                           (_K292370292395_
                            (lambda (_code292387_
                                     _n292388_
                                     _phi292389_
                                     _phi-ctx292390_)
                              (let* ((_code292393_
                                      (let ((__tmp298015
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code292387_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp298015
                                         gx#current-expander-context
                                         _phi-ctx292390_
                                         gx#current-expander-phi
                                         _phi292389_)))
                                     (__tmp298016
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292353_
                                         _n292388_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp298016
                                 _code292393_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part292367292380_))
                          (let ((_hd292371292398_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part292367292380_)))
                                (_tl292372292400_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part292367292380_))))
                            (let ((_phi-ctx292403_ _hd292371292398_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl292372292400_))
                                  (let ((_hd292373292405_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl292372292400_)))
                                        (_tl292374292407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl292372292400_))))
                                    (let ((_phi292410_ _hd292373292405_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl292374292407_))
                                          (let ((_hd292375292412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl292374292407_)))
                                                (_tl292376292414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl292374292407_))))
                                            (let ((_n292417_ _hd292375292412_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl292376292414_))
                                                  (let ((_hd292377292419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl292376292414_)))
                                                        (_tl292378292421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl292376292414_))))
                                                    (let ((_code292424_
                                                           _hd292377292419_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl292378292421_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K292370292395_
                                                             _code292424_
                                                             _n292417_
                                                             _phi292410_
                                                             _phi-ctx292403_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E292369292384_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E292369292384_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E292369292384_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E292369292384_)))))
                          (let () (declare (not safe)) (_E292369292384_)))))))
          (let ((_g298017_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx292353_))))
            (begin
              (let ((_g298018_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g298017_)
                           (##vector-length _g298017_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g298018_ 2)))
                    (error "Context expects 2 values" _g298018_)))
              (let ((_ssi-code292358_
                     (let () (declare (not safe)) (##vector-ref _g298017_ 0)))
                    (_phi-code292359_
                     (let () (declare (not safe)) (##vector-ref _g298017_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi292355_ _ssi-code292358_))
                  (let ((_threads292364_
                         (map (lambda (_code292361_)
                                (let ((__tmp298019
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi292356_
                                            _code292361_)))))
                                  (declare (not safe))
                                  (spawn __tmp298019)))
                              _phi-code292359_)))
                    (for-each gxc#join! _threads292364_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx292336_)
        (let* ((_path292338_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx292336_ '#f '".ssxi.ss")))
               (_code292340_
                (let ((__tmp298020
                       (##structure-ref
                        _ctx292336_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp298020)))
               (_idstr292342_
                (symbol->string
                 (##structure-ref _ctx292336_ '1 gx#expander-context::t '#f)))
               (_pkg292349_
                (let ((_$e292344_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr292342_ '#\/))))
                  (if _$e292344_
                      ((lambda (_x292347_)
                         (string->symbol
                          (substring _idstr292342_ '0 _x292347_)))
                       _$e292344_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path292338_))
          (let ((__tmp298021
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg292349_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg292349_))
                       '#!void)
                   (newline)
                   (pretty-print _code292340_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path292338_ __tmp298021)))))
    (define gxc#generate-meta-code
      (lambda (_ctx292329_)
        (let* ((_state292331_
                (let ((__obj297779
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj297779 _ctx292329_)
                  __obj297779))
               (_ssi-code292333_
                (let ((__tmp298022
                       (##structure-ref
                        _ctx292329_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp298022 _state292331_))))
          (values _ssi-code292333_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state292331_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx292322_)
        (let ((_lifts292324_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298025
                 (lambda ()
                   (let ((_code292327_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx292322_))))
                     (if (let ((__tmp298029 (unbox _lifts292324_)))
                           (declare (not safe))
                           (null? __tmp298029))
                         _code292327_
                         (let ((__tmp298026
                                (let ((__tmp298028
                                       (let ()
                                         (declare (not safe))
                                         (cons _code292327_ '())))
                                      (__tmp298027
                                       (reverse (unbox _lifts292324_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp298028 __tmp298027))))
                           (declare (not safe))
                           (cons 'begin __tmp298026))))))
                (__tmp298024
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp298023
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp298025
             gxc#current-compile-lift
             _lifts292324_
             gxc#current-compile-marks
             __tmp298024
             gxc#current-compile-identifiers
             __tmp298023)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx292318_)
        (let ((_modules292320_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298030
                 (##structure-ref _ctx292318_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp298030 _modules292320_))
          (reverse (unbox _modules292320_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path292301_ _code292302_ _phi?292303_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path292301_))
        (let ((__tmp298031
               (lambda ()
                 (pretty-print
                  (let ((__tmp298032
                         (let ((__tmp298039
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp298033
                                (let ((__tmp298038
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp298034
                                       (let ((__tmp298037
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp298035
                                              (let ((__tmp298036
                                                     (if _phi?292303_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp298036))))
                                         (declare (not safe))
                                         (cons __tmp298037 __tmp298035))))
                                  (declare (not safe))
                                  (cons __tmp298038 __tmp298034))))
                           (declare (not safe))
                           (cons __tmp298039 __tmp298033))))
                    (declare (not safe))
                    (cons 'declare __tmp298032)))
                 (pretty-print _code292302_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path292301_ __tmp298031))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path292301_ _phi?292303_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path292301_))))
    (define gxc#compile-scm-file__0
      (lambda (_path292309_ _code292310_)
        (let ((_phi?292312_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path292309_ _code292310_ _phi?292312_))))
    (define gxc#compile-scm-file
      (lambda _g298041_
        (let ((_g298040_ (let () (declare (not safe)) (##length _g298041_))))
          (cond ((let () (declare (not safe)) (##fx= _g298040_ 2))
                 (apply (lambda (_path292309_ _code292310_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path292309_
                             _code292310_)))
                        _g298041_))
                ((let () (declare (not safe)) (##fx= _g298040_ 3))
                 (apply (lambda (_path292314_ _code292315_ _phi?292316_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path292314_
                             _code292315_
                             _phi?292316_)))
                        _g298041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g298041_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?292202_)
        (let _lp292204_ ((_rest292206_ (gxc#current-compile-gsc-options))
                         (_opts292207_ '()))
          (let* ((_rest292208292228_ _rest292206_)
                 (_else292212292236_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292202_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298042
                               (let ((__tmp298043 (reverse _opts292207_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp298043))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp298042))
                        (reverse _opts292207_)))))
            (let ((_K292222292279_
                   (lambda (_rest292277_)
                     (let ()
                       (declare (not safe))
                       (_lp292204_ _rest292277_ _opts292207_))))
                  (_K292217292261_
                   (lambda (_rest292259_)
                     (let ()
                       (declare (not safe))
                       (_lp292204_ _rest292259_ _opts292207_))))
                  (_K292214292243_
                   (lambda (_rest292240_ _opt292241_)
                     (let ((__tmp298044
                            (let ()
                              (declare (not safe))
                              (cons _opt292241_ _opts292207_))))
                       (declare (not safe))
                       (_lp292204_ _rest292240_ __tmp298044)))))
              (if (let () (declare (not safe)) (##pair? _rest292208292228_))
                  (let ((_tl292224292284_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292208292228_)))
                        (_hd292223292282_
                         (let ()
                           (declare (not safe))
                           (##car _rest292208292228_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292223292282_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292224292284_))
                            (let* ((_tl292226292287_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292224292284_)))
                                   (_rest292290_ _tl292226292287_))
                              (declare (not safe))
                              (_K292222292279_ _rest292290_))
                            (let ((_opt292251_ _hd292223292282_)
                                  (_rest292253_ _tl292224292284_))
                              (let ()
                                (declare (not safe))
                                (_K292214292243_ _rest292253_ _opt292251_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292223292282_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292224292284_))
                                (let* ((_tl292221292269_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292224292284_)))
                                       (_rest292272_ _tl292221292269_))
                                  (declare (not safe))
                                  (_K292217292261_ _rest292272_))
                                (let ((_opt292251_ _hd292223292282_)
                                      (_rest292253_ _tl292224292284_))
                                  (let ()
                                    (declare (not safe))
                                    (_K292214292243_
                                     _rest292253_
                                     _opt292251_))))
                            (let ((_opt292251_ _hd292223292282_)
                                  (_rest292253_ _tl292224292284_))
                              (let ()
                                (declare (not safe))
                                (_K292214292243_ _rest292253_ _opt292251_))))))
                  (let () (declare (not safe)) (_else292212292236_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?292296_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?292296_))))
    (define gxc#gsc-link-options
      (lambda _g298046_
        (let ((_g298045_ (let () (declare (not safe)) (##length _g298046_))))
          (cond ((let () (declare (not safe)) (##fx= _g298045_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g298046_))
                ((let () (declare (not safe)) (##fx= _g298045_ 1))
                 (apply (lambda (_phi?292298_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?292298_)))
                        _g298046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g298046_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?292103_)
        (let _lp292105_ ((_rest292107_ (gxc#current-compile-gsc-options))
                         (_opts292108_ '()))
          (let* ((_rest292109292129_ _rest292107_)
                 (_else292113292137_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292103_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298047
                               (let ((__tmp298048 (reverse _opts292108_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp298048))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp298047))
                        (reverse _opts292108_)))))
            (let ((_K292123292176_
                   (lambda (_rest292173_ _opt292174_)
                     (let ((__tmp298049
                            (let ((__tmp298050
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts292108_))))
                              (declare (not safe))
                              (cons _opt292174_ __tmp298050))))
                       (declare (not safe))
                       (_lp292105_ _rest292173_ __tmp298049))))
                  (_K292118292157_
                   (lambda (_rest292155_)
                     (let ()
                       (declare (not safe))
                       (_lp292105_ _rest292155_ _opts292108_))))
                  (_K292115292143_
                   (lambda (_rest292141_)
                     (let ()
                       (declare (not safe))
                       (_lp292105_ _rest292141_ _opts292108_)))))
              (if (let () (declare (not safe)) (##pair? _rest292109292129_))
                  (let ((_tl292125292181_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292109292129_)))
                        (_hd292124292179_
                         (let ()
                           (declare (not safe))
                           (##car _rest292109292129_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292124292179_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292125292181_))
                            (let ((_tl292127292186_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl292125292181_)))
                                  (_hd292126292184_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl292125292181_))))
                              (let ((_opt292189_ _hd292126292184_)
                                    (_rest292191_ _tl292127292186_))
                                (let ()
                                  (declare (not safe))
                                  (_K292123292176_ _rest292191_ _opt292189_))))
                            (let ((_rest292149_ _tl292125292181_))
                              (declare (not safe))
                              (_K292115292143_ _rest292149_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292124292179_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292125292181_))
                                (let* ((_tl292122292165_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292125292181_)))
                                       (_rest292168_ _tl292122292165_))
                                  (declare (not safe))
                                  (_K292118292157_ _rest292168_))
                                (let ((_rest292149_ _tl292125292181_))
                                  (declare (not safe))
                                  (_K292115292143_ _rest292149_)))
                            (let ((_rest292149_ _tl292125292181_))
                              (declare (not safe))
                              (_K292115292143_ _rest292149_)))))
                  (let () (declare (not safe)) (_else292113292137_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?292197_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?292197_))))
    (define gxc#gsc-cc-options
      (lambda _g298052_
        (let ((_g298051_ (let () (declare (not safe)) (##length _g298052_))))
          (cond ((let () (declare (not safe)) (##fx= _g298051_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g298052_))
                ((let () (declare (not safe)) (##fx= _g298051_ 1))
                 (apply (lambda (_phi?292199_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?292199_)))
                        _g298052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g298052_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir292098_)
        (let* ((_user-staticdir292100_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp298053
                (let ((__tmp298054
                       (string-append
                        '"-I "
                        _staticdir292098_
                        '" -I "
                        _user-staticdir292100_)))
                  (declare (not safe))
                  (cons __tmp298054 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp298053))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp292010_ ((_rest292012_ (gxc#current-compile-gsc-options))
                         (_opts292013_ '()))
          (let* ((_rest292014292034_ _rest292012_)
                 (_else292018292042_ (lambda () _opts292013_)))
            (let ((_K292028292085_
                   (lambda (_rest292083_)
                     (let ()
                       (declare (not safe))
                       (_lp292010_ _rest292083_ _opts292013_))))
                  (_K292023292063_
                   (lambda (_rest292060_ _opt292061_)
                     (let ((__tmp298055
                            (append _opts292013_
                                    (let ((__tmp298056
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt292061_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp298056)))))
                       (declare (not safe))
                       (_lp292010_ _rest292060_ __tmp298055))))
                  (_K292020292048_
                   (lambda (_rest292046_)
                     (let ()
                       (declare (not safe))
                       (_lp292010_ _rest292046_ _opts292013_)))))
              (if (let () (declare (not safe)) (##pair? _rest292014292034_))
                  (let ((_tl292030292090_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292014292034_)))
                        (_hd292029292088_
                         (let ()
                           (declare (not safe))
                           (##car _rest292014292034_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292029292088_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292030292090_))
                            (let* ((_tl292032292093_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292030292090_)))
                                   (_rest292096_ _tl292032292093_))
                              (declare (not safe))
                              (_K292028292085_ _rest292096_))
                            (let ((_rest292054_ _tl292030292090_))
                              (declare (not safe))
                              (_K292020292048_ _rest292054_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292029292088_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292030292090_))
                                (let ((_tl292027292073_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl292030292090_)))
                                      (_hd292026292071_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl292030292090_))))
                                  (let ((_opt292076_ _hd292026292071_)
                                        (_rest292078_ _tl292027292073_))
                                    (let ()
                                      (declare (not safe))
                                      (_K292023292063_
                                       _rest292078_
                                       _opt292076_))))
                                (let ((_rest292054_ _tl292030292090_))
                                  (declare (not safe))
                                  (_K292020292048_ _rest292054_)))
                            (let ((_rest292054_ _tl292030292090_))
                              (declare (not safe))
                              (_K292020292048_ _rest292054_)))))
                  (let () (declare (not safe)) (_else292018292042_))))))))
    (define gxc#not-string-empty?
      (lambda (_str292007_)
        (let ((__tmp298057
               (let () (declare (not safe)) (string-empty? _str292007_))))
          (declare (not safe))
          (not __tmp298057))))
    (define gxc#gsc-compile-file
      (lambda (_path291975_ _phi?291976_)
        (letrec ((_gsc-link-path291978_
                  (lambda (_base-path291999_)
                    (let _lp292001_ ((_n292003_ '1))
                      (let ((_path292005_
                             (string-append
                              _base-path291999_
                              '".o"
                              (number->string _n292003_))))
                        (if (file-exists? _path292005_)
                            (let ((__tmp298058
                                   (let ()
                                     (declare (not safe))
                                     (+ _n292003_ '1))))
                              (declare (not safe))
                              (_lp292001_ __tmp298058))
                            _path292005_))))))
          (let* ((_base-path291980_ (path-strip-extension _path291975_))
                 (_path-c291982_ (string-append _base-path291980_ '".c"))
                 (_path-o291984_ (string-append _base-path291980_ '".o"))
                 (_link-path291986_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path291978_ _base-path291980_)))
                 (_link-path-c291988_ (string-append _link-path291986_ '".c"))
                 (_link-path-o291990_ (string-append _link-path291986_ '".o"))
                 (_gsc-link-opts291992_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?291976_)))
                 (_gsc-cc-opts291994_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?291976_)))
                 (_gcc-ld-opts291996_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp298065 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298059
                   (let ((__tmp298060
                          (let ((__tmp298061
                                 (let ((__tmp298062
                                        (let ((__tmp298063
                                               (let ((__tmp298064
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path291975_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp298064
                                                         _gsc-link-opts291992_))))
                                          (declare (not safe))
                                          (cons _link-path-c291988_
                                                __tmp298063))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp298062))))
                            (declare (not safe))
                            (cons '"-flat" __tmp298061))))
                     (declare (not safe))
                     (cons '"-link" __tmp298060))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298065 __tmp298059))
            (let ((__tmp298072 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298066
                   (let ((__tmp298067
                          (let ((__tmp298068
                                 (let ((__tmp298069
                                        (let ((__tmp298070
                                               (let ((__tmp298071
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c291988_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c291982_
                                                       __tmp298071))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp298070
                                                  _gsc-cc-opts291994_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp298069))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp298068))))
                     (declare (not safe))
                     (cons '"-obj" __tmp298067))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298072 __tmp298066))
            (let ((__tmp298078 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp298073
                   (let ((__tmp298074
                          (let ((__tmp298075
                                 (let ((__tmp298076
                                        (let ((__tmp298077
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o291990_
                                                       _gcc-ld-opts291996_))))
                                          (declare (not safe))
                                          (cons _path-o291984_ __tmp298077))))
                                   (declare (not safe))
                                   (cons _link-path291986_ __tmp298076))))
                            (declare (not safe))
                            (cons '"-o" __tmp298075))))
                     (declare (not safe))
                     (cons '"-shared" __tmp298074))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp298078
               __tmp298073))
            (for-each
             delete-file
             (let ((__tmp298079
                    (let ((__tmp298080
                           (let ((__tmp298081
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o291990_ '()))))
                             (declare (not safe))
                             (cons _link-path-c291988_ __tmp298081))))
                      (declare (not safe))
                      (cons _path-o291984_ __tmp298080))))
               (declare (not safe))
               (cons _path-c291982_ __tmp298079)))))))
    (define gxc#compile-output-file
      (lambda (_ctx291946_ _n291947_ _ext291948_)
        (letrec ((_module-relative-path291950_
                  (lambda (_ctx291973_)
                    (path-strip-directory
                     (let ((__tmp298082
                            (##structure-ref
                             _ctx291973_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp298082)))))
                 (_module-source-directory291951_
                  (lambda (_ctx291969_)
                    (path-directory
                     (let ((_mpath291971_
                            (##structure-ref
                             _ctx291969_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath291971_))
                           _mpath291971_
                           (let ()
                             (declare (not safe))
                             (last _mpath291971_)))))))
                 (_section-string291952_
                  (lambda (_n291967_)
                    (if (let () (declare (not safe)) (number? _n291967_))
                        (number->string _n291967_)
                        (if (let () (declare (not safe)) (symbol? _n291967_))
                            (symbol->string _n291967_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n291967_))
                                _n291967_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n291967_)))))))
                 (_file-name291953_
                  (lambda (_path291965_)
                    (if _n291947_
                        (string-append
                         _path291965_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string291952_ _n291947_))
                         _ext291948_)
                        (string-append _path291965_ _ext291948_))))
                 (_file-path291954_
                  (lambda ()
                    (let ((_$e291960_ (gxc#current-compile-output-dir)))
                      (if _$e291960_
                          ((lambda (_outdir291963_)
                             (path-expand
                              (let ((__tmp298084
                                     (let ((__tmp298085
                                            (##structure-ref
                                             _ctx291946_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp298085))))
                                (declare (not safe))
                                (_file-name291953_ __tmp298084))
                              _outdir291963_))
                           _$e291960_)
                          (path-expand
                           (let ((__tmp298083
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path291950_
                                     _ctx291946_))))
                             (declare (not safe))
                             (_file-name291953_ __tmp298083))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory291951_
                              _ctx291946_))))))))
          (let ((_path291956_
                 (let () (declare (not safe)) (_file-path291954_))))
            (let ((__tmp298086
                   (lambda ()
                     (let ((__tmp298087 (path-directory _path291956_)))
                       (declare (not safe))
                       (create-directory* __tmp298087)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298086))
            _path291956_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx291928_)
        (letrec ((_file-name291930_
                  (lambda (_id291944_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id291944_))
                     '".scm")))
                 (_file-path291931_
                  (lambda ()
                    (let* ((_file291937_
                            (let ((__tmp298088
                                   (##structure-ref
                                    _ctx291928_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name291930_ __tmp298088)))
                           (_$e291939_ (gxc#current-compile-output-dir)))
                      (if _$e291939_
                          ((lambda (_outdir291942_)
                             (path-expand
                              _file291937_
                              (path-expand '"static" _outdir291942_)))
                           _$e291939_)
                          (path-expand _file291937_ '"static"))))))
          (let ((_path291933_
                 (let () (declare (not safe)) (_file-path291931_))))
            (let ((__tmp298089
                   (lambda ()
                     (let ((__tmp298090 (path-directory _path291933_)))
                       (declare (not safe))
                       (create-directory* __tmp298090)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298089))
            _path291933_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx291922_ _opts291923_)
        (let ((_$e291925_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts291923_))))
          (if _$e291925_
              (values _$e291925_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx291922_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr291915_)
        (if (let () (declare (not safe)) (string? _idstr291915_))
            (let* ((_str291917_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr291915_)))
                   (_strs291919_
                    (let ()
                      (declare (not safe))
                      (string-split _str291917_ '#\/))))
              (let () (declare (not safe)) (string-join _strs291919_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr291915_))
                (let ((__tmp298091 (symbol->string _idstr291915_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp298091))
                (error '"Bad module id" _idstr291915_)))))
    (define gxc#invoke__%
      (lambda (_g298092_
               _stdout-redirection291879291883_
               _stderr-redirection291880291885_
               _program291887_
               _args291888_)
        (let* ((_stdout-redirection291890_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection291879291883_ absent-value))
                    '#f
                    _stdout-redirection291879291883_))
               (_stderr-redirection291892_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection291880291885_ absent-value))
                    '#f
                    _stderr-redirection291880291885_)))
          (let ((__tmp298093
                 (let ()
                   (declare (not safe))
                   (cons _program291887_ _args291888_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp298093))
          (let ((_proc291894_
                 (open-process
                  (let ((__tmp298094
                         (let ((__tmp298095
                                (let ((__tmp298096
                                       (let ((__tmp298097
                                              (let ((__tmp298098
                                                     (let ((__tmp298099
                                                            (let ((__tmp298100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection291892_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp298100))))
               (declare (not safe))
               (cons _stdout-redirection291890_ __tmp298099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp298098))))
                                         (declare (not safe))
                                         (cons _args291888_ __tmp298097))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp298096))))
                           (declare (not safe))
                           (cons _program291887_ __tmp298095))))
                    (declare (not safe))
                    (cons 'path: __tmp298094)))))
            (if (or _stdout-redirection291890_ _stderr-redirection291892_)
                (read-line _proc291894_ '#f)
                '#!void)
            (let ((_status291899_ (process-status _proc291894_)))
              (close-port _proc291894_)
              (if (let () (declare (not safe)) (zero? _status291899_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program291887_))))))))
    (define gxc#invoke__@
      (lambda (_keys291878291904_ . _args291906_)
        (apply gxc#invoke__%
               _keys291878291904_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291878291904_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291878291904_
                  'stderr-redirection:
                  absent-value))
               _args291906_)))
    (define gxc#invoke
      (lambda _args291881291912_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args291881291912_)))
    (define gxc#join!
      (lambda (_thread291872_)
        (let ((__tmp298102
               (lambda (_exn291874_)
                 (if (uncaught-exception? _exn291874_)
                     (raise (uncaught-exception-reason _exn291874_))
                     (raise _exn291874_))))
              (__tmp298101 (lambda () (thread-join! _thread291872_))))
          (declare (not safe))
          (with-catch __tmp298102 __tmp298101))))))
