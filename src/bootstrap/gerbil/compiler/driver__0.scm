(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#compile-file
    (let ((_opt-lambda495507_
           (lambda (_srcpath497_ _opts498_)
             (begin
               (if (string? _srcpath497_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath497_))
               (let ((_outdir500_ (pgetq 'output-dir: _opts498_))
                     (_invoke-gsc?501_ (pgetq 'invoke-gsc: _opts498_))
                     (_gsc-options502_ (pgetq 'gsc-options: _opts498_))
                     (_keep-scm?503_ (pgetq 'keep-scm: _opts498_))
                     (_verbosity504_ (pgetq 'verbose: _opts498_)))
                 (begin
                   (if _outdir500_ (create-directory* _outdir500_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath497_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath497_))))
                    gxc#current-compile-output-dir
                    _outdir500_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?501_
                    gxc#current-compile-gsc-options
                    _gsc-options502_
                    gxc#current-compile-keep-scm
                    _keep-scm?503_
                    gxc#current-compile-verbose
                    _verbosity504_)))))))
      (lambda _g517_
        (let ((_g516_ (length _g517_)))
          (cond ((fx= _g516_ 1)
                 (apply (lambda (_srcpath510_)
                          (let ((_opts512_ '()))
                            (_opt-lambda495507_ _srcpath510_ _opts512_)))
                        _g517_))
                ((fx= _g516_ 2)
                 (apply (lambda (_srcpath514_ _opts515_)
                          (_opt-lambda495507_ _srcpath514_ _opts515_))
                        _g517_))
                (else (error "No clause matching arguments" _g517_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda474486_
           (lambda (_srcpath476_ _opts477_)
             (begin
               (if (string? _srcpath476_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath476_))
               (let ((_outdir479_ (pgetq 'output-dir: _opts477_))
                     (_invoke-gsc?480_ (pgetq 'invoke-gsc: _opts477_))
                     (_gsc-options481_ (pgetq 'gsc-options: _opts477_))
                     (_keep-scm?482_ (pgetq 'keep-scm: _opts477_))
                     (_verbosity483_ (pgetq 'verbose: _opts477_)))
                 (begin
                   (if _outdir479_ (create-directory* _outdir479_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath476_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath476_)
                         _opts477_)))
                    gxc#current-compile-output-dir
                    _outdir479_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?480_
                    gxc#current-compile-gsc-options
                    _gsc-options481_
                    gxc#current-compile-keep-scm
                    _keep-scm?482_
                    gxc#current-compile-verbose
                    _verbosity483_)))))))
      (lambda _g519_
        (let ((_g518_ (length _g519_)))
          (cond ((fx= _g518_ 1)
                 (apply (lambda (_srcpath489_)
                          (let ((_opts491_ '()))
                            (_opt-lambda474486_ _srcpath489_ _opts491_)))
                        _g519_))
                ((fx= _g518_ 2)
                 (apply (lambda (_srcpath493_ _opts494_)
                          (_opt-lambda474486_ _srcpath493_ _opts494_))
                        _g519_))
                (else (error "No clause matching arguments" _g519_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx368_ _opts369_)
      (let ((_find-export-binding371_
             (lambda (_id425_ _exports426_)
               (let ((_$e472_ (find (lambda (_e427429_)
                                      (let ((_g431441_ _e427429_))
                                        (let ((_E434445_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _g431441_))))
                                          (let ((_else433449_ (lambda () '#f)))
                                            (let ((_K435453_ (lambda () '#t)))
                                              (if (direct-struct-instance?
                                                   gx#module-export::t
                                                   _g431441_)
                                                  (let ((_e436456_
                                                         (##vector-ref
                                                          _g431441_
                                                          '1)))
                                                    (let ((_e437459_
                                                           (##vector-ref
                                                            _g431441_
                                                            '2)))
                                                      (let ((_e438462_
                                                             (##vector-ref
                                                              _g431441_
                                                              '3)))
                                                        (if (##eq? _e438462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '0)
                    (let ((_e439465_ (##vector-ref _g431441_ '4)))
                      (if ((lambda (_g467469_) (eq? _g467469_ _id425_))
                           _e439465_)
                          (_K435453_)
                          (_else433449_)))
                    (_else433449_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else433449_)))))))
                                    _exports426_)))
                 (if _$e472_ (gx#core-resolve-module-export _$e472_) '#f)))))
        (let ((_generate-stub372_
               (lambda ()
                 (let ((_mod-str413_
                        (symbol->string (gx#expander-context-id _ctx368_))))
                   (let ((_mod-rt415_ (string-append _mod-str413_ '"__rt")))
                     (let ((_mod-main422_
                            (let ((_$e417_ (_find-export-binding371_
                                            'main
                                            (gx#module-context-export
                                             _ctx368_))))
                              (if _$e417_
                                  ((lambda (_bind420_)
                                     (begin
                                       (if (gx#runtime-binding? _bind420_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (gx#binding-id _bind420_)))
                                   _$e417_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (gx#expander-context-id _ctx368_))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt415_
                                              (cons (cons 'quote
                                                          (cons _mod-main422_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub373_
                 (lambda (_output-scm400_ _output-bin401_)
                   (let ((_init-stub403_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args405_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin401_
                                              (cons _init-stub403_
                                                    (cons _output-scm400_
                                                          '())))))))
                       (let ((_proc407_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args405_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status409_ (process-status _proc407_)))
                           (let ()
                             (if (zero? _status409_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm400_
                                  _output-bin401_
                                  _status409_))))))))))
            (let ((_output-bin395_
                   (let ((_$e375_ (pgetq 'output-file: _opts369_)))
                     (if _$e375_
                         (values _$e375_)
                         (let ((_mod-str378_
                                (symbol->string
                                 (gx#expander-context-id _ctx368_))))
                           (let ((_mod-name385_
                                  (let ((_$e380_ (string-rindex
                                                  _mod-str378_
                                                  '#\/)))
                                    (if _$e380_
                                        ((lambda (_ix383_)
                                           (substring
                                            _mod-str378_
                                            (fx1+ _ix383_)
                                            (string-length _mod-str378_)))
                                         _$e380_)
                                        _mod-str378_))))
                             (let ()
                               (let ((_$e388_ (gxc#current-compile-output-dir)))
                                 (if _$e388_
                                     ((lambda (_g390392_)
                                        (path-expand _mod-name385_ _g390392_))
                                      _$e388_)
                                     _mod-name385_)))))))))
              (let ((_output-scm397_ (string-append _output-bin395_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file _output-scm397_ _generate-stub372_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub373_ _output-scm397_ _output-bin395_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm397_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx365_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx365_))
           (gxc#collect-bindings _ctx365_)
           (gxc#compile-runtime-code _ctx365_)
           (gxc#compile-meta-code _ctx365_)))
       gx#current-expander-context
       _ctx365_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx363_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx363_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx330_)
      (let ((_generate-runtime-code333_
             (lambda (_ctx348_ _code349_)
               (let ((_runtime-code352_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code349_))
                       gx#current-expander-context
                       _ctx348_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx348_ '0 '".scm")
                  _runtime-code352_)))))
        (let ((_generate-loader-code334_
               (lambda (_ctx338_ _code339_ _rt340_)
                 (let ((_loader-code343_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code339_))
                         gx#current-expander-context
                         _ctx338_)))
                   (let ((_loader-code345_
                          (if _rt340_
                              (cons 'begin
                                    (cons _loader-code343_
                                          (cons (cons 'load-module
                                                      (cons _rt340_ '()))
                                                '())))
                              _loader-code343_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx338_ 'rt '".scm")
                        _loader-code345_)))))))
          (let ((_compile1332_
                 (lambda (_ctx354_)
                   (let ((_code356_ (gx#module-context-code _ctx354_)))
                     (let ((_rt360_ (if (gxc#apply-find-runtime-code _code356_)
                                        (let ((_idstr358_
                                               (symbol->string
                                                (gx#expander-context-id
                                                 _ctx354_))))
                                          (string-append _idstr358_ '"__0"))
                                        '#f)))
                       (let ()
                         (begin
                           (if _rt360_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx354_
                                  _rt360_)
                                 (_generate-runtime-code333_
                                  _ctx354_
                                  _code356_))
                               '#!void)
                           (_generate-loader-code334_
                            _ctx354_
                            _code356_
                            _rt360_))))))))
            (let ((_all-modules336_
                   (cons _ctx330_ (gxc#lift-nested-modules _ctx330_))))
              (for-each _compile1332_ _all-modules336_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx232_)
      (let ((_compile-ssi234_
             (lambda (_code300_)
               (let ((_path302_
                      (gxc#compile-output-file _ctx232_ '#f '".ssi")))
                 (let ((_prelude313_
                        (let ((_super304_ (gx#phi-context-super _ctx232_)))
                          (let ((_$e306_ (gx#expander-context-id _super304_)))
                            (if _$e306_
                                ((lambda (_g308310_)
                                   (make-symbol '":" _g308310_))
                                 _$e306_)
                                ':<root>)))))
                   (let ((_ns315_ (gx#module-context-ns _ctx232_)))
                     (let ((_idstr317_
                            (symbol->string
                             (gx#expander-context-id _ctx232_))))
                       (let ((_pkg324_
                              (let ((_$e319_ (string-rindex _idstr317_ '#\/)))
                                (if _$e319_
                                    ((lambda (_x322_)
                                       (string->symbol
                                        (substring _idstr317_ '0 _x322_)))
                                     _$e319_)
                                    '#f))))
                         (let ((_rt326_ (hash-get
                                         (gxc#current-compile-runtime-sections)
                                         _ctx232_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path302_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path302_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude313_)
                                    (if _pkg324_
                                        (displayln '"package:" '" " _pkg324_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns315_)
                                    (newline)
                                    (pretty-print _code300_)
                                    (if _rt326_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt326_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi235_
               (lambda (_part240_)
                 (let ((_part241254_ _part240_))
                   (let ((_E243258_
                          (lambda ()
                            (error '"No clause matching" _part241254_))))
                     (let ((_K244269_
                            (lambda (_code261_ _n262_ _phi263_ _phi-ctx264_)
                              (let ((_code267_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code261_))
                                      gx#current-expander-context
                                      _phi-ctx264_
                                      gx#current-expander-phi
                                      _phi263_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx232_
                                  _n262_
                                  '".scm")
                                 _code267_)))))
                       (if (##pair? _part241254_)
                           (let ((_hd245272_ (##car _part241254_))
                                 (_tl246274_ (##cdr _part241254_)))
                             (let ((_phi-ctx277_ _hd245272_))
                               (if (##pair? _tl246274_)
                                   (let ((_hd247279_ (##car _tl246274_))
                                         (_tl248281_ (##cdr _tl246274_)))
                                     (let ((_phi284_ _hd247279_))
                                       (if (##pair? _tl248281_)
                                           (let ((_hd249286_
                                                  (##car _tl248281_))
                                                 (_tl250288_
                                                  (##cdr _tl248281_)))
                                             (let ((_n291_ _hd249286_))
                                               (if (##pair? _tl250288_)
                                                   (let ((_hd251293_
                                                          (##car _tl250288_))
                                                         (_tl252295_
                                                          (##cdr _tl250288_)))
                                                     (let ((_code298_
                                                            _hd251293_))
                                                       (if (##null? _tl252295_)
                                                           (_K244269_
                                                            _code298_
                                                            _n291_
                                                            _phi284_
                                                            _phi-ctx277_)
                                                           (_E243258_))))
                                                   (_E243258_))))
                                           (_E243258_))))
                                   (_E243258_))))
                           (_E243258_))))))))
          (let ((_g520_ (gxc#generate-meta-code _ctx232_)))
            (begin
              (let ((_g521_ (values-count _g520_)))
                (if (not (fx= _g521_ 2))
                    (error "Context expects 2 values" _g521_)))
              (let ((_ssi-code237_ (values-ref _g520_ 0))
                    (_phi-code238_ (values-ref _g520_ 1)))
                (begin
                  (_compile-ssi234_ _ssi-code237_)
                  (for-each _compile-phi235_ _phi-code238_)))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx225_)
      (let ((_state227_ (gxc#make-meta-state _ctx225_)))
        (let ((_ssi-code229_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx225_)
                _state227_)))
          (let () (values _ssi-code229_ (gxc#meta-state-end! _state227_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx218_)
      (let ((_lifts220_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code223_ (gxc#apply-generate-runtime-phi _stx218_)))
             (if (null? (unbox _lifts220_))
                 _code223_
                 (cons 'begin
                       (foldr cons
                              (cons _code223_ '())
                              (reverse (unbox _lifts220_)))))))
         gxc#current-compile-lift
         _lifts220_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx214_)
      (let ((_modules216_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx214_)
           _modules216_)
          (reverse (unbox _modules216_))))))
  (define gxc#compile-scm-file
    (lambda (_path210_ _code211_)
      (begin
        (gxc#verbose '"compile " _path210_)
        (with-output-to-file
         (cons 'path: (cons _path210_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code211_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path210_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path210_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path196_)
      (let ((_gsc-args203_
             (let ((_$e198_ (gxc#current-compile-gsc-options)))
               (if _$e198_
                   ((lambda (_opts201_)
                      (foldr cons (cons _path196_ '()) _opts201_))
                    _$e198_)
                   (cons _path196_ '())))))
        (let ((_proc205_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args203_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status207_ (process-status _proc205_)))
            (let ()
              (if (zero? _status207_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path196_
                   _status207_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx168_ _n169_ _ext170_)
      (let ((_module-relative-path172_
             (lambda (_ctx194_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx194_))))))
        (let ((_module-source-directory173_
               (lambda (_ctx190_)
                 (path-directory
                  (let ((_mpath192_ (gx#module-context-path _ctx190_)))
                    (if (string? _mpath192_) _mpath192_ (last _mpath192_)))))))
          (let ((_section-string174_
                 (lambda (_n188_)
                   (if (number? _n188_)
                       (number->string _n188_)
                       (if (symbol? _n188_)
                           (symbol->string _n188_)
                           (if (string? _n188_)
                               _n188_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n188_)))))))
            (let ((_file-name175_
                   (lambda (_path186_)
                     (if _n169_
                         (string-append
                          _path186_
                          '"__"
                          (_section-string174_ _n169_)
                          _ext170_)
                         (string-append _path186_ _ext170_)))))
              (let ((_file-path176_
                     (lambda ()
                       (let ((_$e181_ (gxc#current-compile-output-dir)))
                         (if _$e181_
                             ((lambda (_outdir184_)
                                (path-expand
                                 (_file-name175_
                                  (symbol->string
                                   (gx#expander-context-id _ctx168_)))
                                 _outdir184_))
                              _$e181_)
                             (path-expand
                              (_file-name175_
                               (_module-relative-path172_ _ctx168_))
                              (_module-source-directory173_ _ctx168_)))))))
                (let ((_path178_ (_file-path176_)))
                  (begin
                    (create-directory* (path-directory _path178_))
                    _path178_))))))))))
