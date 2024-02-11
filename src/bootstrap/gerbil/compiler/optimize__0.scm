(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707646858)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj287169
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj287169)
               __obj287169)))))
    (define gxc#optimize!
      (lambda (_ctx282394_)
        (let ((__tmp287192
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282394_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp287194
                        (let ((__obj287170
                               (gxc#current-compile-optimizer-info)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj287170
                                 'gxc#optimizer-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj287170
                                 '2
                                 gxc#optimizer-info::t
                                 '#f))
                              (class-slot-ref
                               gxc#optimizer-info::t
                               __obj287170
                               'ssxi))))
                       (__tmp287193
                        (let ((__obj287171 _ctx282394_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj287171
                                 'gx#expander-context::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj287171
                                 '1
                                 gx#expander-context::t
                                 '#f))
                              (class-slot-ref
                               gx#expander-context::t
                               __obj287171
                               'id)))))
                   (declare (not safe))
                   (table-set! __tmp287194 __tmp287193 '#t))
                 (let* ((_code282397_
                         (let ((__tmp287195
                                (let ((__obj287172 _ctx282394_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj287172
                                         'gx#module-context::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj287172
                                         '11
                                         gx#module-context::t
                                         '#f))
                                      (class-slot-ref
                                       gx#module-context::t
                                       __obj287172
                                       'code)))))
                           (declare (not safe))
                           (gxc#optimize-source __tmp287195)))
                        (__obj287173 _ctx282394_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj287173
                          'gx#module-context::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj287173
                          _code282397_
                          '11
                          gx#module-context::t
                          '#f))
                       (class-slot-set!
                        gx#module-context::t
                        __obj287173
                        'code
                        _code282397_)))))
              (__tmp287191
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp287190
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp287192
           gxc#current-compile-mutators
           __tmp287191
           gxc#current-compile-local-type
           __tmp287190))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp287196
               (let ((__obj287174 (gxc#current-compile-optimizer-info)))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj287174
                        'gxc#optimizer-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj287174
                        '2
                        gxc#optimizer-info::t
                        '#f))
                     (class-slot-ref
                      gxc#optimizer-info::t
                      __obj287174
                      'ssxi)))))
          (declare (not safe))
          (table-set! __tmp287196 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282338_)
        (letrec* ((_deps282340_
                   (let* ((_imports282384_
                           (let ((__obj287175 _ctx282338_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj287175
                                    'gx#module-context::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj287175
                                    '8
                                    gx#module-context::t
                                    '#f))
                                 (class-slot-ref
                                  gx#module-context::t
                                  __obj287175
                                  'import))))
                          (_$e282386_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282338_))))
                     (if _$e282386_
                         ((lambda (_g282388282390_)
                            (let ()
                              (declare (not safe))
                              (cons _g282388282390_ _imports282384_)))
                          _$e282386_)
                         _imports282384_))))
          (let _lp282342_ ((_rest282344_ _deps282340_))
            (let* ((_rest282345282353_ _rest282344_)
                   (_else282347282361_ (lambda () '#!void))
                   (_K282349282372_
                    (lambda (_rest282364_ _hd282365_)
                      (if (let ()
                            (declare (not safe))
                            (class-instance? gx#module-context::t _hd282365_))
                          (begin
                            (if (let ((__tmp287210
                                       (let ((__obj287176
                                              (gxc#current-compile-optimizer-info)))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj287176
                                                'gxc#optimizer-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj287176
                                                '2
                                                gxc#optimizer-info::t
                                                '#f))
                                             (class-slot-ref
                                              gxc#optimizer-info::t
                                              __obj287176
                                              'ssxi))))
                                      (__tmp287209
                                       (let ((__obj287177 _hd282365_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj287177
                                                'gx#expander-context::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj287177
                                                '1
                                                gx#expander-context::t
                                                '#f))
                                             (class-slot-ref
                                              gx#expander-context::t
                                              __obj287177
                                              'id)))))
                                  (declare (not safe))
                                  (table-ref __tmp287210 __tmp287209 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282367_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282365_))))
                                    (if _$e282367_
                                        ((lambda (_pre282370_)
                                           (let ((__tmp287207
                                                  (let ((__tmp287208
                                                         (let ((__obj287178
                                                                _hd282365_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj287178
                          'gx#module-context::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj287178
                          '8
                          gx#module-context::t
                          '#f))
                       (class-slot-ref
                        gx#module-context::t
                        __obj287178
                        'import)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _pre282370_
                                                          __tmp287208))))
                                             (declare (not safe))
                                             (_lp282342_ __tmp287207)))
                                         _$e282367_)
                                        (let ((__tmp287206
                                               (let ((__obj287179 _hd282365_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj287179
                                                        'gx#module-context::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj287179
                                                        '8
                                                        gx#module-context::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gx#module-context::t
                                                      __obj287179
                                                      'import)))))
                                          (declare (not safe))
                                          (_lp282342_ __tmp287206))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282365_))))
                            (let ()
                              (declare (not safe))
                              (_lp282342_ _rest282364_)))
                          (if (let ()
                                (declare (not safe))
                                (class-instance?
                                 gx#prelude-context::t
                                 _hd282365_))
                              (begin
                                (if (let ((__tmp287205
                                           (let ((__obj287180
                                                  (gxc#current-compile-optimizer-info)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj287180
                                                    'gxc#optimizer-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj287180
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gxc#optimizer-info::t
                                                  __obj287180
                                                  'ssxi))))
                                          (__tmp287204
                                           (let ((__obj287181 _hd282365_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj287181
                                                    'gx#expander-context::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj287181
                                                    '1
                                                    gx#expander-context::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gx#expander-context::t
                                                  __obj287181
                                                  'id)))))
                                      (declare (not safe))
                                      (table-ref __tmp287205 __tmp287204 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp287203
                                             (let ((__obj287182 _hd282365_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj287182
                                                      'gx#prelude-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      __obj287182
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                   (class-slot-ref
                                                    gx#prelude-context::t
                                                    __obj287182
                                                    'import)))))
                                        (declare (not safe))
                                        (_lp282342_ __tmp287203))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282365_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282342_ _rest282364_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282365_
                                     'gx#module-import::t))
                                  (let ((__tmp287201
                                         (let ((__tmp287202
                                                (##direct-structure-ref
                                                 _hd282365_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287202 _rest282364_))))
                                    (declare (not safe))
                                    (_lp282342_ __tmp287201))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282365_
                                         'gx#module-export::t))
                                      (let ((__tmp287199
                                             (let ((__tmp287200
                                                    (##direct-structure-ref
                                                     _hd282365_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287200
                                                     _rest282364_))))
                                        (declare (not safe))
                                        (_lp282342_ __tmp287199))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282365_
                                             'gx#import-set::t))
                                          (let ((__tmp287197
                                                 (let ((__tmp287198
                                                        (##direct-structure-ref
                                                         _hd282365_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287198
                                                         _rest282364_))))
                                            (declare (not safe))
                                            (_lp282342_ __tmp287197))
                                          (error '"Unexpected module import"
                                                 _hd282365_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282345282353_))
                  (let ((_hd282350282375_
                         (let ()
                           (declare (not safe))
                           (##car _rest282345282353_)))
                        (_tl282351282377_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282345282353_))))
                    (let* ((_hd282380_ _hd282350282375_)
                           (_rest282382_ _tl282351282377_))
                      (declare (not safe))
                      (_K282349282372_ _rest282382_ _hd282380_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282318_)
        (if (and (let ()
                   (declare (not safe))
                   (class-instance? gx#module-context::t _ctx282318_))
                 (let ((__tmp287211
                        (let ((__obj287183 _ctx282318_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj287183
                                 'gx#module-context::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj287183
                                 '7
                                 gx#module-context::t
                                 '#f))
                              (class-slot-ref
                               gx#module-context::t
                               __obj287183
                               'path)))))
                   (declare (not safe))
                   (list? __tmp287211)))
            '#!void
            (let* ((_ht282320_
                    (let ((__obj287184 (gxc#current-compile-optimizer-info)))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj287184
                             'gxc#optimizer-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj287184
                             '2
                             gxc#optimizer-info::t
                             '#f))
                          (class-slot-ref
                           gxc#optimizer-info::t
                           __obj287184
                           'ssxi))))
                   (_id282322_
                    (let ((__obj287185 _ctx282318_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj287185
                             'gx#expander-context::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj287185
                             '1
                             gx#expander-context::t
                             '#f))
                          (class-slot-ref
                           gx#expander-context::t
                           __obj287185
                           'id))))
                   (_mod282324_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht282320_ _id282322_ '#f))))
              (let ((_$e282327_ _mod282324_))
                (if _$e282327_
                    _$e282327_
                    (let* ((_mod282330_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282318_)))
                           (_val282335_
                            (let ((_$e282332_ _mod282330_))
                              (if _$e282332_ _$e282332_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282320_ _id282322_ _val282335_))
                      _val282335_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282316_)
        (if (let ((__obj287186 _ctx282316_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj287186
                     'gx#expander-context::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref
                     __obj287186
                     '1
                     gx#expander-context::t
                     '#f))
                  (class-slot-ref gx#expander-context::t __obj287186 'id)))
            (let ((__tmp287212
                   (let ((__obj287187 _ctx282316_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj287187
                            'gx#expander-context::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj287187
                            '1
                            gx#expander-context::t
                            '#f))
                         (class-slot-ref
                          gx#expander-context::t
                          __obj287187
                          'id)))))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp287212))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282293_)
        (letrec ((_catch-e282295_
                  (lambda (_exn282314_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282293_))
                          (display-exception _exn282314_))
                        '#!void)
                    '#f))
                 (_import-e282296_
                  (lambda ()
                    (let* ((_str-id282299_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282293_))
                             '".ssxi"))
                           (_artefact-path282307_
                            (let ((_odir282300282302_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282300282302_
                                  (let ((_odir282305_ _odir282300282302_))
                                    (path-expand
                                     (string-append _str-id282299_ '".ss")
                                     _odir282305_))
                                  '#f)))
                           (_library-path282309_
                            (string->symbol
                             (string-append '":" _str-id282299_ '".ss")))
                           (_ssxi-path282311_
                            (if (and _artefact-path282307_
                                     (file-exists? _artefact-path282307_))
                                _artefact-path282307_
                                _library-path282309_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282311_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282311_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282295_ _import-e282296_)))))
    (define gxc#optimize-source
      (lambda (_stx282284_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282284_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282284_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282284_))
        (let* ((_stx282286_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282284_)))
               (_stx282288_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282286_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282288_))
          (let ((_stx282291_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282288_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282291_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282281_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp287213 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282281_ __tmp287213))
           (let ()
             (declare (not safe))
             (table-set! _tbl282281_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282281_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282281_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282281_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282281_ '%#call gxc#generate-ssxi-call%))
           _tbl282281_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282264_ . _args282266_)
        (let ((__tmp287215
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282266_)
                     (gxc#compile-e__0 _stx282264_)
                     (let ((_arg1282271_ (car _args282266_))
                           (_rest282273_ (cdr _args282266_)))
                       (if (null? _rest282273_)
                           (gxc#compile-e__1 _stx282264_ _arg1282271_)
                           (let ((_arg2282276_ (car _rest282273_))
                                 (_rest282278_ (cdr _rest282273_)))
                             (if (null? _rest282278_)
                                 (gxc#compile-e__2
                                  _stx282264_
                                  _arg1282271_
                                  _arg2282276_)
                                 (apply gxc#compile-e
                                        _stx282264_
                                        _arg1282271_
                                        _arg2282276_
                                        _rest282278_))))))))
              (__tmp287214 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp287215
           gxc#current-compile-methods
           __tmp287214))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282225_)
        (let* ((_g282227282237_
                (lambda (_g282228282234_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282228282234_))))
               (_g282226282261_
                (lambda (_g282228282240_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282228282240_))
                      (let ((_e282232282242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282228282240_))))
                        (let ((_hd282231282245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282232282242_)))
                              (_tl282230282247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282232282242_))))
                          ((lambda (_L282250_)
                             (let ((__tmp287218
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282225_))))
                                   (__tmp287216
                                    (let ((__tmp287217
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp287217 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp287218
                                gx#current-expander-phi
                                __tmp287216)))
                           _tl282230282247_)))
                      (let ()
                        (declare (not safe))
                        (_g282227282237_ _g282228282240_))))))
          (declare (not safe))
          (_g282226282261_ _stx282225_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx282165_)
        (let* ((_g282167282181_
                (lambda (_g282168282178_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282168282178_))))
               (_g282166282222_
                (lambda (_g282168282184_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282168282184_))
                      (let ((_e282173282186_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282168282184_))))
                        (let ((_hd282172282189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282173282186_)))
                              (_tl282171282191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282173282186_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282171282191_))
                              (let ((_e282176282194_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282171282191_))))
                                (let ((_hd282175282197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282176282194_)))
                                      (_tl282174282199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282176282194_))))
                                  ((lambda (_L282202_ _L282203_)
                                     (let* ((_ctx282216_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L282203_)))
                                            (_code282218_
                                             (let ((__obj287188 _ctx282216_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj287188
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      __obj287188
                                                      '11
                                                      gx#module-context::t
                                                      '#f))
                                                   (class-slot-ref
                                                    gx#module-context::t
                                                    __obj287188
                                                    'code)))))
                                       (let ((__tmp287219
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282218_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp287219
                                          gx#current-expander-context
                                          _ctx282216_))))
                                   _tl282174282199_
                                   _hd282175282197_)))
                              (let ()
                                (declare (not safe))
                                (_g282167282181_ _g282168282184_)))))
                      (let ()
                        (declare (not safe))
                        (_g282167282181_ _g282168282184_))))))
          (declare (not safe))
          (_g282166282222_ _stx282165_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx281975_)
        (letrec ((_generate-e281977_
                  (lambda (_id282154_)
                    (let* ((_sym282156_
                            (if (let ((__tmp287220
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp287220))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id282154_))
                                '#f))
                           (_$e282158_
                            (if _sym282156_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym282156_))
                                '#f)))
                      (if _$e282158_
                          ((lambda (_type282161_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym282156_))
                             (let* ((_typedecl282163_
                                     (let ((__method287189
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type282161_
                                               'typedecl))))
                                       (if __method287189
                                           (__method287189 _type282161_)
                                           (error '"Missing method"
                                                  _type282161_
                                                  'typedecl))))
                                    (__tmp287221
                                     (let ((__tmp287222
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl282163_ '()))))
                                       (declare (not safe))
                                       (cons _sym282156_ __tmp287222))))
                               (declare (not safe))
                               (cons 'declare-type __tmp287221)))
                           _$e282158_)
                          '(begin))))))
          (let* ((___stx286868286869_ _stx281975_)
                 (_g281980282018_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286868286869_)))))
            (let ((___kont286870286871_
                   (lambda (_L282136_)
                     (let ()
                       (declare (not safe))
                       (_generate-e281977_ _L282136_))))
                  (___kont286872286873_
                   (lambda (_L282071_)
                     (let ((_types282097_
                            (map _generate-e281977_
                                 (let ((__tmp287223
                                        (lambda (_g282089282092_
                                                 _g282090282094_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g282089282092_
                                                  _g282090282094_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp287223 '() _L282071_)))))
                       (declare (not safe))
                       (cons 'begin _types282097_)))))
              (let ((___match286923286924_
                     (lambda (_e281998282023_
                              _hd281997282026_
                              _tl281996282028_
                              _e282001282031_
                              _hd282000282034_
                              _tl281999282036_
                              ___splice286874286875_
                              _target282002282039_
                              _tl282004282041_)
                       (letrec ((_loop282005282044_
                                 (lambda (_hd282003282047_ _id282009282049_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd282003282047_))
                                       (let ((_e282006282052_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd282003282047_))))
                                         (let ((_lp-tl282008282057_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e282006282052_)))
                                               (_lp-hd282007282055_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e282006282052_))))
                                           (let ((__tmp287224
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd282007282055_
                                                          _id282009282049_))))
                                             (declare (not safe))
                                             (_loop282005282044_
                                              _lp-tl282008282057_
                                              __tmp287224))))
                                       (let ((_id282010282060_
                                              (reverse _id282009282049_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl281999282036_))
                                             (let ((_e282013282063_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl281999282036_))))
                                               (let ((_tl282011282068_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e282013282063_)))
                                                     (_hd282012282066_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e282013282063_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl282011282068_))
                                                     (___kont286872286873_
                                                      _id282010282060_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g281980282018_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g281980282018_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop282005282044_ _target282002282039_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286868286869_))
                    (let ((_e281985282104_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286868286869_))))
                      (let ((_tl281983282109_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281985282104_)))
                            (_hd281984282107_
                             (let ()
                               (declare (not safe))
                               (##car _e281985282104_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281983282109_))
                            (let ((_e281988282112_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl281983282109_))))
                              (let ((_tl281986282117_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281988282112_)))
                                    (_hd281987282115_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281988282112_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd281987282115_))
                                    (let ((_e281991282120_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd281987282115_))))
                                      (let ((_tl281989282125_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e281991282120_)))
                                            (_hd281990282123_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e281991282120_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl281989282125_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl281986282117_))
                                                (let ((_e281994282128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl281986282117_))))
                                                  (let ((_tl281992282133_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e281994282128_)))
                                                        (_hd281993282131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e281994282128_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281992282133_))
                                                        (___kont286870286871_
                                                         _hd281990282123_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd281987282115_))
                                                            (let ((___splice286874286875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd281987282115_ '0))))
                      (let ((_tl282004282041_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286874286875_ '1)))
                            (_target282002282039_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286874286875_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl282004282041_))
                            (___match286923286924_
                             _e281985282104_
                             _hd281984282107_
                             _tl281983282109_
                             _e281988282112_
                             _hd281987282115_
                             _tl281986282117_
                             ___splice286874286875_
                             _target282002282039_
                             _tl282004282041_)
                            (let () (declare (not safe)) (_g281980282018_)))))
                    (let () (declare (not safe)) (_g281980282018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd281987282115_))
                                                    (let ((___splice286874286875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd281987282115_
                                                              '0))))
                                                      (let ((_tl282004282041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice286874286875_ '1)))
                    (_target282002282039_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice286874286875_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl282004282041_))
                    (___match286923286924_
                     _e281985282104_
                     _hd281984282107_
                     _tl281983282109_
                     _e281988282112_
                     _hd281987282115_
                     _tl281986282117_
                     ___splice286874286875_
                     _target282002282039_
                     _tl282004282041_)
                    (let () (declare (not safe)) (_g281980282018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g281980282018_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd281987282115_))
                                                (let ((___splice286874286875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd281987282115_
                                                          '0))))
                                                  (let ((_tl282004282041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286874286875_
                                                            '1)))
                                                        (_target282002282039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286874286875_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282004282041_))
                                                        (___match286923286924_
                                                         _e281985282104_
                                                         _hd281984282107_
                                                         _tl281983282109_
                                                         _e281988282112_
                                                         _hd281987282115_
                                                         _tl281986282117_
                                                         ___splice286874286875_
                                                         _target282002282039_
                                                         _tl282004282041_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g281980282018_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281980282018_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd281987282115_))
                                        (let ((___splice286874286875_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd281987282115_
                                                  '0))))
                                          (let ((_tl282004282041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286874286875_
                                                    '1)))
                                                (_target282002282039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286874286875_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl282004282041_))
                                                (___match286923286924_
                                                 _e281985282104_
                                                 _hd281984282107_
                                                 _tl281983282109_
                                                 _e281988282112_
                                                 _hd281987282115_
                                                 _tl281986282117_
                                                 ___splice286874286875_
                                                 _target282002282039_
                                                 _tl282004282041_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281980282018_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g281980282018_))))))
                            (let () (declare (not safe)) (_g281980282018_)))))
                    (let () (declare (not safe)) (_g281980282018_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281529_)
        (let* ((___stx286926286927_ _stx281529_)
               (_g281533281635_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286926286927_)))))
          (let ((___kont286928286929_
                 (lambda (_L281925_ _L281926_ _L281927_ _L281928_ _L281929_)
                   (let ((__tmp287225
                          (let ((__tmp287232
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281928_)))
                                (__tmp287226
                                 (let ((__tmp287231
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281927_)))
                                       (__tmp287227
                                        (let ((__tmp287230
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281926_)))
                                              (__tmp287228
                                               (let ((__tmp287229
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L281925_))))
                                                 (declare (not safe))
                                                 (cons __tmp287229 '()))))
                                          (declare (not safe))
                                          (cons __tmp287230 __tmp287228))))
                                   (declare (not safe))
                                   (cons __tmp287231 __tmp287227))))
                            (declare (not safe))
                            (cons __tmp287232 __tmp287226))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287225))))
                (___kont286930286931_
                 (lambda (_L281751_ _L281752_ _L281753_ _L281754_)
                   (let ((__tmp287233
                          (let ((__tmp287239
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281753_)))
                                (__tmp287234
                                 (let ((__tmp287238
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281752_)))
                                       (__tmp287235
                                        (let ((__tmp287237
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281751_)))
                                              (__tmp287236
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287237 __tmp287236))))
                                   (declare (not safe))
                                   (cons __tmp287238 __tmp287235))))
                            (declare (not safe))
                            (cons __tmp287239 __tmp287234))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287233))))
                (___kont286932286933_ (lambda () '(begin))))
            (let ((___match287061287062_
                   (lambda (_e281542281797_
                            _hd281541281800_
                            _tl281540281802_
                            _e281545281805_
                            _hd281544281808_
                            _tl281543281810_
                            _e281548281813_
                            _hd281547281816_
                            _tl281546281818_
                            _e281551281821_
                            _hd281550281824_
                            _tl281549281826_
                            _e281554281829_
                            _hd281553281832_
                            _tl281552281834_
                            _e281557281837_
                            _hd281556281840_
                            _tl281555281842_
                            _e281560281845_
                            _hd281559281848_
                            _tl281558281850_
                            _e281563281853_
                            _hd281562281856_
                            _tl281561281858_
                            _e281566281861_
                            _hd281565281864_
                            _tl281564281866_
                            _e281569281869_
                            _hd281568281872_
                            _tl281567281874_
                            _e281572281877_
                            _hd281571281880_
                            _tl281570281882_
                            _e281575281885_
                            _hd281574281888_
                            _tl281573281890_
                            _e281578281893_
                            _hd281577281896_
                            _tl281576281898_
                            _e281581281901_
                            _hd281580281904_
                            _tl281579281906_
                            _e281584281909_
                            _hd281583281912_
                            _tl281582281914_
                            _e281587281917_
                            _hd281586281920_
                            _tl281585281922_)
                     (let ((_L281925_ _hd281586281920_)
                           (_L281926_ _hd281577281896_)
                           (_L281927_ _hd281568281872_)
                           (_L281928_ _hd281559281848_)
                           (_L281929_ _hd281550281824_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L281929_
                              'bind-method!))
                           (___kont286928286929_
                            _L281925_
                            _L281926_
                            _L281927_
                            _L281928_
                            _L281929_)
                           (___kont286932286933_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx286926286927_))
                  (let ((_e281542281797_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx286926286927_))))
                    (let ((_tl281540281802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281542281797_)))
                          (_hd281541281800_
                           (let ()
                             (declare (not safe))
                             (##car _e281542281797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281540281802_))
                          (let ((_e281545281805_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281540281802_))))
                            (let ((_tl281543281810_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281545281805_)))
                                  (_hd281544281808_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281545281805_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281544281808_))
                                  (let ((_e281548281813_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281544281808_))))
                                    (let ((_tl281546281818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281548281813_)))
                                          (_hd281547281816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281548281813_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281547281816_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281547281816_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281546281818_))
                                                  (let ((_e281551281821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281546281818_))))
                                                    (let ((_tl281549281826_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281551281821_)))
                                                          (_hd281550281824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281551281821_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281549281826_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281543281810_))
                      (let ((_e281554281829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281543281810_))))
                        (let ((_tl281552281834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281554281829_)))
                              (_hd281553281832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281554281829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281553281832_))
                              (let ((_e281557281837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281553281832_))))
                                (let ((_tl281555281842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281557281837_)))
                                      (_hd281556281840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281557281837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281556281840_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281556281840_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281555281842_))
                                              (let ((_e281560281845_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281555281842_))))
                                                (let ((_tl281558281850_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281560281845_)))
                                                      (_hd281559281848_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281560281845_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281558281850_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281552281834_))
                                                          (let ((_e281563281853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281552281834_))))
                    (let ((_tl281561281858_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281563281853_)))
                          (_hd281562281856_
                           (let ()
                             (declare (not safe))
                             (##car _e281563281853_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281562281856_))
                          (let ((_e281566281861_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281562281856_))))
                            (let ((_tl281564281866_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281566281861_)))
                                  (_hd281565281864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281566281861_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281565281864_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281565281864_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281564281866_))
                                          (let ((_e281569281869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281564281866_))))
                                            (let ((_tl281567281874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281569281869_)))
                                                  (_hd281568281872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281569281869_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281567281874_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281561281858_))
                                                      (let ((_e281572281877_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281561281858_))))
                (let ((_tl281570281882_
                       (let () (declare (not safe)) (##cdr _e281572281877_)))
                      (_hd281571281880_
                       (let () (declare (not safe)) (##car _e281572281877_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281571281880_))
                      (let ((_e281575281885_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281571281880_))))
                        (let ((_tl281573281890_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281575281885_)))
                              (_hd281574281888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281575281885_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281574281888_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281574281888_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281573281890_))
                                      (let ((_e281578281893_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281573281890_))))
                                        (let ((_tl281576281898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281578281893_)))
                                              (_hd281577281896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281578281893_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281576281898_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281570281882_))
                                                  (let ((_e281581281901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281570281882_))))
                                                    (let ((_tl281579281906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281581281901_)))
                                                          (_hd281580281904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281581281901_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281580281904_))
                                                          (let ((_e281584281909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281580281904_))))
                    (let ((_tl281582281914_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281584281909_)))
                          (_hd281583281912_
                           (let ()
                             (declare (not safe))
                             (##car _e281584281909_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281583281912_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281583281912_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281582281914_))
                                  (let ((_e281587281917_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281582281914_))))
                                    (let ((_tl281585281922_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281587281917_)))
                                          (_hd281586281920_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281587281917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281585281922_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281579281906_))
                                              (___match287061287062_
                                               _e281542281797_
                                               _hd281541281800_
                                               _tl281540281802_
                                               _e281545281805_
                                               _hd281544281808_
                                               _tl281543281810_
                                               _e281548281813_
                                               _hd281547281816_
                                               _tl281546281818_
                                               _e281551281821_
                                               _hd281550281824_
                                               _tl281549281826_
                                               _e281554281829_
                                               _hd281553281832_
                                               _tl281552281834_
                                               _e281557281837_
                                               _hd281556281840_
                                               _tl281555281842_
                                               _e281560281845_
                                               _hd281559281848_
                                               _tl281558281850_
                                               _e281563281853_
                                               _hd281562281856_
                                               _tl281561281858_
                                               _e281566281861_
                                               _hd281565281864_
                                               _tl281564281866_
                                               _e281569281869_
                                               _hd281568281872_
                                               _tl281567281874_
                                               _e281572281877_
                                               _hd281571281880_
                                               _tl281570281882_
                                               _e281575281885_
                                               _hd281574281888_
                                               _tl281573281890_
                                               _e281578281893_
                                               _hd281577281896_
                                               _tl281576281898_
                                               _e281581281901_
                                               _hd281580281904_
                                               _tl281579281906_
                                               _e281584281909_
                                               _hd281583281912_
                                               _tl281582281914_
                                               _e281587281917_
                                               _hd281586281920_
                                               _tl281585281922_)
                                              (___kont286932286933_))
                                          (___kont286932286933_))))
                                  (___kont286932286933_))
                              (___kont286932286933_))
                          (___kont286932286933_))))
                  (___kont286932286933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281570281882_))
                                                      (if (let ((__tmp287240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287240 'bind-method!))
                  (let ((_L281751_ _hd281577281896_)
                        (_L281752_ _hd281568281872_)
                        (_L281753_ _hd281559281848_)
                        (_L281754_ _hd281550281824_))
                    (___kont286930286931_
                     _L281751_
                     _L281752_
                     _L281753_
                     _L281754_))
                  (___kont286932286933_))
              (___kont286932286933_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286932286933_))))
                                      (___kont286932286933_))
                                  (___kont286932286933_))
                              (___kont286932286933_))))
                      (___kont286932286933_))))
              (___kont286932286933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286932286933_))))
                                          (___kont286932286933_))
                                      (___kont286932286933_))
                                  (___kont286932286933_))))
                          (___kont286932286933_))))
                  (___kont286932286933_))
              (___kont286932286933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286932286933_))
                                          (___kont286932286933_))
                                      (___kont286932286933_))))
                              (___kont286932286933_))))
                      (___kont286932286933_))
                  (___kont286932286933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286932286933_))
                                              (___kont286932286933_))
                                          (___kont286932286933_))))
                                  (___kont286932286933_))))
                          (___kont286932286933_))))
                  (___kont286932286933_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281505_)
        (let* ((_self281506281512_ _self281505_)
               (_E281508281516_
                (lambda () (error '"No clause matching" _self281506281512_)))
               (_K281509281521_
                (lambda (_alias-id281519_)
                  (let ((__tmp287241
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281519_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287241)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!alias::t _self281506281512_))
              (let* ((_e281510281524_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281506281512_ 'id)))
                     (_alias-id281527_ _e281510281524_))
                (declare (not safe))
                (_K281509281521_ _alias-id281527_))
              (let () (declare (not safe)) (_E281508281516_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281303_)
        (let* ((_self281304281318_ _self281303_)
               (_E281306281322_
                (lambda () (error '"No clause matching" _self281304281318_)))
               (_K281307281335_
                (lambda (_methods281325_
                         _final?281326_
                         _struct?281327_
                         _constructor281328_
                         _fields281329_
                         _slots281330_
                         _precendence-list281331_
                         _super281332_
                         _id281333_)
                  (let ((__tmp287242
                         (let ((__tmp287243
                                (let ((__tmp287244
                                       (let ((__tmp287245
                                              (let ((__tmp287246
                                                     (let ((__tmp287247
                                                            (let ((__tmp287248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287249
                                  (let ((__tmp287250
                                         (let ((__tmp287251
                                                (if _methods281325_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods281325_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp287251 '()))))
                                    (declare (not safe))
                                    (cons _final?281326_ __tmp287250))))
                             (declare (not safe))
                             (cons _struct?281327_ __tmp287249))))
                      (declare (not safe))
                      (cons _constructor281328_ __tmp287248))))
               (declare (not safe))
               (cons _fields281329_ __tmp287247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281330_
                                                      __tmp287246))))
                                         (declare (not safe))
                                         (cons _precendence-list281331_
                                               __tmp287245))))
                                  (declare (not safe))
                                  (cons _super281332_ __tmp287244))))
                           (declare (not safe))
                           (cons _id281333_ __tmp287243))))
                    (declare (not safe))
                    (cons '@class __tmp287242)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!class::t _self281304281318_))
              (let* ((_e281308281338_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'id)))
                     (_id281341_ _e281308281338_)
                     (_e281309281343_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'super)))
                     (_super281346_ _e281309281343_)
                     (_e281310281348_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref
                         _self281304281318_
                         'precedence-list)))
                     (_precendence-list281351_ _e281310281348_)
                     (_e281311281353_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'slots)))
                     (_slots281356_ _e281311281353_)
                     (_e281312281358_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'fields)))
                     (_fields281361_ _e281312281358_)
                     (_e281313281363_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'constructor)))
                     (_constructor281366_ _e281313281363_)
                     (_e281314281368_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'struct?)))
                     (_struct?281371_ _e281314281368_)
                     (_e281315281373_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'final?)))
                     (_final?281376_ _e281315281373_)
                     (_e281316281378_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281304281318_ 'methods)))
                     (_methods281381_ _e281316281378_))
                (declare (not safe))
                (_K281307281335_
                 _methods281381_
                 _final?281376_
                 _struct?281371_
                 _constructor281366_
                 _fields281361_
                 _slots281356_
                 _precendence-list281351_
                 _super281346_
                 _id281341_))
              (let () (declare (not safe)) (_E281306281322_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self281157_)
        (let* ((_self281158281164_ _self281157_)
               (_E281160281168_
                (lambda () (error '"No clause matching" _self281158281164_)))
               (_K281161281173_
                (lambda (_klass-id281171_)
                  (let ((__tmp287252
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281171_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287252)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!predicate::t _self281158281164_))
              (let* ((_e281162281176_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281158281164_ 'id)))
                     (_klass-id281179_ _e281162281176_))
                (declare (not safe))
                (_K281161281173_ _klass-id281179_))
              (let () (declare (not safe)) (_E281160281168_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self281011_)
        (let* ((_self281012281018_ _self281011_)
               (_E281014281022_
                (lambda () (error '"No clause matching" _self281012281018_)))
               (_K281015281027_
                (lambda (_klass-id281025_)
                  (let ((__tmp287253
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281025_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287253)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!constructor::t _self281012281018_))
              (let* ((_e281016281030_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self281012281018_ 'id)))
                     (_klass-id281033_ _e281016281030_))
                (declare (not safe))
                (_K281015281027_ _klass-id281033_))
              (let () (declare (not safe)) (_E281014281022_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self280851_)
        (let* ((_self280852280860_ _self280851_)
               (_E280854280864_
                (lambda () (error '"No clause matching" _self280852280860_)))
               (_K280855280871_
                (lambda (_checked?280867_ _slot280868_ _klass-id280869_)
                  (let ((__tmp287254
                         (let ((__tmp287255
                                (let ((__tmp287256
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280867_ '()))))
                                  (declare (not safe))
                                  (cons _slot280868_ __tmp287256))))
                           (declare (not safe))
                           (cons _klass-id280869_ __tmp287255))))
                    (declare (not safe))
                    (cons '@accessor __tmp287254)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!accessor::t _self280852280860_))
              (let* ((_e280856280874_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280852280860_ 'id)))
                     (_klass-id280877_ _e280856280874_)
                     (_e280857280879_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280852280860_ 'slot)))
                     (_slot280882_ _e280857280879_)
                     (_e280858280884_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280852280860_ 'checked?)))
                     (_checked?280887_ _e280858280884_))
                (declare (not safe))
                (_K280855280871_
                 _checked?280887_
                 _slot280882_
                 _klass-id280877_))
              (let () (declare (not safe)) (_E280854280864_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280691_)
        (let* ((_self280692280700_ _self280691_)
               (_E280694280704_
                (lambda () (error '"No clause matching" _self280692280700_)))
               (_K280695280711_
                (lambda (_checked?280707_ _slot280708_ _klass-id280709_)
                  (let ((__tmp287257
                         (let ((__tmp287258
                                (let ((__tmp287259
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280707_ '()))))
                                  (declare (not safe))
                                  (cons _slot280708_ __tmp287259))))
                           (declare (not safe))
                           (cons _klass-id280709_ __tmp287258))))
                    (declare (not safe))
                    (cons '@mutator __tmp287257)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!mutator::t _self280692280700_))
              (let* ((_e280696280714_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280692280700_ 'id)))
                     (_klass-id280717_ _e280696280714_)
                     (_e280697280719_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280692280700_ 'slot)))
                     (_slot280722_ _e280697280719_)
                     (_e280698280724_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280692280700_ 'checked?)))
                     (_checked?280727_ _e280698280724_))
                (declare (not safe))
                (_K280695280711_
                 _checked?280727_
                 _slot280722_
                 _klass-id280717_))
              (let () (declare (not safe)) (_E280694280704_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280517_)
        (let* ((_self280518280528_ _self280517_)
               (_E280520280532_
                (lambda () (error '"No clause matching" _self280518280528_)))
               (_K280521280543_
                (lambda (_typedecl280535_
                         _inline280536_
                         _dispatch280537_
                         _arity280538_)
                  (if _inline280536_
                      (let ((_$e280540_ _typedecl280535_))
                        (if _$e280540_
                            _$e280540_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287260
                             (let ((__tmp287261
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280537_ '()))))
                               (declare (not safe))
                               (cons _arity280538_ __tmp287261))))
                        (declare (not safe))
                        (cons '@lambda __tmp287260))))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!lambda::t _self280518280528_))
              (let* ((_e280522280546_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280518280528_ 'id)))
                     (_e280523280549_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280518280528_ 'arity)))
                     (_arity280552_ _e280523280549_)
                     (_e280524280554_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280518280528_ 'dispatch)))
                     (_dispatch280557_ _e280524280554_)
                     (_e280525280559_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280518280528_ 'inline)))
                     (_inline280562_ _e280525280559_)
                     (_e280526280564_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref
                         _self280518280528_
                         'inline-typedecl)))
                     (_typedecl280567_ _e280526280564_))
                (declare (not safe))
                (_K280521280543_
                 _typedecl280567_
                 _inline280562_
                 _dispatch280557_
                 _arity280552_))
              (let () (declare (not safe)) (_E280520280532_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280328_)
        (letrec ((_clause-e280330_
                  (lambda (_clause280360_)
                    (let* ((_clause280361280369_ _clause280360_)
                           (_E280363280373_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280361280369_)))
                           (_K280364280379_
                            (lambda (_dispatch280376_ _arity280377_)
                              (let ((__tmp287262
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280376_ '()))))
                                (declare (not safe))
                                (cons _arity280377_ __tmp287262)))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gxc#!lambda::t
                             _clause280361280369_))
                          (let* ((_e280365280382_
                                  (let ()
                                    (declare (not safe))
                                    (unchecked-slot-ref
                                     _clause280361280369_
                                     'id)))
                                 (_e280366280385_
                                  (let ()
                                    (declare (not safe))
                                    (unchecked-slot-ref
                                     _clause280361280369_
                                     'arity)))
                                 (_arity280388_ _e280366280385_)
                                 (_e280367280390_
                                  (let ()
                                    (declare (not safe))
                                    (unchecked-slot-ref
                                     _clause280361280369_
                                     'dispatch)))
                                 (_dispatch280393_ _e280367280390_))
                            (declare (not safe))
                            (_K280364280379_ _dispatch280393_ _arity280388_))
                          (let () (declare (not safe)) (_E280363280373_)))))))
          (let* ((_self280331280338_ _self280328_)
                 (_E280333280342_
                  (lambda () (error '"No clause matching" _self280331280338_)))
                 (_K280334280349_
                  (lambda (_clauses280345_)
                    (let ((_clauses280347_
                           (map _clause-e280330_ _clauses280345_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280347_)))))
            (if (let ()
                  (declare (not safe))
                  (class-instance? gxc#!case-lambda::t _self280331280338_))
                (let* ((_e280335280352_
                        (let ()
                          (declare (not safe))
                          (unchecked-slot-ref _self280331280338_ 'id)))
                       (_e280336280355_
                        (let ()
                          (declare (not safe))
                          (unchecked-slot-ref _self280331280338_ 'clauses)))
                       (_clauses280358_ _e280336280355_))
                  (declare (not safe))
                  (_K280334280349_ _clauses280358_))
                (let () (declare (not safe)) (_E280333280342_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self280171_)
        (let* ((_self280172280180_ _self280171_)
               (_E280174280184_
                (lambda () (error '"No clause matching" _self280172280180_)))
               (_K280175280190_
                (lambda (_dispatch280187_ _table280188_)
                  (let ((__tmp287263
                         (let ((__tmp287264
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch280187_ '()))))
                           (declare (not safe))
                           (cons _table280188_ __tmp287264))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287263)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!kw-lambda::t _self280172280180_))
              (let* ((_e280176280193_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280172280180_ 'id)))
                     (_e280177280196_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280172280180_ 'table)))
                     (_table280199_ _e280177280196_)
                     (_e280178280201_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280172280180_ 'dispatch)))
                     (_dispatch280204_ _e280178280201_))
                (declare (not safe))
                (_K280175280190_ _dispatch280204_ _table280199_))
              (let () (declare (not safe)) (_E280174280184_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self280014_)
        (let* ((_self280015280023_ _self280014_)
               (_E280017280027_
                (lambda () (error '"No clause matching" _self280015280023_)))
               (_K280018280033_
                (lambda (_main280030_ _keys280031_)
                  (let ((__tmp287265
                         (let ((__tmp287266
                                (let ()
                                  (declare (not safe))
                                  (cons _main280030_ '()))))
                           (declare (not safe))
                           (cons _keys280031_ __tmp287266))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287265)))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!kw-lambda-primary::t _self280015280023_))
              (let* ((_e280019280036_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280015280023_ 'id)))
                     (_e280020280039_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280015280023_ 'keys)))
                     (_keys280042_ _e280020280039_)
                     (_e280021280044_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self280015280023_ 'main)))
                     (_main280047_ _e280021280044_))
                (declare (not safe))
                (_K280018280033_ _main280047_ _keys280042_))
              (let () (declare (not safe)) (_E280017280027_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
