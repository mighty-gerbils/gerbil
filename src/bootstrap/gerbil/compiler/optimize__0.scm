(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1695377622)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj68271 (make-object gxc#optimizer-info::t '3)))
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-info:::init! __obj68271))
               __obj68271)))))
    (define gxc#optimize!
      (lambda (_ctx67964_)
        (let ((__tmp68275
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx67964_))
                 (let ((__tmp68277
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp68276
                        (##structure-ref
                         _ctx67964_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp68277 __tmp68276 '#t))
                 (let ((_code67967_
                        (let ((__tmp68278
                               (##structure-ref
                                _ctx67964_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp68278))))
                   (##structure-set!
                    _ctx67964_
                    _code67967_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp68274
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp68273
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp68275
           gxc#current-compile-mutators
           __tmp68274
           gxc#current-compile-local-type
           __tmp68273))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx67909_)
        (letrec* ((_deps67911_
                   (let* ((_imports67955_
                           (##structure-ref
                            _ctx67909_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e67957_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx67909_))))
                     (if _$e67957_
                         ((lambda (_g6795967961_)
                            (let ()
                              (declare (not safe))
                              (cons _g6795967961_ _imports67955_)))
                          _$e67957_)
                         _imports67955_))))
          (let _lp67913_ ((_rest67915_ _deps67911_))
            (let* ((_rest6791667924_ _rest67915_)
                   (_else6791867932_ (lambda () '#!void))
                   (_K6792067943_
                    (lambda (_rest67935_ _hd67936_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd67936_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp68292
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp68291
                                       (##structure-ref
                                        _hd67936_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp68292 __tmp68291 '#f))
                                '#!void
                                (begin
                                  (let ((_$e67938_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd67936_))))
                                    (if _$e67938_
                                        ((lambda (_pre67941_)
                                           (let ((__tmp68289
                                                  (let ((__tmp68290
                                                         (##structure-ref
                                                          _hd67936_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre67941_
                                                          __tmp68290))))
                                             (declare (not safe))
                                             (_lp67913_ __tmp68289)))
                                         _$e67938_)
                                        (let ((__tmp68288
                                               (##structure-ref
                                                _hd67936_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp67913_ __tmp68288))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd67936_))))
                            (let ()
                              (declare (not safe))
                              (_lp67913_ _rest67935_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd67936_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp68287
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp68286
                                           (##structure-ref
                                            _hd67936_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp68287 __tmp68286 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp68285
                                             (##structure-ref
                                              _hd67936_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp67913_ __tmp68285))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd67936_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp67913_ _rest67935_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd67936_
                                     'gx#module-import::t))
                                  (let ((__tmp68283
                                         (let ((__tmp68284
                                                (##direct-structure-ref
                                                 _hd67936_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp68284 _rest67935_))))
                                    (declare (not safe))
                                    (_lp67913_ __tmp68283))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd67936_
                                         'gx#module-export::t))
                                      (let ((__tmp68281
                                             (let ((__tmp68282
                                                    (##direct-structure-ref
                                                     _hd67936_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp68282 _rest67935_))))
                                        (declare (not safe))
                                        (_lp67913_ __tmp68281))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd67936_
                                             'gx#import-set::t))
                                          (let ((__tmp68279
                                                 (let ((__tmp68280
                                                        (##direct-structure-ref
                                                         _hd67936_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp68280
                                                         _rest67935_))))
                                            (declare (not safe))
                                            (_lp67913_ __tmp68279))
                                          (error '"Unexpected module import"
                                                 _hd67936_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6791667924_))
                  (let ((_hd6792167946_
                         (let ()
                           (declare (not safe))
                           (##car _rest6791667924_)))
                        (_tl6792267948_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6791667924_))))
                    (let* ((_hd67951_ _hd6792167946_)
                           (_rest67953_ _tl6792267948_))
                      (declare (not safe))
                      (_K6792067943_ _rest67953_ _hd67951_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx67889_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx67889_ 'gx#module-context::t))
                 (let ((__tmp68293
                        (##structure-ref
                         _ctx67889_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp68293)))
            '#!void
            (let* ((_ht67891_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id67893_
                    (##structure-ref _ctx67889_ '1 gx#expander-context::t '#f))
                   (_mod67895_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht67891_ _id67893_ '#f))))
              (let ((_$e67898_ _mod67895_))
                (if _$e67898_
                    _$e67898_
                    (let* ((_mod67901_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx67889_)))
                           (_val67906_
                            (let ((_$e67903_ _mod67901_))
                              (if _$e67903_ _$e67903_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht67891_ _id67893_ _val67906_))
                      _val67906_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx67866_)
        (letrec ((_catch-e67868_
                  (lambda (_exn67887_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx67866_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn67887_))
                        '#!void)
                    '#f))
                 (_import-e67869_
                  (lambda ()
                    (let* ((_str-id67872_
                            (string-append
                             (let ((__tmp68294
                                    (##structure-ref
                                     _ctx67866_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#module-id->path-string __tmp68294))
                             '".ssxi"))
                           (_artefact-path67880_
                            (let ((_odir6787367875_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6787367875_
                                  (let ((_odir67878_ _odir6787367875_))
                                    (path-expand
                                     (string-append _str-id67872_ '".ss")
                                     _odir67878_))
                                  '#f)))
                           (_library-path67882_
                            (string->symbol
                             (string-append '":" _str-id67872_ '".ss")))
                           (_ssxi-path67884_
                            (if (and _artefact-path67880_
                                     (file-exists? _artefact-path67880_))
                                _artefact-path67880_
                                _library-path67882_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"Loading ssxi module " _ssxi-path67884_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path67884_ '#t '#t))))))
          (if (##structure-ref _ctx67866_ '1 gx#expander-context::t '#f)
              (let ()
                (declare (not safe))
                (with-catch _catch-e67868_ _import-e67869_))
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx67857_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx67857_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx67857_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx67857_))
        (let* ((_stx67859_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx67857_)))
               (_stx67861_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx67859_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx67861_))
          (let ((_stx67864_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx67861_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx67864_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl67854_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp68295 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl67854_ __tmp68295))
           (let ()
             (declare (not safe))
             (table-set! _tbl67854_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl67854_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl67854_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl67854_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl67854_ '%#call gxc#generate-ssxi-call%))
           _tbl67854_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx67847_ . _args67849_)
        (let ((__tmp68297
               (lambda () (apply gxc#compile-e _stx67847_ _args67849_)))
              (__tmp68296 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp68297
           gxc#current-compile-methods
           __tmp68296))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx67808_)
        (let* ((_g6781067820_
                (lambda (_g6781167817_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6781167817_))))
               (_g6780967844_
                (lambda (_g6781167823_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6781167823_))
                      (let ((_e6781567825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6781167823_))))
                        (let ((_hd6781467828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6781567825_)))
                              (_tl6781367830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6781567825_))))
                          ((lambda (_L67833_)
                             (let ((__tmp68300
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx67808_))))
                                   (__tmp68298
                                    (let ((__tmp68299
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp68299 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp68300
                                gx#current-expander-phi
                                __tmp68298)))
                           _tl6781367830_)))
                      (let ()
                        (declare (not safe))
                        (_g6781067820_ _g6781167823_))))))
          (declare (not safe))
          (_g6780967844_ _stx67808_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx67748_)
        (let* ((_g6775067764_
                (lambda (_g6775167761_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6775167761_))))
               (_g6774967805_
                (lambda (_g6775167767_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6775167767_))
                      (let ((_e6775667769_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6775167767_))))
                        (let ((_hd6775567772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6775667769_)))
                              (_tl6775467774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6775667769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6775467774_))
                              (let ((_e6775967777_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6775467774_))))
                                (let ((_hd6775867780_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6775967777_)))
                                      (_tl6775767782_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6775967777_))))
                                  ((lambda (_L67785_ _L67786_)
                                     (let* ((_ctx67799_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L67786_)))
                                            (_code67801_
                                             (##structure-ref
                                              _ctx67799_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp68301
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   _code67801_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp68301
                                          gx#current-expander-context
                                          _ctx67799_))))
                                   _tl6775767782_
                                   _hd6775867780_)))
                              (let ()
                                (declare (not safe))
                                (_g6775067764_ _g6775167767_)))))
                      (let ()
                        (declare (not safe))
                        (_g6775067764_ _g6775167767_))))))
          (declare (not safe))
          (_g6774967805_ _stx67748_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx67558_)
        (letrec ((_generate-e67560_
                  (lambda (_id67737_)
                    (let* ((_sym67739_
                            (if (let ((__tmp68302
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp68302))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id67737_))
                                '#f))
                           (_$e67741_
                            (if _sym67739_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym67739_))
                                '#f)))
                      (if _$e67741_
                          ((lambda (_type67744_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym67739_))
                             (let* ((_typedecl67746_
                                     (let ((__method68272
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type67744_
                                               'typedecl))))
                                       (if __method68272
                                           (__method68272 _type67744_)
                                           (error '"Missing method"
                                                  _type67744_
                                                  'typedecl))))
                                    (__tmp68303
                                     (let ((__tmp68304
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl67746_ '()))))
                                       (declare (not safe))
                                       (cons _sym67739_ __tmp68304))))
                               (declare (not safe))
                               (cons 'declare-type __tmp68303)))
                           _$e67741_)
                          '(begin))))))
          (let* ((___stx6797067971_ _stx67558_)
                 (_g6756367601_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6797067971_)))))
            (let ((___kont6797267973_
                   (lambda (_L67719_)
                     (let ()
                       (declare (not safe))
                       (_generate-e67560_ _L67719_))))
                  (___kont6797467975_
                   (lambda (_L67654_)
                     (let ((_types67680_
                            (map _generate-e67560_
                                 (let ((__tmp68305
                                        (lambda (_g6767267675_ _g6767367677_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g6767267675_
                                                  _g6767367677_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp68305 '() _L67654_)))))
                       (declare (not safe))
                       (cons 'begin _types67680_)))))
              (let ((___match6802568026_
                     (lambda (_e6758167606_
                              _hd6758067609_
                              _tl6757967611_
                              _e6758467614_
                              _hd6758367617_
                              _tl6758267619_
                              ___splice6797667977_
                              _target6758567622_
                              _tl6758767624_)
                       (letrec ((_loop6758867627_
                                 (lambda (_hd6758667630_ _id6759267632_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd6758667630_))
                                       (let ((_e6758967635_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd6758667630_))))
                                         (let ((_lp-tl6759167640_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6758967635_)))
                                               (_lp-hd6759067638_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6758967635_))))
                                           (let ((__tmp68306
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd6759067638_
                                                          _id6759267632_))))
                                             (declare (not safe))
                                             (_loop6758867627_
                                              _lp-tl6759167640_
                                              __tmp68306))))
                                       (let ((_id6759367643_
                                              (reverse _id6759267632_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl6758267619_))
                                             (let ((_e6759667646_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl6758267619_))))
                                               (let ((_tl6759467651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6759667646_)))
                                                     (_hd6759567649_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6759667646_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl6759467651_))
                                                     (___kont6797467975_
                                                      _id6759367643_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g6756367601_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g6756367601_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop6758867627_ _target6758567622_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6797067971_))
                    (let ((_e6756867687_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6797067971_))))
                      (let ((_tl6756667692_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6756867687_)))
                            (_hd6756767690_
                             (let ()
                               (declare (not safe))
                               (##car _e6756867687_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6756667692_))
                            (let ((_e6757167695_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl6756667692_))))
                              (let ((_tl6756967700_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6757167695_)))
                                    (_hd6757067698_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6757167695_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd6757067698_))
                                    (let ((_e6757467703_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd6757067698_))))
                                      (let ((_tl6757267708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6757467703_)))
                                            (_hd6757367706_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6757467703_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6757267708_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6756967700_))
                                                (let ((_e6757767711_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6756967700_))))
                                                  (let ((_tl6757567716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6757767711_)))
                                                        (_hd6757667714_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6757767711_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6757567716_))
                                                        (___kont6797267973_
                                                         _hd6757367706_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd6757067698_))
                                                            (let ((___splice6797667977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd6757067698_ '0))))
                      (let ((_tl6758767624_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6797667977_ '1)))
                            (_target6758567622_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6797667977_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl6758767624_))
                            (___match6802568026_
                             _e6756867687_
                             _hd6756767690_
                             _tl6756667692_
                             _e6757167695_
                             _hd6757067698_
                             _tl6756967700_
                             ___splice6797667977_
                             _target6758567622_
                             _tl6758767624_)
                            (let () (declare (not safe)) (_g6756367601_)))))
                    (let () (declare (not safe)) (_g6756367601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd6757067698_))
                                                    (let ((___splice6797667977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd6757067698_
                                                              '0))))
                                                      (let ((_tl6758767624_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6797667977_ '1)))
                    (_target6758567622_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6797667977_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl6758767624_))
                    (___match6802568026_
                     _e6756867687_
                     _hd6756767690_
                     _tl6756667692_
                     _e6757167695_
                     _hd6757067698_
                     _tl6756967700_
                     ___splice6797667977_
                     _target6758567622_
                     _tl6758767624_)
                    (let () (declare (not safe)) (_g6756367601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g6756367601_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd6757067698_))
                                                (let ((___splice6797667977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd6757067698_
                                                          '0))))
                                                  (let ((_tl6758767624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6797667977_
                                                            '1)))
                                                        (_target6758567622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6797667977_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6758767624_))
                                                        (___match6802568026_
                                                         _e6756867687_
                                                         _hd6756767690_
                                                         _tl6756667692_
                                                         _e6757167695_
                                                         _hd6757067698_
                                                         _tl6756967700_
                                                         ___splice6797667977_
                                                         _target6758567622_
                                                         _tl6758767624_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g6756367601_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6756367601_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd6757067698_))
                                        (let ((___splice6797667977_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd6757067698_
                                                  '0))))
                                          (let ((_tl6758767624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6797667977_
                                                    '1)))
                                                (_target6758567622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6797667977_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl6758767624_))
                                                (___match6802568026_
                                                 _e6756867687_
                                                 _hd6756767690_
                                                 _tl6756667692_
                                                 _e6757167695_
                                                 _hd6757067698_
                                                 _tl6756967700_
                                                 ___splice6797667977_
                                                 _target6758567622_
                                                 _tl6758767624_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6756367601_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g6756367601_))))))
                            (let () (declare (not safe)) (_g6756367601_)))))
                    (let () (declare (not safe)) (_g6756367601_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx67112_)
        (let* ((___stx6802868029_ _stx67112_)
               (_g6711667218_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6802868029_)))))
          (let ((___kont6803068031_
                 (lambda (_L67508_ _L67509_ _L67510_ _L67511_ _L67512_)
                   (let ((__tmp68307
                          (let ((__tmp68314
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67511_)))
                                (__tmp68308
                                 (let ((__tmp68313
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67510_)))
                                       (__tmp68309
                                        (let ((__tmp68312
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67509_)))
                                              (__tmp68310
                                               (let ((__tmp68311
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L67508_))))
                                                 (declare (not safe))
                                                 (cons __tmp68311 '()))))
                                          (declare (not safe))
                                          (cons __tmp68312 __tmp68310))))
                                   (declare (not safe))
                                   (cons __tmp68313 __tmp68309))))
                            (declare (not safe))
                            (cons __tmp68314 __tmp68308))))
                     (declare (not safe))
                     (cons 'declare-method __tmp68307))))
                (___kont6803268033_
                 (lambda (_L67334_ _L67335_ _L67336_ _L67337_)
                   (let ((__tmp68315
                          (let ((__tmp68321
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67336_)))
                                (__tmp68316
                                 (let ((__tmp68320
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67335_)))
                                       (__tmp68317
                                        (let ((__tmp68319
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67334_)))
                                              (__tmp68318
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp68319 __tmp68318))))
                                   (declare (not safe))
                                   (cons __tmp68320 __tmp68317))))
                            (declare (not safe))
                            (cons __tmp68321 __tmp68316))))
                     (declare (not safe))
                     (cons 'declare-method __tmp68315))))
                (___kont6803468035_ (lambda () '(begin))))
            (let ((___match6816368164_
                   (lambda (_e6712567380_
                            _hd6712467383_
                            _tl6712367385_
                            _e6712867388_
                            _hd6712767391_
                            _tl6712667393_
                            _e6713167396_
                            _hd6713067399_
                            _tl6712967401_
                            _e6713467404_
                            _hd6713367407_
                            _tl6713267409_
                            _e6713767412_
                            _hd6713667415_
                            _tl6713567417_
                            _e6714067420_
                            _hd6713967423_
                            _tl6713867425_
                            _e6714367428_
                            _hd6714267431_
                            _tl6714167433_
                            _e6714667436_
                            _hd6714567439_
                            _tl6714467441_
                            _e6714967444_
                            _hd6714867447_
                            _tl6714767449_
                            _e6715267452_
                            _hd6715167455_
                            _tl6715067457_
                            _e6715567460_
                            _hd6715467463_
                            _tl6715367465_
                            _e6715867468_
                            _hd6715767471_
                            _tl6715667473_
                            _e6716167476_
                            _hd6716067479_
                            _tl6715967481_
                            _e6716467484_
                            _hd6716367487_
                            _tl6716267489_
                            _e6716767492_
                            _hd6716667495_
                            _tl6716567497_
                            _e6717067500_
                            _hd6716967503_
                            _tl6716867505_)
                     (let ((_L67508_ _hd6716967503_)
                           (_L67509_ _hd6716067479_)
                           (_L67510_ _hd6715167455_)
                           (_L67511_ _hd6714267431_)
                           (_L67512_ _hd6713367407_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L67512_ 'bind-method!))
                           (___kont6803068031_
                            _L67508_
                            _L67509_
                            _L67510_
                            _L67511_
                            _L67512_)
                           (___kont6803468035_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx6802868029_))
                  (let ((_e6712567380_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx6802868029_))))
                    (let ((_tl6712367385_
                           (let () (declare (not safe)) (##cdr _e6712567380_)))
                          (_hd6712467383_
                           (let ()
                             (declare (not safe))
                             (##car _e6712567380_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6712367385_))
                          (let ((_e6712867388_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6712367385_))))
                            (let ((_tl6712667393_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6712867388_)))
                                  (_hd6712767391_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6712867388_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd6712767391_))
                                  (let ((_e6713167396_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd6712767391_))))
                                    (let ((_tl6712967401_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6713167396_)))
                                          (_hd6713067399_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6713167396_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd6713067399_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd6713067399_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6712967401_))
                                                  (let ((_e6713467404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6712967401_))))
                                                    (let ((_tl6713267409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6713467404_)))
                                                          (_hd6713367407_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6713467404_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl6713267409_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl6712667393_))
                      (let ((_e6713767412_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl6712667393_))))
                        (let ((_tl6713567417_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6713767412_)))
                              (_hd6713667415_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6713767412_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd6713667415_))
                              (let ((_e6714067420_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd6713667415_))))
                                (let ((_tl6713867425_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6714067420_)))
                                      (_hd6713967423_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6714067420_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd6713967423_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd6713967423_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl6713867425_))
                                              (let ((_e6714367428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl6713867425_))))
                                                (let ((_tl6714167433_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6714367428_)))
                                                      (_hd6714267431_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6714367428_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6714167433_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl6713567417_))
                                                          (let ((_e6714667436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl6713567417_))))
                    (let ((_tl6714467441_
                           (let () (declare (not safe)) (##cdr _e6714667436_)))
                          (_hd6714567439_
                           (let ()
                             (declare (not safe))
                             (##car _e6714667436_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd6714567439_))
                          (let ((_e6714967444_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd6714567439_))))
                            (let ((_tl6714767449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6714967444_)))
                                  (_hd6714867447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6714967444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd6714867447_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd6714867447_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl6714767449_))
                                          (let ((_e6715267452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl6714767449_))))
                                            (let ((_tl6715067457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6715267452_)))
                                                  (_hd6715167455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6715267452_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl6715067457_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl6714467441_))
                                                      (let ((_e6715567460_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl6714467441_))))
                (let ((_tl6715367465_
                       (let () (declare (not safe)) (##cdr _e6715567460_)))
                      (_hd6715467463_
                       (let () (declare (not safe)) (##car _e6715567460_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd6715467463_))
                      (let ((_e6715867468_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd6715467463_))))
                        (let ((_tl6715667473_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6715867468_)))
                              (_hd6715767471_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6715867468_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd6715767471_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd6715767471_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl6715667473_))
                                      (let ((_e6716167476_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl6715667473_))))
                                        (let ((_tl6715967481_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6716167476_)))
                                              (_hd6716067479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6716167476_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6715967481_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6715367465_))
                                                  (let ((_e6716467484_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6715367465_))))
                                                    (let ((_tl6716267489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6716467484_)))
                                                          (_hd6716367487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6716467484_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd6716367487_))
                                                          (let ((_e6716767492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd6716367487_))))
                    (let ((_tl6716567497_
                           (let () (declare (not safe)) (##cdr _e6716767492_)))
                          (_hd6716667495_
                           (let ()
                             (declare (not safe))
                             (##car _e6716767492_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd6716667495_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd6716667495_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6716567497_))
                                  (let ((_e6717067500_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6716567497_))))
                                    (let ((_tl6716867505_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6717067500_)))
                                          (_hd6716967503_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6717067500_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6716867505_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6716267489_))
                                              (___match6816368164_
                                               _e6712567380_
                                               _hd6712467383_
                                               _tl6712367385_
                                               _e6712867388_
                                               _hd6712767391_
                                               _tl6712667393_
                                               _e6713167396_
                                               _hd6713067399_
                                               _tl6712967401_
                                               _e6713467404_
                                               _hd6713367407_
                                               _tl6713267409_
                                               _e6713767412_
                                               _hd6713667415_
                                               _tl6713567417_
                                               _e6714067420_
                                               _hd6713967423_
                                               _tl6713867425_
                                               _e6714367428_
                                               _hd6714267431_
                                               _tl6714167433_
                                               _e6714667436_
                                               _hd6714567439_
                                               _tl6714467441_
                                               _e6714967444_
                                               _hd6714867447_
                                               _tl6714767449_
                                               _e6715267452_
                                               _hd6715167455_
                                               _tl6715067457_
                                               _e6715567460_
                                               _hd6715467463_
                                               _tl6715367465_
                                               _e6715867468_
                                               _hd6715767471_
                                               _tl6715667473_
                                               _e6716167476_
                                               _hd6716067479_
                                               _tl6715967481_
                                               _e6716467484_
                                               _hd6716367487_
                                               _tl6716267489_
                                               _e6716767492_
                                               _hd6716667495_
                                               _tl6716567497_
                                               _e6717067500_
                                               _hd6716967503_
                                               _tl6716867505_)
                                              (___kont6803468035_))
                                          (___kont6803468035_))))
                                  (___kont6803468035_))
                              (___kont6803468035_))
                          (___kont6803468035_))))
                  (___kont6803468035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6715367465_))
                                                      (if (let ((__tmp68322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp68322 'bind-method!))
                  (let ((_L67334_ _hd6716067479_)
                        (_L67335_ _hd6715167455_)
                        (_L67336_ _hd6714267431_)
                        (_L67337_ _hd6713367407_))
                    (___kont6803268033_ _L67334_ _L67335_ _L67336_ _L67337_))
                  (___kont6803468035_))
              (___kont6803468035_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6803468035_))))
                                      (___kont6803468035_))
                                  (___kont6803468035_))
                              (___kont6803468035_))))
                      (___kont6803468035_))))
              (___kont6803468035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6803468035_))))
                                          (___kont6803468035_))
                                      (___kont6803468035_))
                                  (___kont6803468035_))))
                          (___kont6803468035_))))
                  (___kont6803468035_))
              (___kont6803468035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6803468035_))
                                          (___kont6803468035_))
                                      (___kont6803468035_))))
                              (___kont6803468035_))))
                      (___kont6803468035_))
                  (___kont6803468035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6803468035_))
                                              (___kont6803468035_))
                                          (___kont6803468035_))))
                                  (___kont6803468035_))))
                          (___kont6803468035_))))
                  (___kont6803468035_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self67088_)
        (let* ((_self6708967095_ _self67088_)
               (_E6709167099_
                (lambda () (error '"No clause matching" _self6708967095_)))
               (_K6709267104_
                (lambda (_alias-id67102_)
                  (let ((__tmp68323
                         (let ()
                           (declare (not safe))
                           (cons _alias-id67102_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp68323)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6708967095_ 'gxc#!alias::t))
              (let* ((_e6709367107_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6708967095_ '1)))
                     (_alias-id67110_ _e6709367107_))
                (declare (not safe))
                (_K6709267104_ _alias-id67110_))
              (let () (declare (not safe)) (_E6709167099_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!struct-type::typedecl
      (lambda (_self66910_)
        (let* ((_self6691166922_ _self66910_)
               (_E6691366926_
                (lambda () (error '"No clause matching" _self6691166922_)))
               (_K6691466935_
                (lambda (_plist66929_
                         _ctor66930_
                         _fields66931_
                         _super66932_
                         _type-id66933_)
                  (let ((__tmp68324
                         (let ((__tmp68325
                                (let ((__tmp68326
                                       (let ((__tmp68327
                                              (let ((__tmp68328
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _plist66929_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _ctor66930_
                                                      __tmp68328))))
                                         (declare (not safe))
                                         (cons _fields66931_ __tmp68327))))
                                  (declare (not safe))
                                  (cons _super66932_ __tmp68326))))
                           (declare (not safe))
                           (cons _type-id66933_ __tmp68325))))
                    (declare (not safe))
                    (cons '@struct-type __tmp68324)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6691166922_
                 'gxc#!struct-type::t))
              (let* ((_e6691566938_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691166922_ '1)))
                     (_type-id66941_ _e6691566938_)
                     (_e6691666943_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691166922_ '2)))
                     (_super66946_ _e6691666943_)
                     (_e6691766948_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691166922_ '3)))
                     (_fields66951_ _e6691766948_)
                     (_e6691866953_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691166922_ '4)))
                     (_e6691966956_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691166922_ '5)))
                     (_ctor66959_ _e6691966956_)
                     (_e6692066961_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691166922_ '6)))
                     (_plist66964_ _e6692066961_))
                (declare (not safe))
                (_K6691466935_
                 _plist66964_
                 _ctor66959_
                 _fields66951_
                 _super66946_
                 _type-id66941_))
              (let () (declare (not safe)) (_E6691366926_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-type::t
       'typedecl
       gxc#!struct-type::typedecl
       '#f))
    (define gxc#!struct-pred::typedecl
      (lambda (_self66764_)
        (let* ((_self6676566771_ _self66764_)
               (_E6676766775_
                (lambda () (error '"No clause matching" _self6676566771_)))
               (_K6676866780_
                (lambda (_struct-t66778_)
                  (let ((__tmp68329
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66778_ '()))))
                    (declare (not safe))
                    (cons '@struct-pred __tmp68329)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6676566771_
                 'gxc#!struct-pred::t))
              (let* ((_e6676966783_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6676566771_ '1)))
                     (_struct-t66786_ _e6676966783_))
                (declare (not safe))
                (_K6676866780_ _struct-t66786_))
              (let () (declare (not safe)) (_E6676766775_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'typedecl
       gxc#!struct-pred::typedecl
       '#f))
    (define gxc#!struct-cons::typedecl
      (lambda (_self66618_)
        (let* ((_self6661966625_ _self66618_)
               (_E6662166629_
                (lambda () (error '"No clause matching" _self6661966625_)))
               (_K6662266634_
                (lambda (_struct-t66632_)
                  (let ((__tmp68330
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66632_ '()))))
                    (declare (not safe))
                    (cons '@struct-cons __tmp68330)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6661966625_
                 'gxc#!struct-cons::t))
              (let* ((_e6662366637_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6661966625_ '1)))
                     (_struct-t66640_ _e6662366637_))
                (declare (not safe))
                (_K6662266634_ _struct-t66640_))
              (let () (declare (not safe)) (_E6662166629_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'typedecl
       gxc#!struct-cons::typedecl
       '#f))
    (define gxc#!struct-getf::typedecl
      (lambda (_self66458_)
        (let* ((_self6645966467_ _self66458_)
               (_E6646166471_
                (lambda () (error '"No clause matching" _self6645966467_)))
               (_K6646266478_
                (lambda (_unchecked?66474_ _off66475_ _struct-t66476_)
                  (let ((__tmp68331
                         (let ((__tmp68332
                                (let ((__tmp68333
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66474_ '()))))
                                  (declare (not safe))
                                  (cons _off66475_ __tmp68333))))
                           (declare (not safe))
                           (cons _struct-t66476_ __tmp68332))))
                    (declare (not safe))
                    (cons '@struct-getf __tmp68331)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6645966467_
                 'gxc#!struct-getf::t))
              (let* ((_e6646366481_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6645966467_ '1)))
                     (_struct-t66484_ _e6646366481_)
                     (_e6646466486_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6645966467_ '2)))
                     (_off66489_ _e6646466486_)
                     (_e6646566491_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6645966467_ '3)))
                     (_unchecked?66494_ _e6646566491_))
                (declare (not safe))
                (_K6646266478_ _unchecked?66494_ _off66489_ _struct-t66484_))
              (let () (declare (not safe)) (_E6646166471_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'typedecl
       gxc#!struct-getf::typedecl
       '#f))
    (define gxc#!struct-setf::typedecl
      (lambda (_self66298_)
        (let* ((_self6629966307_ _self66298_)
               (_E6630166311_
                (lambda () (error '"No clause matching" _self6629966307_)))
               (_K6630266318_
                (lambda (_unchecked?66314_ _off66315_ _struct-t66316_)
                  (let ((__tmp68334
                         (let ((__tmp68335
                                (let ((__tmp68336
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66314_ '()))))
                                  (declare (not safe))
                                  (cons _off66315_ __tmp68336))))
                           (declare (not safe))
                           (cons _struct-t66316_ __tmp68335))))
                    (declare (not safe))
                    (cons '@struct-setf __tmp68334)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6629966307_
                 'gxc#!struct-setf::t))
              (let* ((_e6630366321_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6629966307_ '1)))
                     (_struct-t66324_ _e6630366321_)
                     (_e6630466326_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6629966307_ '2)))
                     (_off66329_ _e6630466326_)
                     (_e6630566331_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6629966307_ '3)))
                     (_unchecked?66334_ _e6630566331_))
                (declare (not safe))
                (_K6630266318_ _unchecked?66334_ _off66329_ _struct-t66324_))
              (let () (declare (not safe)) (_E6630166311_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'typedecl
       gxc#!struct-setf::typedecl
       '#f))
    (define gxc#!class-type::typedecl
      (lambda (_self66110_)
        (let* ((_self6611166123_ _self66110_)
               (_E6611366127_
                (lambda () (error '"No clause matching" _self6611166123_)))
               (_K6611466138_
                (lambda (_plist66130_
                         _ctor66131_
                         _xslots66132_
                         _slots66133_
                         _mixin66134_
                         _super66135_
                         _type-id66136_)
                  (let ((__tmp68337
                         (let ((__tmp68338
                                (let ((__tmp68339
                                       (let ((__tmp68340
                                              (let ((__tmp68341
                                                     (let ((__tmp68342
                                                            (let ((__tmp68343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _plist66130_ '()))))
                      (declare (not safe))
                      (cons _ctor66131_ __tmp68343))))
               (declare (not safe))
               (cons _xslots66132_ __tmp68342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots66133_
                                                      __tmp68341))))
                                         (declare (not safe))
                                         (cons _mixin66134_ __tmp68340))))
                                  (declare (not safe))
                                  (cons _super66135_ __tmp68339))))
                           (declare (not safe))
                           (cons _type-id66136_ __tmp68338))))
                    (declare (not safe))
                    (cons '@class-type __tmp68337)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6611166123_
                 'gxc#!class-type::t))
              (let* ((_e6611566141_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '1)))
                     (_type-id66144_ _e6611566141_)
                     (_e6611666146_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '2)))
                     (_super66149_ _e6611666146_)
                     (_e6611766151_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '3)))
                     (_mixin66154_ _e6611766151_)
                     (_e6611866156_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '4)))
                     (_slots66159_ _e6611866156_)
                     (_e6611966161_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '5)))
                     (_xslots66164_ _e6611966161_)
                     (_e6612066166_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '6)))
                     (_ctor66169_ _e6612066166_)
                     (_e6612166171_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611166123_ '7)))
                     (_plist66174_ _e6612166171_))
                (declare (not safe))
                (_K6611466138_
                 _plist66174_
                 _ctor66169_
                 _xslots66164_
                 _slots66159_
                 _mixin66154_
                 _super66149_
                 _type-id66144_))
              (let () (declare (not safe)) (_E6611366127_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-type::t
       'typedecl
       gxc#!class-type::typedecl
       '#f))
    (define gxc#!class-pred::typedecl
      (lambda (_self65964_)
        (let* ((_self6596565971_ _self65964_)
               (_E6596765975_
                (lambda () (error '"No clause matching" _self6596565971_)))
               (_K6596865980_
                (lambda (_class-t65978_)
                  (let ((__tmp68344
                         (let ()
                           (declare (not safe))
                           (cons _class-t65978_ '()))))
                    (declare (not safe))
                    (cons '@class-pred __tmp68344)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6596565971_
                 'gxc#!class-pred::t))
              (let* ((_e6596965983_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6596565971_ '1)))
                     (_class-t65986_ _e6596965983_))
                (declare (not safe))
                (_K6596865980_ _class-t65986_))
              (let () (declare (not safe)) (_E6596765975_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'typedecl
       gxc#!class-pred::typedecl
       '#f))
    (define gxc#!class-cons::typedecl
      (lambda (_self65818_)
        (let* ((_self6581965825_ _self65818_)
               (_E6582165829_
                (lambda () (error '"No clause matching" _self6581965825_)))
               (_K6582265834_
                (lambda (_class-t65832_)
                  (let ((__tmp68345
                         (let ()
                           (declare (not safe))
                           (cons _class-t65832_ '()))))
                    (declare (not safe))
                    (cons '@class-cons __tmp68345)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6581965825_
                 'gxc#!class-cons::t))
              (let* ((_e6582365837_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6581965825_ '1)))
                     (_class-t65840_ _e6582365837_))
                (declare (not safe))
                (_K6582265834_ _class-t65840_))
              (let () (declare (not safe)) (_E6582165829_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'typedecl
       gxc#!class-cons::typedecl
       '#f))
    (define gxc#!class-getf::typedecl
      (lambda (_self65658_)
        (let* ((_self6565965667_ _self65658_)
               (_E6566165671_
                (lambda () (error '"No clause matching" _self6565965667_)))
               (_K6566265678_
                (lambda (_unchecked?65674_ _slot65675_ _class-t65676_)
                  (let ((__tmp68346
                         (let ((__tmp68347
                                (let ((__tmp68348
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65674_ '()))))
                                  (declare (not safe))
                                  (cons _slot65675_ __tmp68348))))
                           (declare (not safe))
                           (cons _class-t65676_ __tmp68347))))
                    (declare (not safe))
                    (cons '@class-getf __tmp68346)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6565965667_
                 'gxc#!class-getf::t))
              (let* ((_e6566365681_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6565965667_ '1)))
                     (_class-t65684_ _e6566365681_)
                     (_e6566465686_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6565965667_ '2)))
                     (_slot65689_ _e6566465686_)
                     (_e6566565691_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6565965667_ '3)))
                     (_unchecked?65694_ _e6566565691_))
                (declare (not safe))
                (_K6566265678_ _unchecked?65694_ _slot65689_ _class-t65684_))
              (let () (declare (not safe)) (_E6566165671_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'typedecl
       gxc#!class-getf::typedecl
       '#f))
    (define gxc#!class-setf::typedecl
      (lambda (_self65498_)
        (let* ((_self6549965507_ _self65498_)
               (_E6550165511_
                (lambda () (error '"No clause matching" _self6549965507_)))
               (_K6550265518_
                (lambda (_unchecked?65514_ _slot65515_ _class-t65516_)
                  (let ((__tmp68349
                         (let ((__tmp68350
                                (let ((__tmp68351
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65514_ '()))))
                                  (declare (not safe))
                                  (cons _slot65515_ __tmp68351))))
                           (declare (not safe))
                           (cons _class-t65516_ __tmp68350))))
                    (declare (not safe))
                    (cons '@class-setf __tmp68349)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6549965507_
                 'gxc#!class-setf::t))
              (let* ((_e6550365521_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6549965507_ '1)))
                     (_class-t65524_ _e6550365521_)
                     (_e6550465526_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6549965507_ '2)))
                     (_slot65529_ _e6550465526_)
                     (_e6550565531_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6549965507_ '3)))
                     (_unchecked?65534_ _e6550565531_))
                (declare (not safe))
                (_K6550265518_ _unchecked?65534_ _slot65529_ _class-t65524_))
              (let () (declare (not safe)) (_E6550165511_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'typedecl
       gxc#!class-setf::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self65324_)
        (let* ((_self6532565335_ _self65324_)
               (_E6532765339_
                (lambda () (error '"No clause matching" _self6532565335_)))
               (_K6532865350_
                (lambda (_typedecl65342_
                         _inline65343_
                         _dispatch65344_
                         _arity65345_)
                  (if _inline65343_
                      (let ((_$e65347_ _typedecl65342_))
                        (if _$e65347_
                            _$e65347_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp68352
                             (let ((__tmp68353
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch65344_ '()))))
                               (declare (not safe))
                               (cons _arity65345_ __tmp68353))))
                        (declare (not safe))
                        (cons '@lambda __tmp68352))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6532565335_ 'gxc#!lambda::t))
              (let* ((_e6532965353_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532565335_ '1)))
                     (_e6533065356_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532565335_ '2)))
                     (_arity65359_ _e6533065356_)
                     (_e6533165361_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532565335_ '3)))
                     (_dispatch65364_ _e6533165361_)
                     (_e6533265366_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532565335_ '4)))
                     (_inline65369_ _e6533265366_)
                     (_e6533365371_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532565335_ '5)))
                     (_typedecl65374_ _e6533365371_))
                (declare (not safe))
                (_K6532865350_
                 _typedecl65374_
                 _inline65369_
                 _dispatch65364_
                 _arity65359_))
              (let () (declare (not safe)) (_E6532765339_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self65135_)
        (letrec ((_clause-e65137_
                  (lambda (_clause65167_)
                    (let* ((_clause6516865176_ _clause65167_)
                           (_E6517065180_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6516865176_)))
                           (_K6517165186_
                            (lambda (_dispatch65183_ _arity65184_)
                              (let ((__tmp68354
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch65183_ '()))))
                                (declare (not safe))
                                (cons _arity65184_ __tmp68354)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6516865176_
                             'gxc#!lambda::t))
                          (let* ((_e6517265189_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6516865176_ '1)))
                                 (_e6517365192_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6516865176_ '2)))
                                 (_arity65195_ _e6517365192_)
                                 (_e6517465197_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6516865176_ '3)))
                                 (_dispatch65200_ _e6517465197_))
                            (declare (not safe))
                            (_K6517165186_ _dispatch65200_ _arity65195_))
                          (let () (declare (not safe)) (_E6517065180_)))))))
          (let* ((_self6513865145_ _self65135_)
                 (_E6514065149_
                  (lambda () (error '"No clause matching" _self6513865145_)))
                 (_K6514165156_
                  (lambda (_clauses65152_)
                    (let ((_clauses65154_
                           (map _clause-e65137_ _clauses65152_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses65154_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6513865145_
                   'gxc#!case-lambda::t))
                (let* ((_e6514265159_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6513865145_ '1)))
                       (_e6514365162_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6513865145_ '2)))
                       (_clauses65165_ _e6514365162_))
                  (declare (not safe))
                  (_K6514165156_ _clauses65165_))
                (let () (declare (not safe)) (_E6514065149_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self64978_)
        (let* ((_self6497964987_ _self64978_)
               (_E6498164991_
                (lambda () (error '"No clause matching" _self6497964987_)))
               (_K6498264997_
                (lambda (_dispatch64994_ _table64995_)
                  (let ((__tmp68355
                         (let ((__tmp68356
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch64994_ '()))))
                           (declare (not safe))
                           (cons _table64995_ __tmp68356))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp68355)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6497964987_ 'gxc#!kw-lambda::t))
              (let* ((_e6498365000_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6497964987_ '1)))
                     (_e6498465003_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6497964987_ '2)))
                     (_table65006_ _e6498465003_)
                     (_e6498565008_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6497964987_ '3)))
                     (_dispatch65011_ _e6498565008_))
                (declare (not safe))
                (_K6498264997_ _dispatch65011_ _table65006_))
              (let () (declare (not safe)) (_E6498164991_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self64821_)
        (let* ((_self6482264830_ _self64821_)
               (_E6482464834_
                (lambda () (error '"No clause matching" _self6482264830_)))
               (_K6482564840_
                (lambda (_main64837_ _keys64838_)
                  (let ((__tmp68357
                         (let ((__tmp68358
                                (let ()
                                  (declare (not safe))
                                  (cons _main64837_ '()))))
                           (declare (not safe))
                           (cons _keys64838_ __tmp68358))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp68357)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6482264830_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6482664843_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6482264830_ '1)))
                     (_e6482764846_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6482264830_ '2)))
                     (_keys64849_ _e6482764846_)
                     (_e6482864851_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6482264830_ '3)))
                     (_main64854_ _e6482864851_))
                (declare (not safe))
                (_K6482564840_ _main64854_ _keys64849_))
              (let () (declare (not safe)) (_E6482464834_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
