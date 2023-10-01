(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1695392697)
  (begin
    (define gxc#default-gerbil-gsc (path-expand '"gsc" (path-expand '"~~bin")))
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
      (lambda (_path69618_ _fun69619_)
        (with-output-to-file
         (let ((__tmp69692
                (let ()
                  (declare (not safe))
                  (cons _path69618_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp69692))
         _fun69619_)))
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
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir69613_) (delete-file-or-directory _dir69613_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath69587_ _opts69588_)
        (if (let () (declare (not safe)) (string? _srcpath69587_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69587_)))
        (let ((_outdir69590_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69588_)))
              (_invoke-gsc?69591_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69588_)))
              (_gsc-options69592_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69588_)))
              (_keep-scm?69593_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69588_)))
              (_verbosity69594_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69588_)))
              (_optimize69595_
               (let () (declare (not safe)) (pgetq 'optimize: _opts69588_)))
              (_debug69596_
               (let () (declare (not safe)) (pgetq 'debug: _opts69588_)))
              (_gen-ssxi69597_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts69588_))))
          (if _outdir69590_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir69590_))))
              '#!void)
          (if _optimize69595_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp69694
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath69587_))
                   (let ((__tmp69695
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath69587_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp69695))))
                (__tmp69693
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69694
             gxc#current-compile-output-dir
             _outdir69590_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69591_
             gxc#current-compile-gsc-options
             _gsc-options69592_
             gxc#current-compile-keep-scm
             _keep-scm?69593_
             gxc#current-compile-verbose
             _verbosity69594_
             gxc#current-compile-optimize
             _optimize69595_
             gxc#current-compile-debug
             _debug69596_
             gxc#current-compile-generate-ssxi
             _gen-ssxi69597_
             gxc#current-compile-timestamp
             __tmp69693
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath69606_)
        (let ((_opts69608_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath69606_ _opts69608_))))
    (define gxc#compile-module
      (lambda _g69697_
        (let ((_g69696_ (let () (declare (not safe)) (##length _g69697_))))
          (cond ((let () (declare (not safe)) (##fx= _g69696_ 1))
                 (apply (lambda (_srcpath69606_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath69606_)))
                        _g69697_))
                ((let () (declare (not safe)) (##fx= _g69696_ 2))
                 (apply (lambda (_srcpath69610_ _opts69611_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath69610_
                             _opts69611_)))
                        _g69697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g69697_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath69564_ _opts69565_)
        (if (let () (declare (not safe)) (string? _srcpath69564_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69564_)))
        (let ((_outdir69567_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69565_)))
              (_invoke-gsc?69568_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69565_)))
              (_gsc-options69569_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69565_)))
              (_keep-scm?69570_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69565_)))
              (_verbosity69571_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69565_))))
          (if _outdir69567_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir69567_))))
              '#!void)
          (let ((__tmp69699
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath69564_))
                   (let ((__tmp69700
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath69564_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp69700 _opts69565_))))
                (__tmp69698
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69699
             gxc#current-compile-output-dir
             _outdir69567_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69568_
             gxc#current-compile-gsc-options
             _gsc-options69569_
             gxc#current-compile-keep-scm
             _keep-scm?69570_
             gxc#current-compile-verbose
             _verbosity69571_
             gxc#current-compile-timestamp
             __tmp69698
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath69579_)
        (let ((_opts69581_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath69579_ _opts69581_))))
    (define gxc#compile-exe
      (lambda _g69702_
        (let ((_g69701_ (let () (declare (not safe)) (##length _g69702_))))
          (cond ((let () (declare (not safe)) (##fx= _g69701_ 1))
                 (apply (lambda (_srcpath69579_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath69579_)))
                        _g69702_))
                ((let () (declare (not safe)) (##fx= _g69701_ 2))
                 (apply (lambda (_srcpath69583_ _opts69584_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath69583_ _opts69584_)))
                        _g69702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g69702_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx69560_ _opts69561_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts69561_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx69560_
               _opts69561_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx69560_
               _opts69561_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx69208_ _opts69209_)
        (letrec ((_generate-stub69211_
                  (lambda (_builtin-modules69556_)
                    (let ((_mod-main69558_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69208_ 'main))))
                      (write (let ((__tmp69703
                                    (let ((__tmp69704
                                           (let ((__tmp69705
                                                  (let ((__tmp69706
                                                         (let ((__tmp69708
                                                                (let ((__tmp69709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules69556_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69709)))
                       (__tmp69707
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp69708 __tmp69707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp69706))))
                                             (declare (not safe))
                                             (cons __tmp69705 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp69704))))
                               (declare (not safe))
                               (cons 'define __tmp69703)))
                      (write (let ((__tmp69710
                                    (let ((__tmp69721
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69711
                                           (let ((__tmp69719
                                                  (let ((__tmp69720
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69720)))
                                                 (__tmp69712
                                                  (let ((__tmp69713
                                                         (let ((__tmp69714
                                                                (let ((__tmp69715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69716
                                      (let ((__tmp69717
                                             (let ((__tmp69718
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69718 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69717))))
                                 (declare (not safe))
                                 (cons __tmp69716 '()))))
                          (declare (not safe))
                          (cons _mod-main69558_ __tmp69715))))
                   (declare (not safe))
                   (cons 'apply __tmp69714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69713 '()))))
                                             (declare (not safe))
                                             (cons __tmp69719 __tmp69712))))
                                      (declare (not safe))
                                      (cons __tmp69721 __tmp69711))))
                               (declare (not safe))
                               (cons 'define __tmp69710)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-link-opts69212_
                  (lambda ()
                    (let ((_opts69466_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts69209_))))
                      (let _lp69468_ ((_rest69470_ _opts69466_)
                                      (_opts69471_ '()))
                        (let* ((_rest6947269492_ _rest69470_)
                               (_else6947669500_
                                (lambda () (reverse _opts69471_))))
                          (let ((_K6948669543_
                                 (lambda (_rest69541_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69468_ _rest69541_ _opts69471_))))
                                (_K6948169525_
                                 (lambda (_rest69523_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69468_ _rest69523_ _opts69471_))))
                                (_K6947869507_
                                 (lambda (_rest69504_ _hd69505_)
                                   (let ((__tmp69722
                                          (let ()
                                            (declare (not safe))
                                            (cons _hd69505_ _opts69471_))))
                                     (declare (not safe))
                                     (_lp69468_ _rest69504_ __tmp69722)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6947269492_))
                                (let ((_tl6948869548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6947269492_)))
                                      (_hd6948769546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6947269492_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6948769546_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6948869548_))
                                          (let* ((_tl6949069551_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl6948869548_)))
                                                 (_rest69554_ _tl6949069551_))
                                            (declare (not safe))
                                            (_K6948669543_ _rest69554_))
                                          (let ((_hd69515_ _hd6948769546_)
                                                (_rest69517_ _tl6948869548_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6947869507_
                                               _rest69517_
                                               _hd69515_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _hd6948769546_
                                                    '"-ld-options"))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl6948869548_))
                                              (let* ((_tl6948569533_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl6948869548_)))
                                                     (_rest69536_
                                                      _tl6948569533_))
                                                (declare (not safe))
                                                (_K6948169525_ _rest69536_))
                                              (let ((_hd69515_ _hd6948769546_)
                                                    (_rest69517_
                                                     _tl6948869548_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_K6947869507_
                                                   _rest69517_
                                                   _hd69515_))))
                                          (let ((_hd69515_ _hd6948769546_)
                                                (_rest69517_ _tl6948869548_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6947869507_
                                               _rest69517_
                                               _hd69515_))))))
                                (let ()
                                  (declare (not safe))
                                  (_else6947669500_)))))))))
                 (_get-gsc-cc-opts69213_
                  (lambda (_gerbil-staticdir69391_)
                    (let* ((_opts69393_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69209_)))
                           (_base69395_
                            (string-append '"-I " _gerbil-staticdir69391_))
                           (_user-static-dir69397_
                            (path-expand
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                           (_base69399_
                            (string-append
                             _base69395_
                             '" -I "
                             _user-static-dir69397_)))
                      (let _lp69402_ ((_rest69404_ _opts69393_)
                                      (_ccflags69405_ _base69399_))
                        (let* ((_rest6940669420_ _rest69404_)
                               (_else6940969428_
                                (lambda ()
                                  (let ((__tmp69723
                                         (let ()
                                           (declare (not safe))
                                           (cons _ccflags69405_ '()))))
                                    (declare (not safe))
                                    (cons '"-cc-options" __tmp69723)))))
                          (let ((_K6941469448_
                                 (lambda (_rest69445_ _opts69446_)
                                   (let ((__tmp69724
                                          (string-append
                                           _ccflags69405_
                                           '" "
                                           _opts69446_)))
                                     (declare (not safe))
                                     (_lp69402_ _rest69445_ __tmp69724))))
                                (_K6941169434_
                                 (lambda (_rest69432_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69402_ _rest69432_ _ccflags69405_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6940669420_))
                                (let ((_tl6941669453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6940669420_)))
                                      (_hd6941569451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6940669420_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6941569451_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6941669453_))
                                          (let ((_tl6941869458_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6941669453_)))
                                                (_hd6941769456_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6941669453_))))
                                            (let ((_opts69461_ _hd6941769456_)
                                                  (_rest69463_ _tl6941869458_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6941469448_
                                                 _rest69463_
                                                 _opts69461_))))
                                          (let ((_rest69440_ _tl6941669453_))
                                            (declare (not safe))
                                            (_K6941169434_ _rest69440_)))
                                      (let ((_rest69440_ _tl6941669453_))
                                        (declare (not safe))
                                        (_K6941169434_ _rest69440_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6940969428_)))))))))
                 (_get-output-ld-opts69214_
                  (lambda ()
                    (let ((_opts69326_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts69209_))))
                      (let _lp69328_ ((_rest69330_ _opts69326_)
                                      (_ldflags69331_ '""))
                        (let* ((_rest6933269346_ _rest69330_)
                               (_else6933569354_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (string-empty? _ldflags69331_))
                                      '()
                                      (filter _not-string-empty?69219_
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _ldflags69331_
                                                 '#\space)))))))
                          (let ((_K6934069374_
                                 (lambda (_rest69371_ _opts69372_)
                                   (let ((__tmp69725
                                          (string-append
                                           _ldflags69331_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (string-empty?
                                                  _ldflags69331_))
                                               '""
                                               '" ")
                                           _opts69372_)))
                                     (declare (not safe))
                                     (_lp69328_ _rest69371_ __tmp69725))))
                                (_K6933769360_
                                 (lambda (_rest69358_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69328_ _rest69358_ _ldflags69331_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6933269346_))
                                (let ((_tl6934269379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6933269346_)))
                                      (_hd6934169377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6933269346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6934169377_ '"-ld-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6934269379_))
                                          (let ((_tl6934469384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6934269379_)))
                                                (_hd6934369382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6934269379_))))
                                            (let ((_opts69387_ _hd6934369382_)
                                                  (_rest69389_ _tl6934469384_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6934069374_
                                                 _rest69389_
                                                 _opts69387_))))
                                          (let ((_rest69366_ _tl6934269379_))
                                            (declare (not safe))
                                            (_K6933769360_ _rest69366_)))
                                      (let ((_rest69366_ _tl6934269379_))
                                        (declare (not safe))
                                        (_K6933769360_ _rest69366_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6933569354_)))))))))
                 (_get-libgerbil-ld-opts69215_
                  (lambda (_libgerbil69323_)
                    (call-with-input-file
                     (string-append _libgerbil69323_ '".ldd")
                     read)))
                 (_replace-extension69216_
                  (lambda (_path69320_ _ext69321_)
                    (string-append
                     (path-strip-extension _path69320_)
                     _ext69321_)))
                 (_not-exclude-module?69217_
                  (lambda (_ctx69316_)
                    (let ((_id-str69318_
                           (symbol->string
                            (##structure-ref
                             _ctx69316_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp69727
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str69318_))))
                            (declare (not safe))
                            (not __tmp69727))
                          (let ((__tmp69726
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str69318_))))
                            (declare (not safe))
                            (not __tmp69726))
                          '#f))))
                 (_not-file-empty?69218_
                  (lambda (_path69314_)
                    (let ((__tmp69728
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path69314_))))
                      (declare (not safe))
                      (not __tmp69728))))
                 (_not-string-empty?69219_
                  (lambda (_str69312_)
                    (let ((__tmp69729
                           (let ()
                             (declare (not safe))
                             (string-empty? _str69312_))))
                      (declare (not safe))
                      (not __tmp69729))))
                 (_compile-stub69220_
                  (lambda (_output-scm69227_ _output-bin69228_)
                    (let* ((_gerbil-home69230_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir69232_
                            (path-expand '"lib" _gerbil-home69230_))
                           (_gerbil-staticdir69234_
                            (path-expand '"static" _gerbil-libdir69232_))
                           (_gxlink69236_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir69232_))
                           (_tmp69238_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path69242_
                            (lambda (_f69240_)
                              (path-expand
                               (path-strip-directory _f69240_)
                               _tmp69238_)))
                           (_deps69244_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69208_)))
                           (_deps69246_
                            (filter _not-exclude-module?69217_ _deps69244_))
                           (_src-deps-scm69248_
                            (map gxc#find-static-module-file _deps69246_))
                           (_src-deps-scm69250_
                            (filter _not-file-empty?69218_
                                    _src-deps-scm69248_))
                           (_src-deps-scm69252_
                            (map path-expand _src-deps-scm69250_))
                           (_deps-scm69254_
                            (map _tmp-path69242_ _src-deps-scm69252_))
                           (_deps-c69260_
                            (map (lambda (_g6925569257_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69216_
                                      _g6925569257_
                                      '".c")))
                                 _deps-scm69254_))
                           (_deps-o69266_
                            (map (lambda (_g6926169263_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69216_
                                      _g6926169263_
                                      '".o")))
                                 _deps-scm69254_))
                           (_src-bin-scm69268_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69208_)))
                           (_src-bin-scm69270_
                            (path-expand _src-bin-scm69268_))
                           (_bin-scm69272_
                            (let ()
                              (declare (not safe))
                              (_tmp-path69242_ _src-bin-scm69270_)))
                           (_bin-c69274_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69216_ _bin-scm69272_ '".c")))
                           (_bin-o69276_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69216_ _bin-scm69272_ '".o")))
                           (_output-bin69278_ (path-expand _output-bin69228_))
                           (_output-scm69280_ (path-expand _output-scm69227_))
                           (_output-c69282_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69216_
                               _output-scm69280_
                               '".c")))
                           (_output-o69284_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69216_
                               _output-scm69280_
                               '".o")))
                           (_output_69286_
                            (string-append
                             (path-strip-extension _output-scm69280_)
                             '"_"))
                           (_output_-c69288_
                            (string-append _output_69286_ '".c"))
                           (_output_-o69290_
                            (string-append _output_69286_ '".o"))
                           (_gsc-opts69292_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-link-opts69212_)))
                           (_gsc-cc-opts69294_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts69213_
                               _gerbil-staticdir69234_)))
                           (_output-ld-opts69296_
                            (let ()
                              (declare (not safe))
                              (_get-output-ld-opts69214_)))
                           (_libgerbil.a69298_
                            (path-expand '"libgerbil.a" _gerbil-libdir69232_))
                           (_libgerbil.so69300_
                            (path-expand '"libgerbil.so" _gerbil-libdir69232_))
                           (_libgerbil-ld-opts69302_
                            (if (file-exists? _libgerbil.so69300_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts69215_
                                   _libgerbil.so69300_))
                                (if (file-exists? _libgerbil.a69298_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts69215_
                                       _libgerbil.a69298_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a69298_
                                       _libgerbil.so69300_)))))
                           (_gerbil-rpath69304_
                            (string-append
			     (cond-expand (darwin "-Wl,-rpath,") (else "-Wl,-rpath="))
                             _gerbil-libdir69232_))
                           (_builtin-modules69308_
                            (map (lambda (_mod69306_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod69306_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx69208_ _deps69246_)))))
                      (let ((__tmp69730 (path-directory _output-bin69278_)))
                        (declare (not safe))
                        (create-directory* __tmp69730))
                      (let ((__tmp69731
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub69211_
                                  _builtin-modules69308_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69280_
                         __tmp69731))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp69238_)
                            (for-each
                             copy-file
                             _src-deps-scm69252_
                             _deps-scm69254_)
                            (copy-file _src-bin-scm69270_ _bin-scm69272_)
                            (let ((__tmp69741
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69732
                                   (let ((__tmp69733
                                          (let ((__tmp69734
                                                 (let ((__tmp69735
                                                        (let ((__tmp69737
                                                               (let ((__tmp69738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69739
                                     (let ((__tmp69740
                                            (let ()
                                              (declare (not safe))
                                              (cons _output-scm69280_ '()))))
                                       (declare (not safe))
                                       (cons _bin-scm69272_ __tmp69740))))
                                (declare (not safe))
                                (foldr1 cons __tmp69739 _deps-scm69254_))))
                         (declare (not safe))
                         (foldr1 cons __tmp69738 _gsc-opts69292_)))
                      (__tmp69736
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__0))))
                  (declare (not safe))
                  (foldr1 cons __tmp69737 __tmp69736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink69236_
                                                         __tmp69735))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp69734))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp69733))))
                              (declare (not safe))
                              (gxc#invoke __tmp69741 __tmp69732))
                            (let ((__tmp69748
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69742
                                   (let ((__tmp69743
                                          (let ((__tmp69744
                                                 (let ((__tmp69745
                                                        (let ((__tmp69746
                                                               (let ((__tmp69747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c69288_ '()))))
                         (declare (not safe))
                         (cons _output-c69282_ __tmp69747))))
                  (declare (not safe))
                  (cons _bin-c69274_ __tmp69746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69745
                                                           _deps-c69260_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp69744
                                                    _gsc-cc-opts69294_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp69743))))
                              (declare (not safe))
                              (gxc#invoke __tmp69748 __tmp69742))
                            (let ((__tmp69761
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp69749
                                   (let ((__tmp69750
                                          (let ((__tmp69751
                                                 (let ((__tmp69752
                                                        (let ((__tmp69753
                                                               (let ((__tmp69754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69755
                                     (let ((__tmp69756
                                            (let ((__tmp69757
                                                   (let ((__tmp69758
                                                          (let ((__tmp69759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69760
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts69302_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp69760))))
                    (declare (not safe))
                    (cons _gerbil-libdir69232_ __tmp69759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp69758))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath69304_
                                                    __tmp69757))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp69756
                                               _output-ld-opts69296_))))
                                (declare (not safe))
                                (cons _output_-o69290_ __tmp69755))))
                         (declare (not safe))
                         (cons _output-o69284_ __tmp69754))))
                  (declare (not safe))
                  (cons _bin-o69276_ __tmp69753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69752
                                                           _deps-o69266_))))
                                            (declare (not safe))
                                            (cons _output-bin69278_
                                                  __tmp69751))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69750))))
                              (declare (not safe))
                              (gxc#invoke __tmp69761 __tmp69749))
                            (for-each
                             delete-file
                             (let ((__tmp69762
                                    (let ((__tmp69763
                                           (let ((__tmp69764
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o69290_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o69284_
                                                   __tmp69764))))
                                      (declare (not safe))
                                      (cons _output_-c69288_ __tmp69763))))
                               (declare (not safe))
                               (cons _output-c69282_ __tmp69762)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp69238_)))
                          '#!void)))))
          (let* ((_output-bin69222_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69208_ _opts69209_)))
                 (_output-scm69224_
                  (string-append _output-bin69222_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69220_ _output-scm69224_ _output-bin69222_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69224_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx69043_ _opts69044_)
        (letrec ((_reset-declare69046_
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
                 (_generate-stub69047_
                  (lambda (_deps69199_)
                    (let ((_mod-main69201_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69043_ 'main)))
                          (_reset-decl69202_
                           (let ()
                             (declare (not safe))
                             (_reset-declare69046_)))
                          (_user-decl69203_
                           (let ()
                             (declare (not safe))
                             (_user-declare69049_))))
                      (for-each
                       (lambda (_dep69205_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl69202_)
                         (newline)
                         (if _user-decl69203_
                             (begin (write _user-decl69203_) (newline))
                             '#!void)
                         (write (let ((__tmp69765
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep69205_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp69765)))
                         (newline))
                       _deps69199_)
                      (write (let ((__tmp69766
                                    (let ((__tmp69779
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69767
                                           (let ((__tmp69775
                                                  (let ((__tmp69776
                                                         (let ((__tmp69777
                                                                (let ((__tmp69778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69778))))
                   (declare (not safe))
                   (cons __tmp69777 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69776)))
                                                 (__tmp69768
                                                  (let ((__tmp69769
                                                         (let ((__tmp69770
                                                                (let ((__tmp69771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69772
                                      (let ((__tmp69773
                                             (let ((__tmp69774
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69774 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69773))))
                                 (declare (not safe))
                                 (cons __tmp69772 '()))))
                          (declare (not safe))
                          (cons _mod-main69201_ __tmp69771))))
                   (declare (not safe))
                   (cons 'apply __tmp69770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69769 '()))))
                                             (declare (not safe))
                                             (cons __tmp69775 __tmp69768))))
                                      (declare (not safe))
                                      (cons __tmp69779 __tmp69767))))
                               (declare (not safe))
                               (cons 'define __tmp69766)))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include69048_
                  (lambda (_gsc-opts69192_ _home69193_)
                    (letrec* ((_static-dir69195_
                               (path-expand '"lib/static" _home69193_))
                              (_user-static-dir69196_
                               (path-expand
                                (path-expand
                                 '"lib/static"
                                 (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                              (_cppflags69197_
                               (string-append
                                '"-I "
                                _static-dir69195_
                                '" -I "
                                _user-static-dir69196_)))
                      (append _gsc-opts69192_
                              (let ((__tmp69780
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags69197_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69780))))))
                 (_user-declare69049_
                  (lambda ()
                    (let* ((_gsc-opts69097_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69044_)))
                           (_gsc-prelude69099_
                            (if _gsc-opts69097_
                                (member '"-prelude" _gsc-opts69097_)
                                '#f))
                           (_gsc-prelude69101_
                            (if _gsc-prelude69099_
                                (read (open-input-string
                                       (cadr _gsc-prelude69099_)))
                                '#f)))
                      (let _lp69104_ ((_rest69106_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude69101_ '())))
                                      (_user-decls69107_ '()))
                        (let* ((_rest6910869116_ _rest69106_)
                               (_else6911069124_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls69107_))
                                      '#f
                                      (let ((__tmp69781
                                             (reverse _user-decls69107_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp69781)))))
                               (_K6911269180_
                                (lambda (_rest69127_ _expr69128_)
                                  (let* ((_expr6912969141_ _expr69128_)
                                         (_else6913269149_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp69104_
                                               _rest69127_
                                               _user-decls69107_)))))
                                    (let ((_K6913769170_
                                           (lambda (_decls69168_)
                                             (let ((__tmp69782
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls69107_
                                                              _decls69168_))))
                                               (declare (not safe))
                                               (_lp69104_
                                                _rest69127_
                                                __tmp69782))))
                                          (_K6913469155_
                                           (lambda (_exprs69153_)
                                             (let ((__tmp69783
                                                    (append _exprs69153_
                                                            _rest69127_)))
                                               (declare (not safe))
                                               (_lp69104_
                                                __tmp69783
                                                _user-decls69107_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6912969141_))
                                          (let ((_tl6913969175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6912969141_)))
                                                (_hd6913869173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6912969141_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6913869173_
                                                         'declare))
                                                (let ((_decls69178_
                                                       _tl6913969175_))
                                                  (declare (not safe))
                                                  (_K6913769170_ _decls69178_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6913869173_
                                                             'begin))
                                                    (let ((_exprs69163_
                                                           _tl6913969175_))
                                                      (declare (not safe))
                                                      (_K6913469155_
                                                       _exprs69163_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else6913269149_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else6913269149_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6910869116_))
                              (let ((_hd6911369183_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6910869116_)))
                                    (_tl6911469185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6910869116_))))
                                (let* ((_expr69188_ _hd6911369183_)
                                       (_rest69190_ _tl6911469185_))
                                  (declare (not safe))
                                  (_K6911269180_ _rest69190_ _expr69188_)))
                              (let ()
                                (declare (not safe))
                                (_else6911069124_))))))))
                 (_compile-stub69050_
                  (lambda (_output-scm69057_ _output-bin69058_)
                    (let* ((_gerbil-home69060_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_runtime69062_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp69064_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home69060_))
                           (_include-gambit-sharp69066_
                            (string-append
                             '"(include \""
                             _gambit-sharp69064_
                             '"\")"))
                           (_bin-scm69068_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69043_)))
                           (_deps69070_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69043_)))
                           (_deps69072_
                            (map gxc#find-static-module-file _deps69070_))
                           (_deps69077_
                            (filter (lambda (_$obj69074_)
                                      (let ((__tmp69784
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj69074_))))
                                        (declare (not safe))
                                        (not __tmp69784)))
                                    _deps69072_))
                           (_deps69081_
                            (filter (lambda (_f69079_)
                                      (let ((__tmp69785
                                             (member _f69079_ _runtime69062_)))
                                        (declare (not safe))
                                        (not __tmp69785)))
                                    _deps69077_))
                           (_gsc-opts69086_
                            (let ((_$e69083_
                                   (let ()
                                     (declare (not safe))
                                     (pgetq 'gsc-options: _opts69044_))))
                              (if _$e69083_ _$e69083_ '())))
                           (_gsc-opts69088_
                            (let ()
                              (declare (not safe))
                              (_static-include69048_
                               _gsc-opts69086_
                               _gerbil-home69060_)))
                           (_gsc-gx-macros69090_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp69787
                                       (let ((__tmp69788
                                              (let ((__tmp69789
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp69066_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp69789))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp69788))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69787))
                                (let ((__tmp69786
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp69066_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69786))))
                           (_gsc-args69092_
                            (let ((__tmp69790
                                   (let ((__tmp69791
                                          (let ((__tmp69792
                                                 (let ((__tmp69794
                                                        (let ((__tmp69795
                                                               (let ((__tmp69796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output-scm69057_ '()))))
                         (declare (not safe))
                         (foldr1 cons __tmp69796 _gsc-gx-macros69090_))))
                  (declare (not safe))
                  (foldr1 cons __tmp69795 _gsc-opts69088_)))
               (__tmp69793
                (let () (declare (not safe)) (gxc#gsc-debug-options__0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69794
                                                           __tmp69793))))
                                            (declare (not safe))
                                            (cons _output-bin69058_
                                                  __tmp69792))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69791))))
                              (declare (not safe))
                              (cons '"-exe" __tmp69790))))
                      (let ((__tmp69797 (path-directory _output-bin69058_)))
                        (declare (not safe))
                        (create-directory* __tmp69797))
                      (let ((__tmp69798
                             (lambda ()
                               (let ((__tmp69799
                                      (let ((__tmp69800
                                             (let ((__tmp69801
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm69068_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp69801
                                                       _deps69081_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp69800
                                                _runtime69062_))))
                                 (declare (not safe))
                                 (_generate-stub69047_ __tmp69799)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69057_
                         __tmp69798))
                      (if (gxc#current-compile-invoke-gsc)
                          (let ((__tmp69802
                                 (let ()
                                   (declare (not safe))
                                   (gxc#gerbil-gsc))))
                            (declare (not safe))
                            (gxc#invoke __tmp69802 _gsc-args69092_))
                          '#!void)))))
          (let* ((_output-bin69052_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69043_ _opts69044_)))
                 (_output-scm69054_
                  (string-append _output-bin69052_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69050_ _output-scm69054_ _output-bin69052_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69054_))))))
    (define gxc#find-export-binding
      (lambda (_ctx68993_ _id68994_)
        (let ((_$e69040_
               (let ((__tmp69804
                      (lambda (_e6899568997_)
                        (let* ((_g6899969009_ _e6899568997_)
                               (_else6900169017_ (lambda () '#f))
                               (_K6900369021_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g6899969009_
                                 'gx#module-export::t))
                              (let* ((_e6900469024_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899969009_ '1)))
                                     (_e6900569027_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899969009_ '2)))
                                     (_e6900669030_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899969009_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e6900669030_ '0))
                                    (let ((_e6900769033_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g6899969009_ '4))))
                                      (if ((lambda (_g6903569037_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g6903569037_ _id68994_)))
                                           _e6900769033_)
                                          (let ()
                                            (declare (not safe))
                                            (_K6900369021_))
                                          (let ()
                                            (declare (not safe))
                                            (_else6900169017_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else6900169017_))))
                              (let ()
                                (declare (not safe))
                                (_else6900169017_))))))
                     (__tmp69803
                      (##structure-ref
                       _ctx68993_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp69804 __tmp69803))))
          (if _$e69040_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e69040_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx68985_ _id68986_)
        (let ((_$e68988_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx68985_ _id68986_))))
          (if _$e68988_
              ((lambda (_bind68991_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind68991_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id68986_)))
                 (##structure-ref _bind68991_ '1 gx#binding::t '#f))
               _$e68988_)
              (let ((__tmp69805
                     (##structure-ref
                      _ctx68985_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp69805
                 _id68986_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx68872_)
        (letrec* ((_ht68874_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template68875_
                   (lambda (_in68937_ _phi68938_)
                     (let ((_iphi68940_
                            (fx+ _phi68938_
                                 (##direct-structure-ref
                                  _in68937_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports68941_
                            (##structure-ref
                             (##direct-structure-ref
                              _in68937_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp68943_ ((_rest68945_ _imports68941_)
                                       (_r68946_ '()))
                         (let* ((_rest6894768955_ _rest68945_)
                                (_else6894968963_ (lambda () _r68946_))
                                (_K6895168973_
                                 (lambda (_rest68966_ _in68967_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in68967_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi68940_))
                                           (let ((__tmp69812
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in68967_
                                                          _r68946_))))
                                             (declare (not safe))
                                             (_lp68943_
                                              _rest68966_
                                              __tmp69812))
                                           (let ()
                                             (declare (not safe))
                                             (_lp68943_ _rest68966_ _r68946_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in68967_
                                              'gx#module-import::t))
                                           (let ((_iphi68969_
                                                  (fx+ _phi68938_
                                                       (##direct-structure-ref
                                                        _in68967_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi68969_))
                                                 (let ((__tmp69810
                                                        (let ((__tmp69811
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in68967_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp69811 _r68946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp68943_
                                                    _rest68966_
                                                    __tmp69810))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp68943_
                                                    _rest68966_
                                                    _r68946_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in68967_
                                                  'gx#import-set::t))
                                               (let ((_xphi68971_
                                                      (fx+ _iphi68940_
                                                           (##direct-structure-ref
                                                            _in68967_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi68971_))
                                                     (let ((__tmp69808
                                                            (let ((__tmp69809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in68967_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp69809 _r68946_))))
               (declare (not safe))
               (_lp68943_ _rest68966_ __tmp69808))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi68971_)
                                                         (let ((__tmp69806
                                                                (let ((__tmp69807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template68875_
                                  _in68967_
                                  _iphi68940_))))
                          (declare (not safe))
                          (foldl1 cons _r68946_ __tmp69807))))
                   (declare (not safe))
                   (_lp68943_ _rest68966_ __tmp69806))
                 (let ()
                   (declare (not safe))
                   (_lp68943_ _rest68966_ _r68946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp68943_
                                                  _rest68966_
                                                  _r68946_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6894768955_))
                               (let ((_hd6895268976_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6894768955_)))
                                     (_tl6895368978_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6894768955_))))
                                 (let* ((_in68981_ _hd6895268976_)
                                        (_rest68983_ _tl6895368978_))
                                   (declare (not safe))
                                   (_K6895168973_ _rest68983_ _in68981_)))
                               (let ()
                                 (declare (not safe))
                                 (_else6894968963_))))))))
                  (_find-deps68876_
                   (lambda (_rest68883_ _deps68884_)
                     (let* ((_rest6888568893_ _rest68883_)
                            (_else6888768901_ (lambda () _deps68884_))
                            (_K6888968925_
                             (lambda (_rest68904_ _hd68905_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd68905_
                                      'gx#module-context::t))
                                   (let ((_id68907_
                                          (##structure-ref
                                           _hd68905_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports68908_
                                          (##structure-ref
                                           _hd68905_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht68874_ _id68907_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps68876_
                                            _rest68904_
                                            _deps68884_))
                                         (let ((_$e68910_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd68905_))))
                                           (if _$e68910_
                                               ((lambda (_pre68913_)
                                                  (let ((_xdeps68915_
                                                         (let ((__tmp69825
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre68913_ _imports68908_))))
                   (declare (not safe))
                   (_find-deps68876_ __tmp69825 _deps68884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht68874_
                                                       _id68907_
                                                       _hd68905_))
                                                    (let ((__tmp69826
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd68905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps68915_))))
              (declare (not safe))
              (_find-deps68876_ _rest68904_ __tmp69826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e68910_)
                                               (let ((_xdeps68917_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps68876_
                                                         _imports68908_
                                                         _deps68884_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht68874_
                                                    _id68907_
                                                    _hd68905_))
                                                 (let ((__tmp69824
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd68905_
                                                                _xdeps68917_))))
                                                   (declare (not safe))
                                                   (_find-deps68876_
                                                    _rest68904_
                                                    __tmp69824)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd68905_
                                          'gx#prelude-context::t))
                                       (let ((_id68919_
                                              (##structure-ref
                                               _hd68905_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht68874_
                                                _id68919_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps68876_
                                                _rest68904_
                                                _deps68884_))
                                             (let ((_xdeps68921_
                                                    (let ((__tmp69822
                                                           (##structure-ref
                                                            _hd68905_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps68876_
                                                       __tmp69822
                                                       _deps68884_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht68874_
                                                      _id68919_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps68876_
                                                      _rest68904_
                                                      _xdeps68921_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht68874_
                                                        _id68919_
                                                        _hd68905_))
                                                     (let ((__tmp69823
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd68905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps68921_))))
               (declare (not safe))
               (_find-deps68876_ _rest68904_ __tmp69823)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd68905_
                                              'gx#module-import::t))
                                           (if (let ((__tmp69821
                                                      (##direct-structure-ref
                                                       _hd68905_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp69821))
                                               (let ((__tmp69819
                                                      (let ((__tmp69820
                                                             (##direct-structure-ref
                                                              _hd68905_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69820
                                                              _rest68904_))))
                                                 (declare (not safe))
                                                 (_find-deps68876_
                                                  __tmp69819
                                                  _deps68884_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps68876_
                                                  _rest68904_
                                                  _deps68884_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd68905_
                                                  'gx#module-export::t))
                                               (let ((__tmp69817
                                                      (let ((__tmp69818
                                                             (##direct-structure-ref
                                                              _hd68905_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69818
                                                              _rest68904_))))
                                                 (declare (not safe))
                                                 (_find-deps68876_
                                                  __tmp69817
                                                  _deps68884_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd68905_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp69816
                                                              (##direct-structure-ref
                                                               _hd68905_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp69816))
                                                       (let ((__tmp69814
                                                              (let ((__tmp69815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd68905_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp69815 _rest68904_))))
                 (declare (not safe))
                 (_find-deps68876_ __tmp69814 _deps68884_))
               (if (fxpositive?
                    (##direct-structure-ref _hd68905_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps68923_
                           (let ()
                             (declare (not safe))
                             (_import-set-template68875_ _hd68905_ '0)))
                          (__tmp69813
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest68904_ _xdeps68923_))))
                     (declare (not safe))
                     (_find-deps68876_ __tmp69813 _deps68884_))
                   (let ()
                     (declare (not safe))
                     (_find-deps68876_ _rest68904_ _deps68884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd68905_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6888568893_))
                           (let ((_hd6889068928_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6888568893_)))
                                 (_tl6889168930_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6888568893_))))
                             (let* ((_hd68933_ _hd6889068928_)
                                    (_rest68935_ _tl6889168930_))
                               (declare (not safe))
                               (_K6888968925_ _rest68935_ _hd68933_)))
                           (let ()
                             (declare (not safe))
                             (_else6888768901_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp69827
                                  (let ((_$e68878_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx68872_))))
                                    (if _$e68878_
                                        ((lambda (_pre68881_)
                                           (let ((__tmp69828
                                                  (##structure-ref
                                                   _ctx68872_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre68881_ __tmp69828)))
                                         _$e68878_)
                                        (##structure-ref
                                         _ctx68872_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps68876_ __tmp69827 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx68803_)
        (let* ((_context-id68805_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx68803_
                       'gx#module-context::t))
                    (##structure-ref _ctx68803_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx68803_)))
               (_scm68807_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id68805_))
                 '".scm"))
               (_dirs68809_ (gx#current-expander-module-library-path))
               (_dirs68815_
                (let ((_user-libpath68811_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath68811_
                      (let ((_user-libpath68813_
                             (path-expand '"lib" _user-libpath68811_)))
                        (if (member _user-libpath68813_ _dirs68809_)
                            _dirs68809_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath68813_ _dirs68809_))))
                      _dirs68809_)))
               (_dirs68824_
                (let ((_$e68817_ (gxc#current-compile-output-dir)))
                  (if _$e68817_
                      ((lambda (_g6881968821_)
                         (let ()
                           (declare (not safe))
                           (cons _g6881968821_ _dirs68815_)))
                       _$e68817_)
                      _dirs68815_)))
               (_dirs68830_
                (map (lambda (_g6882568827_)
                       (path-expand '"static" _g6882568827_))
                     _dirs68824_)))
          (let _lp68833_ ((_rest68835_ _dirs68830_))
            (let* ((_rest6883668844_ _rest68835_)
                   (_else6883868852_
                    (lambda ()
                      (let ((__tmp69829
                             (##structure-ref
                              _ctx68803_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp69829
                         _scm68807_))))
                   (_K6884068860_
                    (lambda (_rest68855_ _dir68856_)
                      (let ((_path68858_ (path-expand _scm68807_ _dir68856_)))
                        (if (file-exists? _path68858_)
                            _path68858_
                            (let ()
                              (declare (not safe))
                              (_lp68833_ _rest68855_)))))))
              (if (let () (declare (not safe)) (##pair? _rest6883668844_))
                  (let ((_hd6884168863_
                         (let ()
                           (declare (not safe))
                           (##car _rest6883668844_)))
                        (_tl6884268865_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6883668844_))))
                    (let* ((_dir68868_ _hd6884168863_)
                           (_rest68870_ _tl6884268865_))
                      (declare (not safe))
                      (_K6884068860_ _rest68870_ _dir68868_)))
                  (let () (declare (not safe)) (_else6883868852_))))))))
    (define gxc#file-empty?
      (lambda (_path68801_)
        (let ((__tmp69830 (file-info-size (file-info _path68801_ '#t))))
          (declare (not safe))
          (zero? __tmp69830))))
    (define gxc#compile-top-module
      (lambda (_ctx68797_)
        (let ((__tmp69834
               (lambda ()
                 (let ((__tmp69835
                        (##structure-ref
                         _ctx68797_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp69835))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx68797_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx68797_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-runtime-code _ctx68797_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-meta-code _ctx68797_))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx68797_))
                     '#!void)))
              (__tmp69833
               (let ((__obj69690 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj69690))
                 __obj69690))
              (__tmp69832
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp69831 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp69834
           gx#current-expander-context
           _ctx68797_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp69833
           gxc#current-compile-runtime-sections
           __tmp69832
           gxc#current-compile-runtime-names
           __tmp69831))))
    (define gxc#collect-bindings
      (lambda (_ctx68795_)
        (let ((__tmp69836
               (##structure-ref _ctx68795_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp69836))))
    (define gxc#compile-runtime-code
      (lambda (_ctx68741_)
        (letrec ((_compile168743_
                  (lambda (_ctx68784_)
                    (let* ((_code68786_
                            (##structure-ref
                             _ctx68784_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt68790_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code68786_))
                                (let ((_idstr68788_
                                       (let ((__tmp69837
                                              (##structure-ref
                                               _ctx68784_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp69837))))
                                  (string-append _idstr68788_ '"__0"))
                                '#f)))
                      (if _rt68790_
                          (begin
                            (let ((__tmp69838
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp69838 _ctx68784_ _rt68790_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code68745_
                               _ctx68784_
                               _code68786_)))
                          (let ((_path68793_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx68784_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path68793_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code68746_
                         _ctx68784_
                         _code68786_
                         _rt68790_)))))
                 (_context-timestamp68744_
                  (lambda (_ctx68782_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx68782_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code68745_
                  (lambda (_ctx68764_ _code68765_)
                    (let* ((_lifts68767_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code68770_
                            (let ((__tmp69841
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code68765_))))
                                  (__tmp69840
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp69839
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69841
                               gx#current-expander-context
                               _ctx68764_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts68767_
                               gxc#current-compile-marks
                               __tmp69840
                               gxc#current-compile-identifiers
                               __tmp69839)))
                           (_runtime-code68772_
                            (if (let ((__tmp69845 (unbox _lifts68767_)))
                                  (declare (not safe))
                                  (null? __tmp69845))
                                _runtime-code68770_
                                (let ((__tmp69842
                                       (let ((__tmp69844
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code68770_
                                                      '())))
                                             (__tmp69843
                                              (reverse (unbox _lifts68767_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp69844 __tmp69843))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69842))))
                           (_runtime-code68774_
                            (let ((__tmp69846
                                   (let ((__tmp69848
                                          (let ((__tmp69849
                                                 (let ((__tmp69852
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp68744_
                                                           _ctx68764_)))
                                                       (__tmp69850
                                                        (let ((__tmp69851
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp69851
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69852
                                                         __tmp69850))))
                                            (declare (not safe))
                                            (cons 'define __tmp69849)))
                                         (__tmp69847
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code68772_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69848 __tmp69847))))
                              (declare (not safe))
                              (cons 'begin __tmp69846)))
                           (_scm068776_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68764_
                               '0
                               '".scm"))))
                      (let ((_scms68779_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx68764_))))
                        (let ((__tmp69853
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm068776_
                                    _runtime-code68774_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp69853
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms68779_)
                            (delete-file _scms68779_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm068776_
                           '" => "
                           _scms68779_))
                        (copy-file _scm068776_ _scms68779_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm068776_))))))
                 (_generate-loader-code68746_
                  (lambda (_ctx68753_ _code68754_ _rt68755_)
                    (let* ((_loader-code68758_
                            (let ((__tmp69854
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code68754_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69854
                               gx#current-expander-context
                               _ctx68753_)))
                           (_loader-code68760_
                            (if _rt68755_
                                (let ((__tmp69855
                                       (let ((__tmp69856
                                              (let ((__tmp69857
                                                     (let ((__tmp69858
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt68755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp69858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69857 '()))))
                                         (declare (not safe))
                                         (cons _loader-code68758_
                                               __tmp69856))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69855))
                                _loader-code68758_)))
                      (let ((__tmp69859
                             (lambda ()
                               (let ((__tmp69860
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68753_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp69860
                                  _loader-code68760_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp69859
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules68748_
                 (let ((__tmp69861
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx68741_))))
                   (declare (not safe))
                   (cons _ctx68741_ __tmp69861))))
            (for-each
             (lambda (_ctx68750_)
               (let ((__tmp69862
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile168743_ _ctx68750_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp69862
                  gxc#current-compile-decls
                  '())))
             _all-modules68748_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx68643_)
        (letrec ((_compile-ssi68645_
                  (lambda (_code68711_)
                    (let* ((_path68713_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68643_
                               '#f
                               '".ssi")))
                           (_prelude68724_
                            (let* ((_super68715_
                                    (##structure-ref
                                     _ctx68643_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e68717_
                                    (##structure-ref
                                     _super68715_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e68717_
                                  ((lambda (_g6871968721_)
                                     (make-symbol '":" _g6871968721_))
                                   _$e68717_)
                                  ':<root>)))
                           (_ns68726_
                            (##structure-ref
                             _ctx68643_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr68728_
                            (symbol->string
                             (##structure-ref
                              _ctx68643_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg68735_
                            (let ((_$e68730_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr68728_ '#\/))))
                              (if _$e68730_
                                  ((lambda (_x68733_)
                                     (string->symbol
                                      (substring _idstr68728_ '0 _x68733_)))
                                   _$e68730_)
                                  '#f)))
                           (_rt68737_
                            (let ((__tmp69863
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp69863 _ctx68643_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path68713_))
                      (let ((__tmp69864
                             (lambda ()
                               (displayln '"prelude:" '" " _prelude68724_)
                               (if _pkg68735_
                                   (displayln '"package:" '" " _pkg68735_)
                                   '#!void)
                               (displayln '"namespace:" '" " _ns68726_)
                               (newline)
                               (pretty-print _code68711_)
                               (if _rt68737_
                                   (pretty-print
                                    (let ((__tmp69865
                                           (let ((__tmp69869
                                                  (let ((__tmp69870
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp69870)))
                                                 (__tmp69866
                                                  (let ((__tmp69867
                                                         (let ((__tmp69868
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt68737_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp69868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69867 '()))))
                                             (declare (not safe))
                                             (cons __tmp69869 __tmp69866))))
                                      (declare (not safe))
                                      (cons '%#call __tmp69865)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path68713_
                         __tmp69864)))))
                 (_compile-phi68646_
                  (lambda (_part68651_)
                    (let* ((_part6865268665_ _part68651_)
                           (_E6865468669_
                            (lambda ()
                              (error '"No clause matching" _part6865268665_)))
                           (_K6865568680_
                            (lambda (_code68672_
                                     _n68673_
                                     _phi68674_
                                     _phi-ctx68675_)
                              (let* ((_code68678_
                                      (let ((__tmp69871
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code68672_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp69871
                                         gx#current-expander-context
                                         _phi-ctx68675_
                                         gx#current-expander-phi
                                         _phi68674_)))
                                     (__tmp69872
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68643_
                                         _n68673_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp69872
                                 _code68678_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6865268665_))
                          (let ((_hd6865668683_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6865268665_)))
                                (_tl6865768685_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6865268665_))))
                            (let ((_phi-ctx68688_ _hd6865668683_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6865768685_))
                                  (let ((_hd6865868690_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6865768685_)))
                                        (_tl6865968692_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6865768685_))))
                                    (let ((_phi68695_ _hd6865868690_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6865968692_))
                                          (let ((_hd6866068697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6865968692_)))
                                                (_tl6866168699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6865968692_))))
                                            (let ((_n68702_ _hd6866068697_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6866168699_))
                                                  (let ((_hd6866268704_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6866168699_)))
                                                        (_tl6866368706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6866168699_))))
                                                    (let ((_code68709_
                                                           _hd6866268704_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6866368706_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K6865568680_
                                                             _code68709_
                                                             _n68702_
                                                             _phi68695_
                                                             _phi-ctx68688_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E6865468669_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E6865468669_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6865468669_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E6865468669_)))))
                          (let () (declare (not safe)) (_E6865468669_)))))))
          (let ((_g69873_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx68643_))))
            (begin
              (let ((_g69874_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g69873_)
                           (##vector-length _g69873_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g69874_ 2)))
                    (error "Context expects 2 values" _g69874_)))
              (let ((_ssi-code68648_
                     (let () (declare (not safe)) (##vector-ref _g69873_ 0)))
                    (_phi-code68649_
                     (let () (declare (not safe)) (##vector-ref _g69873_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi68645_ _ssi-code68648_))
                  (for-each _compile-phi68646_ _phi-code68649_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx68626_)
        (let* ((_path68628_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx68626_ '#f '".ssxi.ss")))
               (_code68630_
                (let ((__tmp69875
                       (##structure-ref
                        _ctx68626_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp69875)))
               (_idstr68632_
                (symbol->string
                 (##structure-ref _ctx68626_ '1 gx#expander-context::t '#f)))
               (_pkg68639_
                (let ((_$e68634_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr68632_ '#\/))))
                  (if _$e68634_
                      ((lambda (_x68637_)
                         (string->symbol (substring _idstr68632_ '0 _x68637_)))
                       _$e68634_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path68628_))
          (let ((__tmp69876
                 (lambda ()
                   (displayln '"prelude: :gerbil/compiler/ssxi")
                   (if _pkg68639_ (displayln '"package: " _pkg68639_) '#!void)
                   (newline)
                   (pretty-print _code68630_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path68628_ __tmp69876)))))
    (define gxc#generate-meta-code
      (lambda (_ctx68619_)
        (let* ((_state68621_
                (let ((__obj69691 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj69691 _ctx68619_))
                  __obj69691))
               (_ssi-code68623_
                (let ((__tmp69877
                       (##structure-ref
                        _ctx68619_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp69877 _state68621_))))
          (values _ssi-code68623_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state68621_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx68612_)
        (let ((_lifts68614_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69880
                 (lambda ()
                   (let ((_code68617_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx68612_))))
                     (if (let ((__tmp69884 (unbox _lifts68614_)))
                           (declare (not safe))
                           (null? __tmp69884))
                         _code68617_
                         (let ((__tmp69881
                                (let ((__tmp69883
                                       (let ()
                                         (declare (not safe))
                                         (cons _code68617_ '())))
                                      (__tmp69882
                                       (reverse (unbox _lifts68614_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp69883 __tmp69882))))
                           (declare (not safe))
                           (cons 'begin __tmp69881))))))
                (__tmp69879
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp69878
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp69880
             gxc#current-compile-lift
             _lifts68614_
             gxc#current-compile-marks
             __tmp69879
             gxc#current-compile-identifiers
             __tmp69878)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx68608_)
        (let ((_modules68610_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69885
                 (##structure-ref _ctx68608_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp69885 _modules68610_))
          (reverse (unbox _modules68610_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path68591_ _code68592_ _phi?68593_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path68591_))
        (let ((__tmp69886
               (lambda ()
                 (pretty-print
                  (let ((__tmp69887
                         (let ((__tmp69894
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp69888
                                (let ((__tmp69893
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp69889
                                       (let ((__tmp69892
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp69890
                                              (let ((__tmp69891
                                                     (if _phi?68593_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp69891))))
                                         (declare (not safe))
                                         (cons __tmp69892 __tmp69890))))
                                  (declare (not safe))
                                  (cons __tmp69893 __tmp69889))))
                           (declare (not safe))
                           (cons __tmp69894 __tmp69888))))
                    (declare (not safe))
                    (cons 'declare __tmp69887)))
                 (pretty-print _code68592_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path68591_ __tmp69886))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path68591_ _phi?68593_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path68591_))))
    (define gxc#compile-scm-file__0
      (lambda (_path68599_ _code68600_)
        (let ((_phi?68602_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path68599_ _code68600_ _phi?68602_))))
    (define gxc#compile-scm-file
      (lambda _g69896_
        (let ((_g69895_ (let () (declare (not safe)) (##length _g69896_))))
          (cond ((let () (declare (not safe)) (##fx= _g69895_ 2))
                 (apply (lambda (_path68599_ _code68600_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path68599_ _code68600_)))
                        _g69896_))
                ((let () (declare (not safe)) (##fx= _g69895_ 3))
                 (apply (lambda (_path68604_ _code68605_ _phi?68606_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path68604_
                             _code68605_
                             _phi?68606_)))
                        _g69896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g69896_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?68511_)
        (if (gxc#current-compile-debug)
            (if _phi?68511_
                '()
                (let ((__tmp69897
                       (let ((__tmp69898
                              (let ((__tmp69899
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69899))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp69898))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp69897)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?68586_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?68586_))))
    (define gxc#gsc-debug-options
      (lambda _g69901_
        (let ((_g69900_ (let () (declare (not safe)) (##length _g69901_))))
          (cond ((let () (declare (not safe)) (##fx= _g69900_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g69901_))
                ((let () (declare (not safe)) (##fx= _g69900_ 1))
                 (apply (lambda (_phi?68588_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?68588_)))
                        _g69901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g69901_))))))
    (define gxc#gsc-compile-file
      (lambda (_path68497_ _phi?68498_)
        (let* ((_gsc-args68505_
                (let ((_$e68500_ (gxc#current-compile-gsc-options)))
                  (if _$e68500_
                      ((lambda (_opts68503_)
                         (let ((__tmp69902
                                (let ()
                                  (declare (not safe))
                                  (cons _path68497_ '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp69902 _opts68503_)))
                       _$e68500_)
                      (let () (declare (not safe)) (cons _path68497_ '())))))
               (_gsc-args68507_
                (let ((__tmp69903
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__% _phi?68498_))))
                  (declare (not safe))
                  (foldr1 cons _gsc-args68505_ __tmp69903))))
          (let ((__tmp69904 (let () (declare (not safe)) (gxc#gerbil-gsc))))
            (declare (not safe))
            (gxc#invoke __tmp69904 _gsc-args68507_)))))
    (define gxc#compile-output-file
      (lambda (_ctx68469_ _n68470_ _ext68471_)
        (letrec ((_module-relative-path68473_
                  (lambda (_ctx68495_)
                    (path-strip-directory
                     (let ((__tmp69905
                            (##structure-ref
                             _ctx68495_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp69905)))))
                 (_module-source-directory68474_
                  (lambda (_ctx68491_)
                    (path-directory
                     (let ((_mpath68493_
                            (##structure-ref
                             _ctx68491_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath68493_))
                           _mpath68493_
                           (let ()
                             (declare (not safe))
                             (last _mpath68493_)))))))
                 (_section-string68475_
                  (lambda (_n68489_)
                    (if (let () (declare (not safe)) (number? _n68489_))
                        (number->string _n68489_)
                        (if (let () (declare (not safe)) (symbol? _n68489_))
                            (symbol->string _n68489_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n68489_))
                                _n68489_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n68489_)))))))
                 (_file-name68476_
                  (lambda (_path68487_)
                    (if _n68470_
                        (string-append
                         _path68487_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string68475_ _n68470_))
                         _ext68471_)
                        (string-append _path68487_ _ext68471_))))
                 (_file-path68477_
                  (lambda ()
                    (let ((_$e68482_ (gxc#current-compile-output-dir)))
                      (if _$e68482_
                          ((lambda (_outdir68485_)
                             (path-expand
                              (let ((__tmp69907
                                     (let ((__tmp69908
                                            (##structure-ref
                                             _ctx68469_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp69908))))
                                (declare (not safe))
                                (_file-name68476_ __tmp69907))
                              _outdir68485_))
                           _$e68482_)
                          (path-expand
                           (let ((__tmp69906
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path68473_ _ctx68469_))))
                             (declare (not safe))
                             (_file-name68476_ __tmp69906))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory68474_ _ctx68469_))))))))
          (let ((_path68479_ (let () (declare (not safe)) (_file-path68477_))))
            (let ((__tmp69909 (path-directory _path68479_)))
              (declare (not safe))
              (create-directory* __tmp69909))
            _path68479_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx68452_)
        (letrec ((_file-name68454_
                  (lambda (_id68467_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id68467_))
                     '".scm")))
                 (_file-path68455_
                  (lambda ()
                    (let* ((_file68460_
                            (let ((__tmp69910
                                   (##structure-ref
                                    _ctx68452_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name68454_ __tmp69910)))
                           (_$e68462_ (gxc#current-compile-output-dir)))
                      (if _$e68462_
                          ((lambda (_outdir68465_)
                             (path-expand
                              _file68460_
                              (path-expand '"static" _outdir68465_)))
                           _$e68462_)
                          (path-expand _file68460_ '"static"))))))
          (let ((_path68457_ (let () (declare (not safe)) (_file-path68455_))))
            (let ((__tmp69911 (path-directory _path68457_)))
              (declare (not safe))
              (create-directory* __tmp69911))
            _path68457_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx68439_ _opts68440_)
        (let ((_$e68442_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts68440_))))
          (if _$e68442_
              (values _$e68442_)
              (let* ((_mod-str68445_
                      (symbol->string
                       (##structure-ref
                        _ctx68439_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e68447_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str68445_ '#\/))))
                (if _$e68447_
                    ((lambda (_ix68450_)
                       (substring
                        _mod-str68445_
                        (let () (declare (not safe)) (fx+ _ix68450_ '1))
                        (string-length _mod-str68445_)))
                     _$e68447_)
                    _mod-str68445_))))))
    (define gxc#static-module-name
      (lambda (_idstr68432_)
        (if (let () (declare (not safe)) (string? _idstr68432_))
            (let* ((_str68434_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr68432_)))
                   (_strs68436_
                    (let ()
                      (declare (not safe))
                      (string-split _str68434_ '#\/))))
              (let () (declare (not safe)) (string-join _strs68436_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr68432_))
                (let ((__tmp69912 (symbol->string _idstr68432_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp69912))
                (error '"Bad module id" _idstr68432_)))))
    (define gxc#invoke
      (lambda (_program68424_ _args68425_)
        (let ((__tmp69913
               (let ()
                 (declare (not safe))
                 (cons _program68424_ _args68425_))))
          (declare (not safe))
          (gxc#verbose '"invoke " __tmp69913))
        (let* ((_proc68427_
                (open-process
                 (let ((__tmp69914
                        (let ((__tmp69915
                               (let ((__tmp69916
                                      (let ((__tmp69917
                                             (let ((__tmp69918
                                                    (let ((__tmp69919
                                                           (let ((__tmp69920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons '#f '()))))
                     (declare (not safe))
                     (cons 'stderr-redirection: __tmp69920))))
              (declare (not safe))
              (cons '#f __tmp69919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'stdout-redirection:
                                                     __tmp69918))))
                                        (declare (not safe))
                                        (cons _args68425_ __tmp69917))))
                                 (declare (not safe))
                                 (cons 'arguments: __tmp69916))))
                          (declare (not safe))
                          (cons _program68424_ __tmp69915))))
                   (declare (not safe))
                   (cons 'path: __tmp69914))))
               (_status68429_ (process-status _proc68427_)))
          (close-port _proc68427_)
          (if (let () (declare (not safe)) (zero? _status68429_))
              '#!void
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Compilation error; process exit with nonzero status"
                 _program68424_))))))))
