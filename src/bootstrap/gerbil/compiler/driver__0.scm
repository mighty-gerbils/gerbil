(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707423046)
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
      (lambda (_path279655_ _fun279656_)
        (with-output-to-file
         (let ((__tmp283943
                (let ()
                  (declare (not safe))
                  (cons _path279655_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp283943))
         _fun279656_)))
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
      (lambda (_gerbil-libdir279650_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir279650_)))
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
      (lambda (_dir279648_) (delete-file-or-directory _dir279648_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath279622_ _opts279623_)
        (if (let () (declare (not safe)) (string? _srcpath279622_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath279622_)))
        (let ((_outdir279625_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts279623_)))
              (_invoke-gsc?279626_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts279623_)))
              (_gsc-options279627_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts279623_)))
              (_keep-scm?279628_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts279623_)))
              (_verbosity279629_
               (let () (declare (not safe)) (pgetq 'verbose: _opts279623_)))
              (_optimize279630_
               (let () (declare (not safe)) (pgetq 'optimize: _opts279623_)))
              (_debug279631_
               (let () (declare (not safe)) (pgetq 'debug: _opts279623_)))
              (_gen-ssxi279632_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts279623_))))
          (if _outdir279625_
              (let ((__tmp283944
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir279625_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283944))
              '#!void)
          (if _optimize279630_
              (let ((__tmp283945
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283945))
              '#!void)
          (let ((__tmp283949
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath279622_))
                   (let ((__tmp283950
                          (let ((__tmp283951
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath279622_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp283951))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp283950))))
                (__tmp283948
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp283946
                 (let ((__tmp283947
                        (let ()
                          (declare (not safe))
                          (cons _srcpath279622_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp283947))))
            (declare (not safe))
            (call-with-parameters
             __tmp283949
             gxc#current-compile-output-dir
             _outdir279625_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?279626_
             gxc#current-compile-gsc-options
             _gsc-options279627_
             gxc#current-compile-keep-scm
             _keep-scm?279628_
             gxc#current-compile-verbose
             _verbosity279629_
             gxc#current-compile-optimize
             _optimize279630_
             gxc#current-compile-debug
             _debug279631_
             gxc#current-compile-generate-ssxi
             _gen-ssxi279632_
             gxc#current-compile-timestamp
             __tmp283948
             gxc#current-compile-context
             __tmp283946
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath279641_)
        (let ((_opts279643_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath279641_ _opts279643_))))
    (define gxc#compile-module
      (lambda _g283953_
        (let ((_g283952_ (let () (declare (not safe)) (##length _g283953_))))
          (cond ((let () (declare (not safe)) (##fx= _g283952_ 1))
                 (apply (lambda (_srcpath279641_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath279641_)))
                        _g283953_))
                ((let () (declare (not safe)) (##fx= _g283952_ 2))
                 (apply (lambda (_srcpath279645_ _opts279646_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath279645_
                             _opts279646_)))
                        _g283953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g283953_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath279598_ _opts279599_)
        (if (let () (declare (not safe)) (string? _srcpath279598_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath279598_)))
        (let ((_outdir279601_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts279599_)))
              (_invoke-gsc?279602_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts279599_)))
              (_gsc-options279603_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts279599_)))
              (_keep-scm?279604_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts279599_)))
              (_verbosity279605_
               (let () (declare (not safe)) (pgetq 'verbose: _opts279599_)))
              (_debug279606_
               (let () (declare (not safe)) (pgetq 'debug: _opts279599_))))
          (if _outdir279601_
              (let ((__tmp283954
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir279601_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283954))
              '#!void)
          (let ((__tmp283958
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath279598_))
                   (let ((__tmp283959
                          (let ((__tmp283960
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath279598_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp283960))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp283959
                      _opts279599_))))
                (__tmp283957
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp283955
                 (let ((__tmp283956
                        (let ()
                          (declare (not safe))
                          (cons _srcpath279598_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp283956))))
            (declare (not safe))
            (call-with-parameters
             __tmp283958
             gxc#current-compile-output-dir
             _outdir279601_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?279602_
             gxc#current-compile-gsc-options
             _gsc-options279603_
             gxc#current-compile-keep-scm
             _keep-scm?279604_
             gxc#current-compile-verbose
             _verbosity279605_
             gxc#current-compile-debug
             _debug279606_
             gxc#current-compile-timestamp
             __tmp283957
             gxc#current-compile-context
             __tmp283955
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath279614_)
        (let ((_opts279616_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath279614_ _opts279616_))))
    (define gxc#compile-exe
      (lambda _g283962_
        (let ((_g283961_ (let () (declare (not safe)) (##length _g283962_))))
          (cond ((let () (declare (not safe)) (##fx= _g283961_ 1))
                 (apply (lambda (_srcpath279614_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath279614_)))
                        _g283962_))
                ((let () (declare (not safe)) (##fx= _g283961_ 2))
                 (apply (lambda (_srcpath279618_ _opts279619_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath279618_ _opts279619_)))
                        _g283962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g283962_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx279594_ _opts279595_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts279595_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx279594_
               _opts279595_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx279594_
               _opts279595_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx279477_ _opts279478_)
        (letrec ((_generate-stub279480_
                  (lambda (_builtin-modules279590_)
                    (let ((_mod-main279592_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx279477_ 'main))))
                      (write (let ((__tmp283963
                                    (let ((__tmp283964
                                           (let ((__tmp283965
                                                  (let ((__tmp283966
                                                         (let ((__tmp283968
                                                                (let ((__tmp283969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules279590_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp283969)))
                       (__tmp283967
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp283968 __tmp283967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp283966))))
                                             (declare (not safe))
                                             (cons __tmp283965 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp283964))))
                               (declare (not safe))
                               (cons 'define __tmp283963)))
                      (write (let ((__tmp283970
                                    (let ((__tmp284009
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp283971
                                           (let ((__tmp283972
                                                  (let ((__tmp283973
                                                         (let ((__tmp283997
                                                                (let ((__tmp283998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283999
                                      (let ((__tmp284007
                                             (let ((__tmp284008
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp284008)))
                                            (__tmp284000
                                             (let ((__tmp284001
                                                    (let ((__tmp284002
                                                           (let ((__tmp284003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp284004
                                 (let ((__tmp284005
                                        (let ((__tmp284006
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp284006 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp284005))))
                            (declare (not safe))
                            (cons __tmp284004 '()))))
                     (declare (not safe))
                     (cons _mod-main279592_ __tmp284003))))
              (declare (not safe))
              (cons 'apply __tmp284002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284001 '()))))
                                        (declare (not safe))
                                        (cons __tmp284007 __tmp284000))))
                                 (declare (not safe))
                                 (cons '() __tmp283999))))
                          (declare (not safe))
                          (cons 'lambda __tmp283998)))
                       (__tmp283974
                        (let ((__tmp283975
                               (let ((__tmp283976
                                      (let ((__tmp283977
                                             (let ((__tmp283988
                                                    (let ((__tmp283989
                                                           (let ((__tmp283990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283991
                                 (let ((__tmp283992
                                        (let ((__tmp283993
                                               (let ((__tmp283994
                                                      (let ((__tmp283995
                                                             (let ((__tmp283996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp283996 '()))))
                (declare (not safe))
                (cons 'force-output __tmp283995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283994 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp283993))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp283992))))
                            (declare (not safe))
                            (cons __tmp283991 '()))))
                     (declare (not safe))
                     (cons 'void __tmp283990))))
              (declare (not safe))
              (cons 'with-catch __tmp283989)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283978
                                                    (let ((__tmp283979
                                                           (let ((__tmp283980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283981
                                 (let ((__tmp283982
                                        (let ((__tmp283983
                                               (let ((__tmp283984
                                                      (let ((__tmp283985
                                                             (let ((__tmp283986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283987
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp283987 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp283986))))
                (declare (not safe))
                (cons __tmp283985 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp283984))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp283983))))
                                   (declare (not safe))
                                   (cons __tmp283982 '()))))
                            (declare (not safe))
                            (cons 'void __tmp283981))))
                     (declare (not safe))
                     (cons 'with-catch __tmp283980))))
              (declare (not safe))
              (cons __tmp283979 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283988
                                                     __tmp283978))))
                                        (declare (not safe))
                                        (cons '() __tmp283977))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp283976))))
                          (declare (not safe))
                          (cons __tmp283975 '()))))
                   (declare (not safe))
                   (cons __tmp283997 __tmp283974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp283973))))
                                             (declare (not safe))
                                             (cons __tmp283972 '()))))
                                      (declare (not safe))
                                      (cons __tmp284009 __tmp283971))))
                               (declare (not safe))
                               (cons 'define __tmp283970)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts279481_
                  (lambda (_libgerbil279588_)
                    (call-with-input-file
                     (string-append _libgerbil279588_ '".ldd")
                     read)))
                 (_replace-extension279482_
                  (lambda (_path279585_ _ext279586_)
                    (string-append
                     (path-strip-extension _path279585_)
                     _ext279586_)))
                 (_not-exclude-module?279483_
                  (lambda (_ctx279581_)
                    (let ((_id-str279583_
                           (symbol->string
                            (##structure-ref
                             _ctx279581_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp284011
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str279583_))))
                            (declare (not safe))
                            (not __tmp284011))
                          (let ((__tmp284010
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str279583_))))
                            (declare (not safe))
                            (not __tmp284010))
                          '#f))))
                 (_not-file-empty?279484_
                  (lambda (_path279579_)
                    (let ((__tmp284012
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path279579_))))
                      (declare (not safe))
                      (not __tmp284012))))
                 (_compile-stub279485_
                  (lambda (_output-scm279492_ _output-bin279493_)
                    (let* ((_gerbil-home279495_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir279497_
                            (path-expand '"lib" _gerbil-home279495_))
                           (_gerbil-staticdir279499_
                            (path-expand '"static" _gerbil-libdir279497_))
                           (_gxlink279501_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir279497_))
                           (_tmp279503_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path279507_
                            (lambda (_f279505_)
                              (path-expand
                               (path-strip-directory _f279505_)
                               _tmp279503_)))
                           (_deps279509_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx279477_)))
                           (_deps279511_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?279483_
                                      _deps279509_)))
                           (_src-deps-scm279513_
                            (map gxc#find-static-module-file _deps279511_))
                           (_src-deps-scm279515_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?279484_
                                      _src-deps-scm279513_)))
                           (_src-deps-scm279517_
                            (map path-expand _src-deps-scm279515_))
                           (_deps-scm279519_
                            (map _tmp-path279507_ _src-deps-scm279517_))
                           (_deps-c279525_
                            (map (lambda (_g279520279522_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension279482_
                                      _g279520279522_
                                      '".c")))
                                 _deps-scm279519_))
                           (_deps-o279531_
                            (map (lambda (_g279526279528_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension279482_
                                      _g279526279528_
                                      '".o")))
                                 _deps-scm279519_))
                           (_src-bin-scm279533_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx279477_)))
                           (_src-bin-scm279535_
                            (path-expand _src-bin-scm279533_))
                           (_bin-scm279537_
                            (let ()
                              (declare (not safe))
                              (_tmp-path279507_ _src-bin-scm279535_)))
                           (_bin-c279539_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279482_
                               _bin-scm279537_
                               '".c")))
                           (_bin-o279541_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279482_
                               _bin-scm279537_
                               '".o")))
                           (_output-bin279543_
                            (path-expand _output-bin279493_))
                           (_output-scm279545_
                            (path-expand _output-scm279492_))
                           (_output-c279547_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279482_
                               _output-scm279545_
                               '".c")))
                           (_output-o279549_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279482_
                               _output-scm279545_
                               '".o")))
                           (_output_-c279551_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279482_
                               _output-scm279545_
                               '"_.c")))
                           (_output_-o279553_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279482_
                               _output-scm279545_
                               '"_.o")))
                           (_gsc-link-opts279555_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts279557_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts279559_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir279499_)))
                           (_output-ld-opts279561_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a279563_
                            (path-expand '"libgerbil.a" _gerbil-libdir279497_))
                           (_libgerbil.so279565_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir279497_))
                           (_libgerbil-ld-opts279567_
                            (if (file-exists? _libgerbil.so279565_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts279481_
                                   _libgerbil.so279565_))
                                (if (file-exists? _libgerbil.a279563_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts279481_
                                       _libgerbil.a279563_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a279563_
                                       _libgerbil.so279565_)))))
                           (_rpath279569_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir279497_)))
                           (_builtin-modules279573_
                            (map (lambda (_mod279571_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod279571_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx279477_ _deps279511_)))))
                      (let ((__tmp284013
                             (lambda ()
                               (let ((__tmp284014
                                      (path-directory _output-bin279543_)))
                                 (declare (not safe))
                                 (create-directory* __tmp284014)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp284013))
                      (let ((__tmp284015
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub279480_
                                  _builtin-modules279573_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm279545_
                         __tmp284015))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp284016
                                   (lambda () (create-directory _tmp279503_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp284016))
                            (for-each
                             copy-file
                             _src-deps-scm279517_
                             _deps-scm279519_)
                            (copy-file _src-bin-scm279535_ _bin-scm279537_)
                            (let ((__tmp284024
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284017
                                   (let ((__tmp284018
                                          (let ((__tmp284019
                                                 (let ((__tmp284020
                                                        (let ((__tmp284021
                                                               (let ((__tmp284022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284023
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm279545_ '()))))
                                (declare (not safe))
                                (cons _bin-scm279537_ __tmp284023))))
                         (declare (not safe))
                         (foldr1 cons __tmp284022 _deps-scm279519_))))
                  (declare (not safe))
                  (foldr1 cons __tmp284021 _gsc-link-opts279555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink279501_
                                                         __tmp284020))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp284019))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp284018))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284024
                               __tmp284017))
                            (let ((__tmp284032
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284025
                                   (let ((__tmp284026
                                          (let ((__tmp284027
                                                 (let ((__tmp284028
                                                        (let ((__tmp284029
                                                               (let ((__tmp284030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284031
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c279551_ '()))))
                                (declare (not safe))
                                (cons _output-c279547_ __tmp284031))))
                         (declare (not safe))
                         (cons _bin-c279539_ __tmp284030))))
                  (declare (not safe))
                  (foldr1 cons __tmp284029 _deps-c279525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284028
                                                           _gsc-static-opts279559_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp284027
                                                    _gsc-cc-opts279557_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp284026))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284032
                               __tmp284025))
                            (let ((__tmp284045
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp284033
                                   (let ((__tmp284034
                                          (let ((__tmp284035
                                                 (let ((__tmp284036
                                                        (let ((__tmp284037
                                                               (let ((__tmp284038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284039
                                     (let ((__tmp284040
                                            (let ((__tmp284041
                                                   (let ((__tmp284042
                                                          (let ((__tmp284043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp284044
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts279567_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp284044))))
                    (declare (not safe))
                    (cons _gerbil-libdir279497_ __tmp284043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp284042))))
                                              (declare (not safe))
                                              (cons _rpath279569_
                                                    __tmp284041))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp284040
                                               _output-ld-opts279561_))))
                                (declare (not safe))
                                (cons _output_-o279553_ __tmp284039))))
                         (declare (not safe))
                         (cons _output-o279549_ __tmp284038))))
                  (declare (not safe))
                  (cons _bin-o279541_ __tmp284037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284036
                                                           _deps-o279531_))))
                                            (declare (not safe))
                                            (cons _output-bin279543_
                                                  __tmp284035))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp284034))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284045
                               __tmp284033))
                            (for-each
                             delete-file
                             (let ((__tmp284046
                                    (let ((__tmp284047
                                           (let ((__tmp284048
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o279553_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o279549_
                                                   __tmp284048))))
                                      (declare (not safe))
                                      (cons _output_-c279551_ __tmp284047))))
                               (declare (not safe))
                               (cons _output-c279547_ __tmp284046)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp279503_)))
                          '#!void)))))
          (let* ((_output-bin279487_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx279477_ _opts279478_)))
                 (_output-scm279489_
                  (string-append _output-bin279487_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub279485_ _output-scm279489_ _output-bin279487_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm279489_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx279302_ _opts279303_)
        (letrec ((_reset-declare279305_
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
                 (_generate-stub279306_
                  (lambda (_deps279468_)
                    (let ((_mod-main279470_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx279302_ 'main)))
                          (_reset-decl279471_
                           (let ()
                             (declare (not safe))
                             (_reset-declare279305_)))
                          (_user-decl279472_
                           (let ()
                             (declare (not safe))
                             (_user-declare279307_))))
                      (for-each
                       (lambda (_dep279474_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl279471_)
                         (newline)
                         (if _user-decl279472_
                             (begin (write _user-decl279472_) (newline))
                             '#!void)
                         (write (let ((__tmp284049
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep279474_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp284049)))
                         (newline))
                       _deps279468_)
                      (write (let ((__tmp284050
                                    (let ((__tmp284063
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp284051
                                           (let ((__tmp284059
                                                  (let ((__tmp284060
                                                         (let ((__tmp284061
                                                                (let ((__tmp284062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp284062))))
                   (declare (not safe))
                   (cons __tmp284061 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp284060)))
                                                 (__tmp284052
                                                  (let ((__tmp284053
                                                         (let ((__tmp284054
                                                                (let ((__tmp284055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284056
                                      (let ((__tmp284057
                                             (let ((__tmp284058
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp284058 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp284057))))
                                 (declare (not safe))
                                 (cons __tmp284056 '()))))
                          (declare (not safe))
                          (cons _mod-main279470_ __tmp284055))))
                   (declare (not safe))
                   (cons 'apply __tmp284054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284053 '()))))
                                             (declare (not safe))
                                             (cons __tmp284059 __tmp284052))))
                                      (declare (not safe))
                                      (cons __tmp284063 __tmp284051))))
                               (declare (not safe))
                               (cons 'define __tmp284050)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare279307_
                  (lambda ()
                    (let* ((_gsc-opts279373_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts279303_)))
                           (_gsc-prelude279375_
                            (if _gsc-opts279373_
                                (member '"-prelude" _gsc-opts279373_)
                                '#f))
                           (_gsc-prelude279377_
                            (if _gsc-prelude279375_
                                (read (open-input-string
                                       (cadr _gsc-prelude279375_)))
                                '#f)))
                      (let _lp279380_ ((_rest279382_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude279377_ '())))
                                       (_user-decls279383_ '()))
                        (let* ((_rest279384279392_ _rest279382_)
                               (_else279386279400_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls279383_))
                                      '#f
                                      (let ((__tmp284064
                                             (reverse _user-decls279383_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp284064)))))
                               (_K279388279456_
                                (lambda (_rest279403_ _expr279404_)
                                  (let* ((_expr279405279417_ _expr279404_)
                                         (_else279408279425_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp279380_
                                               _rest279403_
                                               _user-decls279383_)))))
                                    (let ((_K279413279446_
                                           (lambda (_decls279444_)
                                             (let ((__tmp284065
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls279383_
                                                              _decls279444_))))
                                               (declare (not safe))
                                               (_lp279380_
                                                _rest279403_
                                                __tmp284065))))
                                          (_K279410279431_
                                           (lambda (_exprs279429_)
                                             (let ((__tmp284066
                                                    (append _exprs279429_
                                                            _rest279403_)))
                                               (declare (not safe))
                                               (_lp279380_
                                                __tmp284066
                                                _user-decls279383_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr279405279417_))
                                          (let ((_tl279415279451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr279405279417_)))
                                                (_hd279414279449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr279405279417_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd279414279449_
                                                         'declare))
                                                (let ((_decls279454_
                                                       _tl279415279451_))
                                                  (declare (not safe))
                                                  (_K279413279446_
                                                   _decls279454_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd279414279449_
                                                             'begin))
                                                    (let ((_exprs279439_
                                                           _tl279415279451_))
                                                      (declare (not safe))
                                                      (_K279410279431_
                                                       _exprs279439_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else279408279425_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else279408279425_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest279384279392_))
                              (let ((_hd279389279459_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest279384279392_)))
                                    (_tl279390279461_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest279384279392_))))
                                (let* ((_expr279464_ _hd279389279459_)
                                       (_rest279466_ _tl279390279461_))
                                  (declare (not safe))
                                  (_K279388279456_ _rest279466_ _expr279464_)))
                              (let ()
                                (declare (not safe))
                                (_else279386279400_))))))))
                 (_compile-stub279308_
                  (lambda (_output-scm279315_ _output-bin279316_)
                    (let* ((_gerbil-home279318_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir279320_
                            (path-expand '"lib" _gerbil-home279318_))
                           (_runtime279322_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp279324_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home279318_))
                           (_include-gambit-sharp279326_
                            (string-append
                             '"(include \""
                             _gambit-sharp279324_
                             '"\")"))
                           (_bin-scm279328_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx279302_)))
                           (_deps279330_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx279302_)))
                           (_deps279332_
                            (map gxc#find-static-module-file _deps279330_))
                           (_deps279337_
                            (let ((__tmp284067
                                   (lambda (_$obj279334_)
                                     (let ((__tmp284068
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj279334_))))
                                       (declare (not safe))
                                       (not __tmp284068)))))
                              (declare (not safe))
                              (filter __tmp284067 _deps279332_)))
                           (_deps279341_
                            (let ((__tmp284069
                                   (lambda (_f279339_)
                                     (let ((__tmp284070
                                            (member _f279339_
                                                    _runtime279322_)))
                                       (declare (not safe))
                                       (not __tmp284070)))))
                              (declare (not safe))
                              (filter __tmp284069 _deps279337_)))
                           (_output-base279343_
                            (string-append
                             (path-strip-extension _output-scm279315_)))
                           (_output-c279345_
                            (string-append _output-base279343_ '".c"))
                           (_output-o279347_
                            (string-append _output-base279343_ '".o"))
                           (_output-c_279349_
                            (string-append _output-base279343_ '"_.c"))
                           (_output-o_279351_
                            (string-append _output-base279343_ '"_.o"))
                           (_gsc-link-opts279353_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts279355_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts279357_
                            (let ((__tmp284071
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir279320_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp284071)))
                           (_output-ld-opts279359_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros279361_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp284073
                                       (let ((__tmp284074
                                              (let ((__tmp284075
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp279326_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp284075))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp284074))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp284073))
                                (let ((__tmp284072
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp279326_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp284072))))
                           (_gsc-link-opts279363_
                            (append _gsc-link-opts279353_
                                    _gsc-gx-macros279361_))
                           (_rpath279365_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir279320_)))
                           (_default-ld-options279367_
                            (let ((__tmp284076
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp284076))))
                      (let ((__tmp284077
                             (lambda ()
                               (let ((__tmp284078
                                      (path-directory _output-bin279316_)))
                                 (declare (not safe))
                                 (create-directory* __tmp284078)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp284077))
                      (let ((__tmp284079
                             (lambda ()
                               (let ((__tmp284080
                                      (let ((__tmp284081
                                             (let ((__tmp284082
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm279328_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp284082
                                                       _deps279341_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp284081
                                                _runtime279322_))))
                                 (declare (not safe))
                                 (_generate-stub279306_ __tmp284080)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm279315_
                         __tmp284079))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp284088
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284083
                                   (let ((__tmp284084
                                          (let ((__tmp284085
                                                 (let ((__tmp284086
                                                        (let ((__tmp284087
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm279315_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp284087 _gsc-link-opts279363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_279349_
                                                         __tmp284086))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp284085))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp284084))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284088
                               __tmp284083))
                            (let ((__tmp284094
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284089
                                   (let ((__tmp284090
                                          (let ((__tmp284091
                                                 (let ((__tmp284092
                                                        (let ((__tmp284093
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_279349_ '()))))
                  (declare (not safe))
                  (cons _output-c279345_ __tmp284093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284092
                                                           _gsc-static-opts279357_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp284091
                                                    _gsc-cc-opts279355_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp284090))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284094
                               __tmp284089))
                            (let ((__tmp284104
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp284095
                                   (let ((__tmp284096
                                          (let ((__tmp284097
                                                 (let ((__tmp284098
                                                        (let ((__tmp284099
                                                               (let ((__tmp284100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284101
                                     (let ((__tmp284102
                                            (let ((__tmp284103
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options279367_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir279320_
                                                    __tmp284103))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp284102))))
                                (declare (not safe))
                                (cons _rpath279365_ __tmp284101))))
                         (declare (not safe))
                         (foldr1 cons __tmp284100 _output-ld-opts279359_))))
                  (declare (not safe))
                  (cons _output-o_279351_ __tmp284099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o279347_
                                                         __tmp284098))))
                                            (declare (not safe))
                                            (cons _output-bin279316_
                                                  __tmp284097))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp284096))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284104
                               __tmp284095)))
                          '#!void)))))
          (let* ((_output-bin279310_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx279302_ _opts279303_)))
                 (_output-scm279312_
                  (string-append _output-bin279310_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub279308_ _output-scm279312_ _output-bin279310_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm279312_))))))
    (define gxc#find-export-binding
      (lambda (_ctx279252_ _id279253_)
        (let ((_$e279299_
               (let ((__tmp284106
                      (lambda (_e279254279256_)
                        (let* ((_g279258279268_ _e279254279256_)
                               (_else279260279276_ (lambda () '#f))
                               (_K279262279280_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g279258279268_
                                 'gx#module-export::t))
                              (let* ((_e279263279283_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279258279268_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e279264279286_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279258279268_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e279265279289_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279258279268_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e279265279289_ '0))
                                    (let ((_e279266279292_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g279258279268_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g279294279296_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g279294279296_
                                                    _id279253_)))
                                           _e279266279292_)
                                          (let ()
                                            (declare (not safe))
                                            (_K279262279280_))
                                          (let ()
                                            (declare (not safe))
                                            (_else279260279276_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else279260279276_))))
                              (let ()
                                (declare (not safe))
                                (_else279260279276_))))))
                     (__tmp284105
                      (##structure-ref
                       _ctx279252_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp284106 __tmp284105))))
          (if _$e279299_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e279299_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx279244_ _id279245_)
        (let ((_$e279247_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx279244_ _id279245_))))
          (if _$e279247_
              ((lambda (_bind279250_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind279250_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id279245_)))
                 (##structure-ref _bind279250_ '1 gx#binding::t '#f))
               _$e279247_)
              (let ((__tmp284107
                     (##structure-ref
                      _ctx279244_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp284107
                 _id279245_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx279131_)
        (letrec* ((_ht279133_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template279134_
                   (lambda (_in279196_ _phi279197_)
                     (let ((_iphi279199_
                            (fx+ _phi279197_
                                 (##direct-structure-ref
                                  _in279196_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports279200_
                            (##structure-ref
                             (##direct-structure-ref
                              _in279196_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp279202_ ((_rest279204_ _imports279200_)
                                        (_r279205_ '()))
                         (let* ((_rest279206279214_ _rest279204_)
                                (_else279208279222_ (lambda () _r279205_))
                                (_K279210279232_
                                 (lambda (_rest279225_ _in279226_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in279226_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi279199_))
                                           (let ((__tmp284114
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in279226_
                                                          _r279205_))))
                                             (declare (not safe))
                                             (_lp279202_
                                              _rest279225_
                                              __tmp284114))
                                           (let ()
                                             (declare (not safe))
                                             (_lp279202_
                                              _rest279225_
                                              _r279205_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in279226_
                                              'gx#module-import::t))
                                           (let ((_iphi279228_
                                                  (fx+ _phi279197_
                                                       (##direct-structure-ref
                                                        _in279226_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi279228_))
                                                 (let ((__tmp284112
                                                        (let ((__tmp284113
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in279226_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp284113 _r279205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp279202_
                                                    _rest279225_
                                                    __tmp284112))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp279202_
                                                    _rest279225_
                                                    _r279205_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in279226_
                                                  'gx#import-set::t))
                                               (let ((_xphi279230_
                                                      (fx+ _iphi279199_
                                                           (##direct-structure-ref
                                                            _in279226_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi279230_))
                                                     (let ((__tmp284110
                                                            (let ((__tmp284111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in279226_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp284111 _r279205_))))
               (declare (not safe))
               (_lp279202_ _rest279225_ __tmp284110))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi279230_)
                                                         (let ((__tmp284108
                                                                (let ((__tmp284109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template279134_
                                  _in279226_
                                  _iphi279199_))))
                          (declare (not safe))
                          (foldl1 cons _r279205_ __tmp284109))))
                   (declare (not safe))
                   (_lp279202_ _rest279225_ __tmp284108))
                 (let ()
                   (declare (not safe))
                   (_lp279202_ _rest279225_ _r279205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp279202_
                                                  _rest279225_
                                                  _r279205_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest279206279214_))
                               (let ((_hd279211279235_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest279206279214_)))
                                     (_tl279212279237_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest279206279214_))))
                                 (let* ((_in279240_ _hd279211279235_)
                                        (_rest279242_ _tl279212279237_))
                                   (declare (not safe))
                                   (_K279210279232_ _rest279242_ _in279240_)))
                               (let ()
                                 (declare (not safe))
                                 (_else279208279222_))))))))
                  (_find-deps279135_
                   (lambda (_rest279142_ _deps279143_)
                     (let* ((_rest279144279152_ _rest279142_)
                            (_else279146279160_ (lambda () _deps279143_))
                            (_K279148279184_
                             (lambda (_rest279163_ _hd279164_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd279164_
                                      'gx#module-context::t))
                                   (let ((_id279166_
                                          (##structure-ref
                                           _hd279164_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports279167_
                                          (##structure-ref
                                           _hd279164_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht279133_
                                            _id279166_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps279135_
                                            _rest279163_
                                            _deps279143_))
                                         (let ((_$e279169_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd279164_))))
                                           (if _$e279169_
                                               ((lambda (_pre279172_)
                                                  (let ((_xdeps279174_
                                                         (let ((__tmp284127
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre279172_ _imports279167_))))
                   (declare (not safe))
                   (_find-deps279135_ __tmp284127 _deps279143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht279133_
                                                       _id279166_
                                                       _hd279164_))
                                                    (let ((__tmp284128
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd279164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps279174_))))
              (declare (not safe))
              (_find-deps279135_ _rest279163_ __tmp284128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e279169_)
                                               (let ((_xdeps279176_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps279135_
                                                         _imports279167_
                                                         _deps279143_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht279133_
                                                    _id279166_
                                                    _hd279164_))
                                                 (let ((__tmp284126
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd279164_
                                                                _xdeps279176_))))
                                                   (declare (not safe))
                                                   (_find-deps279135_
                                                    _rest279163_
                                                    __tmp284126)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd279164_
                                          'gx#prelude-context::t))
                                       (let ((_id279178_
                                              (##structure-ref
                                               _hd279164_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht279133_
                                                _id279178_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps279135_
                                                _rest279163_
                                                _deps279143_))
                                             (let ((_xdeps279180_
                                                    (let ((__tmp284124
                                                           (##structure-ref
                                                            _hd279164_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps279135_
                                                       __tmp284124
                                                       _deps279143_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht279133_
                                                      _id279178_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps279135_
                                                      _rest279163_
                                                      _xdeps279180_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht279133_
                                                        _id279178_
                                                        _hd279164_))
                                                     (let ((__tmp284125
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd279164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps279180_))))
               (declare (not safe))
               (_find-deps279135_ _rest279163_ __tmp284125)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd279164_
                                              'gx#module-import::t))
                                           (if (let ((__tmp284123
                                                      (##direct-structure-ref
                                                       _hd279164_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp284123))
                                               (let ((__tmp284121
                                                      (let ((__tmp284122
                                                             (##direct-structure-ref
                                                              _hd279164_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp284122
                                                              _rest279163_))))
                                                 (declare (not safe))
                                                 (_find-deps279135_
                                                  __tmp284121
                                                  _deps279143_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps279135_
                                                  _rest279163_
                                                  _deps279143_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd279164_
                                                  'gx#module-export::t))
                                               (let ((__tmp284119
                                                      (let ((__tmp284120
                                                             (##direct-structure-ref
                                                              _hd279164_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp284120
                                                              _rest279163_))))
                                                 (declare (not safe))
                                                 (_find-deps279135_
                                                  __tmp284119
                                                  _deps279143_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd279164_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp284118
                                                              (##direct-structure-ref
                                                               _hd279164_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp284118))
                                                       (let ((__tmp284116
                                                              (let ((__tmp284117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd279164_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp284117 _rest279163_))))
                 (declare (not safe))
                 (_find-deps279135_ __tmp284116 _deps279143_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd279164_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps279182_
                           (let ()
                             (declare (not safe))
                             (_import-set-template279134_ _hd279164_ '0)))
                          (__tmp284115
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest279163_ _xdeps279182_))))
                     (declare (not safe))
                     (_find-deps279135_ __tmp284115 _deps279143_))
                   (let ()
                     (declare (not safe))
                     (_find-deps279135_ _rest279163_ _deps279143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd279164_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest279144279152_))
                           (let ((_hd279149279187_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest279144279152_)))
                                 (_tl279150279189_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest279144279152_))))
                             (let* ((_hd279192_ _hd279149279187_)
                                    (_rest279194_ _tl279150279189_))
                               (declare (not safe))
                               (_K279148279184_ _rest279194_ _hd279192_)))
                           (let ()
                             (declare (not safe))
                             (_else279146279160_)))))))
          (reverse (let ((__tmp284129
                          (let ((__tmp284130
                                 (let ((_$e279137_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx279131_))))
                                   (if _$e279137_
                                       ((lambda (_pre279140_)
                                          (let ((__tmp284131
                                                 (##structure-ref
                                                  _ctx279131_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre279140_ __tmp284131)))
                                        _$e279137_)
                                       (##structure-ref
                                        _ctx279131_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps279135_ __tmp284130 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp284129))))))
    (define gxc#find-static-module-file
      (lambda (_ctx279062_)
        (let* ((_context-id279064_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx279062_
                       'gx#module-context::t))
                    (##structure-ref _ctx279062_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx279062_)))
               (_scm279066_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id279064_))
                 '".scm"))
               (_dirs279068_ (gx#current-expander-module-library-path))
               (_dirs279074_
                (let ((_user-libpath279070_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath279070_
                      (let ((_user-libpath279072_
                             (path-expand '"lib" _user-libpath279070_)))
                        (if (member _user-libpath279072_ _dirs279068_)
                            _dirs279068_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath279072_ _dirs279068_))))
                      _dirs279068_)))
               (_dirs279083_
                (let ((_$e279076_ (gxc#current-compile-output-dir)))
                  (if _$e279076_
                      ((lambda (_g279078279080_)
                         (let ()
                           (declare (not safe))
                           (cons _g279078279080_ _dirs279074_)))
                       _$e279076_)
                      _dirs279074_)))
               (_dirs279089_
                (map (lambda (_g279084279086_)
                       (path-expand '"static" _g279084279086_))
                     _dirs279083_)))
          (let _lp279092_ ((_rest279094_ _dirs279089_))
            (let* ((_rest279095279103_ _rest279094_)
                   (_else279097279111_
                    (lambda ()
                      (let ((__tmp284132
                             (##structure-ref
                              _ctx279062_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp284132
                         _scm279066_))))
                   (_K279099279119_
                    (lambda (_rest279114_ _dir279115_)
                      (let ((_path279117_
                             (path-expand _scm279066_ _dir279115_)))
                        (if (file-exists? _path279117_)
                            _path279117_
                            (let ()
                              (declare (not safe))
                              (_lp279092_ _rest279114_)))))))
              (if (let () (declare (not safe)) (##pair? _rest279095279103_))
                  (let ((_hd279100279122_
                         (let ()
                           (declare (not safe))
                           (##car _rest279095279103_)))
                        (_tl279101279124_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest279095279103_))))
                    (let* ((_dir279127_ _hd279100279122_)
                           (_rest279129_ _tl279101279124_))
                      (declare (not safe))
                      (_K279099279119_ _rest279129_ _dir279127_)))
                  (let () (declare (not safe)) (_else279097279111_))))))))
    (define gxc#file-empty?
      (lambda (_path279060_)
        (let ((__tmp284133 (file-info-size (file-info _path279060_ '#t))))
          (declare (not safe))
          (zero? __tmp284133))))
    (define gxc#compile-top-module
      (lambda (_ctx279049_)
        (let ((__tmp284137
               (lambda ()
                 (let ((__tmp284138
                        (##structure-ref
                         _ctx279049_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp284138))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp284139
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx279049_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp284139))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx279049_))
                 (if (let ((__tmp284142
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx279049_))))
                       (declare (not safe))
                       (null? __tmp284142))
                     (let* ((_thr1279054_
                             (let ((__tmp284140
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx279049_)))))
                               (declare (not safe))
                               (spawn __tmp284140)))
                            (_thr2279057_
                             (let ((__tmp284141
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx279049_)))))
                               (declare (not safe))
                               (spawn __tmp284141))))
                       (let () (declare (not safe)) (gxc#join! _thr1279054_))
                       (let () (declare (not safe)) (gxc#join! _thr2279057_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx279049_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx279049_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx279049_))
                     '#!void)))
              (__tmp284136
               (let ((__obj283941 (make-object* gxc#symbol-table::t '3)))
                 (gxc#symbol-table:::init! __obj283941)
                 __obj283941))
              (__tmp284135
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp284134 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp284137
           gx#current-expander-context
           _ctx279049_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp284136
           gxc#current-compile-runtime-sections
           __tmp284135
           gxc#current-compile-runtime-names
           __tmp284134))))
    (define gxc#collect-bindings
      (lambda (_ctx279047_)
        (let ((__tmp284143
               (##structure-ref _ctx279047_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp284143))))
    (define gxc#compile-runtime-code
      (lambda (_ctx278993_)
        (letrec ((_compile1278995_
                  (lambda (_ctx279036_)
                    (let* ((_code279038_
                            (##structure-ref
                             _ctx279036_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt279042_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code279038_))
                                (let ((_idstr279040_
                                       (let ((__tmp284144
                                              (##structure-ref
                                               _ctx279036_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp284144))))
                                  (string-append _idstr279040_ '"__0"))
                                '#f)))
                      (if _rt279042_
                          (begin
                            (let ((__tmp284145
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp284145 _ctx279036_ _rt279042_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code278997_
                               _ctx279036_
                               _code279038_)))
                          (let ((_path279045_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx279036_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path279045_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code278998_
                         _ctx279036_
                         _code279038_
                         _rt279042_)))))
                 (_context-timestamp278996_
                  (lambda (_ctx279034_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx279034_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code278997_
                  (lambda (_ctx279016_ _code279017_)
                    (let* ((_lifts279019_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code279022_
                            (let ((__tmp284148
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code279017_))))
                                  (__tmp284147
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp284146
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp284148
                               gx#current-expander-context
                               _ctx279016_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts279019_
                               gxc#current-compile-marks
                               __tmp284147
                               gxc#current-compile-identifiers
                               __tmp284146)))
                           (_runtime-code279024_
                            (if (let ((__tmp284152 (unbox _lifts279019_)))
                                  (declare (not safe))
                                  (null? __tmp284152))
                                _runtime-code279022_
                                (let ((__tmp284149
                                       (let ((__tmp284151
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code279022_
                                                      '())))
                                             (__tmp284150
                                              (reverse (unbox _lifts279019_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp284151
                                                 __tmp284150))))
                                  (declare (not safe))
                                  (cons 'begin __tmp284149))))
                           (_runtime-code279026_
                            (let ((__tmp284153
                                   (let ((__tmp284155
                                          (let ((__tmp284156
                                                 (let ((__tmp284159
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp278996_
                                                           _ctx279016_)))
                                                       (__tmp284157
                                                        (let ((__tmp284158
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp284158
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp284159
                                                         __tmp284157))))
                                            (declare (not safe))
                                            (cons 'define __tmp284156)))
                                         (__tmp284154
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code279024_ '()))))
                                     (declare (not safe))
                                     (cons __tmp284155 __tmp284154))))
                              (declare (not safe))
                              (cons 'begin __tmp284153)))
                           (_scm0279028_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx279016_
                               '0
                               '".scm"))))
                      (let ((_scms279031_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx279016_))))
                        (let ((__tmp284160
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0279028_
                                    _runtime-code279026_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp284160
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms279031_)
                            (delete-file _scms279031_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0279028_
                           '" => "
                           _scms279031_))
                        (copy-file _scm0279028_ _scms279031_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0279028_))))))
                 (_generate-loader-code278998_
                  (lambda (_ctx279005_ _code279006_ _rt279007_)
                    (let* ((_loader-code279010_
                            (let ((__tmp284161
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code279006_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp284161
                               gx#current-expander-context
                               _ctx279005_)))
                           (_loader-code279012_
                            (if _rt279007_
                                (let ((__tmp284162
                                       (let ((__tmp284163
                                              (let ((__tmp284164
                                                     (let ((__tmp284165
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt279007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp284165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284164 '()))))
                                         (declare (not safe))
                                         (cons _loader-code279010_
                                               __tmp284163))))
                                  (declare (not safe))
                                  (cons 'begin __tmp284162))
                                _loader-code279010_)))
                      (let ((__tmp284166
                             (lambda ()
                               (let ((__tmp284167
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx279005_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp284167
                                  _loader-code279012_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp284166
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules279000_
                 (let ((__tmp284168
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx278993_))))
                   (declare (not safe))
                   (cons _ctx278993_ __tmp284168))))
            (for-each
             (lambda (_ctx279002_)
               (let ((__tmp284169
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1278995_ _ctx279002_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp284169
                  gxc#current-compile-decls
                  '())))
             _all-modules279000_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx278890_)
        (letrec ((_compile-ssi278892_
                  (lambda (_code278963_)
                    (let* ((_path278965_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx278890_
                               '#f
                               '".ssi")))
                           (_prelude278976_
                            (let* ((_super278967_
                                    (##structure-ref
                                     _ctx278890_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e278969_
                                    (##structure-ref
                                     _super278967_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e278969_
                                  ((lambda (_g278971278973_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g278971278973_)))
                                   _$e278969_)
                                  ':<root>)))
                           (_ns278978_
                            (##structure-ref
                             _ctx278890_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr278980_
                            (symbol->string
                             (##structure-ref
                              _ctx278890_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg278987_
                            (let ((_$e278982_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr278980_ '#\/))))
                              (if _$e278982_
                                  ((lambda (_x278985_)
                                     (string->symbol
                                      (substring _idstr278980_ '0 _x278985_)))
                                   _$e278982_)
                                  '#f)))
                           (_rt278989_
                            (let ((__tmp284170
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp284170 _ctx278890_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path278965_))
                      (let ((__tmp284171
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude278976_))
                               (if _pkg278987_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg278987_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns278978_))
                               (newline)
                               (pretty-print _code278963_)
                               (if _rt278989_
                                   (pretty-print
                                    (let ((__tmp284172
                                           (let ((__tmp284176
                                                  (let ((__tmp284177
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp284177)))
                                                 (__tmp284173
                                                  (let ((__tmp284174
                                                         (let ((__tmp284175
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt278989_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp284175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284174 '()))))
                                             (declare (not safe))
                                             (cons __tmp284176 __tmp284173))))
                                      (declare (not safe))
                                      (cons '%#call __tmp284172)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path278965_
                         __tmp284171)))))
                 (_compile-phi278893_
                  (lambda (_part278903_)
                    (let* ((_part278904278917_ _part278903_)
                           (_E278906278921_
                            (lambda ()
                              (error '"No clause matching"
                                     _part278904278917_)))
                           (_K278907278932_
                            (lambda (_code278924_
                                     _n278925_
                                     _phi278926_
                                     _phi-ctx278927_)
                              (let* ((_code278930_
                                      (let ((__tmp284178
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code278924_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp284178
                                         gx#current-expander-context
                                         _phi-ctx278927_
                                         gx#current-expander-phi
                                         _phi278926_)))
                                     (__tmp284179
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx278890_
                                         _n278925_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp284179
                                 _code278930_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part278904278917_))
                          (let ((_hd278908278935_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part278904278917_)))
                                (_tl278909278937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part278904278917_))))
                            (let ((_phi-ctx278940_ _hd278908278935_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl278909278937_))
                                  (let ((_hd278910278942_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl278909278937_)))
                                        (_tl278911278944_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl278909278937_))))
                                    (let ((_phi278947_ _hd278910278942_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl278911278944_))
                                          (let ((_hd278912278949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl278911278944_)))
                                                (_tl278913278951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl278911278944_))))
                                            (let ((_n278954_ _hd278912278949_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl278913278951_))
                                                  (let ((_hd278914278956_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl278913278951_)))
                                                        (_tl278915278958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl278913278951_))))
                                                    (let ((_code278961_
                                                           _hd278914278956_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl278915278958_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K278907278932_
                                                             _code278961_
                                                             _n278954_
                                                             _phi278947_
                                                             _phi-ctx278940_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E278906278921_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E278906278921_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E278906278921_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E278906278921_)))))
                          (let () (declare (not safe)) (_E278906278921_)))))))
          (let ((_g284180_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx278890_))))
            (begin
              (let ((_g284181_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g284180_)
                           (##vector-length _g284180_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g284181_ 2)))
                    (error "Context expects 2 values" _g284181_)))
              (let ((_ssi-code278895_
                     (let () (declare (not safe)) (##vector-ref _g284180_ 0)))
                    (_phi-code278896_
                     (let () (declare (not safe)) (##vector-ref _g284180_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi278892_ _ssi-code278895_))
                  (let ((_threads278901_
                         (map (lambda (_code278898_)
                                (let ((__tmp284182
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi278893_
                                            _code278898_)))))
                                  (declare (not safe))
                                  (spawn __tmp284182)))
                              _phi-code278896_)))
                    (for-each gxc#join! _threads278901_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx278873_)
        (let* ((_path278875_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx278873_ '#f '".ssxi.ss")))
               (_code278877_
                (let ((__tmp284183
                       (##structure-ref
                        _ctx278873_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp284183)))
               (_idstr278879_
                (symbol->string
                 (##structure-ref _ctx278873_ '1 gx#expander-context::t '#f)))
               (_pkg278886_
                (let ((_$e278881_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr278879_ '#\/))))
                  (if _$e278881_
                      ((lambda (_x278884_)
                         (string->symbol
                          (substring _idstr278879_ '0 _x278884_)))
                       _$e278881_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path278875_))
          (let ((__tmp284184
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg278886_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg278886_))
                       '#!void)
                   (newline)
                   (pretty-print _code278877_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path278875_ __tmp284184)))))
    (define gxc#generate-meta-code
      (lambda (_ctx278866_)
        (let* ((_state278868_
                (let ((__obj283942 (make-object* gxc#meta-state::t '5)))
                  (gxc#meta-state:::init! __obj283942 _ctx278866_)
                  __obj283942))
               (_ssi-code278870_
                (let ((__tmp284185
                       (##structure-ref
                        _ctx278866_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp284185 _state278868_))))
          (values _ssi-code278870_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state278868_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx278859_)
        (let ((_lifts278861_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp284188
                 (lambda ()
                   (let ((_code278864_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx278859_))))
                     (if (let ((__tmp284192 (unbox _lifts278861_)))
                           (declare (not safe))
                           (null? __tmp284192))
                         _code278864_
                         (let ((__tmp284189
                                (let ((__tmp284191
                                       (let ()
                                         (declare (not safe))
                                         (cons _code278864_ '())))
                                      (__tmp284190
                                       (reverse (unbox _lifts278861_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp284191 __tmp284190))))
                           (declare (not safe))
                           (cons 'begin __tmp284189))))))
                (__tmp284187
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp284186
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp284188
             gxc#current-compile-lift
             _lifts278861_
             gxc#current-compile-marks
             __tmp284187
             gxc#current-compile-identifiers
             __tmp284186)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx278855_)
        (let ((_modules278857_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp284193
                 (##structure-ref _ctx278855_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp284193 _modules278857_))
          (reverse (unbox _modules278857_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path278838_ _code278839_ _phi?278840_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path278838_))
        (let ((__tmp284194
               (lambda ()
                 (pretty-print
                  (let ((__tmp284195
                         (let ((__tmp284202
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp284196
                                (let ((__tmp284201
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp284197
                                       (let ((__tmp284200
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp284198
                                              (let ((__tmp284199
                                                     (if _phi?278840_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp284199))))
                                         (declare (not safe))
                                         (cons __tmp284200 __tmp284198))))
                                  (declare (not safe))
                                  (cons __tmp284201 __tmp284197))))
                           (declare (not safe))
                           (cons __tmp284202 __tmp284196))))
                    (declare (not safe))
                    (cons 'declare __tmp284195)))
                 (pretty-print _code278839_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path278838_ __tmp284194))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path278838_ _phi?278840_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path278838_))))
    (define gxc#compile-scm-file__0
      (lambda (_path278846_ _code278847_)
        (let ((_phi?278849_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path278846_ _code278847_ _phi?278849_))))
    (define gxc#compile-scm-file
      (lambda _g284204_
        (let ((_g284203_ (let () (declare (not safe)) (##length _g284204_))))
          (cond ((let () (declare (not safe)) (##fx= _g284203_ 2))
                 (apply (lambda (_path278846_ _code278847_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path278846_
                             _code278847_)))
                        _g284204_))
                ((let () (declare (not safe)) (##fx= _g284203_ 3))
                 (apply (lambda (_path278851_ _code278852_ _phi?278853_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path278851_
                             _code278852_
                             _phi?278853_)))
                        _g284204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g284204_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?278739_)
        (let _lp278741_ ((_rest278743_ (gxc#current-compile-gsc-options))
                         (_opts278744_ '()))
          (let* ((_rest278745278765_ _rest278743_)
                 (_else278749278773_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?278739_))
                             (gxc#current-compile-debug))
                        (let ((__tmp284205
                               (let ((__tmp284206 (reverse _opts278744_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp284206))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp284205))
                        (reverse _opts278744_)))))
            (let ((_K278759278816_
                   (lambda (_rest278814_)
                     (let ()
                       (declare (not safe))
                       (_lp278741_ _rest278814_ _opts278744_))))
                  (_K278754278798_
                   (lambda (_rest278796_)
                     (let ()
                       (declare (not safe))
                       (_lp278741_ _rest278796_ _opts278744_))))
                  (_K278751278780_
                   (lambda (_rest278777_ _opt278778_)
                     (let ((__tmp284207
                            (let ()
                              (declare (not safe))
                              (cons _opt278778_ _opts278744_))))
                       (declare (not safe))
                       (_lp278741_ _rest278777_ __tmp284207)))))
              (if (let () (declare (not safe)) (##pair? _rest278745278765_))
                  (let ((_tl278761278821_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278745278765_)))
                        (_hd278760278819_
                         (let ()
                           (declare (not safe))
                           (##car _rest278745278765_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278760278819_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278761278821_))
                            (let* ((_tl278763278824_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl278761278821_)))
                                   (_rest278827_ _tl278763278824_))
                              (declare (not safe))
                              (_K278759278816_ _rest278827_))
                            (let ((_opt278788_ _hd278760278819_)
                                  (_rest278790_ _tl278761278821_))
                              (let ()
                                (declare (not safe))
                                (_K278751278780_ _rest278790_ _opt278788_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278760278819_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278761278821_))
                                (let* ((_tl278758278806_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl278761278821_)))
                                       (_rest278809_ _tl278758278806_))
                                  (declare (not safe))
                                  (_K278754278798_ _rest278809_))
                                (let ((_opt278788_ _hd278760278819_)
                                      (_rest278790_ _tl278761278821_))
                                  (let ()
                                    (declare (not safe))
                                    (_K278751278780_
                                     _rest278790_
                                     _opt278788_))))
                            (let ((_opt278788_ _hd278760278819_)
                                  (_rest278790_ _tl278761278821_))
                              (let ()
                                (declare (not safe))
                                (_K278751278780_ _rest278790_ _opt278788_))))))
                  (let () (declare (not safe)) (_else278749278773_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?278833_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?278833_))))
    (define gxc#gsc-link-options
      (lambda _g284209_
        (let ((_g284208_ (let () (declare (not safe)) (##length _g284209_))))
          (cond ((let () (declare (not safe)) (##fx= _g284208_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g284209_))
                ((let () (declare (not safe)) (##fx= _g284208_ 1))
                 (apply (lambda (_phi?278835_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?278835_)))
                        _g284209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g284209_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?278640_)
        (let _lp278642_ ((_rest278644_ (gxc#current-compile-gsc-options))
                         (_opts278645_ '()))
          (let* ((_rest278646278666_ _rest278644_)
                 (_else278650278674_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?278640_))
                             (gxc#current-compile-debug))
                        (let ((__tmp284210
                               (let ((__tmp284211 (reverse _opts278645_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp284211))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp284210))
                        (reverse _opts278645_)))))
            (let ((_K278660278713_
                   (lambda (_rest278710_ _opt278711_)
                     (let ((__tmp284212
                            (let ((__tmp284213
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts278645_))))
                              (declare (not safe))
                              (cons _opt278711_ __tmp284213))))
                       (declare (not safe))
                       (_lp278642_ _rest278710_ __tmp284212))))
                  (_K278655278694_
                   (lambda (_rest278692_)
                     (let ()
                       (declare (not safe))
                       (_lp278642_ _rest278692_ _opts278645_))))
                  (_K278652278680_
                   (lambda (_rest278678_)
                     (let ()
                       (declare (not safe))
                       (_lp278642_ _rest278678_ _opts278645_)))))
              (if (let () (declare (not safe)) (##pair? _rest278646278666_))
                  (let ((_tl278662278718_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278646278666_)))
                        (_hd278661278716_
                         (let ()
                           (declare (not safe))
                           (##car _rest278646278666_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278661278716_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278662278718_))
                            (let ((_tl278664278723_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl278662278718_)))
                                  (_hd278663278721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl278662278718_))))
                              (let ((_opt278726_ _hd278663278721_)
                                    (_rest278728_ _tl278664278723_))
                                (let ()
                                  (declare (not safe))
                                  (_K278660278713_ _rest278728_ _opt278726_))))
                            (let ((_rest278686_ _tl278662278718_))
                              (declare (not safe))
                              (_K278652278680_ _rest278686_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278661278716_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278662278718_))
                                (let* ((_tl278659278702_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl278662278718_)))
                                       (_rest278705_ _tl278659278702_))
                                  (declare (not safe))
                                  (_K278655278694_ _rest278705_))
                                (let ((_rest278686_ _tl278662278718_))
                                  (declare (not safe))
                                  (_K278652278680_ _rest278686_)))
                            (let ((_rest278686_ _tl278662278718_))
                              (declare (not safe))
                              (_K278652278680_ _rest278686_)))))
                  (let () (declare (not safe)) (_else278650278674_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?278734_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?278734_))))
    (define gxc#gsc-cc-options
      (lambda _g284215_
        (let ((_g284214_ (let () (declare (not safe)) (##length _g284215_))))
          (cond ((let () (declare (not safe)) (##fx= _g284214_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g284215_))
                ((let () (declare (not safe)) (##fx= _g284214_ 1))
                 (apply (lambda (_phi?278736_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?278736_)))
                        _g284215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g284215_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir278635_)
        (let* ((_user-staticdir278637_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp284216
                (let ((__tmp284217
                       (string-append
                        '"-I "
                        _staticdir278635_
                        '" -I "
                        _user-staticdir278637_)))
                  (declare (not safe))
                  (cons __tmp284217 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp284216))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp278547_ ((_rest278549_ (gxc#current-compile-gsc-options))
                         (_opts278550_ '()))
          (let* ((_rest278551278571_ _rest278549_)
                 (_else278555278579_ (lambda () _opts278550_)))
            (let ((_K278565278622_
                   (lambda (_rest278620_)
                     (let ()
                       (declare (not safe))
                       (_lp278547_ _rest278620_ _opts278550_))))
                  (_K278560278600_
                   (lambda (_rest278597_ _opt278598_)
                     (let ((__tmp284218
                            (append _opts278550_
                                    (let ((__tmp284219
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt278598_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp284219)))))
                       (declare (not safe))
                       (_lp278547_ _rest278597_ __tmp284218))))
                  (_K278557278585_
                   (lambda (_rest278583_)
                     (let ()
                       (declare (not safe))
                       (_lp278547_ _rest278583_ _opts278550_)))))
              (if (let () (declare (not safe)) (##pair? _rest278551278571_))
                  (let ((_tl278567278627_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278551278571_)))
                        (_hd278566278625_
                         (let ()
                           (declare (not safe))
                           (##car _rest278551278571_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278566278625_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278567278627_))
                            (let* ((_tl278569278630_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl278567278627_)))
                                   (_rest278633_ _tl278569278630_))
                              (declare (not safe))
                              (_K278565278622_ _rest278633_))
                            (let ((_rest278591_ _tl278567278627_))
                              (declare (not safe))
                              (_K278557278585_ _rest278591_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278566278625_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278567278627_))
                                (let ((_tl278564278610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl278567278627_)))
                                      (_hd278563278608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl278567278627_))))
                                  (let ((_opt278613_ _hd278563278608_)
                                        (_rest278615_ _tl278564278610_))
                                    (let ()
                                      (declare (not safe))
                                      (_K278560278600_
                                       _rest278615_
                                       _opt278613_))))
                                (let ((_rest278591_ _tl278567278627_))
                                  (declare (not safe))
                                  (_K278557278585_ _rest278591_)))
                            (let ((_rest278591_ _tl278567278627_))
                              (declare (not safe))
                              (_K278557278585_ _rest278591_)))))
                  (let () (declare (not safe)) (_else278555278579_))))))))
    (define gxc#not-string-empty?
      (lambda (_str278544_)
        (let ((__tmp284220
               (let () (declare (not safe)) (string-empty? _str278544_))))
          (declare (not safe))
          (not __tmp284220))))
    (define gxc#gsc-compile-file
      (lambda (_path278512_ _phi?278513_)
        (letrec ((_gsc-link-path278515_
                  (lambda (_base-path278536_)
                    (let _lp278538_ ((_n278540_ '1))
                      (let ((_path278542_
                             (string-append
                              _base-path278536_
                              '".o"
                              (number->string _n278540_))))
                        (if (file-exists? _path278542_)
                            (let ((__tmp284221
                                   (let ()
                                     (declare (not safe))
                                     (+ _n278540_ '1))))
                              (declare (not safe))
                              (_lp278538_ __tmp284221))
                            _path278542_))))))
          (let* ((_base-path278517_ (path-strip-extension _path278512_))
                 (_path-c278519_ (string-append _base-path278517_ '".c"))
                 (_path-o278521_ (string-append _base-path278517_ '".o"))
                 (_link-path278523_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path278515_ _base-path278517_)))
                 (_link-path-c278525_ (string-append _link-path278523_ '".c"))
                 (_link-path-o278527_ (string-append _link-path278523_ '".o"))
                 (_gsc-link-opts278529_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?278513_)))
                 (_gsc-cc-opts278531_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?278513_)))
                 (_gcc-ld-opts278533_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp284228 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp284222
                   (let ((__tmp284223
                          (let ((__tmp284224
                                 (let ((__tmp284225
                                        (let ((__tmp284226
                                               (let ((__tmp284227
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path278512_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp284227
                                                         _gsc-link-opts278529_))))
                                          (declare (not safe))
                                          (cons _link-path-c278525_
                                                __tmp284226))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp284225))))
                            (declare (not safe))
                            (cons '"-flat" __tmp284224))))
                     (declare (not safe))
                     (cons '"-link" __tmp284223))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp284228 __tmp284222))
            (let ((__tmp284235 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp284229
                   (let ((__tmp284230
                          (let ((__tmp284231
                                 (let ((__tmp284232
                                        (let ((__tmp284233
                                               (let ((__tmp284234
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c278525_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c278519_
                                                       __tmp284234))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp284233
                                                  _gsc-cc-opts278531_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp284232))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp284231))))
                     (declare (not safe))
                     (cons '"-obj" __tmp284230))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp284235 __tmp284229))
            (let ((__tmp284241 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp284236
                   (let ((__tmp284237
                          (let ((__tmp284238
                                 (let ((__tmp284239
                                        (let ((__tmp284240
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o278527_
                                                       _gcc-ld-opts278533_))))
                                          (declare (not safe))
                                          (cons _path-o278521_ __tmp284240))))
                                   (declare (not safe))
                                   (cons _link-path278523_ __tmp284239))))
                            (declare (not safe))
                            (cons '"-o" __tmp284238))))
                     (declare (not safe))
                     (cons '"-shared" __tmp284237))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp284241
               __tmp284236))
            (for-each
             delete-file
             (let ((__tmp284242
                    (let ((__tmp284243
                           (let ((__tmp284244
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o278527_ '()))))
                             (declare (not safe))
                             (cons _link-path-c278525_ __tmp284244))))
                      (declare (not safe))
                      (cons _path-o278521_ __tmp284243))))
               (declare (not safe))
               (cons _path-c278519_ __tmp284242)))))))
    (define gxc#compile-output-file
      (lambda (_ctx278483_ _n278484_ _ext278485_)
        (letrec ((_module-relative-path278487_
                  (lambda (_ctx278510_)
                    (path-strip-directory
                     (let ((__tmp284245
                            (##structure-ref
                             _ctx278510_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp284245)))))
                 (_module-source-directory278488_
                  (lambda (_ctx278506_)
                    (path-directory
                     (let ((_mpath278508_
                            (##structure-ref
                             _ctx278506_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath278508_))
                           _mpath278508_
                           (let ()
                             (declare (not safe))
                             (last _mpath278508_)))))))
                 (_section-string278489_
                  (lambda (_n278504_)
                    (if (let () (declare (not safe)) (number? _n278504_))
                        (number->string _n278504_)
                        (if (let () (declare (not safe)) (symbol? _n278504_))
                            (symbol->string _n278504_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n278504_))
                                _n278504_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n278504_)))))))
                 (_file-name278490_
                  (lambda (_path278502_)
                    (if _n278484_
                        (string-append
                         _path278502_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string278489_ _n278484_))
                         _ext278485_)
                        (string-append _path278502_ _ext278485_))))
                 (_file-path278491_
                  (lambda ()
                    (let ((_$e278497_ (gxc#current-compile-output-dir)))
                      (if _$e278497_
                          ((lambda (_outdir278500_)
                             (path-expand
                              (let ((__tmp284247
                                     (let ((__tmp284248
                                            (##structure-ref
                                             _ctx278483_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp284248))))
                                (declare (not safe))
                                (_file-name278490_ __tmp284247))
                              _outdir278500_))
                           _$e278497_)
                          (path-expand
                           (let ((__tmp284246
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path278487_
                                     _ctx278483_))))
                             (declare (not safe))
                             (_file-name278490_ __tmp284246))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory278488_
                              _ctx278483_))))))))
          (let ((_path278493_
                 (let () (declare (not safe)) (_file-path278491_))))
            (let ((__tmp284249
                   (lambda ()
                     (let ((__tmp284250 (path-directory _path278493_)))
                       (declare (not safe))
                       (create-directory* __tmp284250)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp284249))
            _path278493_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx278465_)
        (letrec ((_file-name278467_
                  (lambda (_id278481_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id278481_))
                     '".scm")))
                 (_file-path278468_
                  (lambda ()
                    (let* ((_file278474_
                            (let ((__tmp284251
                                   (##structure-ref
                                    _ctx278465_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name278467_ __tmp284251)))
                           (_$e278476_ (gxc#current-compile-output-dir)))
                      (if _$e278476_
                          ((lambda (_outdir278479_)
                             (path-expand
                              _file278474_
                              (path-expand '"static" _outdir278479_)))
                           _$e278476_)
                          (path-expand _file278474_ '"static"))))))
          (let ((_path278470_
                 (let () (declare (not safe)) (_file-path278468_))))
            (let ((__tmp284252
                   (lambda ()
                     (let ((__tmp284253 (path-directory _path278470_)))
                       (declare (not safe))
                       (create-directory* __tmp284253)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp284252))
            _path278470_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx278459_ _opts278460_)
        (let ((_$e278462_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts278460_))))
          (if _$e278462_
              (values _$e278462_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx278459_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr278452_)
        (if (let () (declare (not safe)) (string? _idstr278452_))
            (let* ((_str278454_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr278452_)))
                   (_strs278456_
                    (let ()
                      (declare (not safe))
                      (string-split _str278454_ '#\/))))
              (let () (declare (not safe)) (string-join _strs278456_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr278452_))
                (let ((__tmp284254 (symbol->string _idstr278452_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp284254))
                (error '"Bad module id" _idstr278452_)))))
    (define gxc#invoke__%
      (lambda (_g284255_
               _stdout-redirection278416278420_
               _stderr-redirection278417278422_
               _program278424_
               _args278425_)
        (let* ((_stdout-redirection278427_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection278416278420_ absent-value))
                    '#f
                    _stdout-redirection278416278420_))
               (_stderr-redirection278429_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection278417278422_ absent-value))
                    '#f
                    _stderr-redirection278417278422_)))
          (let ((__tmp284256
                 (let ()
                   (declare (not safe))
                   (cons _program278424_ _args278425_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp284256))
          (let ((_proc278431_
                 (open-process
                  (let ((__tmp284257
                         (let ((__tmp284258
                                (let ((__tmp284259
                                       (let ((__tmp284260
                                              (let ((__tmp284261
                                                     (let ((__tmp284262
                                                            (let ((__tmp284263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection278429_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp284263))))
               (declare (not safe))
               (cons _stdout-redirection278427_ __tmp284262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp284261))))
                                         (declare (not safe))
                                         (cons _args278425_ __tmp284260))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp284259))))
                           (declare (not safe))
                           (cons _program278424_ __tmp284258))))
                    (declare (not safe))
                    (cons 'path: __tmp284257)))))
            (if (or _stdout-redirection278427_ _stderr-redirection278429_)
                (read-line _proc278431_ '#f)
                '#!void)
            (let ((_status278436_ (process-status _proc278431_)))
              (close-port _proc278431_)
              (if (let () (declare (not safe)) (zero? _status278436_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program278424_))))))))
    (define gxc#invoke__@
      (lambda (_keys278415278441_ . _args278443_)
        (apply gxc#invoke__%
               _keys278415278441_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys278415278441_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys278415278441_
                  'stderr-redirection:
                  absent-value))
               _args278443_)))
    (define gxc#invoke
      (lambda _args278418278449_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args278418278449_)))
    (define gxc#join!
      (lambda (_thread278409_)
        (let ((__tmp284265
               (lambda (_exn278411_)
                 (if (uncaught-exception? _exn278411_)
                     (raise (uncaught-exception-reason _exn278411_))
                     (raise _exn278411_))))
              (__tmp284264 (lambda () (thread-join! _thread278409_))))
          (declare (not safe))
          (with-catch __tmp284265 __tmp284264))))))
