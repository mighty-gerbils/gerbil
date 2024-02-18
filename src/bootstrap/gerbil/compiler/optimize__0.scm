(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708280340)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj294173
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj294173)
               __obj294173)))))
    (define gxc#optimize!
      (lambda (_ctx289799_)
        (let ((__tmp294177
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx289799_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp294179
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp294178
                        (##structure-ref
                         _ctx289799_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp294179 __tmp294178 '#t))
                 (let ((_code289802_
                        (let ((__tmp294180
                               (##structure-ref
                                _ctx289799_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp294180))))
                   (##structure-set!
                    _ctx289799_
                    _code289802_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp294176 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp294175 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp294177
           gxc#current-compile-mutators
           __tmp294176
           gxc#current-compile-local-type
           __tmp294175))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp294181
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp294181 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx289743_)
        (letrec* ((_deps289745_
                   (let* ((_imports289789_
                           (##structure-ref
                            _ctx289743_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e289791_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx289743_))))
                     (if _$e289791_
                         ((lambda (_g289793289795_)
                            (let ()
                              (declare (not safe))
                              (cons _g289793289795_ _imports289789_)))
                          _$e289791_)
                         _imports289789_))))
          (let _lp289747_ ((_rest289749_ _deps289745_))
            (let* ((_rest289750289758_ _rest289749_)
                   (_else289752289766_ (lambda () '#!void))
                   (_K289754289777_
                    (lambda (_rest289769_ _hd289770_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd289770_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp294195
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp294194
                                       (##structure-ref
                                        _hd289770_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp294195 __tmp294194))
                                '#!void
                                (begin
                                  (let ((_$e289772_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd289770_))))
                                    (if _$e289772_
                                        ((lambda (_pre289775_)
                                           (let ((__tmp294192
                                                  (let ((__tmp294193
                                                         (##structure-ref
                                                          _hd289770_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre289775_
                                                          __tmp294193))))
                                             (declare (not safe))
                                             (_lp289747_ __tmp294192)))
                                         _$e289772_)
                                        (let ((__tmp294191
                                               (##structure-ref
                                                _hd289770_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp289747_ __tmp294191))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd289770_))))
                            (let ()
                              (declare (not safe))
                              (_lp289747_ _rest289769_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd289770_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp294190
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp294189
                                           (##structure-ref
                                            _hd289770_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp294190 __tmp294189))
                                    '#!void
                                    (begin
                                      (let ((__tmp294188
                                             (##structure-ref
                                              _hd289770_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp289747_ __tmp294188))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd289770_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp289747_ _rest289769_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd289770_
                                     'gx#module-import::t))
                                  (let ((__tmp294186
                                         (let ((__tmp294187
                                                (##direct-structure-ref
                                                 _hd289770_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp294187 _rest289769_))))
                                    (declare (not safe))
                                    (_lp289747_ __tmp294186))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd289770_
                                         'gx#module-export::t))
                                      (let ((__tmp294184
                                             (let ((__tmp294185
                                                    (##direct-structure-ref
                                                     _hd289770_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp294185
                                                     _rest289769_))))
                                        (declare (not safe))
                                        (_lp289747_ __tmp294184))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd289770_
                                             'gx#import-set::t))
                                          (let ((__tmp294182
                                                 (let ((__tmp294183
                                                        (##direct-structure-ref
                                                         _hd289770_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp294183
                                                         _rest289769_))))
                                            (declare (not safe))
                                            (_lp289747_ __tmp294182))
                                          (error '"Unexpected module import"
                                                 _hd289770_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest289750289758_))
                  (let ((_hd289755289780_
                         (let ()
                           (declare (not safe))
                           (##car _rest289750289758_)))
                        (_tl289756289782_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest289750289758_))))
                    (let* ((_hd289785_ _hd289755289780_)
                           (_rest289787_ _tl289756289782_))
                      (declare (not safe))
                      (_K289754289777_ _rest289787_ _hd289785_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx289723_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx289723_
                    'gx#module-context::t))
                 (let ((__tmp294196
                        (##structure-ref
                         _ctx289723_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp294196)))
            '#!void
            (let* ((_ht289725_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id289727_
                    (##structure-ref
                     _ctx289723_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod289729_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht289725_ _id289727_))))
              (let ((_$e289732_ _mod289729_))
                (if _$e289732_
                    _$e289732_
                    (let* ((_mod289735_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx289723_)))
                           (_val289740_
                            (let ((_$e289737_ _mod289735_))
                              (if _$e289737_ _$e289737_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht289725_ _id289727_ _val289740_))
                      _val289740_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx289721_)
        (if (##structure-ref _ctx289721_ '1 gx#expander-context::t '#f)
            (let ((__tmp294197
                   (##structure-ref
                    _ctx289721_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp294197))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id289698_)
        (letrec ((_catch-e289700_
                  (lambda (_exn289719_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id289698_))
                          (display-exception _exn289719_))
                        '#!void)
                    '#f))
                 (_import-e289701_
                  (lambda ()
                    (let* ((_str-id289704_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id289698_))
                             '".ssxi"))
                           (_artefact-path289712_
                            (let ((_odir289705289707_
                                   (gxc#current-compile-output-dir)))
                              (if _odir289705289707_
                                  (let ((_odir289710_ _odir289705289707_))
                                    (path-expand
                                     (string-append _str-id289704_ '".ss")
                                     _odir289710_))
                                  '#f)))
                           (_library-path289714_
                            (string->symbol
                             (string-append '":" _str-id289704_ '".ss")))
                           (_ssxi-path289716_
                            (if (and _artefact-path289712_
                                     (file-exists? _artefact-path289712_))
                                _artefact-path289712_
                                _library-path289714_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path289716_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path289716_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e289700_ _import-e289701_)))))
    (define gxc#optimize-source
      (lambda (_stx289689_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx289689_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx289689_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx289689_))
        (let* ((_stx289691_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx289689_)))
               (_stx289693_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx289691_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx289693_))
          (let ((_stx289696_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx289693_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx289696_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl289686_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp294198 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl289686_ __tmp294198))
           (let ()
             (declare (not safe))
             (hash-put! _tbl289686_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl289686_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl289686_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl289686_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl289686_ '%#call gxc#generate-ssxi-call%))
           _tbl289686_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx289669_ . _args289671_)
        (let ((__tmp294200
               (lambda ()
                 (declare (not safe))
                 (if (null? _args289671_)
                     (gxc#compile-e__0 _stx289669_)
                     (let ((_arg1289676_ (car _args289671_))
                           (_rest289678_ (cdr _args289671_)))
                       (if (null? _rest289678_)
                           (gxc#compile-e__1 _stx289669_ _arg1289676_)
                           (let ((_arg2289681_ (car _rest289678_))
                                 (_rest289683_ (cdr _rest289678_)))
                             (if (null? _rest289683_)
                                 (gxc#compile-e__2
                                  _stx289669_
                                  _arg1289676_
                                  _arg2289681_)
                                 (apply gxc#compile-e
                                        _stx289669_
                                        _arg1289676_
                                        _arg2289681_
                                        _rest289683_))))))))
              (__tmp294199 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp294200
           gxc#current-compile-methods
           __tmp294199))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx289630_)
        (let* ((_g289632289642_
                (lambda (_g289633289639_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g289633289639_))))
               (_g289631289666_
                (lambda (_g289633289645_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g289633289645_))
                      (let ((_e289637289647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g289633289645_))))
                        (let ((_hd289636289650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e289637289647_)))
                              (_tl289635289652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e289637289647_))))
                          ((lambda (_L289655_)
                             (let ((__tmp294203
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx289630_))))
                                   (__tmp294201
                                    (let ((__tmp294202
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp294202 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp294203
                                gx#current-expander-phi
                                __tmp294201)))
                           _tl289635289652_)))
                      (let ()
                        (declare (not safe))
                        (_g289632289642_ _g289633289645_))))))
          (declare (not safe))
          (_g289631289666_ _stx289630_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx289570_)
        (let* ((_g289572289586_
                (lambda (_g289573289583_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g289573289583_))))
               (_g289571289627_
                (lambda (_g289573289589_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g289573289589_))
                      (let ((_e289578289591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g289573289589_))))
                        (let ((_hd289577289594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e289578289591_)))
                              (_tl289576289596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e289578289591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl289576289596_))
                              (let ((_e289581289599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl289576289596_))))
                                (let ((_hd289580289602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e289581289599_)))
                                      (_tl289579289604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e289581289599_))))
                                  ((lambda (_L289607_ _L289608_)
                                     (let* ((_ctx289621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L289608_)))
                                            (_code289623_
                                             (##structure-ref
                                              _ctx289621_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp294204
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code289623_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp294204
                                          gx#current-expander-context
                                          _ctx289621_))))
                                   _tl289579289604_
                                   _hd289580289602_)))
                              (let ()
                                (declare (not safe))
                                (_g289572289586_ _g289573289589_)))))
                      (let ()
                        (declare (not safe))
                        (_g289572289586_ _g289573289589_))))))
          (declare (not safe))
          (_g289571289627_ _stx289570_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx289380_)
        (letrec ((_generate-e289382_
                  (lambda (_id289559_)
                    (let* ((_sym289561_
                            (if (let ((__tmp294205
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp294205))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id289559_))
                                '#f))
                           (_$e289563_
                            (if _sym289561_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym289561_))
                                '#f)))
                      (if _$e289563_
                          ((lambda (_type289566_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym289561_))
                             (let* ((_typedecl289568_
                                     (let ((__method294174
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type289566_
                                               'typedecl))))
                                       (if __method294174
                                           (__method294174 _type289566_)
                                           (error '"Missing method"
                                                  _type289566_
                                                  'typedecl))))
                                    (__tmp294206
                                     (let ((__tmp294207
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl289568_ '()))))
                                       (declare (not safe))
                                       (cons _sym289561_ __tmp294207))))
                               (declare (not safe))
                               (cons 'declare-type __tmp294206)))
                           _$e289563_)
                          '(begin))))))
          (let* ((___stx293872293873_ _stx289380_)
                 (_g289385289423_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx293872293873_)))))
            (let ((___kont293874293875_
                   (lambda (_L289541_)
                     (let ()
                       (declare (not safe))
                       (_generate-e289382_ _L289541_))))
                  (___kont293876293877_
                   (lambda (_L289476_)
                     (let ((_types289502_
                            (map _generate-e289382_
                                 (let ((__tmp294208
                                        (lambda (_g289494289497_
                                                 _g289495289499_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g289494289497_
                                                  _g289495289499_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp294208 '() _L289476_)))))
                       (declare (not safe))
                       (cons 'begin _types289502_)))))
              (let ((___match293927293928_
                     (lambda (_e289403289428_
                              _hd289402289431_
                              _tl289401289433_
                              _e289406289436_
                              _hd289405289439_
                              _tl289404289441_
                              ___splice293878293879_
                              _target289407289444_
                              _tl289409289446_)
                       (letrec ((_loop289410289449_
                                 (lambda (_hd289408289452_ _id289414289454_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd289408289452_))
                                       (let ((_e289411289457_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd289408289452_))))
                                         (let ((_lp-tl289413289462_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e289411289457_)))
                                               (_lp-hd289412289460_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e289411289457_))))
                                           (let ((__tmp294209
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd289412289460_
                                                          _id289414289454_))))
                                             (declare (not safe))
                                             (_loop289410289449_
                                              _lp-tl289413289462_
                                              __tmp294209))))
                                       (let ((_id289415289465_
                                              (reverse _id289414289454_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl289404289441_))
                                             (let ((_e289418289468_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl289404289441_))))
                                               (let ((_tl289416289473_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e289418289468_)))
                                                     (_hd289417289471_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e289418289468_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl289416289473_))
                                                     (___kont293876293877_
                                                      _id289415289465_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g289385289423_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g289385289423_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop289410289449_ _target289407289444_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx293872293873_))
                    (let ((_e289390289509_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx293872293873_))))
                      (let ((_tl289388289514_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289390289509_)))
                            (_hd289389289512_
                             (let ()
                               (declare (not safe))
                               (##car _e289390289509_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289388289514_))
                            (let ((_e289393289517_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl289388289514_))))
                              (let ((_tl289391289522_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289393289517_)))
                                    (_hd289392289520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289393289517_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289392289520_))
                                    (let ((_e289396289525_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd289392289520_))))
                                      (let ((_tl289394289530_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289396289525_)))
                                            (_hd289395289528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289396289525_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289394289530_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl289391289522_))
                                                (let ((_e289399289533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl289391289522_))))
                                                  (let ((_tl289397289538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e289399289533_)))
                                                        (_hd289398289536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e289399289533_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289397289538_))
                                                        (___kont293874293875_
                                                         _hd289395289528_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd289392289520_))
                                                            (let ((___splice293878293879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd289392289520_ '0))))
                      (let ((_tl289409289446_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice293878293879_ '1)))
                            (_target289407289444_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice293878293879_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl289409289446_))
                            (___match293927293928_
                             _e289390289509_
                             _hd289389289512_
                             _tl289388289514_
                             _e289393289517_
                             _hd289392289520_
                             _tl289391289522_
                             ___splice293878293879_
                             _target289407289444_
                             _tl289409289446_)
                            (let () (declare (not safe)) (_g289385289423_)))))
                    (let () (declare (not safe)) (_g289385289423_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd289392289520_))
                                                    (let ((___splice293878293879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd289392289520_
                                                              '0))))
                                                      (let ((_tl289409289446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice293878293879_ '1)))
                    (_target289407289444_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice293878293879_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289409289446_))
                    (___match293927293928_
                     _e289390289509_
                     _hd289389289512_
                     _tl289388289514_
                     _e289393289517_
                     _hd289392289520_
                     _tl289391289522_
                     ___splice293878293879_
                     _target289407289444_
                     _tl289409289446_)
                    (let () (declare (not safe)) (_g289385289423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289385289423_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd289392289520_))
                                                (let ((___splice293878293879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd289392289520_
                                                          '0))))
                                                  (let ((_tl289409289446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice293878293879_
                                                            '1)))
                                                        (_target289407289444_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice293878293879_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289409289446_))
                                                        (___match293927293928_
                                                         _e289390289509_
                                                         _hd289389289512_
                                                         _tl289388289514_
                                                         _e289393289517_
                                                         _hd289392289520_
                                                         _tl289391289522_
                                                         ___splice293878293879_
                                                         _target289407289444_
                                                         _tl289409289446_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g289385289423_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289385289423_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd289392289520_))
                                        (let ((___splice293878293879_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd289392289520_
                                                  '0))))
                                          (let ((_tl289409289446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice293878293879_
                                                    '1)))
                                                (_target289407289444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice293878293879_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl289409289446_))
                                                (___match293927293928_
                                                 _e289390289509_
                                                 _hd289389289512_
                                                 _tl289388289514_
                                                 _e289393289517_
                                                 _hd289392289520_
                                                 _tl289391289522_
                                                 ___splice293878293879_
                                                 _target289407289444_
                                                 _tl289409289446_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289385289423_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g289385289423_))))))
                            (let () (declare (not safe)) (_g289385289423_)))))
                    (let () (declare (not safe)) (_g289385289423_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx288934_)
        (let* ((___stx293930293931_ _stx288934_)
               (_g288938289040_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx293930293931_)))))
          (let ((___kont293932293933_
                 (lambda (_L289330_ _L289331_ _L289332_ _L289333_ _L289334_)
                   (let ((__tmp294210
                          (let ((__tmp294217
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L289333_)))
                                (__tmp294211
                                 (let ((__tmp294216
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L289332_)))
                                       (__tmp294212
                                        (let ((__tmp294215
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L289331_)))
                                              (__tmp294213
                                               (let ((__tmp294214
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L289330_))))
                                                 (declare (not safe))
                                                 (cons __tmp294214 '()))))
                                          (declare (not safe))
                                          (cons __tmp294215 __tmp294213))))
                                   (declare (not safe))
                                   (cons __tmp294216 __tmp294212))))
                            (declare (not safe))
                            (cons __tmp294217 __tmp294211))))
                     (declare (not safe))
                     (cons 'declare-method __tmp294210))))
                (___kont293934293935_
                 (lambda (_L289156_ _L289157_ _L289158_ _L289159_)
                   (let ((__tmp294218
                          (let ((__tmp294224
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L289158_)))
                                (__tmp294219
                                 (let ((__tmp294223
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L289157_)))
                                       (__tmp294220
                                        (let ((__tmp294222
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L289156_)))
                                              (__tmp294221
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp294222 __tmp294221))))
                                   (declare (not safe))
                                   (cons __tmp294223 __tmp294220))))
                            (declare (not safe))
                            (cons __tmp294224 __tmp294219))))
                     (declare (not safe))
                     (cons 'declare-method __tmp294218))))
                (___kont293936293937_ (lambda () '(begin))))
            (let ((___match294065294066_
                   (lambda (_e288947289202_
                            _hd288946289205_
                            _tl288945289207_
                            _e288950289210_
                            _hd288949289213_
                            _tl288948289215_
                            _e288953289218_
                            _hd288952289221_
                            _tl288951289223_
                            _e288956289226_
                            _hd288955289229_
                            _tl288954289231_
                            _e288959289234_
                            _hd288958289237_
                            _tl288957289239_
                            _e288962289242_
                            _hd288961289245_
                            _tl288960289247_
                            _e288965289250_
                            _hd288964289253_
                            _tl288963289255_
                            _e288968289258_
                            _hd288967289261_
                            _tl288966289263_
                            _e288971289266_
                            _hd288970289269_
                            _tl288969289271_
                            _e288974289274_
                            _hd288973289277_
                            _tl288972289279_
                            _e288977289282_
                            _hd288976289285_
                            _tl288975289287_
                            _e288980289290_
                            _hd288979289293_
                            _tl288978289295_
                            _e288983289298_
                            _hd288982289301_
                            _tl288981289303_
                            _e288986289306_
                            _hd288985289309_
                            _tl288984289311_
                            _e288989289314_
                            _hd288988289317_
                            _tl288987289319_
                            _e288992289322_
                            _hd288991289325_
                            _tl288990289327_)
                     (let ((_L289330_ _hd288991289325_)
                           (_L289331_ _hd288982289301_)
                           (_L289332_ _hd288973289277_)
                           (_L289333_ _hd288964289253_)
                           (_L289334_ _hd288955289229_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L289334_
                              'bind-method!))
                           (___kont293932293933_
                            _L289330_
                            _L289331_
                            _L289332_
                            _L289333_
                            _L289334_)
                           (___kont293936293937_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx293930293931_))
                  (let ((_e288947289202_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx293930293931_))))
                    (let ((_tl288945289207_
                           (let ()
                             (declare (not safe))
                             (##cdr _e288947289202_)))
                          (_hd288946289205_
                           (let ()
                             (declare (not safe))
                             (##car _e288947289202_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl288945289207_))
                          (let ((_e288950289210_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl288945289207_))))
                            (let ((_tl288948289215_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e288950289210_)))
                                  (_hd288949289213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e288950289210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd288949289213_))
                                  (let ((_e288953289218_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd288949289213_))))
                                    (let ((_tl288951289223_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e288953289218_)))
                                          (_hd288952289221_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e288953289218_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd288952289221_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd288952289221_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl288951289223_))
                                                  (let ((_e288956289226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl288951289223_))))
                                                    (let ((_tl288954289231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e288956289226_)))
                                                          (_hd288955289229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e288956289226_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl288954289231_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl288948289215_))
                      (let ((_e288959289234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl288948289215_))))
                        (let ((_tl288957289239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288959289234_)))
                              (_hd288958289237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288959289234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd288958289237_))
                              (let ((_e288962289242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd288958289237_))))
                                (let ((_tl288960289247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e288962289242_)))
                                      (_hd288961289245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e288962289242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd288961289245_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd288961289245_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl288960289247_))
                                              (let ((_e288965289250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl288960289247_))))
                                                (let ((_tl288963289255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e288965289250_)))
                                                      (_hd288964289253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e288965289250_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl288963289255_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl288957289239_))
                                                          (let ((_e288968289258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl288957289239_))))
                    (let ((_tl288966289263_
                           (let ()
                             (declare (not safe))
                             (##cdr _e288968289258_)))
                          (_hd288967289261_
                           (let ()
                             (declare (not safe))
                             (##car _e288968289258_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd288967289261_))
                          (let ((_e288971289266_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd288967289261_))))
                            (let ((_tl288969289271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e288971289266_)))
                                  (_hd288970289269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e288971289266_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd288970289269_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd288970289269_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl288969289271_))
                                          (let ((_e288974289274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl288969289271_))))
                                            (let ((_tl288972289279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e288974289274_)))
                                                  (_hd288973289277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e288974289274_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl288972289279_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl288966289263_))
                                                      (let ((_e288977289282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl288966289263_))))
                (let ((_tl288975289287_
                       (let () (declare (not safe)) (##cdr _e288977289282_)))
                      (_hd288976289285_
                       (let () (declare (not safe)) (##car _e288977289282_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd288976289285_))
                      (let ((_e288980289290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd288976289285_))))
                        (let ((_tl288978289295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288980289290_)))
                              (_hd288979289293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288980289290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd288979289293_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd288979289293_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl288978289295_))
                                      (let ((_e288983289298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl288978289295_))))
                                        (let ((_tl288981289303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e288983289298_)))
                                              (_hd288982289301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e288983289298_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl288981289303_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl288975289287_))
                                                  (let ((_e288986289306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl288975289287_))))
                                                    (let ((_tl288984289311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e288986289306_)))
                                                          (_hd288985289309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e288986289306_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd288985289309_))
                                                          (let ((_e288989289314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd288985289309_))))
                    (let ((_tl288987289319_
                           (let ()
                             (declare (not safe))
                             (##cdr _e288989289314_)))
                          (_hd288988289317_
                           (let ()
                             (declare (not safe))
                             (##car _e288989289314_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd288988289317_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd288988289317_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl288987289319_))
                                  (let ((_e288992289322_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl288987289319_))))
                                    (let ((_tl288990289327_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e288992289322_)))
                                          (_hd288991289325_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e288992289322_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl288990289327_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl288984289311_))
                                              (___match294065294066_
                                               _e288947289202_
                                               _hd288946289205_
                                               _tl288945289207_
                                               _e288950289210_
                                               _hd288949289213_
                                               _tl288948289215_
                                               _e288953289218_
                                               _hd288952289221_
                                               _tl288951289223_
                                               _e288956289226_
                                               _hd288955289229_
                                               _tl288954289231_
                                               _e288959289234_
                                               _hd288958289237_
                                               _tl288957289239_
                                               _e288962289242_
                                               _hd288961289245_
                                               _tl288960289247_
                                               _e288965289250_
                                               _hd288964289253_
                                               _tl288963289255_
                                               _e288968289258_
                                               _hd288967289261_
                                               _tl288966289263_
                                               _e288971289266_
                                               _hd288970289269_
                                               _tl288969289271_
                                               _e288974289274_
                                               _hd288973289277_
                                               _tl288972289279_
                                               _e288977289282_
                                               _hd288976289285_
                                               _tl288975289287_
                                               _e288980289290_
                                               _hd288979289293_
                                               _tl288978289295_
                                               _e288983289298_
                                               _hd288982289301_
                                               _tl288981289303_
                                               _e288986289306_
                                               _hd288985289309_
                                               _tl288984289311_
                                               _e288989289314_
                                               _hd288988289317_
                                               _tl288987289319_
                                               _e288992289322_
                                               _hd288991289325_
                                               _tl288990289327_)
                                              (___kont293936293937_))
                                          (___kont293936293937_))))
                                  (___kont293936293937_))
                              (___kont293936293937_))
                          (___kont293936293937_))))
                  (___kont293936293937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl288975289287_))
                                                      (if (let ((__tmp294225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp294225 'bind-method!))
                  (let ((_L289156_ _hd288982289301_)
                        (_L289157_ _hd288973289277_)
                        (_L289158_ _hd288964289253_)
                        (_L289159_ _hd288955289229_))
                    (___kont293934293935_
                     _L289156_
                     _L289157_
                     _L289158_
                     _L289159_))
                  (___kont293936293937_))
              (___kont293936293937_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont293936293937_))))
                                      (___kont293936293937_))
                                  (___kont293936293937_))
                              (___kont293936293937_))))
                      (___kont293936293937_))))
              (___kont293936293937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont293936293937_))))
                                          (___kont293936293937_))
                                      (___kont293936293937_))
                                  (___kont293936293937_))))
                          (___kont293936293937_))))
                  (___kont293936293937_))
              (___kont293936293937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont293936293937_))
                                          (___kont293936293937_))
                                      (___kont293936293937_))))
                              (___kont293936293937_))))
                      (___kont293936293937_))
                  (___kont293936293937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont293936293937_))
                                              (___kont293936293937_))
                                          (___kont293936293937_))))
                                  (___kont293936293937_))))
                          (___kont293936293937_))))
                  (___kont293936293937_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self288910_)
        (let* ((_self288911288917_ _self288910_)
               (_E288913288921_
                (lambda () (error '"No clause matching" _self288911288917_)))
               (_K288914288926_
                (lambda (_alias-id288924_)
                  (let ((__tmp294226
                         (let ()
                           (declare (not safe))
                           (cons _alias-id288924_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp294226)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self288911288917_ 'gxc#!alias::t))
              (let* ((_e288915288929_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288911288917_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id288932_ _e288915288929_))
                (declare (not safe))
                (_K288914288926_ _alias-id288932_))
              (let () (declare (not safe)) (_E288913288921_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self288701_)
        (let* ((_self288702288717_ _self288701_)
               (_E288704288721_
                (lambda () (error '"No clause matching" _self288702288717_)))
               (_K288705288735_
                (lambda (_methods288724_
                         _metaclass288725_
                         _final?288726_
                         _struct?288727_
                         _constructor288728_
                         _fields288729_
                         _slots288730_
                         _precendence-list288731_
                         _super288732_
                         _id288733_)
                  (let ((__tmp294227
                         (let ((__tmp294228
                                (let ((__tmp294229
                                       (let ((__tmp294230
                                              (let ((__tmp294231
                                                     (let ((__tmp294232
                                                            (let ((__tmp294233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp294234
                                  (let ((__tmp294235
                                         (let ((__tmp294236
                                                (let ((__tmp294237
                                                       (if _methods288724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods288724_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp294237 '()))))
                                           (declare (not safe))
                                           (cons _metaclass288725_
                                                 __tmp294236))))
                                    (declare (not safe))
                                    (cons _final?288726_ __tmp294235))))
                             (declare (not safe))
                             (cons _struct?288727_ __tmp294234))))
                      (declare (not safe))
                      (cons _constructor288728_ __tmp294233))))
               (declare (not safe))
               (cons _fields288729_ __tmp294232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots288730_
                                                      __tmp294231))))
                                         (declare (not safe))
                                         (cons _precendence-list288731_
                                               __tmp294230))))
                                  (declare (not safe))
                                  (cons _super288732_ __tmp294229))))
                           (declare (not safe))
                           (cons _id288733_ __tmp294228))))
                    (declare (not safe))
                    (cons '@class __tmp294227)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self288702288717_ 'gxc#!class::t))
              (let* ((_e288706288738_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id288741_ _e288706288738_)
                     (_e288707288743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super288746_ _e288707288743_)
                     (_e288708288748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list288751_ _e288708288748_)
                     (_e288709288753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots288756_ _e288709288753_)
                     (_e288710288758_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields288761_ _e288710288758_)
                     (_e288711288763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor288766_ _e288711288763_)
                     (_e288712288768_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?288771_ _e288712288768_)
                     (_e288713288773_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?288776_ _e288713288773_)
                     (_e288714288778_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass288781_ _e288714288778_)
                     (_e288715288783_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288702288717_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods288786_ _e288715288783_))
                (declare (not safe))
                (_K288705288735_
                 _methods288786_
                 _metaclass288781_
                 _final?288776_
                 _struct?288771_
                 _constructor288766_
                 _fields288761_
                 _slots288756_
                 _precendence-list288751_
                 _super288746_
                 _id288741_))
              (let () (declare (not safe)) (_E288704288721_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self288555_)
        (let* ((_self288556288562_ _self288555_)
               (_E288558288566_
                (lambda () (error '"No clause matching" _self288556288562_)))
               (_K288559288571_
                (lambda (_klass-id288569_)
                  (let ((__tmp294238
                         (let ()
                           (declare (not safe))
                           (cons _klass-id288569_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp294238)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288556288562_
                 'gxc#!predicate::t))
              (let* ((_e288560288574_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288556288562_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288577_ _e288560288574_))
                (declare (not safe))
                (_K288559288571_ _klass-id288577_))
              (let () (declare (not safe)) (_E288558288566_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self288409_)
        (let* ((_self288410288416_ _self288409_)
               (_E288412288420_
                (lambda () (error '"No clause matching" _self288410288416_)))
               (_K288413288425_
                (lambda (_klass-id288423_)
                  (let ((__tmp294239
                         (let ()
                           (declare (not safe))
                           (cons _klass-id288423_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp294239)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288410288416_
                 'gxc#!constructor::t))
              (let* ((_e288414288428_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288410288416_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288431_ _e288414288428_))
                (declare (not safe))
                (_K288413288425_ _klass-id288431_))
              (let () (declare (not safe)) (_E288412288420_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self288249_)
        (let* ((_self288250288258_ _self288249_)
               (_E288252288262_
                (lambda () (error '"No clause matching" _self288250288258_)))
               (_K288253288269_
                (lambda (_checked?288265_ _slot288266_ _klass-id288267_)
                  (let ((__tmp294240
                         (let ((__tmp294241
                                (let ((__tmp294242
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?288265_ '()))))
                                  (declare (not safe))
                                  (cons _slot288266_ __tmp294242))))
                           (declare (not safe))
                           (cons _klass-id288267_ __tmp294241))))
                    (declare (not safe))
                    (cons '@accessor __tmp294240)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288250288258_
                 'gxc#!accessor::t))
              (let* ((_e288254288272_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288250288258_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288275_ _e288254288272_)
                     (_e288255288277_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288250288258_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot288280_ _e288255288277_)
                     (_e288256288282_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288250288258_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?288285_ _e288256288282_))
                (declare (not safe))
                (_K288253288269_
                 _checked?288285_
                 _slot288280_
                 _klass-id288275_))
              (let () (declare (not safe)) (_E288252288262_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self288089_)
        (let* ((_self288090288098_ _self288089_)
               (_E288092288102_
                (lambda () (error '"No clause matching" _self288090288098_)))
               (_K288093288109_
                (lambda (_checked?288105_ _slot288106_ _klass-id288107_)
                  (let ((__tmp294243
                         (let ((__tmp294244
                                (let ((__tmp294245
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?288105_ '()))))
                                  (declare (not safe))
                                  (cons _slot288106_ __tmp294245))))
                           (declare (not safe))
                           (cons _klass-id288107_ __tmp294244))))
                    (declare (not safe))
                    (cons '@mutator __tmp294243)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self288090288098_ 'gxc#!mutator::t))
              (let* ((_e288094288112_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288090288098_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288115_ _e288094288112_)
                     (_e288095288117_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288090288098_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot288120_ _e288095288117_)
                     (_e288096288122_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288090288098_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?288125_ _e288096288122_))
                (declare (not safe))
                (_K288093288109_
                 _checked?288125_
                 _slot288120_
                 _klass-id288115_))
              (let () (declare (not safe)) (_E288092288102_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self287915_)
        (let* ((_self287916287926_ _self287915_)
               (_E287918287930_
                (lambda () (error '"No clause matching" _self287916287926_)))
               (_K287919287941_
                (lambda (_typedecl287933_
                         _inline287934_
                         _dispatch287935_
                         _arity287936_)
                  (if _inline287934_
                      (let ((_$e287938_ _typedecl287933_))
                        (if _$e287938_
                            _$e287938_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp294246
                             (let ((__tmp294247
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch287935_ '()))))
                               (declare (not safe))
                               (cons _arity287936_ __tmp294247))))
                        (declare (not safe))
                        (cons '@lambda __tmp294246))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self287916287926_ 'gxc#!lambda::t))
              (let* ((_e287920287944_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287916287926_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e287921287947_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287916287926_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity287950_ _e287921287947_)
                     (_e287922287952_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287916287926_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch287955_ _e287922287952_)
                     (_e287923287957_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287916287926_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline287960_ _e287923287957_)
                     (_e287924287962_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287916287926_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl287965_ _e287924287962_))
                (declare (not safe))
                (_K287919287941_
                 _typedecl287965_
                 _inline287960_
                 _dispatch287955_
                 _arity287950_))
              (let () (declare (not safe)) (_E287918287930_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self287726_)
        (letrec ((_clause-e287728_
                  (lambda (_clause287758_)
                    (let* ((_clause287759287767_ _clause287758_)
                           (_E287761287771_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause287759287767_)))
                           (_K287762287777_
                            (lambda (_dispatch287774_ _arity287775_)
                              (let ((__tmp294248
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch287774_ '()))))
                                (declare (not safe))
                                (cons _arity287775_ __tmp294248)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause287759287767_
                             'gxc#!lambda::t))
                          (let* ((_e287763287780_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause287759287767_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e287764287783_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause287759287767_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity287786_ _e287764287783_)
                                 (_e287765287788_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause287759287767_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch287791_ _e287765287788_))
                            (declare (not safe))
                            (_K287762287777_ _dispatch287791_ _arity287786_))
                          (let () (declare (not safe)) (_E287761287771_)))))))
          (let* ((_self287729287736_ _self287726_)
                 (_E287731287740_
                  (lambda () (error '"No clause matching" _self287729287736_)))
                 (_K287732287747_
                  (lambda (_clauses287743_)
                    (let ((_clauses287745_
                           (map _clause-e287728_ _clauses287743_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses287745_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self287729287736_
                   'gxc#!case-lambda::t))
                (let* ((_e287733287750_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self287729287736_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e287734287753_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self287729287736_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses287756_ _e287734287753_))
                  (declare (not safe))
                  (_K287732287747_ _clauses287756_))
                (let () (declare (not safe)) (_E287731287740_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self287569_)
        (let* ((_self287570287578_ _self287569_)
               (_E287572287582_
                (lambda () (error '"No clause matching" _self287570287578_)))
               (_K287573287588_
                (lambda (_dispatch287585_ _table287586_)
                  (let ((__tmp294249
                         (let ((__tmp294250
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch287585_ '()))))
                           (declare (not safe))
                           (cons _table287586_ __tmp294250))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp294249)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self287570287578_
                 'gxc#!kw-lambda::t))
              (let* ((_e287574287591_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287570287578_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e287575287594_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287570287578_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table287597_ _e287575287594_)
                     (_e287576287599_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287570287578_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch287602_ _e287576287599_))
                (declare (not safe))
                (_K287573287588_ _dispatch287602_ _table287597_))
              (let () (declare (not safe)) (_E287572287582_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self287412_)
        (let* ((_self287413287421_ _self287412_)
               (_E287415287425_
                (lambda () (error '"No clause matching" _self287413287421_)))
               (_K287416287431_
                (lambda (_main287428_ _keys287429_)
                  (let ((__tmp294251
                         (let ((__tmp294252
                                (let ()
                                  (declare (not safe))
                                  (cons _main287428_ '()))))
                           (declare (not safe))
                           (cons _keys287429_ __tmp294252))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp294251)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self287413287421_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e287417287434_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287413287421_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e287418287437_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287413287421_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys287440_ _e287418287437_)
                     (_e287419287442_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287413287421_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main287445_ _e287419287442_))
                (declare (not safe))
                (_K287416287431_ _main287445_ _keys287440_))
              (let () (declare (not safe)) (_E287415287425_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
