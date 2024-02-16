(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708102809)
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
      (lambda (_path293121_ _fun293122_)
        (with-output-to-file
         (let ((__tmp297783
                (let ()
                  (declare (not safe))
                  (cons _path293121_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp297783))
         _fun293122_)))
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
      (lambda (_gerbil-libdir293116_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir293116_)))
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
      (lambda (_dir293114_) (delete-file-or-directory _dir293114_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath293088_ _opts293089_)
        (if (let () (declare (not safe)) (string? _srcpath293088_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293088_)))
        (let ((_outdir293091_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293089_)))
              (_invoke-gsc?293092_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293089_)))
              (_gsc-options293093_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293089_)))
              (_keep-scm?293094_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293089_)))
              (_verbosity293095_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293089_)))
              (_optimize293096_
               (let () (declare (not safe)) (pgetq 'optimize: _opts293089_)))
              (_debug293097_
               (let () (declare (not safe)) (pgetq 'debug: _opts293089_)))
              (_gen-ssxi293098_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts293089_))))
          (if _outdir293091_
              (let ((__tmp297784
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293091_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297784))
              '#!void)
          (if _optimize293096_
              (let ((__tmp297785
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297785))
              '#!void)
          (let ((__tmp297789
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath293088_))
                   (let ((__tmp297790
                          (let ((__tmp297791
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293088_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297791))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp297790))))
                (__tmp297788
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297786
                 (let ((__tmp297787
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293088_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp297787))))
            (declare (not safe))
            (call-with-parameters
             __tmp297789
             gxc#current-compile-output-dir
             _outdir293091_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293092_
             gxc#current-compile-gsc-options
             _gsc-options293093_
             gxc#current-compile-keep-scm
             _keep-scm?293094_
             gxc#current-compile-verbose
             _verbosity293095_
             gxc#current-compile-optimize
             _optimize293096_
             gxc#current-compile-debug
             _debug293097_
             gxc#current-compile-generate-ssxi
             _gen-ssxi293098_
             gxc#current-compile-timestamp
             __tmp297788
             gxc#current-compile-context
             __tmp297786
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath293107_)
        (let ((_opts293109_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath293107_ _opts293109_))))
    (define gxc#compile-module
      (lambda _g297793_
        (let ((_g297792_ (let () (declare (not safe)) (##length _g297793_))))
          (cond ((let () (declare (not safe)) (##fx= _g297792_ 1))
                 (apply (lambda (_srcpath293107_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath293107_)))
                        _g297793_))
                ((let () (declare (not safe)) (##fx= _g297792_ 2))
                 (apply (lambda (_srcpath293111_ _opts293112_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath293111_
                             _opts293112_)))
                        _g297793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g297793_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath293064_ _opts293065_)
        (if (let () (declare (not safe)) (string? _srcpath293064_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293064_)))
        (let ((_outdir293067_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293065_)))
              (_invoke-gsc?293068_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293065_)))
              (_gsc-options293069_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293065_)))
              (_keep-scm?293070_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293065_)))
              (_verbosity293071_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293065_)))
              (_debug293072_
               (let () (declare (not safe)) (pgetq 'debug: _opts293065_))))
          (if _outdir293067_
              (let ((__tmp297794
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293067_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297794))
              '#!void)
          (let ((__tmp297798
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath293064_))
                   (let ((__tmp297799
                          (let ((__tmp297800
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293064_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297800))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp297799
                      _opts293065_))))
                (__tmp297797
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297795
                 (let ((__tmp297796
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293064_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp297796))))
            (declare (not safe))
            (call-with-parameters
             __tmp297798
             gxc#current-compile-output-dir
             _outdir293067_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293068_
             gxc#current-compile-gsc-options
             _gsc-options293069_
             gxc#current-compile-keep-scm
             _keep-scm?293070_
             gxc#current-compile-verbose
             _verbosity293071_
             gxc#current-compile-debug
             _debug293072_
             gxc#current-compile-timestamp
             __tmp297797
             gxc#current-compile-context
             __tmp297795
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath293080_)
        (let ((_opts293082_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath293080_ _opts293082_))))
    (define gxc#compile-exe
      (lambda _g297802_
        (let ((_g297801_ (let () (declare (not safe)) (##length _g297802_))))
          (cond ((let () (declare (not safe)) (##fx= _g297801_ 1))
                 (apply (lambda (_srcpath293080_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath293080_)))
                        _g297802_))
                ((let () (declare (not safe)) (##fx= _g297801_ 2))
                 (apply (lambda (_srcpath293084_ _opts293085_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath293084_ _opts293085_)))
                        _g297802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g297802_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx293060_ _opts293061_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts293061_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx293060_
               _opts293061_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx293060_
               _opts293061_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx292943_ _opts292944_)
        (letrec ((_generate-stub292946_
                  (lambda (_builtin-modules293056_)
                    (let ((_mod-main293058_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292943_ 'main))))
                      (write (let ((__tmp297803
                                    (let ((__tmp297804
                                           (let ((__tmp297805
                                                  (let ((__tmp297806
                                                         (let ((__tmp297808
                                                                (let ((__tmp297809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules293056_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297809)))
                       (__tmp297807
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp297808 __tmp297807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp297806))))
                                             (declare (not safe))
                                             (cons __tmp297805 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp297804))))
                               (declare (not safe))
                               (cons 'define __tmp297803)))
                      (write (let ((__tmp297810
                                    (let ((__tmp297849
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297811
                                           (let ((__tmp297812
                                                  (let ((__tmp297813
                                                         (let ((__tmp297837
                                                                (let ((__tmp297838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297839
                                      (let ((__tmp297847
                                             (let ((__tmp297848
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp297848)))
                                            (__tmp297840
                                             (let ((__tmp297841
                                                    (let ((__tmp297842
                                                           (let ((__tmp297843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297844
                                 (let ((__tmp297845
                                        (let ((__tmp297846
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp297846 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp297845))))
                            (declare (not safe))
                            (cons __tmp297844 '()))))
                     (declare (not safe))
                     (cons _mod-main293058_ __tmp297843))))
              (declare (not safe))
              (cons 'apply __tmp297842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297841 '()))))
                                        (declare (not safe))
                                        (cons __tmp297847 __tmp297840))))
                                 (declare (not safe))
                                 (cons '() __tmp297839))))
                          (declare (not safe))
                          (cons 'lambda __tmp297838)))
                       (__tmp297814
                        (let ((__tmp297815
                               (let ((__tmp297816
                                      (let ((__tmp297817
                                             (let ((__tmp297828
                                                    (let ((__tmp297829
                                                           (let ((__tmp297830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297831
                                 (let ((__tmp297832
                                        (let ((__tmp297833
                                               (let ((__tmp297834
                                                      (let ((__tmp297835
                                                             (let ((__tmp297836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp297836 '()))))
                (declare (not safe))
                (cons 'force-output __tmp297835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp297834 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp297833))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp297832))))
                            (declare (not safe))
                            (cons __tmp297831 '()))))
                     (declare (not safe))
                     (cons 'void __tmp297830))))
              (declare (not safe))
              (cons 'with-catch __tmp297829)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp297818
                                                    (let ((__tmp297819
                                                           (let ((__tmp297820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297821
                                 (let ((__tmp297822
                                        (let ((__tmp297823
                                               (let ((__tmp297824
                                                      (let ((__tmp297825
                                                             (let ((__tmp297826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp297827
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp297827 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp297826))))
                (declare (not safe))
                (cons __tmp297825 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp297824))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp297823))))
                                   (declare (not safe))
                                   (cons __tmp297822 '()))))
                            (declare (not safe))
                            (cons 'void __tmp297821))))
                     (declare (not safe))
                     (cons 'with-catch __tmp297820))))
              (declare (not safe))
              (cons __tmp297819 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297828
                                                     __tmp297818))))
                                        (declare (not safe))
                                        (cons '() __tmp297817))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp297816))))
                          (declare (not safe))
                          (cons __tmp297815 '()))))
                   (declare (not safe))
                   (cons __tmp297837 __tmp297814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp297813))))
                                             (declare (not safe))
                                             (cons __tmp297812 '()))))
                                      (declare (not safe))
                                      (cons __tmp297849 __tmp297811))))
                               (declare (not safe))
                               (cons 'define __tmp297810)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts292947_
                  (lambda (_libgerbil293054_)
                    (call-with-input-file
                     (string-append _libgerbil293054_ '".ldd")
                     read)))
                 (_replace-extension292948_
                  (lambda (_path293051_ _ext293052_)
                    (string-append
                     (path-strip-extension _path293051_)
                     _ext293052_)))
                 (_not-exclude-module?292949_
                  (lambda (_ctx293047_)
                    (let ((_id-str293049_
                           (symbol->string
                            (##structure-ref
                             _ctx293047_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp297851
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str293049_))))
                            (declare (not safe))
                            (not __tmp297851))
                          (let ((__tmp297850
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str293049_))))
                            (declare (not safe))
                            (not __tmp297850))
                          '#f))))
                 (_not-file-empty?292950_
                  (lambda (_path293045_)
                    (let ((__tmp297852
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path293045_))))
                      (declare (not safe))
                      (not __tmp297852))))
                 (_compile-stub292951_
                  (lambda (_output-scm292958_ _output-bin292959_)
                    (let* ((_gerbil-home292961_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292963_
                            (path-expand '"lib" _gerbil-home292961_))
                           (_gerbil-staticdir292965_
                            (path-expand '"static" _gerbil-libdir292963_))
                           (_gxlink292967_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir292963_))
                           (_tmp292969_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path292973_
                            (lambda (_f292971_)
                              (path-expand
                               (path-strip-directory _f292971_)
                               _tmp292969_)))
                           (_deps292975_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292943_)))
                           (_deps292977_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?292949_
                                      _deps292975_)))
                           (_src-deps-scm292979_
                            (map gxc#find-static-module-file _deps292977_))
                           (_src-deps-scm292981_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?292950_
                                      _src-deps-scm292979_)))
                           (_src-deps-scm292983_
                            (map path-expand _src-deps-scm292981_))
                           (_deps-scm292985_
                            (map _tmp-path292973_ _src-deps-scm292983_))
                           (_deps-c292991_
                            (map (lambda (_g292986292988_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292948_
                                      _g292986292988_
                                      '".c")))
                                 _deps-scm292985_))
                           (_deps-o292997_
                            (map (lambda (_g292992292994_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292948_
                                      _g292992292994_
                                      '".o")))
                                 _deps-scm292985_))
                           (_src-bin-scm292999_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292943_)))
                           (_src-bin-scm293001_
                            (path-expand _src-bin-scm292999_))
                           (_bin-scm293003_
                            (let ()
                              (declare (not safe))
                              (_tmp-path292973_ _src-bin-scm293001_)))
                           (_bin-c293005_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292948_
                               _bin-scm293003_
                               '".c")))
                           (_bin-o293007_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292948_
                               _bin-scm293003_
                               '".o")))
                           (_output-bin293009_
                            (path-expand _output-bin292959_))
                           (_output-scm293011_
                            (path-expand _output-scm292958_))
                           (_output-c293013_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292948_
                               _output-scm293011_
                               '".c")))
                           (_output-o293015_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292948_
                               _output-scm293011_
                               '".o")))
                           (_output_-c293017_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292948_
                               _output-scm293011_
                               '"_.c")))
                           (_output_-o293019_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292948_
                               _output-scm293011_
                               '"_.o")))
                           (_gsc-link-opts293021_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts293023_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts293025_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir292965_)))
                           (_output-ld-opts293027_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a293029_
                            (path-expand '"libgerbil.a" _gerbil-libdir292963_))
                           (_libgerbil.so293031_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir292963_))
                           (_libgerbil-ld-opts293033_
                            (if (file-exists? _libgerbil.so293031_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts292947_
                                   _libgerbil.so293031_))
                                (if (file-exists? _libgerbil.a293029_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts292947_
                                       _libgerbil.a293029_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a293029_
                                       _libgerbil.so293031_)))))
                           (_rpath293035_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292963_)))
                           (_builtin-modules293039_
                            (map (lambda (_mod293037_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod293037_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx292943_ _deps292977_)))))
                      (let ((__tmp297853
                             (lambda ()
                               (let ((__tmp297854
                                      (path-directory _output-bin293009_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297854)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297853))
                      (let ((__tmp297855
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub292946_
                                  _builtin-modules293039_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm293011_
                         __tmp297855))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297856
                                   (lambda () (create-directory _tmp292969_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp297856))
                            (for-each
                             copy-file
                             _src-deps-scm292983_
                             _deps-scm292985_)
                            (copy-file _src-bin-scm293001_ _bin-scm293003_)
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
                                       (cons _output-scm293011_ '()))))
                                (declare (not safe))
                                (cons _bin-scm293003_ __tmp297863))))
                         (declare (not safe))
                         (foldr1 cons __tmp297862 _deps-scm292985_))))
                  (declare (not safe))
                  (foldr1 cons __tmp297861 _gsc-link-opts293021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink292967_
                                                         __tmp297860))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp297859))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297858))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297864
                               __tmp297857))
                            (let ((__tmp297872
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297865
                                   (let ((__tmp297866
                                          (let ((__tmp297867
                                                 (let ((__tmp297868
                                                        (let ((__tmp297869
                                                               (let ((__tmp297870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297871
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c293017_ '()))))
                                (declare (not safe))
                                (cons _output-c293013_ __tmp297871))))
                         (declare (not safe))
                         (cons _bin-c293005_ __tmp297870))))
                  (declare (not safe))
                  (foldr1 cons __tmp297869 _deps-c292991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297868
                                                           _gsc-static-opts293025_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297867
                                                    _gsc-cc-opts293023_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297866))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297872
                               __tmp297865))
                            (let ((__tmp297885
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297873
                                   (let ((__tmp297874
                                          (let ((__tmp297875
                                                 (let ((__tmp297876
                                                        (let ((__tmp297877
                                                               (let ((__tmp297878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297879
                                     (let ((__tmp297880
                                            (let ((__tmp297881
                                                   (let ((__tmp297882
                                                          (let ((__tmp297883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp297884
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts293033_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp297884))))
                    (declare (not safe))
                    (cons _gerbil-libdir292963_ __tmp297883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp297882))))
                                              (declare (not safe))
                                              (cons _rpath293035_
                                                    __tmp297881))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp297880
                                               _output-ld-opts293027_))))
                                (declare (not safe))
                                (cons _output_-o293019_ __tmp297879))))
                         (declare (not safe))
                         (cons _output-o293015_ __tmp297878))))
                  (declare (not safe))
                  (cons _bin-o293007_ __tmp297877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297876
                                                           _deps-o292997_))))
                                            (declare (not safe))
                                            (cons _output-bin293009_
                                                  __tmp297875))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297874))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297885
                               __tmp297873))
                            (for-each
                             delete-file
                             (let ((__tmp297886
                                    (let ((__tmp297887
                                           (let ((__tmp297888
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o293019_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o293015_
                                                   __tmp297888))))
                                      (declare (not safe))
                                      (cons _output_-c293017_ __tmp297887))))
                               (declare (not safe))
                               (cons _output-c293013_ __tmp297886)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp292969_)))
                          '#!void)))))
          (let* ((_output-bin292953_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292943_ _opts292944_)))
                 (_output-scm292955_
                  (string-append _output-bin292953_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292951_ _output-scm292955_ _output-bin292953_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292955_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx292768_ _opts292769_)
        (letrec ((_reset-declare292771_
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
                 (_generate-stub292772_
                  (lambda (_deps292934_)
                    (let ((_mod-main292936_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292768_ 'main)))
                          (_reset-decl292937_
                           (let ()
                             (declare (not safe))
                             (_reset-declare292771_)))
                          (_user-decl292938_
                           (let ()
                             (declare (not safe))
                             (_user-declare292773_))))
                      (for-each
                       (lambda (_dep292940_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl292937_)
                         (newline)
                         (if _user-decl292938_
                             (begin (write _user-decl292938_) (newline))
                             '#!void)
                         (write (let ((__tmp297889
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep292940_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp297889)))
                         (newline))
                       _deps292934_)
                      (write (let ((__tmp297890
                                    (let ((__tmp297903
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297891
                                           (let ((__tmp297899
                                                  (let ((__tmp297900
                                                         (let ((__tmp297901
                                                                (let ((__tmp297902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297902))))
                   (declare (not safe))
                   (cons __tmp297901 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp297900)))
                                                 (__tmp297892
                                                  (let ((__tmp297893
                                                         (let ((__tmp297894
                                                                (let ((__tmp297895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297896
                                      (let ((__tmp297897
                                             (let ((__tmp297898
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp297898 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp297897))))
                                 (declare (not safe))
                                 (cons __tmp297896 '()))))
                          (declare (not safe))
                          (cons _mod-main292936_ __tmp297895))))
                   (declare (not safe))
                   (cons 'apply __tmp297894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297893 '()))))
                                             (declare (not safe))
                                             (cons __tmp297899 __tmp297892))))
                                      (declare (not safe))
                                      (cons __tmp297903 __tmp297891))))
                               (declare (not safe))
                               (cons 'define __tmp297890)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare292773_
                  (lambda ()
                    (let* ((_gsc-opts292839_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts292769_)))
                           (_gsc-prelude292841_
                            (if _gsc-opts292839_
                                (member '"-prelude" _gsc-opts292839_)
                                '#f))
                           (_gsc-prelude292843_
                            (if _gsc-prelude292841_
                                (read (open-input-string
                                       (cadr _gsc-prelude292841_)))
                                '#f)))
                      (let _lp292846_ ((_rest292848_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude292843_ '())))
                                       (_user-decls292849_ '()))
                        (let* ((_rest292850292858_ _rest292848_)
                               (_else292852292866_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls292849_))
                                      '#f
                                      (let ((__tmp297904
                                             (reverse _user-decls292849_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp297904)))))
                               (_K292854292922_
                                (lambda (_rest292869_ _expr292870_)
                                  (let* ((_expr292871292883_ _expr292870_)
                                         (_else292874292891_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp292846_
                                               _rest292869_
                                               _user-decls292849_)))))
                                    (let ((_K292879292912_
                                           (lambda (_decls292910_)
                                             (let ((__tmp297905
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls292849_
                                                              _decls292910_))))
                                               (declare (not safe))
                                               (_lp292846_
                                                _rest292869_
                                                __tmp297905))))
                                          (_K292876292897_
                                           (lambda (_exprs292895_)
                                             (let ((__tmp297906
                                                    (append _exprs292895_
                                                            _rest292869_)))
                                               (declare (not safe))
                                               (_lp292846_
                                                __tmp297906
                                                _user-decls292849_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr292871292883_))
                                          (let ((_tl292881292917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr292871292883_)))
                                                (_hd292880292915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr292871292883_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd292880292915_
                                                         'declare))
                                                (let ((_decls292920_
                                                       _tl292881292917_))
                                                  (declare (not safe))
                                                  (_K292879292912_
                                                   _decls292920_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd292880292915_
                                                             'begin))
                                                    (let ((_exprs292905_
                                                           _tl292881292917_))
                                                      (declare (not safe))
                                                      (_K292876292897_
                                                       _exprs292905_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else292874292891_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else292874292891_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest292850292858_))
                              (let ((_hd292855292925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest292850292858_)))
                                    (_tl292856292927_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest292850292858_))))
                                (let* ((_expr292930_ _hd292855292925_)
                                       (_rest292932_ _tl292856292927_))
                                  (declare (not safe))
                                  (_K292854292922_ _rest292932_ _expr292930_)))
                              (let ()
                                (declare (not safe))
                                (_else292852292866_))))))))
                 (_compile-stub292774_
                  (lambda (_output-scm292781_ _output-bin292782_)
                    (let* ((_gerbil-home292784_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292786_
                            (path-expand '"lib" _gerbil-home292784_))
                           (_runtime292788_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp292790_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home292784_))
                           (_include-gambit-sharp292792_
                            (string-append
                             '"(include \""
                             _gambit-sharp292790_
                             '"\")"))
                           (_bin-scm292794_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292768_)))
                           (_deps292796_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292768_)))
                           (_deps292798_
                            (map gxc#find-static-module-file _deps292796_))
                           (_deps292803_
                            (let ((__tmp297907
                                   (lambda (_$obj292800_)
                                     (let ((__tmp297908
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj292800_))))
                                       (declare (not safe))
                                       (not __tmp297908)))))
                              (declare (not safe))
                              (filter __tmp297907 _deps292798_)))
                           (_deps292807_
                            (let ((__tmp297909
                                   (lambda (_f292805_)
                                     (let ((__tmp297910
                                            (member _f292805_
                                                    _runtime292788_)))
                                       (declare (not safe))
                                       (not __tmp297910)))))
                              (declare (not safe))
                              (filter __tmp297909 _deps292803_)))
                           (_output-base292809_
                            (string-append
                             (path-strip-extension _output-scm292781_)))
                           (_output-c292811_
                            (string-append _output-base292809_ '".c"))
                           (_output-o292813_
                            (string-append _output-base292809_ '".o"))
                           (_output-c_292815_
                            (string-append _output-base292809_ '"_.c"))
                           (_output-o_292817_
                            (string-append _output-base292809_ '"_.o"))
                           (_gsc-link-opts292819_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292821_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292823_
                            (let ((__tmp297911
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir292786_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp297911)))
                           (_output-ld-opts292825_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros292827_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp297913
                                       (let ((__tmp297914
                                              (let ((__tmp297915
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp292792_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp297915))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp297914))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297913))
                                (let ((__tmp297912
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp292792_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297912))))
                           (_gsc-link-opts292829_
                            (append _gsc-link-opts292819_
                                    _gsc-gx-macros292827_))
                           (_rpath292831_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292786_)))
                           (_default-ld-options292833_
                            (let ((__tmp297916
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp297916))))
                      (let ((__tmp297917
                             (lambda ()
                               (let ((__tmp297918
                                      (path-directory _output-bin292782_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297918)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297917))
                      (let ((__tmp297919
                             (lambda ()
                               (let ((__tmp297920
                                      (let ((__tmp297921
                                             (let ((__tmp297922
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm292794_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp297922
                                                       _deps292807_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp297921
                                                _runtime292788_))))
                                 (declare (not safe))
                                 (_generate-stub292772_ __tmp297920)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292781_
                         __tmp297919))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297928
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297923
                                   (let ((__tmp297924
                                          (let ((__tmp297925
                                                 (let ((__tmp297926
                                                        (let ((__tmp297927
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm292781_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp297927 _gsc-link-opts292829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_292815_
                                                         __tmp297926))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp297925))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297924))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297928
                               __tmp297923))
                            (let ((__tmp297934
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297929
                                   (let ((__tmp297930
                                          (let ((__tmp297931
                                                 (let ((__tmp297932
                                                        (let ((__tmp297933
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_292815_ '()))))
                  (declare (not safe))
                  (cons _output-c292811_ __tmp297933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297932
                                                           _gsc-static-opts292823_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297931
                                                    _gsc-cc-opts292821_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297930))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297934
                               __tmp297929))
                            (let ((__tmp297944
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297935
                                   (let ((__tmp297936
                                          (let ((__tmp297937
                                                 (let ((__tmp297938
                                                        (let ((__tmp297939
                                                               (let ((__tmp297940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297941
                                     (let ((__tmp297942
                                            (let ((__tmp297943
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options292833_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir292786_
                                                    __tmp297943))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp297942))))
                                (declare (not safe))
                                (cons _rpath292831_ __tmp297941))))
                         (declare (not safe))
                         (foldr1 cons __tmp297940 _output-ld-opts292825_))))
                  (declare (not safe))
                  (cons _output-o_292817_ __tmp297939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o292813_
                                                         __tmp297938))))
                                            (declare (not safe))
                                            (cons _output-bin292782_
                                                  __tmp297937))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297936))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297944
                               __tmp297935)))
                          '#!void)))))
          (let* ((_output-bin292776_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292768_ _opts292769_)))
                 (_output-scm292778_
                  (string-append _output-bin292776_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292774_ _output-scm292778_ _output-bin292776_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292778_))))))
    (define gxc#find-export-binding
      (lambda (_ctx292718_ _id292719_)
        (let ((_$e292765_
               (let ((__tmp297946
                      (lambda (_e292720292722_)
                        (let* ((_g292724292734_ _e292720292722_)
                               (_else292726292742_ (lambda () '#f))
                               (_K292728292746_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g292724292734_
                                 'gx#module-export::t))
                              (let* ((_e292729292749_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292724292734_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e292730292752_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292724292734_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e292731292755_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292724292734_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e292731292755_ '0))
                                    (let ((_e292732292758_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g292724292734_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g292760292762_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g292760292762_
                                                    _id292719_)))
                                           _e292732292758_)
                                          (let ()
                                            (declare (not safe))
                                            (_K292728292746_))
                                          (let ()
                                            (declare (not safe))
                                            (_else292726292742_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else292726292742_))))
                              (let ()
                                (declare (not safe))
                                (_else292726292742_))))))
                     (__tmp297945
                      (##structure-ref
                       _ctx292718_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp297946 __tmp297945))))
          (if _$e292765_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e292765_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx292710_ _id292711_)
        (let ((_$e292713_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx292710_ _id292711_))))
          (if _$e292713_
              ((lambda (_bind292716_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind292716_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id292711_)))
                 (##structure-ref _bind292716_ '1 gx#binding::t '#f))
               _$e292713_)
              (let ((__tmp297947
                     (##structure-ref
                      _ctx292710_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp297947
                 _id292711_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx292597_)
        (letrec* ((_ht292599_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template292600_
                   (lambda (_in292662_ _phi292663_)
                     (let ((_iphi292665_
                            (fx+ _phi292663_
                                 (##direct-structure-ref
                                  _in292662_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports292666_
                            (##structure-ref
                             (##direct-structure-ref
                              _in292662_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp292668_ ((_rest292670_ _imports292666_)
                                        (_r292671_ '()))
                         (let* ((_rest292672292680_ _rest292670_)
                                (_else292674292688_ (lambda () _r292671_))
                                (_K292676292698_
                                 (lambda (_rest292691_ _in292692_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in292692_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi292665_))
                                           (let ((__tmp297954
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in292692_
                                                          _r292671_))))
                                             (declare (not safe))
                                             (_lp292668_
                                              _rest292691_
                                              __tmp297954))
                                           (let ()
                                             (declare (not safe))
                                             (_lp292668_
                                              _rest292691_
                                              _r292671_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in292692_
                                              'gx#module-import::t))
                                           (let ((_iphi292694_
                                                  (fx+ _phi292663_
                                                       (##direct-structure-ref
                                                        _in292692_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi292694_))
                                                 (let ((__tmp297952
                                                        (let ((__tmp297953
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in292692_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp297953 _r292671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp292668_
                                                    _rest292691_
                                                    __tmp297952))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp292668_
                                                    _rest292691_
                                                    _r292671_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in292692_
                                                  'gx#import-set::t))
                                               (let ((_xphi292696_
                                                      (fx+ _iphi292665_
                                                           (##direct-structure-ref
                                                            _in292692_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi292696_))
                                                     (let ((__tmp297950
                                                            (let ((__tmp297951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in292692_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp297951 _r292671_))))
               (declare (not safe))
               (_lp292668_ _rest292691_ __tmp297950))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi292696_)
                                                         (let ((__tmp297948
                                                                (let ((__tmp297949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template292600_
                                  _in292692_
                                  _iphi292665_))))
                          (declare (not safe))
                          (foldl1 cons _r292671_ __tmp297949))))
                   (declare (not safe))
                   (_lp292668_ _rest292691_ __tmp297948))
                 (let ()
                   (declare (not safe))
                   (_lp292668_ _rest292691_ _r292671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp292668_
                                                  _rest292691_
                                                  _r292671_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest292672292680_))
                               (let ((_hd292677292701_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest292672292680_)))
                                     (_tl292678292703_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest292672292680_))))
                                 (let* ((_in292706_ _hd292677292701_)
                                        (_rest292708_ _tl292678292703_))
                                   (declare (not safe))
                                   (_K292676292698_ _rest292708_ _in292706_)))
                               (let ()
                                 (declare (not safe))
                                 (_else292674292688_))))))))
                  (_find-deps292601_
                   (lambda (_rest292608_ _deps292609_)
                     (let* ((_rest292610292618_ _rest292608_)
                            (_else292612292626_ (lambda () _deps292609_))
                            (_K292614292650_
                             (lambda (_rest292629_ _hd292630_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd292630_
                                      'gx#module-context::t))
                                   (let ((_id292632_
                                          (##structure-ref
                                           _hd292630_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports292633_
                                          (##structure-ref
                                           _hd292630_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht292599_
                                            _id292632_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps292601_
                                            _rest292629_
                                            _deps292609_))
                                         (let ((_$e292635_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd292630_))))
                                           (if _$e292635_
                                               ((lambda (_pre292638_)
                                                  (let ((_xdeps292640_
                                                         (let ((__tmp297967
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre292638_ _imports292633_))))
                   (declare (not safe))
                   (_find-deps292601_ __tmp297967 _deps292609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht292599_
                                                       _id292632_
                                                       _hd292630_))
                                                    (let ((__tmp297968
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd292630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps292640_))))
              (declare (not safe))
              (_find-deps292601_ _rest292629_ __tmp297968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e292635_)
                                               (let ((_xdeps292642_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps292601_
                                                         _imports292633_
                                                         _deps292609_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht292599_
                                                    _id292632_
                                                    _hd292630_))
                                                 (let ((__tmp297966
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd292630_
                                                                _xdeps292642_))))
                                                   (declare (not safe))
                                                   (_find-deps292601_
                                                    _rest292629_
                                                    __tmp297966)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd292630_
                                          'gx#prelude-context::t))
                                       (let ((_id292644_
                                              (##structure-ref
                                               _hd292630_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht292599_
                                                _id292644_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps292601_
                                                _rest292629_
                                                _deps292609_))
                                             (let ((_xdeps292646_
                                                    (let ((__tmp297964
                                                           (##structure-ref
                                                            _hd292630_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps292601_
                                                       __tmp297964
                                                       _deps292609_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht292599_
                                                      _id292644_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps292601_
                                                      _rest292629_
                                                      _xdeps292646_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht292599_
                                                        _id292644_
                                                        _hd292630_))
                                                     (let ((__tmp297965
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd292630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps292646_))))
               (declare (not safe))
               (_find-deps292601_ _rest292629_ __tmp297965)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd292630_
                                              'gx#module-import::t))
                                           (if (let ((__tmp297963
                                                      (##direct-structure-ref
                                                       _hd292630_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp297963))
                                               (let ((__tmp297961
                                                      (let ((__tmp297962
                                                             (##direct-structure-ref
                                                              _hd292630_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297962
                                                              _rest292629_))))
                                                 (declare (not safe))
                                                 (_find-deps292601_
                                                  __tmp297961
                                                  _deps292609_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps292601_
                                                  _rest292629_
                                                  _deps292609_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd292630_
                                                  'gx#module-export::t))
                                               (let ((__tmp297959
                                                      (let ((__tmp297960
                                                             (##direct-structure-ref
                                                              _hd292630_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297960
                                                              _rest292629_))))
                                                 (declare (not safe))
                                                 (_find-deps292601_
                                                  __tmp297959
                                                  _deps292609_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd292630_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp297958
                                                              (##direct-structure-ref
                                                               _hd292630_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp297958))
                                                       (let ((__tmp297956
                                                              (let ((__tmp297957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd292630_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp297957 _rest292629_))))
                 (declare (not safe))
                 (_find-deps292601_ __tmp297956 _deps292609_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd292630_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps292648_
                           (let ()
                             (declare (not safe))
                             (_import-set-template292600_ _hd292630_ '0)))
                          (__tmp297955
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest292629_ _xdeps292648_))))
                     (declare (not safe))
                     (_find-deps292601_ __tmp297955 _deps292609_))
                   (let ()
                     (declare (not safe))
                     (_find-deps292601_ _rest292629_ _deps292609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd292630_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest292610292618_))
                           (let ((_hd292615292653_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest292610292618_)))
                                 (_tl292616292655_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest292610292618_))))
                             (let* ((_hd292658_ _hd292615292653_)
                                    (_rest292660_ _tl292616292655_))
                               (declare (not safe))
                               (_K292614292650_ _rest292660_ _hd292658_)))
                           (let ()
                             (declare (not safe))
                             (_else292612292626_)))))))
          (reverse (let ((__tmp297969
                          (let ((__tmp297970
                                 (let ((_$e292603_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx292597_))))
                                   (if _$e292603_
                                       ((lambda (_pre292606_)
                                          (let ((__tmp297971
                                                 (##structure-ref
                                                  _ctx292597_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre292606_ __tmp297971)))
                                        _$e292603_)
                                       (##structure-ref
                                        _ctx292597_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps292601_ __tmp297970 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp297969))))))
    (define gxc#find-static-module-file
      (lambda (_ctx292528_)
        (let* ((_context-id292530_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx292528_
                       'gx#module-context::t))
                    (##structure-ref _ctx292528_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx292528_)))
               (_scm292532_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id292530_))
                 '".scm"))
               (_dirs292534_ (gx#current-expander-module-library-path))
               (_dirs292540_
                (let ((_user-libpath292536_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath292536_
                      (let ((_user-libpath292538_
                             (path-expand '"lib" _user-libpath292536_)))
                        (if (member _user-libpath292538_ _dirs292534_)
                            _dirs292534_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath292538_ _dirs292534_))))
                      _dirs292534_)))
               (_dirs292549_
                (let ((_$e292542_ (gxc#current-compile-output-dir)))
                  (if _$e292542_
                      ((lambda (_g292544292546_)
                         (let ()
                           (declare (not safe))
                           (cons _g292544292546_ _dirs292540_)))
                       _$e292542_)
                      _dirs292540_)))
               (_dirs292555_
                (map (lambda (_g292550292552_)
                       (path-expand '"static" _g292550292552_))
                     _dirs292549_)))
          (let _lp292558_ ((_rest292560_ _dirs292555_))
            (let* ((_rest292561292569_ _rest292560_)
                   (_else292563292577_
                    (lambda ()
                      (let ((__tmp297972
                             (##structure-ref
                              _ctx292528_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp297972
                         _scm292532_))))
                   (_K292565292585_
                    (lambda (_rest292580_ _dir292581_)
                      (let ((_path292583_
                             (path-expand _scm292532_ _dir292581_)))
                        (if (file-exists? _path292583_)
                            _path292583_
                            (let ()
                              (declare (not safe))
                              (_lp292558_ _rest292580_)))))))
              (if (let () (declare (not safe)) (##pair? _rest292561292569_))
                  (let ((_hd292566292588_
                         (let ()
                           (declare (not safe))
                           (##car _rest292561292569_)))
                        (_tl292567292590_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292561292569_))))
                    (let* ((_dir292593_ _hd292566292588_)
                           (_rest292595_ _tl292567292590_))
                      (declare (not safe))
                      (_K292565292585_ _rest292595_ _dir292593_)))
                  (let () (declare (not safe)) (_else292563292577_))))))))
    (define gxc#file-empty?
      (lambda (_path292526_)
        (let ((__tmp297973 (file-info-size (file-info _path292526_ '#t))))
          (declare (not safe))
          (zero? __tmp297973))))
    (define gxc#compile-top-module
      (lambda (_ctx292515_)
        (let ((__tmp297977
               (lambda ()
                 (let ((__tmp297978
                        (##structure-ref
                         _ctx292515_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp297978))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp297979
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx292515_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp297979))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx292515_))
                 (if (let ((__tmp297982
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx292515_))))
                       (declare (not safe))
                       (null? __tmp297982))
                     (let* ((_thr1292520_
                             (let ((__tmp297980
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx292515_)))))
                               (declare (not safe))
                               (spawn __tmp297980)))
                            (_thr2292523_
                             (let ((__tmp297981
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx292515_)))))
                               (declare (not safe))
                               (spawn __tmp297981))))
                       (let () (declare (not safe)) (gxc#join! _thr1292520_))
                       (let () (declare (not safe)) (gxc#join! _thr2292523_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx292515_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx292515_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx292515_))
                     '#!void)))
              (__tmp297976
               (let ((__obj297781
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj297781)
                 __obj297781))
              (__tmp297975
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp297974 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp297977
           gx#current-expander-context
           _ctx292515_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp297976
           gxc#current-compile-runtime-sections
           __tmp297975
           gxc#current-compile-runtime-names
           __tmp297974))))
    (define gxc#collect-bindings
      (lambda (_ctx292513_)
        (let ((__tmp297983
               (##structure-ref _ctx292513_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp297983))))
    (define gxc#compile-runtime-code
      (lambda (_ctx292459_)
        (letrec ((_compile1292461_
                  (lambda (_ctx292502_)
                    (let* ((_code292504_
                            (##structure-ref
                             _ctx292502_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt292508_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code292504_))
                                (let ((_idstr292506_
                                       (let ((__tmp297984
                                              (##structure-ref
                                               _ctx292502_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp297984))))
                                  (string-append _idstr292506_ '"__0"))
                                '#f)))
                      (if _rt292508_
                          (begin
                            (let ((__tmp297985
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp297985 _ctx292502_ _rt292508_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code292463_
                               _ctx292502_
                               _code292504_)))
                          (let ((_path292511_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx292502_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path292511_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code292464_
                         _ctx292502_
                         _code292504_
                         _rt292508_)))))
                 (_context-timestamp292462_
                  (lambda (_ctx292500_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx292500_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code292463_
                  (lambda (_ctx292482_ _code292483_)
                    (let* ((_lifts292485_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code292488_
                            (let ((__tmp297988
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code292483_))))
                                  (__tmp297987
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp297986
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297988
                               gx#current-expander-context
                               _ctx292482_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts292485_
                               gxc#current-compile-marks
                               __tmp297987
                               gxc#current-compile-identifiers
                               __tmp297986)))
                           (_runtime-code292490_
                            (if (let ((__tmp297992 (unbox _lifts292485_)))
                                  (declare (not safe))
                                  (null? __tmp297992))
                                _runtime-code292488_
                                (let ((__tmp297989
                                       (let ((__tmp297991
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code292488_
                                                      '())))
                                             (__tmp297990
                                              (reverse (unbox _lifts292485_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp297991
                                                 __tmp297990))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297989))))
                           (_runtime-code292492_
                            (let ((__tmp297993
                                   (let ((__tmp297995
                                          (let ((__tmp297996
                                                 (let ((__tmp297999
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp292462_
                                                           _ctx292482_)))
                                                       (__tmp297997
                                                        (let ((__tmp297998
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp297998
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp297999
                                                         __tmp297997))))
                                            (declare (not safe))
                                            (cons 'define __tmp297996)))
                                         (__tmp297994
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code292490_ '()))))
                                     (declare (not safe))
                                     (cons __tmp297995 __tmp297994))))
                              (declare (not safe))
                              (cons 'begin __tmp297993)))
                           (_scm0292494_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292482_
                               '0
                               '".scm"))))
                      (let ((_scms292497_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx292482_))))
                        (let ((__tmp298000
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0292494_
                                    _runtime-code292492_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp298000
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms292497_)
                            (delete-file _scms292497_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0292494_
                           '" => "
                           _scms292497_))
                        (copy-file _scm0292494_ _scms292497_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0292494_))))))
                 (_generate-loader-code292464_
                  (lambda (_ctx292471_ _code292472_ _rt292473_)
                    (let* ((_loader-code292476_
                            (let ((__tmp298001
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code292472_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp298001
                               gx#current-expander-context
                               _ctx292471_)))
                           (_loader-code292478_
                            (if _rt292473_
                                (let ((__tmp298002
                                       (let ((__tmp298003
                                              (let ((__tmp298004
                                                     (let ((__tmp298005
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt292473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp298005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298004 '()))))
                                         (declare (not safe))
                                         (cons _loader-code292476_
                                               __tmp298003))))
                                  (declare (not safe))
                                  (cons 'begin __tmp298002))
                                _loader-code292476_)))
                      (let ((__tmp298006
                             (lambda ()
                               (let ((__tmp298007
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292471_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp298007
                                  _loader-code292478_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp298006
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules292466_
                 (let ((__tmp298008
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx292459_))))
                   (declare (not safe))
                   (cons _ctx292459_ __tmp298008))))
            (for-each
             (lambda (_ctx292468_)
               (let ((__tmp298009
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1292461_ _ctx292468_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp298009
                  gxc#current-compile-decls
                  '())))
             _all-modules292466_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx292356_)
        (letrec ((_compile-ssi292358_
                  (lambda (_code292429_)
                    (let* ((_path292431_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292356_
                               '#f
                               '".ssi")))
                           (_prelude292442_
                            (let* ((_super292433_
                                    (##structure-ref
                                     _ctx292356_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e292435_
                                    (##structure-ref
                                     _super292433_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e292435_
                                  ((lambda (_g292437292439_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g292437292439_)))
                                   _$e292435_)
                                  ':<root>)))
                           (_ns292444_
                            (##structure-ref
                             _ctx292356_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr292446_
                            (symbol->string
                             (##structure-ref
                              _ctx292356_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg292453_
                            (let ((_$e292448_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr292446_ '#\/))))
                              (if _$e292448_
                                  ((lambda (_x292451_)
                                     (string->symbol
                                      (substring _idstr292446_ '0 _x292451_)))
                                   _$e292448_)
                                  '#f)))
                           (_rt292455_
                            (let ((__tmp298010
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp298010 _ctx292356_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path292431_))
                      (let ((__tmp298011
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude292442_))
                               (if _pkg292453_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg292453_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns292444_))
                               (newline)
                               (pretty-print _code292429_)
                               (if _rt292455_
                                   (pretty-print
                                    (let ((__tmp298012
                                           (let ((__tmp298016
                                                  (let ((__tmp298017
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp298017)))
                                                 (__tmp298013
                                                  (let ((__tmp298014
                                                         (let ((__tmp298015
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt292455_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp298015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298014 '()))))
                                             (declare (not safe))
                                             (cons __tmp298016 __tmp298013))))
                                      (declare (not safe))
                                      (cons '%#call __tmp298012)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path292431_
                         __tmp298011)))))
                 (_compile-phi292359_
                  (lambda (_part292369_)
                    (let* ((_part292370292383_ _part292369_)
                           (_E292372292387_
                            (lambda ()
                              (error '"No clause matching"
                                     _part292370292383_)))
                           (_K292373292398_
                            (lambda (_code292390_
                                     _n292391_
                                     _phi292392_
                                     _phi-ctx292393_)
                              (let* ((_code292396_
                                      (let ((__tmp298018
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code292390_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp298018
                                         gx#current-expander-context
                                         _phi-ctx292393_
                                         gx#current-expander-phi
                                         _phi292392_)))
                                     (__tmp298019
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292356_
                                         _n292391_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp298019
                                 _code292396_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part292370292383_))
                          (let ((_hd292374292401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part292370292383_)))
                                (_tl292375292403_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part292370292383_))))
                            (let ((_phi-ctx292406_ _hd292374292401_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl292375292403_))
                                  (let ((_hd292376292408_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl292375292403_)))
                                        (_tl292377292410_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl292375292403_))))
                                    (let ((_phi292413_ _hd292376292408_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl292377292410_))
                                          (let ((_hd292378292415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl292377292410_)))
                                                (_tl292379292417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl292377292410_))))
                                            (let ((_n292420_ _hd292378292415_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl292379292417_))
                                                  (let ((_hd292380292422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl292379292417_)))
                                                        (_tl292381292424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl292379292417_))))
                                                    (let ((_code292427_
                                                           _hd292380292422_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl292381292424_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K292373292398_
                                                             _code292427_
                                                             _n292420_
                                                             _phi292413_
                                                             _phi-ctx292406_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E292372292387_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E292372292387_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E292372292387_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E292372292387_)))))
                          (let () (declare (not safe)) (_E292372292387_)))))))
          (let ((_g298020_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx292356_))))
            (begin
              (let ((_g298021_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g298020_)
                           (##vector-length _g298020_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g298021_ 2)))
                    (error "Context expects 2 values" _g298021_)))
              (let ((_ssi-code292361_
                     (let () (declare (not safe)) (##vector-ref _g298020_ 0)))
                    (_phi-code292362_
                     (let () (declare (not safe)) (##vector-ref _g298020_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi292358_ _ssi-code292361_))
                  (let ((_threads292367_
                         (map (lambda (_code292364_)
                                (let ((__tmp298022
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi292359_
                                            _code292364_)))))
                                  (declare (not safe))
                                  (spawn __tmp298022)))
                              _phi-code292362_)))
                    (for-each gxc#join! _threads292367_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx292339_)
        (let* ((_path292341_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx292339_ '#f '".ssxi.ss")))
               (_code292343_
                (let ((__tmp298023
                       (##structure-ref
                        _ctx292339_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp298023)))
               (_idstr292345_
                (symbol->string
                 (##structure-ref _ctx292339_ '1 gx#expander-context::t '#f)))
               (_pkg292352_
                (let ((_$e292347_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr292345_ '#\/))))
                  (if _$e292347_
                      ((lambda (_x292350_)
                         (string->symbol
                          (substring _idstr292345_ '0 _x292350_)))
                       _$e292347_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path292341_))
          (let ((__tmp298024
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg292352_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg292352_))
                       '#!void)
                   (newline)
                   (pretty-print _code292343_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path292341_ __tmp298024)))))
    (define gxc#generate-meta-code
      (lambda (_ctx292332_)
        (let* ((_state292334_
                (let ((__obj297782
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj297782 _ctx292332_)
                  __obj297782))
               (_ssi-code292336_
                (let ((__tmp298025
                       (##structure-ref
                        _ctx292332_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp298025 _state292334_))))
          (values _ssi-code292336_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state292334_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx292325_)
        (let ((_lifts292327_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298028
                 (lambda ()
                   (let ((_code292330_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx292325_))))
                     (if (let ((__tmp298032 (unbox _lifts292327_)))
                           (declare (not safe))
                           (null? __tmp298032))
                         _code292330_
                         (let ((__tmp298029
                                (let ((__tmp298031
                                       (let ()
                                         (declare (not safe))
                                         (cons _code292330_ '())))
                                      (__tmp298030
                                       (reverse (unbox _lifts292327_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp298031 __tmp298030))))
                           (declare (not safe))
                           (cons 'begin __tmp298029))))))
                (__tmp298027
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp298026
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp298028
             gxc#current-compile-lift
             _lifts292327_
             gxc#current-compile-marks
             __tmp298027
             gxc#current-compile-identifiers
             __tmp298026)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx292321_)
        (let ((_modules292323_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298033
                 (##structure-ref _ctx292321_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp298033 _modules292323_))
          (reverse (unbox _modules292323_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path292304_ _code292305_ _phi?292306_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path292304_))
        (let ((__tmp298034
               (lambda ()
                 (pretty-print
                  (let ((__tmp298035
                         (let ((__tmp298042
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp298036
                                (let ((__tmp298041
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp298037
                                       (let ((__tmp298040
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp298038
                                              (let ((__tmp298039
                                                     (if _phi?292306_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp298039))))
                                         (declare (not safe))
                                         (cons __tmp298040 __tmp298038))))
                                  (declare (not safe))
                                  (cons __tmp298041 __tmp298037))))
                           (declare (not safe))
                           (cons __tmp298042 __tmp298036))))
                    (declare (not safe))
                    (cons 'declare __tmp298035)))
                 (pretty-print _code292305_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path292304_ __tmp298034))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path292304_ _phi?292306_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path292304_))))
    (define gxc#compile-scm-file__0
      (lambda (_path292312_ _code292313_)
        (let ((_phi?292315_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path292312_ _code292313_ _phi?292315_))))
    (define gxc#compile-scm-file
      (lambda _g298044_
        (let ((_g298043_ (let () (declare (not safe)) (##length _g298044_))))
          (cond ((let () (declare (not safe)) (##fx= _g298043_ 2))
                 (apply (lambda (_path292312_ _code292313_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path292312_
                             _code292313_)))
                        _g298044_))
                ((let () (declare (not safe)) (##fx= _g298043_ 3))
                 (apply (lambda (_path292317_ _code292318_ _phi?292319_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path292317_
                             _code292318_
                             _phi?292319_)))
                        _g298044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g298044_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?292205_)
        (let _lp292207_ ((_rest292209_ (gxc#current-compile-gsc-options))
                         (_opts292210_ '()))
          (let* ((_rest292211292231_ _rest292209_)
                 (_else292215292239_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292205_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298045
                               (let ((__tmp298046 (reverse _opts292210_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp298046))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp298045))
                        (reverse _opts292210_)))))
            (let ((_K292225292282_
                   (lambda (_rest292280_)
                     (let ()
                       (declare (not safe))
                       (_lp292207_ _rest292280_ _opts292210_))))
                  (_K292220292264_
                   (lambda (_rest292262_)
                     (let ()
                       (declare (not safe))
                       (_lp292207_ _rest292262_ _opts292210_))))
                  (_K292217292246_
                   (lambda (_rest292243_ _opt292244_)
                     (let ((__tmp298047
                            (let ()
                              (declare (not safe))
                              (cons _opt292244_ _opts292210_))))
                       (declare (not safe))
                       (_lp292207_ _rest292243_ __tmp298047)))))
              (if (let () (declare (not safe)) (##pair? _rest292211292231_))
                  (let ((_tl292227292287_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292211292231_)))
                        (_hd292226292285_
                         (let ()
                           (declare (not safe))
                           (##car _rest292211292231_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292226292285_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292227292287_))
                            (let* ((_tl292229292290_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292227292287_)))
                                   (_rest292293_ _tl292229292290_))
                              (declare (not safe))
                              (_K292225292282_ _rest292293_))
                            (let ((_opt292254_ _hd292226292285_)
                                  (_rest292256_ _tl292227292287_))
                              (let ()
                                (declare (not safe))
                                (_K292217292246_ _rest292256_ _opt292254_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292226292285_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292227292287_))
                                (let* ((_tl292224292272_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292227292287_)))
                                       (_rest292275_ _tl292224292272_))
                                  (declare (not safe))
                                  (_K292220292264_ _rest292275_))
                                (let ((_opt292254_ _hd292226292285_)
                                      (_rest292256_ _tl292227292287_))
                                  (let ()
                                    (declare (not safe))
                                    (_K292217292246_
                                     _rest292256_
                                     _opt292254_))))
                            (let ((_opt292254_ _hd292226292285_)
                                  (_rest292256_ _tl292227292287_))
                              (let ()
                                (declare (not safe))
                                (_K292217292246_ _rest292256_ _opt292254_))))))
                  (let () (declare (not safe)) (_else292215292239_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?292299_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?292299_))))
    (define gxc#gsc-link-options
      (lambda _g298049_
        (let ((_g298048_ (let () (declare (not safe)) (##length _g298049_))))
          (cond ((let () (declare (not safe)) (##fx= _g298048_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g298049_))
                ((let () (declare (not safe)) (##fx= _g298048_ 1))
                 (apply (lambda (_phi?292301_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?292301_)))
                        _g298049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g298049_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?292106_)
        (let _lp292108_ ((_rest292110_ (gxc#current-compile-gsc-options))
                         (_opts292111_ '()))
          (let* ((_rest292112292132_ _rest292110_)
                 (_else292116292140_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292106_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298050
                               (let ((__tmp298051 (reverse _opts292111_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp298051))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp298050))
                        (reverse _opts292111_)))))
            (let ((_K292126292179_
                   (lambda (_rest292176_ _opt292177_)
                     (let ((__tmp298052
                            (let ((__tmp298053
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts292111_))))
                              (declare (not safe))
                              (cons _opt292177_ __tmp298053))))
                       (declare (not safe))
                       (_lp292108_ _rest292176_ __tmp298052))))
                  (_K292121292160_
                   (lambda (_rest292158_)
                     (let ()
                       (declare (not safe))
                       (_lp292108_ _rest292158_ _opts292111_))))
                  (_K292118292146_
                   (lambda (_rest292144_)
                     (let ()
                       (declare (not safe))
                       (_lp292108_ _rest292144_ _opts292111_)))))
              (if (let () (declare (not safe)) (##pair? _rest292112292132_))
                  (let ((_tl292128292184_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292112292132_)))
                        (_hd292127292182_
                         (let ()
                           (declare (not safe))
                           (##car _rest292112292132_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292127292182_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292128292184_))
                            (let ((_tl292130292189_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl292128292184_)))
                                  (_hd292129292187_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl292128292184_))))
                              (let ((_opt292192_ _hd292129292187_)
                                    (_rest292194_ _tl292130292189_))
                                (let ()
                                  (declare (not safe))
                                  (_K292126292179_ _rest292194_ _opt292192_))))
                            (let ((_rest292152_ _tl292128292184_))
                              (declare (not safe))
                              (_K292118292146_ _rest292152_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292127292182_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292128292184_))
                                (let* ((_tl292125292168_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292128292184_)))
                                       (_rest292171_ _tl292125292168_))
                                  (declare (not safe))
                                  (_K292121292160_ _rest292171_))
                                (let ((_rest292152_ _tl292128292184_))
                                  (declare (not safe))
                                  (_K292118292146_ _rest292152_)))
                            (let ((_rest292152_ _tl292128292184_))
                              (declare (not safe))
                              (_K292118292146_ _rest292152_)))))
                  (let () (declare (not safe)) (_else292116292140_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?292200_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?292200_))))
    (define gxc#gsc-cc-options
      (lambda _g298055_
        (let ((_g298054_ (let () (declare (not safe)) (##length _g298055_))))
          (cond ((let () (declare (not safe)) (##fx= _g298054_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g298055_))
                ((let () (declare (not safe)) (##fx= _g298054_ 1))
                 (apply (lambda (_phi?292202_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?292202_)))
                        _g298055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g298055_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir292101_)
        (let* ((_user-staticdir292103_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp298056
                (let ((__tmp298057
                       (string-append
                        '"-I "
                        _staticdir292101_
                        '" -I "
                        _user-staticdir292103_)))
                  (declare (not safe))
                  (cons __tmp298057 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp298056))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp292013_ ((_rest292015_ (gxc#current-compile-gsc-options))
                         (_opts292016_ '()))
          (let* ((_rest292017292037_ _rest292015_)
                 (_else292021292045_ (lambda () _opts292016_)))
            (let ((_K292031292088_
                   (lambda (_rest292086_)
                     (let ()
                       (declare (not safe))
                       (_lp292013_ _rest292086_ _opts292016_))))
                  (_K292026292066_
                   (lambda (_rest292063_ _opt292064_)
                     (let ((__tmp298058
                            (append _opts292016_
                                    (let ((__tmp298059
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt292064_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp298059)))))
                       (declare (not safe))
                       (_lp292013_ _rest292063_ __tmp298058))))
                  (_K292023292051_
                   (lambda (_rest292049_)
                     (let ()
                       (declare (not safe))
                       (_lp292013_ _rest292049_ _opts292016_)))))
              (if (let () (declare (not safe)) (##pair? _rest292017292037_))
                  (let ((_tl292033292093_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292017292037_)))
                        (_hd292032292091_
                         (let ()
                           (declare (not safe))
                           (##car _rest292017292037_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292032292091_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292033292093_))
                            (let* ((_tl292035292096_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292033292093_)))
                                   (_rest292099_ _tl292035292096_))
                              (declare (not safe))
                              (_K292031292088_ _rest292099_))
                            (let ((_rest292057_ _tl292033292093_))
                              (declare (not safe))
                              (_K292023292051_ _rest292057_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292032292091_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292033292093_))
                                (let ((_tl292030292076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl292033292093_)))
                                      (_hd292029292074_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl292033292093_))))
                                  (let ((_opt292079_ _hd292029292074_)
                                        (_rest292081_ _tl292030292076_))
                                    (let ()
                                      (declare (not safe))
                                      (_K292026292066_
                                       _rest292081_
                                       _opt292079_))))
                                (let ((_rest292057_ _tl292033292093_))
                                  (declare (not safe))
                                  (_K292023292051_ _rest292057_)))
                            (let ((_rest292057_ _tl292033292093_))
                              (declare (not safe))
                              (_K292023292051_ _rest292057_)))))
                  (let () (declare (not safe)) (_else292021292045_))))))))
    (define gxc#not-string-empty?
      (lambda (_str292010_)
        (let ((__tmp298060
               (let () (declare (not safe)) (string-empty? _str292010_))))
          (declare (not safe))
          (not __tmp298060))))
    (define gxc#gsc-compile-file
      (lambda (_path291978_ _phi?291979_)
        (letrec ((_gsc-link-path291981_
                  (lambda (_base-path292002_)
                    (let _lp292004_ ((_n292006_ '1))
                      (let ((_path292008_
                             (string-append
                              _base-path292002_
                              '".o"
                              (number->string _n292006_))))
                        (if (file-exists? _path292008_)
                            (let ((__tmp298061
                                   (let ()
                                     (declare (not safe))
                                     (+ _n292006_ '1))))
                              (declare (not safe))
                              (_lp292004_ __tmp298061))
                            _path292008_))))))
          (let* ((_base-path291983_ (path-strip-extension _path291978_))
                 (_path-c291985_ (string-append _base-path291983_ '".c"))
                 (_path-o291987_ (string-append _base-path291983_ '".o"))
                 (_link-path291989_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path291981_ _base-path291983_)))
                 (_link-path-c291991_ (string-append _link-path291989_ '".c"))
                 (_link-path-o291993_ (string-append _link-path291989_ '".o"))
                 (_gsc-link-opts291995_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?291979_)))
                 (_gsc-cc-opts291997_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?291979_)))
                 (_gcc-ld-opts291999_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp298068 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298062
                   (let ((__tmp298063
                          (let ((__tmp298064
                                 (let ((__tmp298065
                                        (let ((__tmp298066
                                               (let ((__tmp298067
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path291978_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp298067
                                                         _gsc-link-opts291995_))))
                                          (declare (not safe))
                                          (cons _link-path-c291991_
                                                __tmp298066))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp298065))))
                            (declare (not safe))
                            (cons '"-flat" __tmp298064))))
                     (declare (not safe))
                     (cons '"-link" __tmp298063))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298068 __tmp298062))
            (let ((__tmp298075 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298069
                   (let ((__tmp298070
                          (let ((__tmp298071
                                 (let ((__tmp298072
                                        (let ((__tmp298073
                                               (let ((__tmp298074
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c291991_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c291985_
                                                       __tmp298074))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp298073
                                                  _gsc-cc-opts291997_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp298072))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp298071))))
                     (declare (not safe))
                     (cons '"-obj" __tmp298070))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298075 __tmp298069))
            (let ((__tmp298081 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp298076
                   (let ((__tmp298077
                          (let ((__tmp298078
                                 (let ((__tmp298079
                                        (let ((__tmp298080
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o291993_
                                                       _gcc-ld-opts291999_))))
                                          (declare (not safe))
                                          (cons _path-o291987_ __tmp298080))))
                                   (declare (not safe))
                                   (cons _link-path291989_ __tmp298079))))
                            (declare (not safe))
                            (cons '"-o" __tmp298078))))
                     (declare (not safe))
                     (cons '"-shared" __tmp298077))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp298081
               __tmp298076))
            (for-each
             delete-file
             (let ((__tmp298082
                    (let ((__tmp298083
                           (let ((__tmp298084
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o291993_ '()))))
                             (declare (not safe))
                             (cons _link-path-c291991_ __tmp298084))))
                      (declare (not safe))
                      (cons _path-o291987_ __tmp298083))))
               (declare (not safe))
               (cons _path-c291985_ __tmp298082)))))))
    (define gxc#compile-output-file
      (lambda (_ctx291949_ _n291950_ _ext291951_)
        (letrec ((_module-relative-path291953_
                  (lambda (_ctx291976_)
                    (path-strip-directory
                     (let ((__tmp298085
                            (##structure-ref
                             _ctx291976_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp298085)))))
                 (_module-source-directory291954_
                  (lambda (_ctx291972_)
                    (path-directory
                     (let ((_mpath291974_
                            (##structure-ref
                             _ctx291972_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath291974_))
                           _mpath291974_
                           (let ()
                             (declare (not safe))
                             (last _mpath291974_)))))))
                 (_section-string291955_
                  (lambda (_n291970_)
                    (if (let () (declare (not safe)) (number? _n291970_))
                        (number->string _n291970_)
                        (if (let () (declare (not safe)) (symbol? _n291970_))
                            (symbol->string _n291970_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n291970_))
                                _n291970_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n291970_)))))))
                 (_file-name291956_
                  (lambda (_path291968_)
                    (if _n291950_
                        (string-append
                         _path291968_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string291955_ _n291950_))
                         _ext291951_)
                        (string-append _path291968_ _ext291951_))))
                 (_file-path291957_
                  (lambda ()
                    (let ((_$e291963_ (gxc#current-compile-output-dir)))
                      (if _$e291963_
                          ((lambda (_outdir291966_)
                             (path-expand
                              (let ((__tmp298087
                                     (let ((__tmp298088
                                            (##structure-ref
                                             _ctx291949_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp298088))))
                                (declare (not safe))
                                (_file-name291956_ __tmp298087))
                              _outdir291966_))
                           _$e291963_)
                          (path-expand
                           (let ((__tmp298086
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path291953_
                                     _ctx291949_))))
                             (declare (not safe))
                             (_file-name291956_ __tmp298086))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory291954_
                              _ctx291949_))))))))
          (let ((_path291959_
                 (let () (declare (not safe)) (_file-path291957_))))
            (let ((__tmp298089
                   (lambda ()
                     (let ((__tmp298090 (path-directory _path291959_)))
                       (declare (not safe))
                       (create-directory* __tmp298090)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298089))
            _path291959_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx291931_)
        (letrec ((_file-name291933_
                  (lambda (_id291947_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id291947_))
                     '".scm")))
                 (_file-path291934_
                  (lambda ()
                    (let* ((_file291940_
                            (let ((__tmp298091
                                   (##structure-ref
                                    _ctx291931_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name291933_ __tmp298091)))
                           (_$e291942_ (gxc#current-compile-output-dir)))
                      (if _$e291942_
                          ((lambda (_outdir291945_)
                             (path-expand
                              _file291940_
                              (path-expand '"static" _outdir291945_)))
                           _$e291942_)
                          (path-expand _file291940_ '"static"))))))
          (let ((_path291936_
                 (let () (declare (not safe)) (_file-path291934_))))
            (let ((__tmp298092
                   (lambda ()
                     (let ((__tmp298093 (path-directory _path291936_)))
                       (declare (not safe))
                       (create-directory* __tmp298093)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298092))
            _path291936_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx291925_ _opts291926_)
        (let ((_$e291928_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts291926_))))
          (if _$e291928_
              (values _$e291928_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx291925_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr291918_)
        (if (let () (declare (not safe)) (string? _idstr291918_))
            (let* ((_str291920_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr291918_)))
                   (_strs291922_
                    (let ()
                      (declare (not safe))
                      (string-split _str291920_ '#\/))))
              (let () (declare (not safe)) (string-join _strs291922_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr291918_))
                (let ((__tmp298094 (symbol->string _idstr291918_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp298094))
                (error '"Bad module id" _idstr291918_)))))
    (define gxc#invoke__%
      (lambda (_g298095_
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
          (let ((__tmp298096
                 (let ()
                   (declare (not safe))
                   (cons _program291887_ _args291888_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp298096))
          (let* ((_proc291894_
                  (open-process
                   (let ((__tmp298097
                          (let ((__tmp298098
                                 (let ((__tmp298099
                                        (let ((__tmp298100
                                               (let ((__tmp298101
                                                      (let ((__tmp298102
                                                             (let ((__tmp298103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection291892_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp298103))))
                (declare (not safe))
                (cons _stdout-redirection291890_ __tmp298102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp298101))))
                                          (declare (not safe))
                                          (cons _args291888_ __tmp298100))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp298099))))
                            (declare (not safe))
                            (cons _program291887_ __tmp298098))))
                     (declare (not safe))
                     (cons 'path: __tmp298097))))
                 (_output291899_
                  (if (or _stdout-redirection291890_
                          _stderr-redirection291892_)
                      (read-line _proc291894_ '#f)
                      '#f)))
            (let ((_status291902_ (process-status _proc291894_)))
              (close-port _proc291894_)
              (if (let () (declare (not safe)) (zero? _status291902_))
                  '#!void
                  (begin
                    (display _output291899_)
                    (let ((__tmp298104
                           (let ()
                             (declare (not safe))
                             (cons _program291887_ _args291888_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp298104
                       _status291902_)))))))))
    (define gxc#invoke__@
      (lambda (_keys291878291907_ . _args291909_)
        (apply gxc#invoke__%
               _keys291878291907_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291878291907_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291878291907_
                  'stderr-redirection:
                  absent-value))
               _args291909_)))
    (define gxc#invoke
      (lambda _args291881291915_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args291881291915_)))
    (define gxc#join!
      (lambda (_thread291872_)
        (let ((__tmp298106
               (lambda (_exn291874_)
                 (if (uncaught-exception? _exn291874_)
                     (raise (uncaught-exception-reason _exn291874_))
                     (raise _exn291874_))))
              (__tmp298105 (lambda () (thread-join! _thread291872_))))
          (declare (not safe))
          (with-catch __tmp298106 __tmp298105))))))
