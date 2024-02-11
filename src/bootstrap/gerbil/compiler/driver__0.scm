(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707660409)
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
      (lambda (_path288288_ _fun288289_)
        (with-output-to-file
         (let ((__tmp292850
                (let ()
                  (declare (not safe))
                  (cons _path288288_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp292850))
         _fun288289_)))
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
      (lambda (_gerbil-libdir288283_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288283_)))
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
      (lambda (_dir288281_) (delete-file-or-directory _dir288281_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288255_ _opts288256_)
        (if (let () (declare (not safe)) (string? _srcpath288255_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288255_)))
        (let ((_outdir288258_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288256_)))
              (_invoke-gsc?288259_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288256_)))
              (_gsc-options288260_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288256_)))
              (_keep-scm?288261_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288256_)))
              (_verbosity288262_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288256_)))
              (_optimize288263_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288256_)))
              (_debug288264_
               (let () (declare (not safe)) (pgetq 'debug: _opts288256_)))
              (_gen-ssxi288265_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288256_))))
          (if _outdir288258_
              (let ((__tmp292851
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288258_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292851))
              '#!void)
          (if _optimize288263_
              (let ((__tmp292852
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292852))
              '#!void)
          (let ((__tmp292856
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288255_))
                   (let ((__tmp292857
                          (let ((__tmp292858
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288255_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp292858))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp292857))))
                (__tmp292855
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp292853
                 (let ((__tmp292854
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288255_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp292854))))
            (declare (not safe))
            (call-with-parameters
             __tmp292856
             gxc#current-compile-output-dir
             _outdir288258_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288259_
             gxc#current-compile-gsc-options
             _gsc-options288260_
             gxc#current-compile-keep-scm
             _keep-scm?288261_
             gxc#current-compile-verbose
             _verbosity288262_
             gxc#current-compile-optimize
             _optimize288263_
             gxc#current-compile-debug
             _debug288264_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288265_
             gxc#current-compile-timestamp
             __tmp292855
             gxc#current-compile-context
             __tmp292853
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288274_)
        (let ((_opts288276_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288274_ _opts288276_))))
    (define gxc#compile-module
      (lambda _g292860_
        (let ((_g292859_ (let () (declare (not safe)) (##length _g292860_))))
          (cond ((let () (declare (not safe)) (##fx= _g292859_ 1))
                 (apply (lambda (_srcpath288274_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288274_)))
                        _g292860_))
                ((let () (declare (not safe)) (##fx= _g292859_ 2))
                 (apply (lambda (_srcpath288278_ _opts288279_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288278_
                             _opts288279_)))
                        _g292860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g292860_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288231_ _opts288232_)
        (if (let () (declare (not safe)) (string? _srcpath288231_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288231_)))
        (let ((_outdir288234_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288232_)))
              (_invoke-gsc?288235_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288232_)))
              (_gsc-options288236_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288232_)))
              (_keep-scm?288237_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288232_)))
              (_verbosity288238_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288232_)))
              (_debug288239_
               (let () (declare (not safe)) (pgetq 'debug: _opts288232_))))
          (if _outdir288234_
              (let ((__tmp292861
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288234_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292861))
              '#!void)
          (let ((__tmp292865
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288231_))
                   (let ((__tmp292866
                          (let ((__tmp292867
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288231_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp292867))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp292866
                      _opts288232_))))
                (__tmp292864
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp292862
                 (let ((__tmp292863
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288231_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp292863))))
            (declare (not safe))
            (call-with-parameters
             __tmp292865
             gxc#current-compile-output-dir
             _outdir288234_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288235_
             gxc#current-compile-gsc-options
             _gsc-options288236_
             gxc#current-compile-keep-scm
             _keep-scm?288237_
             gxc#current-compile-verbose
             _verbosity288238_
             gxc#current-compile-debug
             _debug288239_
             gxc#current-compile-timestamp
             __tmp292864
             gxc#current-compile-context
             __tmp292862
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288247_)
        (let ((_opts288249_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288247_ _opts288249_))))
    (define gxc#compile-exe
      (lambda _g292869_
        (let ((_g292868_ (let () (declare (not safe)) (##length _g292869_))))
          (cond ((let () (declare (not safe)) (##fx= _g292868_ 1))
                 (apply (lambda (_srcpath288247_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288247_)))
                        _g292869_))
                ((let () (declare (not safe)) (##fx= _g292868_ 2))
                 (apply (lambda (_srcpath288251_ _opts288252_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288251_ _opts288252_)))
                        _g292869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g292869_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288227_ _opts288228_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288228_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288227_
               _opts288228_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288227_
               _opts288228_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288110_ _opts288111_)
        (letrec ((_generate-stub288113_
                  (lambda (_builtin-modules288223_)
                    (let ((_mod-main288225_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288110_ 'main))))
                      (write (let ((__tmp292870
                                    (let ((__tmp292871
                                           (let ((__tmp292872
                                                  (let ((__tmp292873
                                                         (let ((__tmp292875
                                                                (let ((__tmp292876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288223_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp292876)))
                       (__tmp292874
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp292875 __tmp292874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp292873))))
                                             (declare (not safe))
                                             (cons __tmp292872 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp292871))))
                               (declare (not safe))
                               (cons 'define __tmp292870)))
                      (write (let ((__tmp292877
                                    (let ((__tmp292916
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp292878
                                           (let ((__tmp292879
                                                  (let ((__tmp292880
                                                         (let ((__tmp292904
                                                                (let ((__tmp292905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp292906
                                      (let ((__tmp292914
                                             (let ((__tmp292915
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp292915)))
                                            (__tmp292907
                                             (let ((__tmp292908
                                                    (let ((__tmp292909
                                                           (let ((__tmp292910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292911
                                 (let ((__tmp292912
                                        (let ((__tmp292913
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp292913 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp292912))))
                            (declare (not safe))
                            (cons __tmp292911 '()))))
                     (declare (not safe))
                     (cons _mod-main288225_ __tmp292910))))
              (declare (not safe))
              (cons 'apply __tmp292909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp292908 '()))))
                                        (declare (not safe))
                                        (cons __tmp292914 __tmp292907))))
                                 (declare (not safe))
                                 (cons '() __tmp292906))))
                          (declare (not safe))
                          (cons 'lambda __tmp292905)))
                       (__tmp292881
                        (let ((__tmp292882
                               (let ((__tmp292883
                                      (let ((__tmp292884
                                             (let ((__tmp292895
                                                    (let ((__tmp292896
                                                           (let ((__tmp292897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292898
                                 (let ((__tmp292899
                                        (let ((__tmp292900
                                               (let ((__tmp292901
                                                      (let ((__tmp292902
                                                             (let ((__tmp292903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp292903 '()))))
                (declare (not safe))
                (cons 'force-output __tmp292902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292901 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp292900))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp292899))))
                            (declare (not safe))
                            (cons __tmp292898 '()))))
                     (declare (not safe))
                     (cons 'void __tmp292897))))
              (declare (not safe))
              (cons 'with-catch __tmp292896)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp292885
                                                    (let ((__tmp292886
                                                           (let ((__tmp292887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292888
                                 (let ((__tmp292889
                                        (let ((__tmp292890
                                               (let ((__tmp292891
                                                      (let ((__tmp292892
                                                             (let ((__tmp292893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp292894
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp292894 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp292893))))
                (declare (not safe))
                (cons __tmp292892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp292891))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp292890))))
                                   (declare (not safe))
                                   (cons __tmp292889 '()))))
                            (declare (not safe))
                            (cons 'void __tmp292888))))
                     (declare (not safe))
                     (cons 'with-catch __tmp292887))))
              (declare (not safe))
              (cons __tmp292886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp292895
                                                     __tmp292885))))
                                        (declare (not safe))
                                        (cons '() __tmp292884))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp292883))))
                          (declare (not safe))
                          (cons __tmp292882 '()))))
                   (declare (not safe))
                   (cons __tmp292904 __tmp292881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp292880))))
                                             (declare (not safe))
                                             (cons __tmp292879 '()))))
                                      (declare (not safe))
                                      (cons __tmp292916 __tmp292878))))
                               (declare (not safe))
                               (cons 'define __tmp292877)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288114_
                  (lambda (_libgerbil288221_)
                    (call-with-input-file
                     (string-append _libgerbil288221_ '".ldd")
                     read)))
                 (_replace-extension288115_
                  (lambda (_path288218_ _ext288219_)
                    (string-append
                     (path-strip-extension _path288218_)
                     _ext288219_)))
                 (_not-exclude-module?288116_
                  (lambda (_ctx288214_)
                    (let ((_id-str288216_
                           (symbol->string
                            (##structure-ref
                             _ctx288214_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp292918
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288216_))))
                            (declare (not safe))
                            (not __tmp292918))
                          (let ((__tmp292917
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288216_))))
                            (declare (not safe))
                            (not __tmp292917))
                          '#f))))
                 (_not-file-empty?288117_
                  (lambda (_path288212_)
                    (let ((__tmp292919
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288212_))))
                      (declare (not safe))
                      (not __tmp292919))))
                 (_compile-stub288118_
                  (lambda (_output-scm288125_ _output-bin288126_)
                    (let* ((_gerbil-home288128_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288130_
                            (path-expand '"lib" _gerbil-home288128_))
                           (_gerbil-staticdir288132_
                            (path-expand '"static" _gerbil-libdir288130_))
                           (_gxlink288134_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288130_))
                           (_tmp288136_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288140_
                            (lambda (_f288138_)
                              (path-expand
                               (path-strip-directory _f288138_)
                               _tmp288136_)))
                           (_deps288142_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288110_)))
                           (_deps288144_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288116_
                                      _deps288142_)))
                           (_src-deps-scm288146_
                            (map gxc#find-static-module-file _deps288144_))
                           (_src-deps-scm288148_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288117_
                                      _src-deps-scm288146_)))
                           (_src-deps-scm288150_
                            (map path-expand _src-deps-scm288148_))
                           (_deps-scm288152_
                            (map _tmp-path288140_ _src-deps-scm288150_))
                           (_deps-c288158_
                            (map (lambda (_g288153288155_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288115_
                                      _g288153288155_
                                      '".c")))
                                 _deps-scm288152_))
                           (_deps-o288164_
                            (map (lambda (_g288159288161_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288115_
                                      _g288159288161_
                                      '".o")))
                                 _deps-scm288152_))
                           (_src-bin-scm288166_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288110_)))
                           (_src-bin-scm288168_
                            (path-expand _src-bin-scm288166_))
                           (_bin-scm288170_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288140_ _src-bin-scm288168_)))
                           (_bin-c288172_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288115_
                               _bin-scm288170_
                               '".c")))
                           (_bin-o288174_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288115_
                               _bin-scm288170_
                               '".o")))
                           (_output-bin288176_
                            (path-expand _output-bin288126_))
                           (_output-scm288178_
                            (path-expand _output-scm288125_))
                           (_output-c288180_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288115_
                               _output-scm288178_
                               '".c")))
                           (_output-o288182_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288115_
                               _output-scm288178_
                               '".o")))
                           (_output_-c288184_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288115_
                               _output-scm288178_
                               '"_.c")))
                           (_output_-o288186_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288115_
                               _output-scm288178_
                               '"_.o")))
                           (_gsc-link-opts288188_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288190_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288192_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288132_)))
                           (_output-ld-opts288194_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288196_
                            (path-expand '"libgerbil.a" _gerbil-libdir288130_))
                           (_libgerbil.so288198_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288130_))
                           (_libgerbil-ld-opts288200_
                            (if (file-exists? _libgerbil.so288198_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288114_
                                   _libgerbil.so288198_))
                                (if (file-exists? _libgerbil.a288196_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288114_
                                       _libgerbil.a288196_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288196_
                                       _libgerbil.so288198_)))))
                           (_rpath288202_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288130_)))
                           (_builtin-modules288206_
                            (map (lambda (_mod288204_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288204_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288110_ _deps288144_)))))
                      (let ((__tmp292920
                             (lambda ()
                               (let ((__tmp292921
                                      (path-directory _output-bin288176_)))
                                 (declare (not safe))
                                 (create-directory* __tmp292921)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp292920))
                      (let ((__tmp292922
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288113_
                                  _builtin-modules288206_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288178_
                         __tmp292922))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp292923
                                   (lambda () (create-directory _tmp288136_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp292923))
                            (for-each
                             copy-file
                             _src-deps-scm288150_
                             _deps-scm288152_)
                            (copy-file _src-bin-scm288168_ _bin-scm288170_)
                            (let ((__tmp292931
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292924
                                   (let ((__tmp292925
                                          (let ((__tmp292926
                                                 (let ((__tmp292927
                                                        (let ((__tmp292928
                                                               (let ((__tmp292929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292930
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288178_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288170_ __tmp292930))))
                         (declare (not safe))
                         (foldr1 cons __tmp292929 _deps-scm288152_))))
                  (declare (not safe))
                  (foldr1 cons __tmp292928 _gsc-link-opts288188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288134_
                                                         __tmp292927))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp292926))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp292925))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp292931
                               __tmp292924))
                            (let ((__tmp292939
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292932
                                   (let ((__tmp292933
                                          (let ((__tmp292934
                                                 (let ((__tmp292935
                                                        (let ((__tmp292936
                                                               (let ((__tmp292937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292938
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288184_ '()))))
                                (declare (not safe))
                                (cons _output-c288180_ __tmp292938))))
                         (declare (not safe))
                         (cons _bin-c288172_ __tmp292937))))
                  (declare (not safe))
                  (foldr1 cons __tmp292936 _deps-c288158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp292935
                                                           _gsc-static-opts288192_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp292934
                                                    _gsc-cc-opts288190_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp292933))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp292939
                               __tmp292932))
                            (let ((__tmp292952
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp292940
                                   (let ((__tmp292941
                                          (let ((__tmp292942
                                                 (let ((__tmp292943
                                                        (let ((__tmp292944
                                                               (let ((__tmp292945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp292946
                                     (let ((__tmp292947
                                            (let ((__tmp292948
                                                   (let ((__tmp292949
                                                          (let ((__tmp292950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp292951
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288200_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp292951))))
                    (declare (not safe))
                    (cons _gerbil-libdir288130_ __tmp292950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp292949))))
                                              (declare (not safe))
                                              (cons _rpath288202_
                                                    __tmp292948))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp292947
                                               _output-ld-opts288194_))))
                                (declare (not safe))
                                (cons _output_-o288186_ __tmp292946))))
                         (declare (not safe))
                         (cons _output-o288182_ __tmp292945))))
                  (declare (not safe))
                  (cons _bin-o288174_ __tmp292944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp292943
                                                           _deps-o288164_))))
                                            (declare (not safe))
                                            (cons _output-bin288176_
                                                  __tmp292942))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp292941))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp292952
                               __tmp292940))
                            (for-each
                             delete-file
                             (let ((__tmp292953
                                    (let ((__tmp292954
                                           (let ((__tmp292955
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288186_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288182_
                                                   __tmp292955))))
                                      (declare (not safe))
                                      (cons _output_-c288184_ __tmp292954))))
                               (declare (not safe))
                               (cons _output-c288180_ __tmp292953)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288136_)))
                          '#!void)))))
          (let* ((_output-bin288120_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288110_ _opts288111_)))
                 (_output-scm288122_
                  (string-append _output-bin288120_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288118_ _output-scm288122_ _output-bin288120_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288122_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx287935_ _opts287936_)
        (letrec ((_reset-declare287938_
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
                 (_generate-stub287939_
                  (lambda (_deps288101_)
                    (let ((_mod-main288103_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx287935_ 'main)))
                          (_reset-decl288104_
                           (let ()
                             (declare (not safe))
                             (_reset-declare287938_)))
                          (_user-decl288105_
                           (let ()
                             (declare (not safe))
                             (_user-declare287940_))))
                      (for-each
                       (lambda (_dep288107_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288104_)
                         (newline)
                         (if _user-decl288105_
                             (begin (write _user-decl288105_) (newline))
                             '#!void)
                         (write (let ((__tmp292956
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288107_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp292956)))
                         (newline))
                       _deps288101_)
                      (write (let ((__tmp292957
                                    (let ((__tmp292970
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp292958
                                           (let ((__tmp292966
                                                  (let ((__tmp292967
                                                         (let ((__tmp292968
                                                                (let ((__tmp292969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp292969))))
                   (declare (not safe))
                   (cons __tmp292968 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp292967)))
                                                 (__tmp292959
                                                  (let ((__tmp292960
                                                         (let ((__tmp292961
                                                                (let ((__tmp292962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp292963
                                      (let ((__tmp292964
                                             (let ((__tmp292965
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp292965 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp292964))))
                                 (declare (not safe))
                                 (cons __tmp292963 '()))))
                          (declare (not safe))
                          (cons _mod-main288103_ __tmp292962))))
                   (declare (not safe))
                   (cons 'apply __tmp292961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp292960 '()))))
                                             (declare (not safe))
                                             (cons __tmp292966 __tmp292959))))
                                      (declare (not safe))
                                      (cons __tmp292970 __tmp292958))))
                               (declare (not safe))
                               (cons 'define __tmp292957)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare287940_
                  (lambda ()
                    (let* ((_gsc-opts288006_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts287936_)))
                           (_gsc-prelude288008_
                            (if _gsc-opts288006_
                                (member '"-prelude" _gsc-opts288006_)
                                '#f))
                           (_gsc-prelude288010_
                            (if _gsc-prelude288008_
                                (read (open-input-string
                                       (cadr _gsc-prelude288008_)))
                                '#f)))
                      (let _lp288013_ ((_rest288015_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288010_ '())))
                                       (_user-decls288016_ '()))
                        (let* ((_rest288017288025_ _rest288015_)
                               (_else288019288033_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288016_))
                                      '#f
                                      (let ((__tmp292971
                                             (reverse _user-decls288016_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp292971)))))
                               (_K288021288089_
                                (lambda (_rest288036_ _expr288037_)
                                  (let* ((_expr288038288050_ _expr288037_)
                                         (_else288041288058_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288013_
                                               _rest288036_
                                               _user-decls288016_)))))
                                    (let ((_K288046288079_
                                           (lambda (_decls288077_)
                                             (let ((__tmp292972
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288016_
                                                              _decls288077_))))
                                               (declare (not safe))
                                               (_lp288013_
                                                _rest288036_
                                                __tmp292972))))
                                          (_K288043288064_
                                           (lambda (_exprs288062_)
                                             (let ((__tmp292973
                                                    (append _exprs288062_
                                                            _rest288036_)))
                                               (declare (not safe))
                                               (_lp288013_
                                                __tmp292973
                                                _user-decls288016_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288038288050_))
                                          (let ((_tl288048288084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288038288050_)))
                                                (_hd288047288082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288038288050_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288047288082_
                                                         'declare))
                                                (let ((_decls288087_
                                                       _tl288048288084_))
                                                  (declare (not safe))
                                                  (_K288046288079_
                                                   _decls288087_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288047288082_
                                                             'begin))
                                                    (let ((_exprs288072_
                                                           _tl288048288084_))
                                                      (declare (not safe))
                                                      (_K288043288064_
                                                       _exprs288072_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288041288058_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288041288058_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288017288025_))
                              (let ((_hd288022288092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288017288025_)))
                                    (_tl288023288094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288017288025_))))
                                (let* ((_expr288097_ _hd288022288092_)
                                       (_rest288099_ _tl288023288094_))
                                  (declare (not safe))
                                  (_K288021288089_ _rest288099_ _expr288097_)))
                              (let ()
                                (declare (not safe))
                                (_else288019288033_))))))))
                 (_compile-stub287941_
                  (lambda (_output-scm287948_ _output-bin287949_)
                    (let* ((_gerbil-home287951_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir287953_
                            (path-expand '"lib" _gerbil-home287951_))
                           (_runtime287955_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp287957_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home287951_))
                           (_include-gambit-sharp287959_
                            (string-append
                             '"(include \""
                             _gambit-sharp287957_
                             '"\")"))
                           (_bin-scm287961_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx287935_)))
                           (_deps287963_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx287935_)))
                           (_deps287965_
                            (map gxc#find-static-module-file _deps287963_))
                           (_deps287970_
                            (let ((__tmp292974
                                   (lambda (_$obj287967_)
                                     (let ((__tmp292975
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj287967_))))
                                       (declare (not safe))
                                       (not __tmp292975)))))
                              (declare (not safe))
                              (filter __tmp292974 _deps287965_)))
                           (_deps287974_
                            (let ((__tmp292976
                                   (lambda (_f287972_)
                                     (let ((__tmp292977
                                            (member _f287972_
                                                    _runtime287955_)))
                                       (declare (not safe))
                                       (not __tmp292977)))))
                              (declare (not safe))
                              (filter __tmp292976 _deps287970_)))
                           (_output-base287976_
                            (string-append
                             (path-strip-extension _output-scm287948_)))
                           (_output-c287978_
                            (string-append _output-base287976_ '".c"))
                           (_output-o287980_
                            (string-append _output-base287976_ '".o"))
                           (_output-c_287982_
                            (string-append _output-base287976_ '"_.c"))
                           (_output-o_287984_
                            (string-append _output-base287976_ '"_.o"))
                           (_gsc-link-opts287986_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts287988_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts287990_
                            (let ((__tmp292978
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir287953_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp292978)))
                           (_output-ld-opts287992_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros287994_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp292980
                                       (let ((__tmp292981
                                              (let ((__tmp292982
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp287959_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp292982))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp292981))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp292980))
                                (let ((__tmp292979
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp287959_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp292979))))
                           (_gsc-link-opts287996_
                            (append _gsc-link-opts287986_
                                    _gsc-gx-macros287994_))
                           (_rpath287998_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir287953_)))
                           (_default-ld-options288000_
                            (let ((__tmp292983
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp292983))))
                      (let ((__tmp292984
                             (lambda ()
                               (let ((__tmp292985
                                      (path-directory _output-bin287949_)))
                                 (declare (not safe))
                                 (create-directory* __tmp292985)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp292984))
                      (let ((__tmp292986
                             (lambda ()
                               (let ((__tmp292987
                                      (let ((__tmp292988
                                             (let ((__tmp292989
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm287961_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp292989
                                                       _deps287974_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp292988
                                                _runtime287955_))))
                                 (declare (not safe))
                                 (_generate-stub287939_ __tmp292987)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm287948_
                         __tmp292986))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp292995
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292990
                                   (let ((__tmp292991
                                          (let ((__tmp292992
                                                 (let ((__tmp292993
                                                        (let ((__tmp292994
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm287948_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp292994 _gsc-link-opts287996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_287982_
                                                         __tmp292993))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp292992))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp292991))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp292995
                               __tmp292990))
                            (let ((__tmp293001
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp292996
                                   (let ((__tmp292997
                                          (let ((__tmp292998
                                                 (let ((__tmp292999
                                                        (let ((__tmp293000
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_287982_ '()))))
                  (declare (not safe))
                  (cons _output-c287978_ __tmp293000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp292999
                                                           _gsc-static-opts287990_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp292998
                                                    _gsc-cc-opts287988_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp292997))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293001
                               __tmp292996))
                            (let ((__tmp293011
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293002
                                   (let ((__tmp293003
                                          (let ((__tmp293004
                                                 (let ((__tmp293005
                                                        (let ((__tmp293006
                                                               (let ((__tmp293007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293008
                                     (let ((__tmp293009
                                            (let ((__tmp293010
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288000_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir287953_
                                                    __tmp293010))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293009))))
                                (declare (not safe))
                                (cons _rpath287998_ __tmp293008))))
                         (declare (not safe))
                         (foldr1 cons __tmp293007 _output-ld-opts287992_))))
                  (declare (not safe))
                  (cons _output-o_287984_ __tmp293006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o287980_
                                                         __tmp293005))))
                                            (declare (not safe))
                                            (cons _output-bin287949_
                                                  __tmp293004))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293003))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293011
                               __tmp293002)))
                          '#!void)))))
          (let* ((_output-bin287943_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx287935_ _opts287936_)))
                 (_output-scm287945_
                  (string-append _output-bin287943_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub287941_ _output-scm287945_ _output-bin287943_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm287945_))))))
    (define gxc#find-export-binding
      (lambda (_ctx287885_ _id287886_)
        (let ((_$e287932_
               (let ((__tmp293013
                      (lambda (_e287887287889_)
                        (let* ((_g287891287901_ _e287887287889_)
                               (_else287893287909_ (lambda () '#f))
                               (_K287895287913_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g287891287901_
                                 'gx#module-export::t))
                              (let* ((_e287896287916_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g287891287901_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e287897287919_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g287891287901_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e287898287922_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g287891287901_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e287898287922_ '0))
                                    (let ((_e287899287925_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g287891287901_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g287927287929_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g287927287929_
                                                    _id287886_)))
                                           _e287899287925_)
                                          (let ()
                                            (declare (not safe))
                                            (_K287895287913_))
                                          (let ()
                                            (declare (not safe))
                                            (_else287893287909_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else287893287909_))))
                              (let ()
                                (declare (not safe))
                                (_else287893287909_))))))
                     (__tmp293012
                      (##structure-ref
                       _ctx287885_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp293013 __tmp293012))))
          (if _$e287932_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e287932_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx287877_ _id287878_)
        (let ((_$e287880_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx287877_ _id287878_))))
          (if _$e287880_
              ((lambda (_bind287883_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind287883_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id287878_)))
                 (##structure-ref _bind287883_ '1 gx#binding::t '#f))
               _$e287880_)
              (let ((__tmp293014
                     (##structure-ref
                      _ctx287877_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293014
                 _id287878_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx287764_)
        (letrec* ((_ht287766_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template287767_
                   (lambda (_in287829_ _phi287830_)
                     (let ((_iphi287832_
                            (fx+ _phi287830_
                                 (##direct-structure-ref
                                  _in287829_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports287833_
                            (##structure-ref
                             (##direct-structure-ref
                              _in287829_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp287835_ ((_rest287837_ _imports287833_)
                                        (_r287838_ '()))
                         (let* ((_rest287839287847_ _rest287837_)
                                (_else287841287855_ (lambda () _r287838_))
                                (_K287843287865_
                                 (lambda (_rest287858_ _in287859_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in287859_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi287832_))
                                           (let ((__tmp293021
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in287859_
                                                          _r287838_))))
                                             (declare (not safe))
                                             (_lp287835_
                                              _rest287858_
                                              __tmp293021))
                                           (let ()
                                             (declare (not safe))
                                             (_lp287835_
                                              _rest287858_
                                              _r287838_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in287859_
                                              'gx#module-import::t))
                                           (let ((_iphi287861_
                                                  (fx+ _phi287830_
                                                       (##direct-structure-ref
                                                        _in287859_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi287861_))
                                                 (let ((__tmp293019
                                                        (let ((__tmp293020
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in287859_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293020 _r287838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp287835_
                                                    _rest287858_
                                                    __tmp293019))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp287835_
                                                    _rest287858_
                                                    _r287838_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in287859_
                                                  'gx#import-set::t))
                                               (let ((_xphi287863_
                                                      (fx+ _iphi287832_
                                                           (##direct-structure-ref
                                                            _in287859_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi287863_))
                                                     (let ((__tmp293017
                                                            (let ((__tmp293018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in287859_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293018 _r287838_))))
               (declare (not safe))
               (_lp287835_ _rest287858_ __tmp293017))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi287863_)
                                                         (let ((__tmp293015
                                                                (let ((__tmp293016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template287767_
                                  _in287859_
                                  _iphi287832_))))
                          (declare (not safe))
                          (foldl1 cons _r287838_ __tmp293016))))
                   (declare (not safe))
                   (_lp287835_ _rest287858_ __tmp293015))
                 (let ()
                   (declare (not safe))
                   (_lp287835_ _rest287858_ _r287838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp287835_
                                                  _rest287858_
                                                  _r287838_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest287839287847_))
                               (let ((_hd287844287868_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest287839287847_)))
                                     (_tl287845287870_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest287839287847_))))
                                 (let* ((_in287873_ _hd287844287868_)
                                        (_rest287875_ _tl287845287870_))
                                   (declare (not safe))
                                   (_K287843287865_ _rest287875_ _in287873_)))
                               (let ()
                                 (declare (not safe))
                                 (_else287841287855_))))))))
                  (_find-deps287768_
                   (lambda (_rest287775_ _deps287776_)
                     (let* ((_rest287777287785_ _rest287775_)
                            (_else287779287793_ (lambda () _deps287776_))
                            (_K287781287817_
                             (lambda (_rest287796_ _hd287797_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd287797_
                                      'gx#module-context::t))
                                   (let ((_id287799_
                                          (##structure-ref
                                           _hd287797_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports287800_
                                          (##structure-ref
                                           _hd287797_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht287766_
                                            _id287799_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps287768_
                                            _rest287796_
                                            _deps287776_))
                                         (let ((_$e287802_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd287797_))))
                                           (if _$e287802_
                                               ((lambda (_pre287805_)
                                                  (let ((_xdeps287807_
                                                         (let ((__tmp293034
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre287805_ _imports287800_))))
                   (declare (not safe))
                   (_find-deps287768_ __tmp293034 _deps287776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht287766_
                                                       _id287799_
                                                       _hd287797_))
                                                    (let ((__tmp293035
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd287797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps287807_))))
              (declare (not safe))
              (_find-deps287768_ _rest287796_ __tmp293035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e287802_)
                                               (let ((_xdeps287809_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps287768_
                                                         _imports287800_
                                                         _deps287776_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht287766_
                                                    _id287799_
                                                    _hd287797_))
                                                 (let ((__tmp293033
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd287797_
                                                                _xdeps287809_))))
                                                   (declare (not safe))
                                                   (_find-deps287768_
                                                    _rest287796_
                                                    __tmp293033)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd287797_
                                          'gx#prelude-context::t))
                                       (let ((_id287811_
                                              (##structure-ref
                                               _hd287797_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht287766_
                                                _id287811_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps287768_
                                                _rest287796_
                                                _deps287776_))
                                             (let ((_xdeps287813_
                                                    (let ((__tmp293031
                                                           (##structure-ref
                                                            _hd287797_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps287768_
                                                       __tmp293031
                                                       _deps287776_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht287766_
                                                      _id287811_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps287768_
                                                      _rest287796_
                                                      _xdeps287813_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht287766_
                                                        _id287811_
                                                        _hd287797_))
                                                     (let ((__tmp293032
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd287797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps287813_))))
               (declare (not safe))
               (_find-deps287768_ _rest287796_ __tmp293032)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd287797_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293030
                                                      (##direct-structure-ref
                                                       _hd287797_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293030))
                                               (let ((__tmp293028
                                                      (let ((__tmp293029
                                                             (##direct-structure-ref
                                                              _hd287797_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293029
                                                              _rest287796_))))
                                                 (declare (not safe))
                                                 (_find-deps287768_
                                                  __tmp293028
                                                  _deps287776_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps287768_
                                                  _rest287796_
                                                  _deps287776_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd287797_
                                                  'gx#module-export::t))
                                               (let ((__tmp293026
                                                      (let ((__tmp293027
                                                             (##direct-structure-ref
                                                              _hd287797_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293027
                                                              _rest287796_))))
                                                 (declare (not safe))
                                                 (_find-deps287768_
                                                  __tmp293026
                                                  _deps287776_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd287797_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293025
                                                              (##direct-structure-ref
                                                               _hd287797_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293025))
                                                       (let ((__tmp293023
                                                              (let ((__tmp293024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd287797_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293024 _rest287796_))))
                 (declare (not safe))
                 (_find-deps287768_ __tmp293023 _deps287776_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd287797_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps287815_
                           (let ()
                             (declare (not safe))
                             (_import-set-template287767_ _hd287797_ '0)))
                          (__tmp293022
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest287796_ _xdeps287815_))))
                     (declare (not safe))
                     (_find-deps287768_ __tmp293022 _deps287776_))
                   (let ()
                     (declare (not safe))
                     (_find-deps287768_ _rest287796_ _deps287776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd287797_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest287777287785_))
                           (let ((_hd287782287820_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest287777287785_)))
                                 (_tl287783287822_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest287777287785_))))
                             (let* ((_hd287825_ _hd287782287820_)
                                    (_rest287827_ _tl287783287822_))
                               (declare (not safe))
                               (_K287781287817_ _rest287827_ _hd287825_)))
                           (let ()
                             (declare (not safe))
                             (_else287779287793_)))))))
          (reverse (let ((__tmp293036
                          (let ((__tmp293037
                                 (let ((_$e287770_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx287764_))))
                                   (if _$e287770_
                                       ((lambda (_pre287773_)
                                          (let ((__tmp293038
                                                 (##structure-ref
                                                  _ctx287764_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre287773_ __tmp293038)))
                                        _$e287770_)
                                       (##structure-ref
                                        _ctx287764_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps287768_ __tmp293037 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293036))))))
    (define gxc#find-static-module-file
      (lambda (_ctx287695_)
        (let* ((_context-id287697_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx287695_
                       'gx#module-context::t))
                    (##structure-ref _ctx287695_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx287695_)))
               (_scm287699_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id287697_))
                 '".scm"))
               (_dirs287701_ (gx#current-expander-module-library-path))
               (_dirs287707_
                (let ((_user-libpath287703_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath287703_
                      (let ((_user-libpath287705_
                             (path-expand '"lib" _user-libpath287703_)))
                        (if (member _user-libpath287705_ _dirs287701_)
                            _dirs287701_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath287705_ _dirs287701_))))
                      _dirs287701_)))
               (_dirs287716_
                (let ((_$e287709_ (gxc#current-compile-output-dir)))
                  (if _$e287709_
                      ((lambda (_g287711287713_)
                         (let ()
                           (declare (not safe))
                           (cons _g287711287713_ _dirs287707_)))
                       _$e287709_)
                      _dirs287707_)))
               (_dirs287722_
                (map (lambda (_g287717287719_)
                       (path-expand '"static" _g287717287719_))
                     _dirs287716_)))
          (let _lp287725_ ((_rest287727_ _dirs287722_))
            (let* ((_rest287728287736_ _rest287727_)
                   (_else287730287744_
                    (lambda ()
                      (let ((__tmp293039
                             (##structure-ref
                              _ctx287695_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293039
                         _scm287699_))))
                   (_K287732287752_
                    (lambda (_rest287747_ _dir287748_)
                      (let ((_path287750_
                             (path-expand _scm287699_ _dir287748_)))
                        (if (file-exists? _path287750_)
                            _path287750_
                            (let ()
                              (declare (not safe))
                              (_lp287725_ _rest287747_)))))))
              (if (let () (declare (not safe)) (##pair? _rest287728287736_))
                  (let ((_hd287733287755_
                         (let ()
                           (declare (not safe))
                           (##car _rest287728287736_)))
                        (_tl287734287757_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287728287736_))))
                    (let* ((_dir287760_ _hd287733287755_)
                           (_rest287762_ _tl287734287757_))
                      (declare (not safe))
                      (_K287732287752_ _rest287762_ _dir287760_)))
                  (let () (declare (not safe)) (_else287730287744_))))))))
    (define gxc#file-empty?
      (lambda (_path287693_)
        (let ((__tmp293040 (file-info-size (file-info _path287693_ '#t))))
          (declare (not safe))
          (zero? __tmp293040))))
    (define gxc#compile-top-module
      (lambda (_ctx287682_)
        (let ((__tmp293044
               (lambda ()
                 (let ((__tmp293045
                        (##structure-ref
                         _ctx287682_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293045))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293046
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx287682_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293046))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx287682_))
                 (if (let ((__tmp293049
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx287682_))))
                       (declare (not safe))
                       (null? __tmp293049))
                     (let* ((_thr1287687_
                             (let ((__tmp293047
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx287682_)))))
                               (declare (not safe))
                               (spawn __tmp293047)))
                            (_thr2287690_
                             (let ((__tmp293048
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx287682_)))))
                               (declare (not safe))
                               (spawn __tmp293048))))
                       (let () (declare (not safe)) (gxc#join! _thr1287687_))
                       (let () (declare (not safe)) (gxc#join! _thr2287690_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx287682_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx287682_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx287682_))
                     '#!void)))
              (__tmp293043
               (let ((__obj292848
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj292848)
                 __obj292848))
              (__tmp293042
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293041 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293044
           gx#current-expander-context
           _ctx287682_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293043
           gxc#current-compile-runtime-sections
           __tmp293042
           gxc#current-compile-runtime-names
           __tmp293041))))
    (define gxc#collect-bindings
      (lambda (_ctx287680_)
        (let ((__tmp293050
               (##structure-ref _ctx287680_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293050))))
    (define gxc#compile-runtime-code
      (lambda (_ctx287626_)
        (letrec ((_compile1287628_
                  (lambda (_ctx287669_)
                    (let* ((_code287671_
                            (##structure-ref
                             _ctx287669_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt287675_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code287671_))
                                (let ((_idstr287673_
                                       (let ((__tmp293051
                                              (##structure-ref
                                               _ctx287669_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293051))))
                                  (string-append _idstr287673_ '"__0"))
                                '#f)))
                      (if _rt287675_
                          (begin
                            (let ((__tmp293052
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293052 _ctx287669_ _rt287675_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code287630_
                               _ctx287669_
                               _code287671_)))
                          (let ((_path287678_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx287669_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path287678_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code287631_
                         _ctx287669_
                         _code287671_
                         _rt287675_)))))
                 (_context-timestamp287629_
                  (lambda (_ctx287667_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx287667_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code287630_
                  (lambda (_ctx287649_ _code287650_)
                    (let* ((_lifts287652_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code287655_
                            (let ((__tmp293055
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code287650_))))
                                  (__tmp293054
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293053
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293055
                               gx#current-expander-context
                               _ctx287649_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts287652_
                               gxc#current-compile-marks
                               __tmp293054
                               gxc#current-compile-identifiers
                               __tmp293053)))
                           (_runtime-code287657_
                            (if (let ((__tmp293059 (unbox _lifts287652_)))
                                  (declare (not safe))
                                  (null? __tmp293059))
                                _runtime-code287655_
                                (let ((__tmp293056
                                       (let ((__tmp293058
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code287655_
                                                      '())))
                                             (__tmp293057
                                              (reverse (unbox _lifts287652_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293058
                                                 __tmp293057))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293056))))
                           (_runtime-code287659_
                            (let ((__tmp293060
                                   (let ((__tmp293062
                                          (let ((__tmp293063
                                                 (let ((__tmp293066
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp287629_
                                                           _ctx287649_)))
                                                       (__tmp293064
                                                        (let ((__tmp293065
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293065
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293066
                                                         __tmp293064))))
                                            (declare (not safe))
                                            (cons 'define __tmp293063)))
                                         (__tmp293061
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code287657_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293062 __tmp293061))))
                              (declare (not safe))
                              (cons 'begin __tmp293060)))
                           (_scm0287661_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287649_
                               '0
                               '".scm"))))
                      (let ((_scms287664_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx287649_))))
                        (let ((__tmp293067
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0287661_
                                    _runtime-code287659_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293067
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms287664_)
                            (delete-file _scms287664_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0287661_
                           '" => "
                           _scms287664_))
                        (copy-file _scm0287661_ _scms287664_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0287661_))))))
                 (_generate-loader-code287631_
                  (lambda (_ctx287638_ _code287639_ _rt287640_)
                    (let* ((_loader-code287643_
                            (let ((__tmp293068
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code287639_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293068
                               gx#current-expander-context
                               _ctx287638_)))
                           (_loader-code287645_
                            (if _rt287640_
                                (let ((__tmp293069
                                       (let ((__tmp293070
                                              (let ((__tmp293071
                                                     (let ((__tmp293072
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt287640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293071 '()))))
                                         (declare (not safe))
                                         (cons _loader-code287643_
                                               __tmp293070))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293069))
                                _loader-code287643_)))
                      (let ((__tmp293073
                             (lambda ()
                               (let ((__tmp293074
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287638_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293074
                                  _loader-code287645_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293073
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules287633_
                 (let ((__tmp293075
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx287626_))))
                   (declare (not safe))
                   (cons _ctx287626_ __tmp293075))))
            (for-each
             (lambda (_ctx287635_)
               (let ((__tmp293076
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1287628_ _ctx287635_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293076
                  gxc#current-compile-decls
                  '())))
             _all-modules287633_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx287523_)
        (letrec ((_compile-ssi287525_
                  (lambda (_code287596_)
                    (let* ((_path287598_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287523_
                               '#f
                               '".ssi")))
                           (_prelude287609_
                            (let* ((_super287600_
                                    (##structure-ref
                                     _ctx287523_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e287602_
                                    (##structure-ref
                                     _super287600_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e287602_
                                  ((lambda (_g287604287606_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g287604287606_)))
                                   _$e287602_)
                                  ':<root>)))
                           (_ns287611_
                            (##structure-ref
                             _ctx287523_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr287613_
                            (symbol->string
                             (##structure-ref
                              _ctx287523_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg287620_
                            (let ((_$e287615_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr287613_ '#\/))))
                              (if _$e287615_
                                  ((lambda (_x287618_)
                                     (string->symbol
                                      (substring _idstr287613_ '0 _x287618_)))
                                   _$e287615_)
                                  '#f)))
                           (_rt287622_
                            (let ((__tmp293077
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293077 _ctx287523_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path287598_))
                      (let ((__tmp293078
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude287609_))
                               (if _pkg287620_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg287620_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns287611_))
                               (newline)
                               (pretty-print _code287596_)
                               (if _rt287622_
                                   (pretty-print
                                    (let ((__tmp293079
                                           (let ((__tmp293083
                                                  (let ((__tmp293084
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293084)))
                                                 (__tmp293080
                                                  (let ((__tmp293081
                                                         (let ((__tmp293082
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt287622_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293081 '()))))
                                             (declare (not safe))
                                             (cons __tmp293083 __tmp293080))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293079)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path287598_
                         __tmp293078)))))
                 (_compile-phi287526_
                  (lambda (_part287536_)
                    (let* ((_part287537287550_ _part287536_)
                           (_E287539287554_
                            (lambda ()
                              (error '"No clause matching"
                                     _part287537287550_)))
                           (_K287540287565_
                            (lambda (_code287557_
                                     _n287558_
                                     _phi287559_
                                     _phi-ctx287560_)
                              (let* ((_code287563_
                                      (let ((__tmp293085
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code287557_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293085
                                         gx#current-expander-context
                                         _phi-ctx287560_
                                         gx#current-expander-phi
                                         _phi287559_)))
                                     (__tmp293086
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287523_
                                         _n287558_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293086
                                 _code287563_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part287537287550_))
                          (let ((_hd287541287568_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part287537287550_)))
                                (_tl287542287570_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part287537287550_))))
                            (let ((_phi-ctx287573_ _hd287541287568_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl287542287570_))
                                  (let ((_hd287543287575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl287542287570_)))
                                        (_tl287544287577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl287542287570_))))
                                    (let ((_phi287580_ _hd287543287575_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl287544287577_))
                                          (let ((_hd287545287582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl287544287577_)))
                                                (_tl287546287584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl287544287577_))))
                                            (let ((_n287587_ _hd287545287582_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl287546287584_))
                                                  (let ((_hd287547287589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl287546287584_)))
                                                        (_tl287548287591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl287546287584_))))
                                                    (let ((_code287594_
                                                           _hd287547287589_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl287548287591_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K287540287565_
                                                             _code287594_
                                                             _n287587_
                                                             _phi287580_
                                                             _phi-ctx287573_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E287539287554_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E287539287554_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E287539287554_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E287539287554_)))))
                          (let () (declare (not safe)) (_E287539287554_)))))))
          (let ((_g293087_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx287523_))))
            (begin
              (let ((_g293088_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293087_)
                           (##vector-length _g293087_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293088_ 2)))
                    (error "Context expects 2 values" _g293088_)))
              (let ((_ssi-code287528_
                     (let () (declare (not safe)) (##vector-ref _g293087_ 0)))
                    (_phi-code287529_
                     (let () (declare (not safe)) (##vector-ref _g293087_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi287525_ _ssi-code287528_))
                  (let ((_threads287534_
                         (map (lambda (_code287531_)
                                (let ((__tmp293089
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi287526_
                                            _code287531_)))))
                                  (declare (not safe))
                                  (spawn __tmp293089)))
                              _phi-code287529_)))
                    (for-each gxc#join! _threads287534_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx287506_)
        (let* ((_path287508_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx287506_ '#f '".ssxi.ss")))
               (_code287510_
                (let ((__tmp293090
                       (##structure-ref
                        _ctx287506_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293090)))
               (_idstr287512_
                (symbol->string
                 (##structure-ref _ctx287506_ '1 gx#expander-context::t '#f)))
               (_pkg287519_
                (let ((_$e287514_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr287512_ '#\/))))
                  (if _$e287514_
                      ((lambda (_x287517_)
                         (string->symbol
                          (substring _idstr287512_ '0 _x287517_)))
                       _$e287514_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path287508_))
          (let ((__tmp293091
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg287519_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg287519_))
                       '#!void)
                   (newline)
                   (pretty-print _code287510_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path287508_ __tmp293091)))))
    (define gxc#generate-meta-code
      (lambda (_ctx287499_)
        (let* ((_state287501_
                (let ((__obj292849
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj292849 _ctx287499_)
                  __obj292849))
               (_ssi-code287503_
                (let ((__tmp293092
                       (##structure-ref
                        _ctx287499_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293092 _state287501_))))
          (values _ssi-code287503_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state287501_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx287492_)
        (let ((_lifts287494_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293095
                 (lambda ()
                   (let ((_code287497_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx287492_))))
                     (if (let ((__tmp293099 (unbox _lifts287494_)))
                           (declare (not safe))
                           (null? __tmp293099))
                         _code287497_
                         (let ((__tmp293096
                                (let ((__tmp293098
                                       (let ()
                                         (declare (not safe))
                                         (cons _code287497_ '())))
                                      (__tmp293097
                                       (reverse (unbox _lifts287494_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293098 __tmp293097))))
                           (declare (not safe))
                           (cons 'begin __tmp293096))))))
                (__tmp293094
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293093
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293095
             gxc#current-compile-lift
             _lifts287494_
             gxc#current-compile-marks
             __tmp293094
             gxc#current-compile-identifiers
             __tmp293093)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx287488_)
        (let ((_modules287490_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293100
                 (##structure-ref _ctx287488_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293100 _modules287490_))
          (reverse (unbox _modules287490_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287471_ _code287472_ _phi?287473_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287471_))
        (let ((__tmp293101
               (lambda ()
                 (pretty-print
                  (let ((__tmp293102
                         (let ((__tmp293109
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293103
                                (let ((__tmp293108
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293104
                                       (let ((__tmp293107
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293105
                                              (let ((__tmp293106
                                                     (if _phi?287473_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293106))))
                                         (declare (not safe))
                                         (cons __tmp293107 __tmp293105))))
                                  (declare (not safe))
                                  (cons __tmp293108 __tmp293104))))
                           (declare (not safe))
                           (cons __tmp293109 __tmp293103))))
                    (declare (not safe))
                    (cons 'declare __tmp293102)))
                 (pretty-print _code287472_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287471_ __tmp293101))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287471_ _phi?287473_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287471_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287479_ _code287480_)
        (let ((_phi?287482_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287479_ _code287480_ _phi?287482_))))
    (define gxc#compile-scm-file
      (lambda _g293111_
        (let ((_g293110_ (let () (declare (not safe)) (##length _g293111_))))
          (cond ((let () (declare (not safe)) (##fx= _g293110_ 2))
                 (apply (lambda (_path287479_ _code287480_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287479_
                             _code287480_)))
                        _g293111_))
                ((let () (declare (not safe)) (##fx= _g293110_ 3))
                 (apply (lambda (_path287484_ _code287485_ _phi?287486_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path287484_
                             _code287485_
                             _phi?287486_)))
                        _g293111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293111_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287372_)
        (let _lp287374_ ((_rest287376_ (gxc#current-compile-gsc-options))
                         (_opts287377_ '()))
          (let* ((_rest287378287398_ _rest287376_)
                 (_else287382287406_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287372_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293112
                               (let ((__tmp293113 (reverse _opts287377_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293113))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293112))
                        (reverse _opts287377_)))))
            (let ((_K287392287449_
                   (lambda (_rest287447_)
                     (let ()
                       (declare (not safe))
                       (_lp287374_ _rest287447_ _opts287377_))))
                  (_K287387287431_
                   (lambda (_rest287429_)
                     (let ()
                       (declare (not safe))
                       (_lp287374_ _rest287429_ _opts287377_))))
                  (_K287384287413_
                   (lambda (_rest287410_ _opt287411_)
                     (let ((__tmp293114
                            (let ()
                              (declare (not safe))
                              (cons _opt287411_ _opts287377_))))
                       (declare (not safe))
                       (_lp287374_ _rest287410_ __tmp293114)))))
              (if (let () (declare (not safe)) (##pair? _rest287378287398_))
                  (let ((_tl287394287454_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287378287398_)))
                        (_hd287393287452_
                         (let ()
                           (declare (not safe))
                           (##car _rest287378287398_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287393287452_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287394287454_))
                            (let* ((_tl287396287457_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287394287454_)))
                                   (_rest287460_ _tl287396287457_))
                              (declare (not safe))
                              (_K287392287449_ _rest287460_))
                            (let ((_opt287421_ _hd287393287452_)
                                  (_rest287423_ _tl287394287454_))
                              (let ()
                                (declare (not safe))
                                (_K287384287413_ _rest287423_ _opt287421_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287393287452_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287394287454_))
                                (let* ((_tl287391287439_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287394287454_)))
                                       (_rest287442_ _tl287391287439_))
                                  (declare (not safe))
                                  (_K287387287431_ _rest287442_))
                                (let ((_opt287421_ _hd287393287452_)
                                      (_rest287423_ _tl287394287454_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287384287413_
                                     _rest287423_
                                     _opt287421_))))
                            (let ((_opt287421_ _hd287393287452_)
                                  (_rest287423_ _tl287394287454_))
                              (let ()
                                (declare (not safe))
                                (_K287384287413_ _rest287423_ _opt287421_))))))
                  (let () (declare (not safe)) (_else287382287406_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287466_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287466_))))
    (define gxc#gsc-link-options
      (lambda _g293116_
        (let ((_g293115_ (let () (declare (not safe)) (##length _g293116_))))
          (cond ((let () (declare (not safe)) (##fx= _g293115_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293116_))
                ((let () (declare (not safe)) (##fx= _g293115_ 1))
                 (apply (lambda (_phi?287468_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287468_)))
                        _g293116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293116_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287273_)
        (let _lp287275_ ((_rest287277_ (gxc#current-compile-gsc-options))
                         (_opts287278_ '()))
          (let* ((_rest287279287299_ _rest287277_)
                 (_else287283287307_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287273_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293117
                               (let ((__tmp293118 (reverse _opts287278_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293118))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293117))
                        (reverse _opts287278_)))))
            (let ((_K287293287346_
                   (lambda (_rest287343_ _opt287344_)
                     (let ((__tmp293119
                            (let ((__tmp293120
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287278_))))
                              (declare (not safe))
                              (cons _opt287344_ __tmp293120))))
                       (declare (not safe))
                       (_lp287275_ _rest287343_ __tmp293119))))
                  (_K287288287327_
                   (lambda (_rest287325_)
                     (let ()
                       (declare (not safe))
                       (_lp287275_ _rest287325_ _opts287278_))))
                  (_K287285287313_
                   (lambda (_rest287311_)
                     (let ()
                       (declare (not safe))
                       (_lp287275_ _rest287311_ _opts287278_)))))
              (if (let () (declare (not safe)) (##pair? _rest287279287299_))
                  (let ((_tl287295287351_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287279287299_)))
                        (_hd287294287349_
                         (let ()
                           (declare (not safe))
                           (##car _rest287279287299_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287294287349_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287295287351_))
                            (let ((_tl287297287356_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287295287351_)))
                                  (_hd287296287354_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287295287351_))))
                              (let ((_opt287359_ _hd287296287354_)
                                    (_rest287361_ _tl287297287356_))
                                (let ()
                                  (declare (not safe))
                                  (_K287293287346_ _rest287361_ _opt287359_))))
                            (let ((_rest287319_ _tl287295287351_))
                              (declare (not safe))
                              (_K287285287313_ _rest287319_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287294287349_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287295287351_))
                                (let* ((_tl287292287335_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287295287351_)))
                                       (_rest287338_ _tl287292287335_))
                                  (declare (not safe))
                                  (_K287288287327_ _rest287338_))
                                (let ((_rest287319_ _tl287295287351_))
                                  (declare (not safe))
                                  (_K287285287313_ _rest287319_)))
                            (let ((_rest287319_ _tl287295287351_))
                              (declare (not safe))
                              (_K287285287313_ _rest287319_)))))
                  (let () (declare (not safe)) (_else287283287307_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287367_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287367_))))
    (define gxc#gsc-cc-options
      (lambda _g293122_
        (let ((_g293121_ (let () (declare (not safe)) (##length _g293122_))))
          (cond ((let () (declare (not safe)) (##fx= _g293121_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293122_))
                ((let () (declare (not safe)) (##fx= _g293121_ 1))
                 (apply (lambda (_phi?287369_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287369_)))
                        _g293122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293122_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287268_)
        (let* ((_user-staticdir287270_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293123
                (let ((__tmp293124
                       (string-append
                        '"-I "
                        _staticdir287268_
                        '" -I "
                        _user-staticdir287270_)))
                  (declare (not safe))
                  (cons __tmp293124 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293123))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287180_ ((_rest287182_ (gxc#current-compile-gsc-options))
                         (_opts287183_ '()))
          (let* ((_rest287184287204_ _rest287182_)
                 (_else287188287212_ (lambda () _opts287183_)))
            (let ((_K287198287255_
                   (lambda (_rest287253_)
                     (let ()
                       (declare (not safe))
                       (_lp287180_ _rest287253_ _opts287183_))))
                  (_K287193287233_
                   (lambda (_rest287230_ _opt287231_)
                     (let ((__tmp293125
                            (append _opts287183_
                                    (let ((__tmp293126
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287231_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293126)))))
                       (declare (not safe))
                       (_lp287180_ _rest287230_ __tmp293125))))
                  (_K287190287218_
                   (lambda (_rest287216_)
                     (let ()
                       (declare (not safe))
                       (_lp287180_ _rest287216_ _opts287183_)))))
              (if (let () (declare (not safe)) (##pair? _rest287184287204_))
                  (let ((_tl287200287260_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287184287204_)))
                        (_hd287199287258_
                         (let ()
                           (declare (not safe))
                           (##car _rest287184287204_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287199287258_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287200287260_))
                            (let* ((_tl287202287263_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287200287260_)))
                                   (_rest287266_ _tl287202287263_))
                              (declare (not safe))
                              (_K287198287255_ _rest287266_))
                            (let ((_rest287224_ _tl287200287260_))
                              (declare (not safe))
                              (_K287190287218_ _rest287224_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287199287258_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287200287260_))
                                (let ((_tl287197287243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287200287260_)))
                                      (_hd287196287241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287200287260_))))
                                  (let ((_opt287246_ _hd287196287241_)
                                        (_rest287248_ _tl287197287243_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287193287233_
                                       _rest287248_
                                       _opt287246_))))
                                (let ((_rest287224_ _tl287200287260_))
                                  (declare (not safe))
                                  (_K287190287218_ _rest287224_)))
                            (let ((_rest287224_ _tl287200287260_))
                              (declare (not safe))
                              (_K287190287218_ _rest287224_)))))
                  (let () (declare (not safe)) (_else287188287212_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287177_)
        (let ((__tmp293127
               (let () (declare (not safe)) (string-empty? _str287177_))))
          (declare (not safe))
          (not __tmp293127))))
    (define gxc#gsc-compile-file
      (lambda (_path287145_ _phi?287146_)
        (letrec ((_gsc-link-path287148_
                  (lambda (_base-path287169_)
                    (let _lp287171_ ((_n287173_ '1))
                      (let ((_path287175_
                             (string-append
                              _base-path287169_
                              '".o"
                              (number->string _n287173_))))
                        (if (file-exists? _path287175_)
                            (let ((__tmp293128
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287173_ '1))))
                              (declare (not safe))
                              (_lp287171_ __tmp293128))
                            _path287175_))))))
          (let* ((_base-path287150_ (path-strip-extension _path287145_))
                 (_path-c287152_ (string-append _base-path287150_ '".c"))
                 (_path-o287154_ (string-append _base-path287150_ '".o"))
                 (_link-path287156_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287148_ _base-path287150_)))
                 (_link-path-c287158_ (string-append _link-path287156_ '".c"))
                 (_link-path-o287160_ (string-append _link-path287156_ '".o"))
                 (_gsc-link-opts287162_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287146_)))
                 (_gsc-cc-opts287164_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287146_)))
                 (_gcc-ld-opts287166_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293135 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293129
                   (let ((__tmp293130
                          (let ((__tmp293131
                                 (let ((__tmp293132
                                        (let ((__tmp293133
                                               (let ((__tmp293134
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287145_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293134
                                                         _gsc-link-opts287162_))))
                                          (declare (not safe))
                                          (cons _link-path-c287158_
                                                __tmp293133))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293132))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293131))))
                     (declare (not safe))
                     (cons '"-link" __tmp293130))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293135 __tmp293129))
            (let ((__tmp293142 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293136
                   (let ((__tmp293137
                          (let ((__tmp293138
                                 (let ((__tmp293139
                                        (let ((__tmp293140
                                               (let ((__tmp293141
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287158_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287152_
                                                       __tmp293141))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293140
                                                  _gsc-cc-opts287164_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293139))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293138))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293137))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293142 __tmp293136))
            (let ((__tmp293148 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293143
                   (let ((__tmp293144
                          (let ((__tmp293145
                                 (let ((__tmp293146
                                        (let ((__tmp293147
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287160_
                                                       _gcc-ld-opts287166_))))
                                          (declare (not safe))
                                          (cons _path-o287154_ __tmp293147))))
                                   (declare (not safe))
                                   (cons _link-path287156_ __tmp293146))))
                            (declare (not safe))
                            (cons '"-o" __tmp293145))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293144))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293148
               __tmp293143))
            (for-each
             delete-file
             (let ((__tmp293149
                    (let ((__tmp293150
                           (let ((__tmp293151
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287160_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287158_ __tmp293151))))
                      (declare (not safe))
                      (cons _path-o287154_ __tmp293150))))
               (declare (not safe))
               (cons _path-c287152_ __tmp293149)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287116_ _n287117_ _ext287118_)
        (letrec ((_module-relative-path287120_
                  (lambda (_ctx287143_)
                    (path-strip-directory
                     (let ((__tmp293152
                            (##structure-ref
                             _ctx287143_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293152)))))
                 (_module-source-directory287121_
                  (lambda (_ctx287139_)
                    (path-directory
                     (let ((_mpath287141_
                            (##structure-ref
                             _ctx287139_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287141_))
                           _mpath287141_
                           (let ()
                             (declare (not safe))
                             (last _mpath287141_)))))))
                 (_section-string287122_
                  (lambda (_n287137_)
                    (if (let () (declare (not safe)) (number? _n287137_))
                        (number->string _n287137_)
                        (if (let () (declare (not safe)) (symbol? _n287137_))
                            (symbol->string _n287137_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287137_))
                                _n287137_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287137_)))))))
                 (_file-name287123_
                  (lambda (_path287135_)
                    (if _n287117_
                        (string-append
                         _path287135_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287122_ _n287117_))
                         _ext287118_)
                        (string-append _path287135_ _ext287118_))))
                 (_file-path287124_
                  (lambda ()
                    (let ((_$e287130_ (gxc#current-compile-output-dir)))
                      (if _$e287130_
                          ((lambda (_outdir287133_)
                             (path-expand
                              (let ((__tmp293154
                                     (let ((__tmp293155
                                            (##structure-ref
                                             _ctx287116_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293155))))
                                (declare (not safe))
                                (_file-name287123_ __tmp293154))
                              _outdir287133_))
                           _$e287130_)
                          (path-expand
                           (let ((__tmp293153
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287120_
                                     _ctx287116_))))
                             (declare (not safe))
                             (_file-name287123_ __tmp293153))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287121_
                              _ctx287116_))))))))
          (let ((_path287126_
                 (let () (declare (not safe)) (_file-path287124_))))
            (let ((__tmp293156
                   (lambda ()
                     (let ((__tmp293157 (path-directory _path287126_)))
                       (declare (not safe))
                       (create-directory* __tmp293157)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293156))
            _path287126_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287098_)
        (letrec ((_file-name287100_
                  (lambda (_id287114_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287114_))
                     '".scm")))
                 (_file-path287101_
                  (lambda ()
                    (let* ((_file287107_
                            (let ((__tmp293158
                                   (##structure-ref
                                    _ctx287098_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287100_ __tmp293158)))
                           (_$e287109_ (gxc#current-compile-output-dir)))
                      (if _$e287109_
                          ((lambda (_outdir287112_)
                             (path-expand
                              _file287107_
                              (path-expand '"static" _outdir287112_)))
                           _$e287109_)
                          (path-expand _file287107_ '"static"))))))
          (let ((_path287103_
                 (let () (declare (not safe)) (_file-path287101_))))
            (let ((__tmp293159
                   (lambda ()
                     (let ((__tmp293160 (path-directory _path287103_)))
                       (declare (not safe))
                       (create-directory* __tmp293160)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293159))
            _path287103_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287092_ _opts287093_)
        (let ((_$e287095_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287093_))))
          (if _$e287095_
              (values _$e287095_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287092_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287085_)
        (if (let () (declare (not safe)) (string? _idstr287085_))
            (let* ((_str287087_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287085_)))
                   (_strs287089_
                    (let ()
                      (declare (not safe))
                      (string-split _str287087_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287089_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287085_))
                (let ((__tmp293161 (symbol->string _idstr287085_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293161))
                (error '"Bad module id" _idstr287085_)))))
    (define gxc#invoke__%
      (lambda (_g293162_
               _stdout-redirection287049287053_
               _stderr-redirection287050287055_
               _program287057_
               _args287058_)
        (let* ((_stdout-redirection287060_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287049287053_ absent-value))
                    '#f
                    _stdout-redirection287049287053_))
               (_stderr-redirection287062_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287050287055_ absent-value))
                    '#f
                    _stderr-redirection287050287055_)))
          (let ((__tmp293163
                 (let ()
                   (declare (not safe))
                   (cons _program287057_ _args287058_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293163))
          (let ((_proc287064_
                 (open-process
                  (let ((__tmp293164
                         (let ((__tmp293165
                                (let ((__tmp293166
                                       (let ((__tmp293167
                                              (let ((__tmp293168
                                                     (let ((__tmp293169
                                                            (let ((__tmp293170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287062_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293170))))
               (declare (not safe))
               (cons _stdout-redirection287060_ __tmp293169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293168))))
                                         (declare (not safe))
                                         (cons _args287058_ __tmp293167))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293166))))
                           (declare (not safe))
                           (cons _program287057_ __tmp293165))))
                    (declare (not safe))
                    (cons 'path: __tmp293164)))))
            (if (or _stdout-redirection287060_ _stderr-redirection287062_)
                (read-line _proc287064_ '#f)
                '#!void)
            (let ((_status287069_ (process-status _proc287064_)))
              (close-port _proc287064_)
              (if (let () (declare (not safe)) (zero? _status287069_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287057_))))))))
    (define gxc#invoke__@
      (lambda (_keys287048287074_ . _args287076_)
        (apply gxc#invoke__%
               _keys287048287074_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287048287074_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287048287074_
                  'stderr-redirection:
                  absent-value))
               _args287076_)))
    (define gxc#invoke
      (lambda _args287051287082_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287051287082_)))
    (define gxc#join!
      (lambda (_thread287042_)
        (let ((__tmp293172
               (lambda (_exn287044_)
                 (if (uncaught-exception? _exn287044_)
                     (raise (uncaught-exception-reason _exn287044_))
                     (raise _exn287044_))))
              (__tmp293171 (lambda () (thread-join! _thread287042_))))
          (declare (not safe))
          (with-catch __tmp293172 __tmp293171))))))
