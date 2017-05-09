(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda13880
      (lambda (_srcpath13882_ _opts13883_)
        (begin
          (if (string? _srcpath13882_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath13882_))
          (let ((_outdir13885_ (pgetq 'output-dir: _opts13883_))
                (_invoke-gsc?13886_ (pgetq 'invoke-gsc: _opts13883_))
                (_gsc-options13887_ (pgetq 'gsc-options: _opts13883_))
                (_keep-scm?13888_ (pgetq 'keep-scm: _opts13883_))
                (_verbosity13889_ (pgetq 'verbose: _opts13883_))
                (_optimize13890_ (pgetq 'optimize: _opts13883_))
                (_gen-ssxi13891_ (pgetq 'generate-ssxi: _opts13883_)))
            (begin
              (if _outdir13885_ (create-directory* _outdir13885_) '#!void)
              (if _optimize13890_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath13882_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath13882_))))
               gxc#current-compile-output-dir
               _outdir13885_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?13886_
               gxc#current-compile-gsc-options
               _gsc-options13887_
               gxc#current-compile-keep-scm
               _keep-scm?13888_
               gxc#current-compile-verbose
               _verbosity13889_
               gxc#current-compile-optimize
               _optimize13890_
               gxc#current-compile-generate-ssxi
               _gen-ssxi13891_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath13897_)
          (let ((_opts13899_ '()))
            (gxc#compile-file__opt-lambda13880 _srcpath13897_ _opts13899_))))
      (define gxc#compile-file
        (lambda _g13904_
          (let ((_g13903_ (length _g13904_)))
            (cond ((fx= _g13903_ 1)
                   (apply (lambda (_srcpath13897_)
                            (gxc#compile-file__0 _srcpath13897_))
                          _g13904_))
                  ((fx= _g13903_ 2)
                   (apply (lambda (_srcpath13901_ _opts13902_)
                            (gxc#compile-file__opt-lambda13880
                             _srcpath13901_
                             _opts13902_))
                          _g13904_))
                  (else (error "No clause matching arguments" _g13904_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda13859
      (lambda (_srcpath13861_ _opts13862_)
        (begin
          (if (string? _srcpath13861_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath13861_))
          (let ((_outdir13864_ (pgetq 'output-dir: _opts13862_))
                (_invoke-gsc?13865_ (pgetq 'invoke-gsc: _opts13862_))
                (_gsc-options13866_ (pgetq 'gsc-options: _opts13862_))
                (_keep-scm?13867_ (pgetq 'keep-scm: _opts13862_))
                (_verbosity13868_ (pgetq 'verbose: _opts13862_)))
            (begin
              (if _outdir13864_ (create-directory* _outdir13864_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath13861_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath13861_)
                    _opts13862_)))
               gxc#current-compile-output-dir
               _outdir13864_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?13865_
               gxc#current-compile-gsc-options
               _gsc-options13866_
               gxc#current-compile-keep-scm
               _keep-scm?13867_
               gxc#current-compile-verbose
               _verbosity13868_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath13874_)
          (let ((_opts13876_ '()))
            (gxc#compile-exe-stub__opt-lambda13859
             _srcpath13874_
             _opts13876_))))
      (define gxc#compile-exe-stub
        (lambda _g13906_
          (let ((_g13905_ (length _g13906_)))
            (cond ((fx= _g13905_ 1)
                   (apply (lambda (_srcpath13874_)
                            (gxc#compile-exe-stub__0 _srcpath13874_))
                          _g13906_))
                  ((fx= _g13905_ 2)
                   (apply (lambda (_srcpath13878_ _opts13879_)
                            (gxc#compile-exe-stub__opt-lambda13859
                             _srcpath13878_
                             _opts13879_))
                          _g13906_))
                  (else (error "No clause matching arguments" _g13906_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx13753_ _opts13754_)
      (let ((_find-export-binding13756_
             (lambda (_id13810_ _exports13811_)
               (let ((_$e13857_
                      (find (lambda (_e1381213814_)
                              (let ((_g1381613826_ _e1381213814_))
                                (let ((_E1381913830_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1381613826_))))
                                  (let ((_else1381813834_ (lambda () '#f)))
                                    (let ((_K1382013838_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1381613826_)
                                          (let ((_e1382113841_
                                                 (##vector-ref
                                                  _g1381613826_
                                                  '1)))
                                            (let ((_e1382213844_
                                                   (##vector-ref
                                                    _g1381613826_
                                                    '2)))
                                              (let ((_e1382313847_
                                                     (##vector-ref
                                                      _g1381613826_
                                                      '3)))
                                                (if (##eq? _e1382313847_ '0)
                                                    (let ((_e1382413850_
                                                           (##vector-ref
                                                            _g1381613826_
                                                            '4)))
                                                      (if ((lambda (_g1385213854_)
                                                             (eq? _g1385213854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id13810_))
                   _e1382413850_)
                  (_K1382013838_)
                  (_else1381813834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1381813834_)))))
                                          (_else1381813834_)))))))
                            _exports13811_)))
                 (if _$e13857_
                     (gx#core-resolve-module-export _$e13857_)
                     '#f)))))
        (let ((_generate-stub13757_
               (lambda ()
                 (let ((_mod-str13798_
                        (symbol->string
                         (##structure-ref
                          _ctx13753_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt13800_
                          (string-append _mod-str13798_ '"__rt")))
                     (let ((_mod-main13807_
                            (let ((_$e13802_
                                   (_find-export-binding13756_
                                    'main
                                    (##structure-ref
                                     _ctx13753_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e13802_
                                  ((lambda (_bind13805_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind13805_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind13805_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e13802_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx13753_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt13800_
                                              (cons (cons 'quote
                                                          (cons _mod-main13807_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub13758_
                 (lambda (_output-scm13785_ _output-bin13786_)
                   (let ((_init-stub13788_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args13790_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin13786_
                                              (cons _init-stub13788_
                                                    (cons _output-scm13785_
                                                          '())))))))
                       (let ((_proc13792_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args13790_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status13794_ (process-status _proc13792_)))
                           (let ()
                             (if (zero? _status13794_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm13785_
                                  _output-bin13786_
                                  _status13794_))))))))))
            (let ((_output-bin13780_
                   (let ((_$e13760_ (pgetq 'output-file: _opts13754_)))
                     (if _$e13760_
                         (values _$e13760_)
                         (let ((_mod-str13763_
                                (symbol->string
                                 (##structure-ref
                                  _ctx13753_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name13770_
                                  (let ((_$e13765_
                                         (string-rindex _mod-str13763_ '#\/)))
                                    (if _$e13765_
                                        ((lambda (_ix13768_)
                                           (substring
                                            _mod-str13763_
                                            (fx1+ _ix13768_)
                                            (string-length _mod-str13763_)))
                                         _$e13765_)
                                        _mod-str13763_))))
                             (let ()
                               (let ((_$e13773_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e13773_
                                     ((lambda (_g1377513777_)
                                        (path-expand
                                         _mod-name13770_
                                         _g1377513777_))
                                      _$e13773_)
                                     _mod-name13770_)))))))))
              (let ((_output-scm13782_
                     (string-append _output-bin13780_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm13782_
                     _generate-stub13757_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub13758_
                         _output-scm13782_
                         _output-bin13780_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm13782_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx13750_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx13750_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx13750_)
               '#!void)
           (gxc#collect-bindings _ctx13750_)
           (gxc#compile-runtime-code _ctx13750_)
           (gxc#compile-meta-code _ctx13750_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx13750_)
               '#!void)))
       gx#current-expander-context
       _ctx13750_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (make-struct-instance gxc#symbol-table::t)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx13748_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx13748_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx13715_)
      (let ((_generate-runtime-code13718_
             (lambda (_ctx13733_ _code13734_)
               (let ((_runtime-code13737_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code13734_))
                       gx#current-expander-context
                       _ctx13733_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx13733_ '0 '".scm")
                  _runtime-code13737_)))))
        (let ((_generate-loader-code13719_
               (lambda (_ctx13723_ _code13724_ _rt13725_)
                 (let ((_loader-code13728_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code13724_))
                         gx#current-expander-context
                         _ctx13723_)))
                   (let ((_loader-code13730_
                          (if _rt13725_
                              (cons 'begin
                                    (cons _loader-code13728_
                                          (cons (cons 'load-module
                                                      (cons _rt13725_ '()))
                                                '())))
                              _loader-code13728_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx13723_ 'rt '".scm")
                        _loader-code13730_)))))))
          (let ((_compile113717_
                 (lambda (_ctx13739_)
                   (let ((_code13741_
                          (##structure-ref
                           _ctx13739_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt13745_
                            (if (gxc#apply-find-runtime-code _code13741_)
                                (let ((_idstr13743_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx13739_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr13743_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt13745_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx13739_
                                  _rt13745_)
                                 (_generate-runtime-code13718_
                                  _ctx13739_
                                  _code13741_))
                               '#!void)
                           (_generate-loader-code13719_
                            _ctx13739_
                            _code13741_
                            _rt13745_))))))))
            (let ((_all-modules13721_
                   (cons _ctx13715_ (gxc#lift-nested-modules _ctx13715_))))
              (for-each _compile113717_ _all-modules13721_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx13617_)
      (let ((_compile-ssi13619_
             (lambda (_code13685_)
               (let ((_path13687_
                      (gxc#compile-output-file _ctx13617_ '#f '".ssi")))
                 (let ((_prelude13698_
                        (let ((_super13689_
                               (##structure-ref
                                _ctx13617_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e13691_
                                 (##structure-ref
                                  _super13689_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e13691_
                                ((lambda (_g1369313695_)
                                   (make-symbol '":" _g1369313695_))
                                 _$e13691_)
                                ':<root>)))))
                   (let ((_ns13700_
                          (##structure-ref
                           _ctx13617_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr13702_
                            (symbol->string
                             (##structure-ref
                              _ctx13617_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg13709_
                              (let ((_$e13704_
                                     (string-rindex _idstr13702_ '#\/)))
                                (if _$e13704_
                                    ((lambda (_x13707_)
                                       (string->symbol
                                        (substring _idstr13702_ '0 _x13707_)))
                                     _$e13704_)
                                    '#f))))
                         (let ((_rt13711_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx13617_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path13687_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path13687_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude13698_)
                                    (if _pkg13709_
                                        (displayln '"package:" '" " _pkg13709_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns13700_)
                                    (newline)
                                    (pretty-print _code13685_)
                                    (if _rt13711_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt13711_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi13620_
               (lambda (_part13625_)
                 (let ((_part1362613639_ _part13625_))
                   (let ((_E1362813643_
                          (lambda ()
                            (error '"No clause matching" _part1362613639_))))
                     (let ((_K1362913654_
                            (lambda (_code13646_
                                     _n13647_
                                     _phi13648_
                                     _phi-ctx13649_)
                              (let ((_code13652_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code13646_))
                                      gx#current-expander-context
                                      _phi-ctx13649_
                                      gx#current-expander-phi
                                      _phi13648_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx13617_
                                  _n13647_
                                  '".scm")
                                 _code13652_)))))
                       (if (##pair? _part1362613639_)
                           (let ((_hd1363013657_ (##car _part1362613639_))
                                 (_tl1363113659_ (##cdr _part1362613639_)))
                             (let ((_phi-ctx13662_ _hd1363013657_))
                               (if (##pair? _tl1363113659_)
                                   (let ((_hd1363213664_
                                          (##car _tl1363113659_))
                                         (_tl1363313666_
                                          (##cdr _tl1363113659_)))
                                     (let ((_phi13669_ _hd1363213664_))
                                       (if (##pair? _tl1363313666_)
                                           (let ((_hd1363413671_
                                                  (##car _tl1363313666_))
                                                 (_tl1363513673_
                                                  (##cdr _tl1363313666_)))
                                             (let ((_n13676_ _hd1363413671_))
                                               (if (##pair? _tl1363513673_)
                                                   (let ((_hd1363613678_
                                                          (##car _tl1363513673_))
                                                         (_tl1363713680_
                                                          (##cdr _tl1363513673_)))
                                                     (let ((_code13683_
                                                            _hd1363613678_))
                                                       (if (##null? _tl1363713680_)
                                                           (_K1362913654_
                                                            _code13683_
                                                            _n13676_
                                                            _phi13669_
                                                            _phi-ctx13662_)
                                                           (_E1362813643_))))
                                                   (_E1362813643_))))
                                           (_E1362813643_))))
                                   (_E1362813643_))))
                           (_E1362813643_))))))))
          (let ((_g13907_ (gxc#generate-meta-code _ctx13617_)))
            (begin
              (let ((_g13908_ (values-count _g13907_)))
                (if (not (fx= _g13908_ 2))
                    (error "Context expects 2 values" _g13908_)))
              (let ((_ssi-code13622_ (values-ref _g13907_ 0))
                    (_phi-code13623_ (values-ref _g13907_ 1)))
                (begin
                  (_compile-ssi13619_ _ssi-code13622_)
                  (for-each _compile-phi13620_ _phi-code13623_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx13600_)
      (let ((_path13602_ (gxc#compile-output-file _ctx13600_ '#f '".ssxi.ss")))
        (let ((_code13604_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx13600_ '11 gx#module-context::t '#f))))
          (let ((_idstr13606_
                 (symbol->string
                  (##structure-ref _ctx13600_ '1 gx#expander-context::t '#f))))
            (let ((_pkg13613_
                   (let ((_$e13608_ (string-rindex _idstr13606_ '#\/)))
                     (if _$e13608_
                         ((lambda (_x13611_)
                            (string->symbol
                             (substring _idstr13606_ '0 _x13611_)))
                          _$e13608_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path13602_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path13602_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg13613_
                           (displayln '"package: " _pkg13613_)
                           '#!void)
                       (newline)
                       (pretty-print _code13604_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx13593_)
      (let ((_state13595_ (make-struct-instance gxc#meta-state::t _ctx13593_)))
        (let ((_ssi-code13597_
               (gxc#apply-generate-meta
                (##structure-ref _ctx13593_ '11 gx#module-context::t '#f)
                _state13595_)))
          (let ()
            (values _ssi-code13597_ (gxc#meta-state-end! _state13595_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx13586_)
      (let ((_lifts13588_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code13591_ (gxc#apply-generate-runtime-phi _stx13586_)))
             (if (null? (unbox _lifts13588_))
                 _code13591_
                 (cons 'begin
                       (foldr cons
                              (cons _code13591_ '())
                              (reverse (unbox _lifts13588_)))))))
         gxc#current-compile-lift
         _lifts13588_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx13582_)
      (let ((_modules13584_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx13582_ '11 gx#module-context::t '#f)
           _modules13584_)
          (reverse (unbox _modules13584_))))))
  (define gxc#compile-scm-file
    (lambda (_path13578_ _code13579_)
      (begin
        (gxc#verbose '"compile " _path13578_)
        (with-output-to-file
         (cons 'path: (cons _path13578_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code13579_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path13578_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path13578_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path13564_)
      (let ((_gsc-args13571_
             (let ((_$e13566_ (gxc#current-compile-gsc-options)))
               (if _$e13566_
                   ((lambda (_opts13569_)
                      (foldr cons (cons _path13564_ '()) _opts13569_))
                    _$e13566_)
                   (cons _path13564_ '())))))
        (let ((_proc13573_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args13571_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status13575_ (process-status _proc13573_)))
            (let ()
              (if (zero? _status13575_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path13564_
                   _status13575_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx13536_ _n13537_ _ext13538_)
      (let ((_module-relative-path13540_
             (lambda (_ctx13562_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx13562_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory13541_
               (lambda (_ctx13558_)
                 (path-directory
                  (let ((_mpath13560_
                         (##structure-ref
                          _ctx13558_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath13560_)
                        _mpath13560_
                        (last _mpath13560_)))))))
          (let ((_section-string13542_
                 (lambda (_n13556_)
                   (if (number? _n13556_)
                       (number->string _n13556_)
                       (if (symbol? _n13556_)
                           (symbol->string _n13556_)
                           (if (string? _n13556_)
                               _n13556_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n13556_)))))))
            (let ((_file-name13543_
                   (lambda (_path13554_)
                     (if _n13537_
                         (string-append
                          _path13554_
                          '"__"
                          (_section-string13542_ _n13537_)
                          _ext13538_)
                         (string-append _path13554_ _ext13538_)))))
              (let ((_file-path13544_
                     (lambda ()
                       (let ((_$e13549_ (gxc#current-compile-output-dir)))
                         (if _$e13549_
                             ((lambda (_outdir13552_)
                                (path-expand
                                 (_file-name13543_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx13536_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir13552_))
                              _$e13549_)
                             (path-expand
                              (_file-name13543_
                               (_module-relative-path13540_ _ctx13536_))
                              (_module-source-directory13541_ _ctx13536_)))))))
                (let ((_path13546_ (_file-path13544_)))
                  (begin
                    (create-directory* (path-directory _path13546_))
                    _path13546_))))))))))
