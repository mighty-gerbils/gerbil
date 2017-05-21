(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g10174_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10175_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10176_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g10177_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g10178_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g10179_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g10180_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g10181_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g10182_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g10183_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g10184_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g10185_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g10186_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10187_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10188_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g10189_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g10190_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g10191_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g10192_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g10193_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g10194_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g10195_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g10196_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g10197_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2610_)
        (let ((_g26162695_
               (lambda (_g26172691_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26172691_))))
          (let ((_g26152769_
                 (lambda (_g26172699_)
                   (if (gx#stx-pair? _g26172699_)
                       (let ((_e26782702_ (gx#syntax-e _g26172699_)))
                         (let ((_hd26792706_ (##car _e26782702_))
                               (_tl26802709_ (##cdr _e26782702_)))
                           (if (gx#stx-pair? _tl26802709_)
                               (let ((_e26812712_ (gx#syntax-e _tl26802709_)))
                                 (let ((_hd26822716_ (##car _e26812712_))
                                       (_tl26832719_ (##cdr _e26812712_)))
                                   (if (gx#stx-pair? _tl26832719_)
                                       (let ((_e26842722_
                                              (gx#syntax-e _tl26832719_)))
                                         (let ((_hd26852726_
                                                (##car _e26842722_))
                                               (_tl26862729_
                                                (##cdr _e26842722_)))
                                           (if (gx#stx-pair? _hd26852726_)
                                               (let ((_e26872732_
                                                      (gx#syntax-e
                                                       _hd26852726_)))
                                                 (let ((_hd26882736_
                                                        (##car _e26872732_))
                                                       (_tl26892739_
                                                        (##cdr _e26872732_)))
                                                   ((lambda (_L2742_
                                                             _L2744_
                                                             _L2745_
                                                             _L2746_
                                                             _L2747_)
                                                      (if (gx#identifier?
                                                           _L2746_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L2747_
                                    (cons '#f
                                          (cons (cons _L2745_ _L2744_)
                                                _L2742_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L2746_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'stx)
                                                            (gx#datum->syntax
                                                             '#f
                                                             'args)))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'parameterize)
                                                            (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       'current-compile-methods)
                                      (cons (cons (gx#datum->syntax '#f 'force)
                                                  (cons _L2745_ '()))
                                            '()))
                                '())
                          (cons (cons (gx#datum->syntax '#f 'apply)
                                      (cons (gx#datum->syntax '#f 'compile-e)
                                            (cons (gx#datum->syntax '#f 'stx)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'args)
                                                        '()))))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  (_g26162695_ _g26172699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl26862729_
                                                    _tl26892739_
                                                    _hd26882736_
                                                    _hd26822716_
                                                    _hd26792706_)))
                                               (_g26162695_ _g26172699_))))
                                       (_g26162695_ _g26172699_))))
                               (_g26162695_ _g26172699_))))
                       (_g26162695_ _g26172699_)))))
            (let ((_g26142950_
                   (lambda (_g26172773_)
                     (if (gx#stx-pair? _g26172773_)
                         (let ((_e26352776_ (gx#syntax-e _g26172773_)))
                           (let ((_hd26362780_ (##car _e26352776_))
                                 (_tl26372783_ (##cdr _e26352776_)))
                             (if (gx#stx-pair? _tl26372783_)
                                 (let ((_e26382786_
                                        (gx#syntax-e _tl26372783_)))
                                   (let ((_hd26392790_ (##car _e26382786_))
                                         (_tl26402793_ (##cdr _e26382786_)))
                                     (if (gx#stx-datum? _hd26392790_)
                                         (if (equal? (gx#stx-e _hd26392790_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl26402793_)
                                                 (let ((_e26412796_
                                                        (gx#syntax-e
                                                         _tl26402793_)))
                                                   (let ((_hd26422800_
                                                          (##car _e26412796_))
                                                         (_tl26432803_
                                                          (##cdr _e26412796_)))
                                                     (if (gx#stx-pair?
                                                          _hd26422800_)
                                                         (let ((_e26442806_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd26422800_)))
                   (let ((_hd26452810_ (##car _e26442806_))
                         (_tl26462813_ (##cdr _e26442806_)))
                     (if (gx#stx-pair/null? _tl26462813_)
                         (if (fx>= (gx#stx-length _tl26462813_) '0)
                             (let ((_g10170_
                                    (gx#syntax-split-splice _tl26462813_ '0)))
                               (begin
                                 (let ((_g10171_ (values-count _g10170_)))
                                   (if (not (fx= _g10171_ 2))
                                       (error "Context expects 2 values"
                                              _g10171_)))
                                 (let ((_target26472816_
                                        (values-ref _g10170_ 0))
                                       (_tl26492819_ (values-ref _g10170_ 1)))
                                   (if (gx#stx-null? _tl26492819_)
                                       (letrec ((_loop26502822_
                                                 (lambda (_hd26482826_
                                                          _super26542829_)
                                                   (if (gx#stx-pair?
                                                        _hd26482826_)
                                                       (let ((_e26512832_
                                                              (gx#syntax-e
                                                               _hd26482826_)))
                                                         (let ((_lp-hd26522836_
                                                                (##car _e26512832_))
                                                               (_lp-tl26532839_
                                                                (##cdr _e26512832_)))
                                                           (_loop26502822_
                                                            _lp-tl26532839_
                                                            (cons _lp-hd26522836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super26542829_))))
               (let ((_super26552842_ (reverse _super26542829_)))
                 (if (gx#stx-pair/null? _tl26432803_)
                     (if (fx>= (gx#stx-length _tl26432803_) '0)
                         (let ((_g10172_
                                (gx#syntax-split-splice _tl26432803_ '0)))
                           (begin
                             (let ((_g10173_ (values-count _g10172_)))
                               (if (not (fx= _g10173_ 2))
                                   (error "Context expects 2 values"
                                          _g10173_)))
                             (let ((_target26562846_ (values-ref _g10172_ 0))
                                   (_tl26582849_ (values-ref _g10172_ 1)))
                               (if (gx#stx-null? _tl26582849_)
                                   (letrec ((_loop26592852_
                                             (lambda (_hd26572856_
                                                      _method26632859_
                                                      _symbol26642861_)
                                               (if (gx#stx-pair? _hd26572856_)
                                                   (let ((_e26602864_
                                                          (gx#syntax-e
                                                           _hd26572856_)))
                                                     (let ((_lp-hd26612868_
                                                            (##car _e26602864_))
                                                           (_lp-tl26622871_
                                                            (##cdr _e26602864_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd26612868_)
                                                           (let ((_e26672874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd26612868_)))
                     (let ((_hd26682878_ (##car _e26672874_))
                           (_tl26692881_ (##cdr _e26672874_)))
                       (if (gx#stx-pair? _tl26692881_)
                           (let ((_e26702884_ (gx#syntax-e _tl26692881_)))
                             (let ((_hd26712888_ (##car _e26702884_))
                                   (_tl26722891_ (##cdr _e26702884_)))
                               (if (gx#stx-null? _tl26722891_)
                                   (_loop26592852_
                                    _lp-tl26622871_
                                    (cons _hd26712888_ _method26632859_)
                                    (cons _hd26682878_ _symbol26642861_))
                                   (_g26152769_ _g26172773_))))
                           (_g26152769_ _g26172773_))))
                   (_g26152769_ _g26172773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method26652894_
                                                          (reverse _method26632859_))
                                                         (_symbol26662897_
                                                          (reverse _symbol26642861_)))
                                                     ((lambda (_L2900_
                                                               _L2902_
                                                               _L2903_
                                                               _L2904_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'delay)
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tbl)
                        (cons (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                    '())
                              '()))
                  (begin
                    '#!void
                    (foldr (lambda (_g29302936_ _g29312939_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g29302936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g29312939_))
                           (begin
                             (gx#syntax-check-splice-targets _L2900_ _L2902_)
                             (foldr (lambda (_g29322942_
                                             _g29332945_
                                             _g29342947_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'hash-put!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tbl)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _g29332945_ '()))
                      (cons _g29322942_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g29342947_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2900_
                                    _L2902_))
                           _L2903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method26652894_
              _symbol26662897_
              _super26552842_
              _hd26452810_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop26592852_ _target26562846_ '() '()))
                                   (_g26152769_ _g26172773_)))))
                         (_g26152769_ _g26172773_))
                     (_g26152769_ _g26172773_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop26502822_ _target26472816_ '()))
                                       (_g26152769_ _g26172773_)))))
                             (_g26152769_ _g26172773_))
                         (_g26152769_ _g26172773_))))
                 (_g26152769_ _g26172773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g26152769_ _g26172773_))
                                             (_g26152769_ _g26172773_))
                                         (_g26152769_ _g26172773_))))
                                 (_g26152769_ _g26172773_))))
                         (_g26152769_ _g26172773_)))))
              (let ((_g26133008_
                     (lambda (_g26172954_)
                       (if (gx#stx-pair? _g26172954_)
                           (let ((_e26222957_ (gx#syntax-e _g26172954_)))
                             (let ((_hd26232961_ (##car _e26222957_))
                                   (_tl26242964_ (##cdr _e26222957_)))
                               (if (gx#stx-pair? _tl26242964_)
                                   (let ((_e26252967_
                                          (gx#syntax-e _tl26242964_)))
                                     (let ((_hd26262971_ (##car _e26252967_))
                                           (_tl26272974_ (##cdr _e26252967_)))
                                       (if (gx#stx-pair? _tl26272974_)
                                           (let ((_e26282977_
                                                  (gx#syntax-e _tl26272974_)))
                                             (let ((_hd26292981_
                                                    (##car _e26282977_))
                                                   (_tl26302984_
                                                    (##cdr _e26282977_)))
                                               ((lambda (_L2987_
                                                         _L2989_
                                                         _L2990_
                                                         _L2991_)
                                                  (if (gx#identifier? _L2989_)
                                                      (cons _L2991_
                                                            (cons _L2990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2989_ '()) _L2987_)))
              (_g26142950_ _g26172954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl26302984_
                                                _hd26292981_
                                                _hd26262971_
                                                _hd26232961_)))
                                           (_g26142950_ _g26172954_))))
                                   (_g26142950_ _g26172954_))))
                           (_g26142950_ _g26172954_)))))
                (_g26133008_ _$stx2610_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10174_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10175_|
                   (cons |gxc[1]#_g10176_|
                         (cons |gxc[1]#_g10177_|
                               (cons (cons |gxc[1]#_g10178_|
                                           (cons |gxc[1]#_g10179_|
                                                 (cons |gxc[1]#_g10180_|
                                                       (cons |gxc[1]#_g10181_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10182_|
                                                 (cons |gxc[1]#_g10183_|
                                                       (cons |gxc[1]#_g10184_|
                                                             (cons |gxc[1]#_g10185_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10186_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10187_|
                   (cons |gxc[1]#_g10188_|
                         (cons |gxc[1]#_g10189_|
                               (cons (cons |gxc[1]#_g10190_|
                                           (cons |gxc[1]#_g10191_|
                                                 (cons |gxc[1]#_g10192_|
                                                       (cons |gxc[1]#_g10193_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10194_|
                                                 (cons |gxc[1]#_g10195_|
                                                       (cons |gxc[1]#_g10196_|
                                                             (cons |gxc[1]#_g10197_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
