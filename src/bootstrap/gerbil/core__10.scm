(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g30343_| (gx#core-quote-syntax 'apply))
  (define |gerbil/core::<match>[1]#_g30344_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g30345_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g30348_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g30349_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g30350_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g30351_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g30352_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g30353_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g30354_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g30355_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g30356_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g30357_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g30358_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g30359_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30360_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30373_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g30374_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g30375_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g30376_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g30393_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30394_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30395_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g30396_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g30399_| (gx#core-quote-syntax 'and))
  (begin
    (define |gerbil/core::<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core::<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core::<match>[1]#match-macro::t|))
    (define |gerbil/core::<match>[1]#make-match-macro|
      (lambda _$args24448_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args24448_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx24445_)
        (if (gx#identifier? _stx24445_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx24445_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2276124431_
             (lambda (_stx22763_ _match-stx22765_)
               (let ((_parse-qq22773_
                      (lambda (_hd22779_)
                        (let ((_g2278122788_
                               (lambda (_g2278222784_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2278222784_))))
                          (_g2278122788_ _hd22779_)))))
                 (let ((_parse-error22774_
                        (lambda (_hd22776_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22765_
                                     (cons _match-stx22765_
                                           (cons _stx22763_
                                                 (cons _hd22776_ '())))
                                     (cons _stx22763_
                                           (cons _hd22776_ '())))))))
                   (letrec ((_parse122767_
                             (lambda (_hd23114_)
                               (let ((_g2314023282_
                                      (lambda (_g2314123278_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2314123278_))))
                                 (let ((_g2313923293_
                                        (lambda (_g2314123286_)
                                          ((lambda ()
                                             (_parse-error22774_
                                              _hd23114_))))))
                                   (let ((_g2313823311_
                                          (lambda (_g2314123297_)
                                            ((lambda (_L23300_)
                                               (if (gx#stx-datum? _L23300_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L23300_)
                                                               '()))
                                                   (_g2313923293_
                                                    _g2314123297_)))
                                             _g2314123297_))))
                                     (let ((_g2313723327_
                                            (lambda (_g2314123315_)
                                              ((lambda (_L23318_)
                                                 (if (if (gx#identifier?
                                                          _L23318_)
                                                         (not (gx#ellipsis?
                                                               _L23318_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L23318_ '()))
                                                     (_g2313823311_
                                                      _g2314123315_)))
                                               _g2314123315_))))
                                       (let ((_g2313623343_
                                              (lambda (_g2314123331_)
                                                ((lambda (_L23334_)
                                                   (if (gx#underscore?
                                                        _L23334_)
                                                       (cons 'any: '())
                                                       (_g2313723327_
                                                        _g2314123331_)))
                                                 _g2314123331_))))
                                         (let ((_g2313523375_
                                                (lambda (_g2314123347_)
                                                  (if (gx#stx-pair?
                                                       _g2314123347_)
                                                      (let ((_e2327123350_
                                                             (gx#syntax-e
                                                              _g2314123347_)))
                                                        (let ((_hd2327223354_
                                                               (##car _e2327123350_))
                                                              (_tl2327323357_
                                                               (##cdr _e2327123350_)))
                                                          ((lambda (_L23360_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23360_)
                         (_parse122767_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L23360_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd23114_)
                            (let ((_$e23371_ (gx#stx-source _hd23114_)))
                              (if _$e23371_
                                  _$e23371_
                                  (gx#stx-source _stx22763_))))))
                         (_g2313623343_ _g2314123347_)))
                   _hd2327223354_)))
              (_g2313623343_ _g2314123347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2313423429_
                                                  (lambda (_g2314123379_)
                                                    (if (gx#stx-pair?
                                                         _g2314123379_)
                                                        (let ((_e2326123382_
                                                               (gx#syntax-e
                                                                _g2314123379_)))
                                                          (let ((_hd2326223386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2326123382_))
                        (_tl2326323389_ (##cdr _e2326123382_)))
                    (if (gx#identifier? _hd2326223386_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g30343_|
                             _hd2326223386_)
                            (if (gx#stx-pair? _tl2326323389_)
                                (let ((_e2326423392_
                                       (gx#syntax-e _tl2326323389_)))
                                  (let ((_hd2326523396_ (##car _e2326423392_))
                                        (_tl2326623399_ (##cdr _e2326423392_)))
                                    (if (gx#stx-pair? _tl2326623399_)
                                        (let ((_e2326723402_
                                               (gx#syntax-e _tl2326623399_)))
                                          (let ((_hd2326823406_
                                                 (##car _e2326723402_))
                                                (_tl2326923409_
                                                 (##cdr _e2326723402_)))
                                            (if (gx#stx-null? _tl2326923409_)
                                                ((lambda (_L23412_ _L23414_)
                                                   (cons 'apply:
                                                         (cons _L23414_
                                                               (cons (_parse122767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23412_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2326823406_
                                                 _hd2326523396_)
                                                (_g2313523375_
                                                 _g2314123379_))))
                                        (_g2313523375_ _g2314123379_))))
                                (_g2313523375_ _g2314123379_))
                            (_g2313523375_ _g2314123379_))
                        (_g2313523375_ _g2314123379_))))
                (_g2313523375_ _g2314123379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2313323469_
                                                    (lambda (_g2314123433_)
                                                      (if (gx#stx-pair?
                                                           _g2314123433_)
                                                          (let ((_e2325323436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2314123433_)))
                    (let ((_hd2325423440_ (##car _e2325323436_))
                          (_tl2325523443_ (##cdr _e2325323436_)))
                      (if (gx#identifier? _hd2325423440_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g30344_|
                               _hd2325423440_)
                              (if (gx#stx-pair? _tl2325523443_)
                                  (let ((_e2325623446_
                                         (gx#syntax-e _tl2325523443_)))
                                    (let ((_hd2325723450_
                                           (##car _e2325623446_))
                                          (_tl2325823453_
                                           (##cdr _e2325623446_)))
                                      (if (gx#stx-null? _tl2325823453_)
                                          ((lambda (_L23456_)
                                             (_parse-qq22773_ _L23456_))
                                           _hd2325723450_)
                                          (_g2313423429_ _g2314123433_))))
                                  (_g2313423429_ _g2314123433_))
                              (_g2313423429_ _g2314123433_))
                          (_g2313423429_ _g2314123433_))))
                  (_g2313423429_ _g2314123433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2313223509_
                                                      (lambda (_g2314123473_)
                                                        (if (gx#stx-pair?
                                                             _g2314123473_)
                                                            (let ((_e2324623476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2314123473_)))
                      (let ((_hd2324723480_ (##car _e2324623476_))
                            (_tl2324823483_ (##cdr _e2324623476_)))
                        (if (gx#identifier? _hd2324723480_)
                            (if (gx#free-identifier=?
                                 |gerbil/core::<match>[1]#_g30345_|
                                 _hd2324723480_)
                                (if (gx#stx-pair? _tl2324823483_)
                                    (let ((_e2324923486_
                                           (gx#syntax-e _tl2324823483_)))
                                      (let ((_hd2325023490_
                                             (##car _e2324923486_))
                                            (_tl2325123493_
                                             (##cdr _e2324923486_)))
                                        (if (gx#stx-null? _tl2325123493_)
                                            ((lambda (_L23496_)
                                               (cons 'datum:
                                                     (cons (gx#stx-e _L23496_)
                                                           '())))
                                             _hd2325023490_)
                                            (_g2313323469_ _g2314123473_))))
                                    (_g2313323469_ _g2314123473_))
                                (_g2313323469_ _g2314123473_))
                            (_g2313323469_ _g2314123473_))))
                    (_g2313323469_ _g2314123473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2313123559_
                                                        (lambda (_g2314123513_)
                                                          (if (gx#stx-pair?
                                                               _g2314123513_)
                                                              (let ((_e2323923516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2314123513_)))
                        (let ((_hd2324023520_ (##car _e2323923516_))
                              (_tl2324123523_ (##cdr _e2323923516_)))
                          (if (gx#stx-pair? _tl2324123523_)
                              (let ((_e2324223526_
                                     (gx#syntax-e _tl2324123523_)))
                                (let ((_hd2324323530_ (##car _e2324223526_))
                                      (_tl2324423533_ (##cdr _e2324223526_)))
                                  (if (gx#stx-null? _tl2324423533_)
                                      ((lambda (_L23536_ _L23538_)
                                         (if (if (gx#identifier? _L23538_)
                                                 (let ((_$e23551_
                                                        (gx#free-identifier=?
                                                         _L23538_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))))
                                                   (if _$e23551_
                                                       _$e23551_
                                                       (let ((_$e23555_
                                                              (gx#free-identifier=?
                                                               _L23538_
                                                               (gx#datum->syntax
                                                                '#f
                                                                'eqv?))))
                                                         (if _$e23555_
                                                             _$e23555_
                                                             (gx#free-identifier=?
                                                              _L23538_
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))))))
                                                 '#f)
                                             (cons '?:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cut)
                                                               (cons _L23538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '<>)
                                   (cons _L23536_ '()))))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2313223509_ _g2314123513_)))
                                       _hd2324323530_
                                       _hd2324023520_)
                                      (_g2313223509_ _g2314123513_))))
                              (_g2313223509_ _g2314123513_))))
                      (_g2313223509_ _g2314123513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2313023589_
                                                          (lambda (_g2314123563_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2314123563_)
                        (let ((_e2323423566_ (gx#syntax-e _g2314123563_)))
                          (let ((_hd2323523570_ (##car _e2323423566_))
                                (_tl2323623573_ (##cdr _e2323423566_)))
                            ((lambda (_L23576_ _L23578_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                    _L23578_)
                                   (cons 'class:
                                         (cons (gx#syntax-local-value _L23578_)
                                               (cons (_parse-class-body22772_
                                                      _L23576_)
                                                     '())))
                                   (_g2313123559_ _g2314123563_)))
                             _tl2323623573_
                             _hd2323523570_)))
                        (_g2313123559_ _g2314123563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2312923619_
                                                            (lambda (_g2314123593_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2314123593_)
                          (let ((_e2322923596_ (gx#syntax-e _g2314123593_)))
                            (let ((_hd2323023600_ (##car _e2322923596_))
                                  (_tl2323123603_ (##cdr _e2322923596_)))
                              ((lambda (_L23606_ _L23608_)
                                 (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                      _L23608_)
                                     (cons 'struct:
                                           (cons (gx#syntax-local-value
                                                  _L23608_)
                                                 (cons (_parse-vector22770_
                                                        _L23606_)
                                                       '())))
                                     (_g2313023589_ _g2314123593_)))
                               _tl2323123603_
                               _hd2323023600_)))
                          (_g2313023589_ _g2314123593_)))))
               (let ((_g2312823682_
                      (lambda (_g2314123623_)
                        (if (gx#stx-vector? _g2314123623_)
                            (let ((_e2321723626_
                                   (vector->list (gx#syntax-e _g2314123623_))))
                              (if (gx#stx-pair/null? _e2321723626_)
                                  (if (fx>= (gx#stx-length _e2321723626_) '0)
                                      (let ((_g30346_
                                             (gx#syntax-split-splice
                                              _e2321723626_
                                              '0)))
                                        (begin
                                          (let ((_g30347_
                                                 (values-count _g30346_)))
                                            (if (not (fx= _g30347_ 2))
                                                (error "Context expects 2 values"
                                                       _g30347_)))
                                          (let ((_target2321823630_
                                                 (values-ref _g30346_ 0))
                                                (_tl2322023633_
                                                 (values-ref _g30346_ 1)))
                                            (if (gx#stx-null? _tl2322023633_)
                                                (letrec ((_loop2322123636_
                                                          (lambda (_hd2321923640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2322523643_)
                    (if (gx#stx-pair? _hd2321923640_)
                        (let ((_e2322223646_ (gx#syntax-e _hd2321923640_)))
                          (let ((_lp-hd2322323650_ (##car _e2322223646_))
                                (_lp-tl2322423653_ (##cdr _e2322223646_)))
                            (_loop2322123636_
                             _lp-tl2322423653_
                             (cons _lp-hd2322323650_ _body2322523643_))))
                        (let ((_body2322623656_ (reverse _body2322523643_)))
                          ((lambda (_L23660_)
                             (cons 'vector:
                                   (cons (_parse-vector22770_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2367323676_
                                                            _g2367423679_)
                                                     (cons _g2367323676_
                                                           _g2367423679_))
                                                   '()
                                                   _L23660_)))
                                         '())))
                           _body2322623656_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2322123636_
                                                   _target2321823630_
                                                   '()))
                                                (_g2312923619_
                                                 _g2314123623_)))))
                                      (_g2312923619_ _g2314123623_))
                                  (_g2312923619_ _g2314123623_)))
                            (_g2312923619_ _g2314123623_)))))
                 (let ((_g2312723710_
                        (lambda (_g2314123686_)
                          (if (gx#stx-pair? _g2314123686_)
                              (let ((_e2321323689_
                                     (gx#syntax-e _g2314123686_)))
                                (let ((_hd2321423693_ (##car _e2321323689_))
                                      (_tl2321523696_ (##cdr _e2321323689_)))
                                  (if (gx#identifier? _hd2321423693_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g30348_|
                                           _hd2321423693_)
                                          ((lambda (_L23699_)
                                             (cons 'vector:
                                                   (cons (_parse-vector22770_
                                                          _L23699_)
                                                         '())))
                                           _tl2321523696_)
                                          (_g2312823682_ _g2314123686_))
                                      (_g2312823682_ _g2314123686_))))
                              (_g2312823682_ _g2314123686_)))))
                   (let ((_g2312623738_
                          (lambda (_g2314123714_)
                            (if (gx#stx-pair? _g2314123714_)
                                (let ((_e2320923717_
                                       (gx#syntax-e _g2314123714_)))
                                  (let ((_hd2321023721_ (##car _e2320923717_))
                                        (_tl2321123724_ (##cdr _e2320923717_)))
                                    (if (gx#identifier? _hd2321023721_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g30349_|
                                             _hd2321023721_)
                                            ((lambda (_L23727_)
                                               (cons 'values:
                                                     (cons (_parse-vector22770_
                                                            _L23727_)
                                                           '())))
                                             _tl2321123724_)
                                            (_g2312723710_ _g2314123714_))
                                        (_g2312723710_ _g2314123714_))))
                                (_g2312723710_ _g2314123714_)))))
                     (let ((_g2312523778_
                            (lambda (_g2314123742_)
                              (if (gx#stx-pair? _g2314123742_)
                                  (let ((_e2320223745_
                                         (gx#syntax-e _g2314123742_)))
                                    (let ((_hd2320323749_
                                           (##car _e2320223745_))
                                          (_tl2320423752_
                                           (##cdr _e2320223745_)))
                                      (if (gx#identifier? _hd2320323749_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g30350_|
                                               _hd2320323749_)
                                              (if (gx#stx-pair? _tl2320423752_)
                                                  (let ((_e2320523755_
                                                         (gx#syntax-e
                                                          _tl2320423752_)))
                                                    (let ((_hd2320623759_
                                                           (##car _e2320523755_))
                                                          (_tl2320723762_
                                                           (##cdr _e2320523755_)))
                                                      (if (gx#stx-null?
                                                           _tl2320723762_)
                                                          ((lambda (_L23765_)
                                                             (_parse122767_
                                                              _L23765_))
                                                           _hd2320623759_)
                                                          (_g2312623738_
                                                           _g2314123742_))))
                                                  (_g2312623738_
                                                   _g2314123742_))
                                              (_g2312623738_ _g2314123742_))
                                          (_g2312623738_ _g2314123742_))))
                                  (_g2312623738_ _g2314123742_)))))
                       (let ((_g2312423799_
                              (lambda (_g2314123782_)
                                (if (gx#stx-box? _g2314123782_)
                                    (let ((_e2320023785_
                                           (unbox (gx#syntax-e
                                                   _g2314123782_))))
                                      ((lambda (_L23789_)
                                         (cons 'box:
                                               (cons (_parse122767_ _L23789_)
                                                     '())))
                                       _e2320023785_))
                                    (_g2312523778_ _g2314123782_)))))
                         (let ((_g2312323839_
                                (lambda (_g2314123803_)
                                  (if (gx#stx-pair? _g2314123803_)
                                      (let ((_e2319323806_
                                             (gx#syntax-e _g2314123803_)))
                                        (let ((_hd2319423810_
                                               (##car _e2319323806_))
                                              (_tl2319523813_
                                               (##cdr _e2319323806_)))
                                          (if (gx#identifier? _hd2319423810_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g30351_|
                                                   _hd2319423810_)
                                                  (if (gx#stx-pair?
                                                       _tl2319523813_)
                                                      (let ((_e2319623816_
                                                             (gx#syntax-e
                                                              _tl2319523813_)))
                                                        (let ((_hd2319723820_
                                                               (##car _e2319623816_))
                                                              (_tl2319823823_
                                                               (##cdr _e2319623816_)))
                                                          (if (gx#stx-null?
                                                               _tl2319823823_)
                                                              ((lambda (_L23826_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'box: (cons (_parse122767_ _L23826_) '())))
                       _hd2319723820_)
                      (_g2312423799_ _g2314123803_))))
              (_g2312423799_ _g2314123803_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2312423799_
                                                   _g2314123803_))
                                              (_g2312423799_ _g2314123803_))))
                                      (_g2312423799_ _g2314123803_)))))
                           (let ((_g2312223867_
                                  (lambda (_g2314123843_)
                                    (if (gx#stx-pair? _g2314123843_)
                                        (let ((_e2318923846_
                                               (gx#syntax-e _g2314123843_)))
                                          (let ((_hd2319023850_
                                                 (##car _e2318923846_))
                                                (_tl2319123853_
                                                 (##cdr _e2318923846_)))
                                            (if (gx#identifier? _hd2319023850_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g30352_|
                                                     _hd2319023850_)
                                                    ((lambda (_L23856_)
                                                       (_parse-list22769_
                                                        _L23856_))
                                                     _tl2319123853_)
                                                    (_g2312323839_
                                                     _g2314123843_))
                                                (_g2312323839_
                                                 _g2314123843_))))
                                        (_g2312323839_ _g2314123843_)))))
                             (let ((_g2312123923_
                                    (lambda (_g2314123871_)
                                      (if (gx#stx-pair? _g2314123871_)
                                          (let ((_e2317923874_
                                                 (gx#syntax-e _g2314123871_)))
                                            (let ((_hd2318023878_
                                                   (##car _e2317923874_))
                                                  (_tl2318123881_
                                                   (##cdr _e2317923874_)))
                                              (if (gx#identifier?
                                                   _hd2318023878_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g30353_|
                                                       _hd2318023878_)
                                                      (if (gx#stx-pair?
                                                           _tl2318123881_)
                                                          (let ((_e2318223884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2318123881_)))
                    (let ((_hd2318323888_ (##car _e2318223884_))
                          (_tl2318423891_ (##cdr _e2318223884_)))
                      (if (gx#stx-pair? _tl2318423891_)
                          (let ((_e2318523894_ (gx#syntax-e _tl2318423891_)))
                            (let ((_hd2318623898_ (##car _e2318523894_))
                                  (_tl2318723901_ (##cdr _e2318523894_)))
                              ((lambda (_L23904_ _L23906_ _L23907_)
                                 (if (gx#stx-null? _L23904_)
                                     (cons 'cons:
                                           (cons (_parse122767_ _L23907_)
                                                 (cons (_parse122767_ _L23906_)
                                                       '())))
                                     (cons 'cons:
                                           (cons (_parse122767_ _L23907_)
                                                 (cons (_parse122767_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'cons*)
                                                              (cons _L23906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23904_)))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _tl2318723901_
                               _hd2318623898_
                               _hd2318323888_)))
                          (_g2312223867_ _g2314123871_))))
                  (_g2312223867_ _g2314123871_))
              (_g2312223867_ _g2314123871_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2312223867_
                                                   _g2314123871_))))
                                          (_g2312223867_ _g2314123871_)))))
                               (let ((_g2312023977_
                                      (lambda (_g2314123927_)
                                        (if (gx#stx-pair? _g2314123927_)
                                            (let ((_e2316723930_
                                                   (gx#syntax-e
                                                    _g2314123927_)))
                                              (let ((_hd2316823934_
                                                     (##car _e2316723930_))
                                                    (_tl2316923937_
                                                     (##cdr _e2316723930_)))
                                                (if (gx#identifier?
                                                     _hd2316823934_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g30354_|
                                                         _hd2316823934_)
                                                        (if (gx#stx-pair?
                                                             _tl2316923937_)
                                                            (let ((_e2317023940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2316923937_)))
                      (let ((_hd2317123944_ (##car _e2317023940_))
                            (_tl2317223947_ (##cdr _e2317023940_)))
                        (if (gx#stx-pair? _tl2317223947_)
                            (let ((_e2317323950_ (gx#syntax-e _tl2317223947_)))
                              (let ((_hd2317423954_ (##car _e2317323950_))
                                    (_tl2317523957_ (##cdr _e2317323950_)))
                                (if (gx#stx-null? _tl2317523957_)
                                    ((lambda (_L23960_ _L23962_)
                                       (cons 'cons:
                                             (cons (_parse122767_ _L23962_)
                                                   (cons (_parse122767_
                                                          _L23960_)
                                                         '()))))
                                     _hd2317423954_
                                     _hd2317123944_)
                                    (_g2312123923_ _g2314123927_))))
                            (_g2312123923_ _g2314123927_))))
                    (_g2312123923_ _g2314123927_))
                (_g2312123923_ _g2314123927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2312123923_
                                                     _g2314123927_))))
                                            (_g2312123923_ _g2314123927_)))))
                                 (let ((_g2311924017_
                                        (lambda (_g2314123981_)
                                          (if (gx#stx-pair? _g2314123981_)
                                              (let ((_e2315923984_
                                                     (gx#syntax-e
                                                      _g2314123981_)))
                                                (let ((_hd2316023988_
                                                       (##car _e2315923984_))
                                                      (_tl2316123991_
                                                       (##cdr _e2315923984_)))
                                                  (if (gx#identifier?
                                                       _hd2316023988_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g30355_|
                                                           _hd2316023988_)
                                                          (if (gx#stx-pair?
                                                               _tl2316123991_)
                                                              (let ((_e2316223994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2316123991_)))
                        (let ((_hd2316323998_ (##car _e2316223994_))
                              (_tl2316424001_ (##cdr _e2316223994_)))
                          (if (gx#stx-null? _tl2316424001_)
                              ((lambda (_L24004_)
                                 (cons 'not:
                                       (cons (_parse122767_ _L24004_) '())))
                               _hd2316323998_)
                              (_g2312023977_ _g2314123981_))))
                      (_g2312023977_ _g2314123981_))
                  (_g2312023977_ _g2314123981_))
              (_g2312023977_ _g2314123981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2312023977_ _g2314123981_)))))
                                   (let ((_g2311824102_
                                          (lambda (_g2314124021_)
                                            (if (gx#stx-pair? _g2314124021_)
                                                (let ((_e2315524024_
                                                       (gx#syntax-e
                                                        _g2314124021_)))
                                                  (let ((_hd2315624028_
                                                         (##car _e2315524024_))
                                                        (_tl2315724031_
                                                         (##cdr _e2315524024_)))
                                                    (if (gx#identifier?
                                                         _hd2315624028_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g30356_|
                                                             _hd2315624028_)
                                                            ((lambda (_L24034_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L24034_)
                           (let ((_g2404624057_
                                  (lambda (_g2404724053_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2404724053_))))
                             (let ((_g2404524068_
                                    (lambda (_g2404724061_)
                                      ((lambda ()
                                         (cons 'or:
                                               (gx#stx-map
                                                _parse122767_
                                                _L24034_)))))))
                               (let ((_g2404424098_
                                      (lambda (_g2404724072_)
                                        (if (gx#stx-pair? _g2404724072_)
                                            (let ((_e2404924075_
                                                   (gx#syntax-e
                                                    _g2404724072_)))
                                              (let ((_hd2405024079_
                                                     (##car _e2404924075_))
                                                    (_tl2405124082_
                                                     (##cdr _e2404924075_)))
                                                (if (gx#stx-null?
                                                     _tl2405124082_)
                                                    ((lambda (_L24085_)
                                                       (_parse122767_
                                                        _L24085_))
                                                     _hd2405024079_)
                                                    (_g2404524068_
                                                     _g2404724072_))))
                                            (_g2404524068_ _g2404724072_)))))
                                 (_g2404424098_ _L24034_))))
                           (_g2311924017_ _g2314124021_)))
                     _tl2315724031_)
                    (_g2311924017_ _g2314124021_))
                (_g2311924017_ _g2314124021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2311924017_
                                                 _g2314124021_)))))
                                     (let ((_g2311724187_
                                            (lambda (_g2314124106_)
                                              (if (gx#stx-pair? _g2314124106_)
                                                  (let ((_e2315124109_
                                                         (gx#syntax-e
                                                          _g2314124106_)))
                                                    (let ((_hd2315224113_
                                                           (##car _e2315124109_))
                                                          (_tl2315324116_
                                                           (##cdr _e2315124109_)))
                                                      (if (gx#identifier?
                                                           _hd2315224113_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g30357_|
                                                               _hd2315224113_)
                                                              ((lambda (_L24119_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-list? _L24119_)
                             (let ((_g2413124142_
                                    (lambda (_g2413224138_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2413224138_))))
                               (let ((_g2413024153_
                                      (lambda (_g2413224146_)
                                        ((lambda ()
                                           (cons 'and:
                                                 (gx#stx-map
                                                  _parse122767_
                                                  _L24119_)))))))
                                 (let ((_g2412924183_
                                        (lambda (_g2413224157_)
                                          (if (gx#stx-pair? _g2413224157_)
                                              (let ((_e2413424160_
                                                     (gx#syntax-e
                                                      _g2413224157_)))
                                                (let ((_hd2413524164_
                                                       (##car _e2413424160_))
                                                      (_tl2413624167_
                                                       (##cdr _e2413424160_)))
                                                  (if (gx#stx-null?
                                                       _tl2413624167_)
                                                      ((lambda (_L24170_)
                                                         (_parse122767_
                                                          _L24170_))
                                                       _hd2413524164_)
                                                      (_g2413024153_
                                                       _g2413224157_))))
                                              (_g2413024153_ _g2413224157_)))))
                                   (_g2412924183_ _L24119_))))
                             (_g2311824102_ _g2314124106_)))
                       _tl2315324116_)
                      (_g2311824102_ _g2314124106_))
                  (_g2311824102_ _g2314124106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2311824102_
                                                   _g2314124106_)))))
                                       (let ((_g2311624427_
                                              (lambda (_g2314124191_)
                                                (if (gx#stx-pair?
                                                     _g2314124191_)
                                                    (let ((_e2314424194_
                                                           (gx#syntax-e
                                                            _g2314124191_)))
                                                      (let ((_hd2314524198_
                                                             (##car _e2314424194_))
                                                            (_tl2314624201_
                                                             (##cdr _e2314424194_)))
                                                        (if (gx#identifier?
                                                             _hd2314524198_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g30358_|
                         _hd2314524198_)
                        (if (gx#stx-pair? _tl2314624201_)
                            (let ((_e2314724204_ (gx#syntax-e _tl2314624201_)))
                              (let ((_hd2314824208_ (##car _e2314724204_))
                                    (_tl2314924211_ (##cdr _e2314724204_)))
                                ((lambda (_L24214_ _L24216_)
                                   (let ((_g2423324265_
                                          (lambda (_g2423424261_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2423424261_))))
                                     (let ((_g2423224276_
                                            (lambda (_g2423424269_)
                                              ((lambda ()
                                                 (_parse-error22774_
                                                  _hd23114_))))))
                                       (let ((_g2423124344_
                                              (lambda (_g2423424280_)
                                                (if (gx#stx-pair?
                                                     _g2423424280_)
                                                    (let ((_e2424824283_
                                                           (gx#syntax-e
                                                            _g2423424280_)))
                                                      (let ((_hd2424924287_
                                                             (##car _e2424824283_))
                                                            (_tl2425024290_
                                                             (##cdr _e2424824283_)))
                                                        (if (gx#stx-datum?
                                                             _hd2424924287_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2424924287_)
                                '::)
                        (if (gx#stx-pair? _tl2425024290_)
                            (let ((_e2425124293_ (gx#syntax-e _tl2425024290_)))
                              (let ((_hd2425224297_ (##car _e2425124293_))
                                    (_tl2425324300_ (##cdr _e2425124293_)))
                                (if (gx#stx-pair? _tl2425324300_)
                                    (let ((_e2425424303_
                                           (gx#syntax-e _tl2425324300_)))
                                      (let ((_hd2425524307_
                                             (##car _e2425424303_))
                                            (_tl2425624310_
                                             (##cdr _e2425424303_)))
                                        (if (gx#identifier? _hd2425524307_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g30359_|
                                                 _hd2425524307_)
                                                (if (gx#stx-pair?
                                                     _tl2425624310_)
                                                    (let ((_e2425724313_
                                                           (gx#syntax-e
                                                            _tl2425624310_)))
                                                      (let ((_hd2425824317_
                                                             (##car _e2425724313_))
                                                            (_tl2425924320_
                                                             (##cdr _e2425724313_)))
                                                        (if (gx#stx-null?
                                                             _tl2425924320_)
                                                            ((lambda (_L24323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24325_)
                       (cons '?:
                             (cons _L24216_
                                   (cons '::
                                         (cons _L24325_
                                               (cons '=>:
                                                     (cons (_parse122767_
                                                            _L24323_)
                                                           '())))))))
                     _hd2425824317_
                     _hd2425224297_)
                    (_g2423224276_ _g2423424280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2423224276_
                                                     _g2423424280_))
                                                (_g2423224276_ _g2423424280_))
                                            (_g2423224276_ _g2423424280_))))
                                    (_g2423224276_ _g2423424280_))))
                            (_g2423224276_ _g2423424280_))
                        (_g2423224276_ _g2423424280_))
                    (_g2423224276_ _g2423424280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2423224276_
                                                     _g2423424280_)))))
                                         (let ((_g2423024384_
                                                (lambda (_g2423424348_)
                                                  (if (gx#stx-pair?
                                                       _g2423424348_)
                                                      (let ((_e2424024351_
                                                             (gx#syntax-e
                                                              _g2423424348_)))
                                                        (let ((_hd2424124355_
                                                               (##car _e2424024351_))
                                                              (_tl2424224358_
                                                               (##cdr _e2424024351_)))
                                                          (if (gx#identifier?
                                                               _hd2424124355_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core::<match>[1]#_g30360_|
                           _hd2424124355_)
                          (if (gx#stx-pair? _tl2424224358_)
                              (let ((_e2424324361_
                                     (gx#syntax-e _tl2424224358_)))
                                (let ((_hd2424424365_ (##car _e2424324361_))
                                      (_tl2424524368_ (##cdr _e2424324361_)))
                                  (if (gx#stx-null? _tl2424524368_)
                                      ((lambda (_L24371_)
                                         (cons '?:
                                               (cons _L24216_
                                                     (cons '=>:
                                                           (cons (_parse122767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24371_)
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2424424365_)
                                      (_g2423124344_ _g2423424348_))))
                              (_g2423124344_ _g2423424348_))
                          (_g2423124344_ _g2423424348_))
                      (_g2423124344_ _g2423424348_))))
              (_g2423124344_ _g2423424348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2422924412_
                                                  (lambda (_g2423424388_)
                                                    (if (gx#stx-pair?
                                                         _g2423424388_)
                                                        (let ((_e2423624391_
                                                               (gx#syntax-e
                                                                _g2423424388_)))
                                                          (let ((_hd2423724395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2423624391_))
                        (_tl2423824398_ (##cdr _e2423624391_)))
                    (if (gx#stx-null? _tl2423824398_)
                        ((lambda (_L24401_)
                           (cons '?:
                                 (cons _L24216_
                                       (cons (_parse122767_ _L24401_) '()))))
                         _hd2423724395_)
                        (_g2423024384_ _g2423424388_))))
                (_g2423024384_ _g2423424388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2422824423_
                                                    (lambda (_g2423424416_)
                                                      (if (gx#stx-null?
                                                           _g2423424416_)
                                                          ((lambda ()
                                                             (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L24216_ '()))))
                  (_g2422924412_ _g2423424416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2422824423_ _L24214_))))))))
                                 _tl2314924211_
                                 _hd2314824208_)))
                            (_g2311724187_ _g2314124191_))
                        (_g2311724187_ _g2314124191_))
                    (_g2311724187_ _g2314124191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2311724187_
                                                     _g2314124191_)))))
                                         (_g2311624427_
                                          _hd23114_))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22769_
                             (lambda (_body22949_)
                               (let ((_g2295522983_
                                      (lambda (_g2295622979_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2295622979_))))
                                 (let ((_g2295422994_
                                        (lambda (_g2295622987_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22949_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22949_))
                                                     (_parse122767_
                                                      _body22949_)
                                                     (_parse-error22774_
                                                      _body22949_))))))))
                                   (let ((_g2295323026_
                                          (lambda (_g2295622998_)
                                            (if (gx#stx-pair? _g2295622998_)
                                                (let ((_e2297523001_
                                                       (gx#syntax-e
                                                        _g2295622998_)))
                                                  (let ((_hd2297623005_
                                                         (##car _e2297523001_))
                                                        (_tl2297723008_
                                                         (##cdr _e2297523001_)))
                                                    ((lambda (_L23011_
                                                              _L23013_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23013_))
                   (cons 'cons:
                         (cons (_parse122767_ _L23013_)
                               (cons (_parse-list22769_ _L23011_) '())))
                   (_g2295422994_ _g2295622998_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2297723008_
                                                     _hd2297623005_)))
                                                (_g2295422994_
                                                 _g2295622998_)))))
                                     (let ((_g2295223070_
                                            (lambda (_g2295623030_)
                                              (if (gx#stx-pair? _g2295623030_)
                                                  (let ((_e2296723033_
                                                         (gx#syntax-e
                                                          _g2295623030_)))
                                                    (let ((_hd2296823037_
                                                           (##car _e2296723033_))
                                                          (_tl2296923040_
                                                           (##cdr _e2296723033_)))
                                                      (if (gx#stx-pair?
                                                           _tl2296923040_)
                                                          (let ((_e2297023043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2296923040_)))
                    (let ((_hd2297123047_ (##car _e2297023043_))
                          (_tl2297223050_ (##cdr _e2297023043_)))
                      ((lambda (_L23053_ _L23055_ _L23056_)
                         (if (gx#ellipsis? _L23055_)
                             (cons 'splice:
                                   (cons (_parse122767_ _L23056_)
                                         (cons (_parse-list22769_ _L23053_)
                                               '())))
                             (_g2295323026_ _g2295623030_)))
                       _tl2297223050_
                       _hd2297123047_
                       _hd2296823037_)))
                  (_g2295323026_ _g2295623030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2295323026_
                                                   _g2295623030_)))))
                                       (let ((_g2295123110_
                                              (lambda (_g2295623074_)
                                                (if (gx#stx-pair?
                                                     _g2295623074_)
                                                    (let ((_e2295823077_
                                                           (gx#syntax-e
                                                            _g2295623074_)))
                                                      (let ((_hd2295923081_
                                                             (##car _e2295823077_))
                                                            (_tl2296023084_
                                                             (##cdr _e2295823077_)))
                                                        (if (gx#stx-datum?
                                                             _hd2295923081_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2295923081_)
                                '::)
                        (if (gx#stx-pair? _tl2296023084_)
                            (let ((_e2296123087_ (gx#syntax-e _tl2296023084_)))
                              (let ((_hd2296223091_ (##car _e2296123087_))
                                    (_tl2296323094_ (##cdr _e2296123087_)))
                                (if (gx#stx-null? _tl2296323094_)
                                    ((lambda (_L23097_)
                                       (_parse122767_ _L23097_))
                                     _hd2296223091_)
                                    (_g2295223070_ _g2295623074_))))
                            (_g2295223070_ _g2295623074_))
                        (_g2295223070_ _g2295623074_))
                    (_g2295223070_ _g2295623074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2295223070_
                                                     _g2295623074_)))))
                                         (_g2295123110_ _body22949_))))))))
                            (_parse-vector22770_
                             (lambda (_body22946_)
                               (if (_simple-vector?22771_ _body22946_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122767_
                                                _body22946_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22769_ _body22946_)
                                               '())))))
                            (_simple-vector?22771_
                             (lambda (_body22883_)
                               (let ((_g2288722899_
                                      (lambda (_g2288822895_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2288822895_))))
                                 (let ((_g2288622910_
                                        (lambda (_g2288822903_)
                                          ((lambda ()
                                             (gx#stx-null? _body22883_))))))
                                   (let ((_g2288522942_
                                          (lambda (_g2288822914_)
                                            (if (gx#stx-pair? _g2288822914_)
                                                (let ((_e2289122917_
                                                       (gx#syntax-e
                                                        _g2288822914_)))
                                                  (let ((_hd2289222921_
                                                         (##car _e2289122917_))
                                                        (_tl2289322924_
                                                         (##cdr _e2289122917_)))
                                                    ((lambda (_L22927_
                                                              _L22929_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22929_))
                   (_simple-vector?22771_ _L22927_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2289322924_
                                                     _hd2289222921_)))
                                                (_g2288622910_
                                                 _g2288822914_)))))
                                     (_g2288522942_ _body22883_))))))
                            (_parse-class-body22772_
                             (lambda (_body22792_)
                               ((letrec ((_recur22795_
                                          (lambda (_rest22798_)
                                            (let ((_g2280222818_
                                                   (lambda (_g2280322814_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2280322814_))))
                                              (let ((_g2280122829_
                                                     (lambda (_g2280322822_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22798_)
                                                              '()
                                                              (_parse-error22774_
                                                               _rest22798_)))))))
                                                (let ((_g2280022879_
                                                       (lambda (_g2280322833_)
                                                         (if (gx#stx-pair?
                                                              _g2280322833_)
                                                             (let ((_e2280722836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2280322833_)))
                       (let ((_hd2280822840_ (##car _e2280722836_))
                             (_tl2280922843_ (##cdr _e2280722836_)))
                         (if (gx#stx-pair? _tl2280922843_)
                             (let ((_e2281022846_
                                    (gx#syntax-e _tl2280922843_)))
                               (let ((_hd2281122850_ (##car _e2281022846_))
                                     (_tl2281222853_ (##cdr _e2281022846_)))
                                 ((lambda (_L22856_ _L22858_ _L22859_)
                                    (if (gx#stx-keyword? _L22859_)
                                        (cons* _L22859_
                                               (_parse122767_ _L22858_)
                                               (_recur22795_ _L22856_))
                                        (_g2280122829_ _g2280322833_)))
                                  _tl2281222853_
                                  _hd2281122850_
                                  _hd2280822840_)))
                             (_g2280122829_ _g2280322833_))))
                     (_g2280122829_ _g2280322833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2280022879_
                                                   _rest22798_)))))))
                                  _recur22795_)
                                _body22792_))))
                     (_parse122767_ _stx22763_)))))))
        (lambda _g30362_
          (let ((_g30361_ (length _g30362_)))
            (cond ((fx= _g30361_ 1)
                   (apply (lambda (_stx24435_)
                            (let ((_match-stx24438_ '#f))
                              (_opt-lambda2276124431_
                               _stx24435_
                               _match-stx24438_)))
                          _g30362_))
                  ((fx= _g30361_ 2) (apply _opt-lambda2276124431_ _g30362_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<match>[1]#parse-match-pattern|
                    _g30362_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22747_)
        (call-with-escape
         (lambda (_E22751_)
           (with-exception-handler
            (let ((_E!22754_ (current-exception-handler)))
              (lambda (_e22757_)
                (if (gx#syntax-error? _e22757_)
                    (_E22751_ '#f)
                    (_E!22754_ _e22757_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22747_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree21536_)
        (letrec ((_loop21539_
                  (lambda (_ptree21814_ _vars21816_ _K21817_)
                    (let ((_g2183021931_
                           (lambda (_g2183121927_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2183121927_))))
                      (let ((_g2182921942_
                             (lambda (_g2183121935_)
                               ((lambda () (_K21817_ _vars21816_))))))
                        (let ((_g2182821989_
                               (lambda (_g2183121946_)
                                 (if (gx#stx-pair? _g2183121946_)
                                     (let ((_e2192021949_
                                            (gx#syntax-e _g2183121946_)))
                                       (let ((_hd2192121953_
                                              (##car _e2192021949_))
                                             (_tl2192221956_
                                              (##cdr _e2192021949_)))
                                         (if (gx#stx-datum? _hd2192121953_)
                                             (if (equal? (gx#stx-e
                                                          _hd2192121953_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2192221956_)
                                                     (let ((_e2192321959_
                                                            (gx#syntax-e
                                                             _tl2192221956_)))
                                                       (let ((_hd2192421963_
                                                              (##car _e2192321959_))
                                                             (_tl2192521966_
                                                              (##cdr _e2192321959_)))
                                                         (if (gx#stx-null?
                                                              _tl2192521966_)
                                                             ((lambda (_L21969_)
                                                                (if (find (lambda (_g2198321985_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2198321985_
                                     _L21969_))
                                  _vars21816_)
                            (_K21817_ _vars21816_)
                            (_K21817_ (cons _L21969_ _vars21816_))))
                      _hd2192421963_)
                     (_g2182921942_ _g2183121946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182921942_
                                                      _g2183121946_))
                                                 (_g2182921942_ _g2183121946_))
                                             (_g2182921942_ _g2183121946_))))
                                     (_g2182921942_ _g2183121946_)))))
                          (let ((_g2182722043_
                                 (lambda (_g2183121993_)
                                   (if (gx#stx-pair? _g2183121993_)
                                       (let ((_e2191021996_
                                              (gx#syntax-e _g2183121993_)))
                                         (let ((_hd2191122000_
                                                (##car _e2191021996_))
                                               (_tl2191222003_
                                                (##cdr _e2191021996_)))
                                           (if (gx#stx-datum? _hd2191122000_)
                                               (if (equal? (gx#stx-e
                                                            _hd2191122000_)
                                                           'apply:)
                                                   (if (gx#stx-pair?
                                                        _tl2191222003_)
                                                       (let ((_e2191322006_
                                                              (gx#syntax-e
                                                               _tl2191222003_)))
                                                         (let ((_hd2191422010_
                                                                (##car _e2191322006_))
                                                               (_tl2191522013_
                                                                (##cdr _e2191322006_)))
                                                           (if (gx#stx-pair?
                                                                _tl2191522013_)
                                                               (let ((_e2191622016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2191522013_)))
                         (let ((_hd2191722020_ (##car _e2191622016_))
                               (_tl2191822023_ (##cdr _e2191622016_)))
                           (if (gx#stx-null? _tl2191822023_)
                               ((lambda (_L22026_ _L22028_)
                                  (_loop21539_ _L22026_ _vars21816_ _K21817_))
                                _hd2191722020_
                                _hd2191422010_)
                               (_g2182821989_ _g2183121993_))))
                       (_g2182821989_ _g2183121993_))))
               (_g2182821989_ _g2183121993_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2182821989_
                                                    _g2183121993_))
                                               (_g2182821989_ _g2183121993_))))
                                       (_g2182821989_ _g2183121993_)))))
                            (let ((_g2182622095_
                                   (lambda (_g2183122047_)
                                     (if (gx#stx-pair? _g2183122047_)
                                         (let ((_e2189922050_
                                                (gx#syntax-e _g2183122047_)))
                                           (let ((_hd2190022054_
                                                  (##car _e2189922050_))
                                                 (_tl2190122057_
                                                  (##cdr _e2189922050_)))
                                             (if (gx#stx-datum? _hd2190022054_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2190022054_)
                                                             'class:)
                                                     (if (gx#stx-pair?
                                                          _tl2190122057_)
                                                         (let ((_e2190222060_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2190122057_)))
                   (let ((_hd2190322064_ (##car _e2190222060_))
                         (_tl2190422067_ (##cdr _e2190222060_)))
                     (if (gx#stx-pair? _tl2190422067_)
                         (let ((_e2190522070_ (gx#syntax-e _tl2190422067_)))
                           (let ((_hd2190622074_ (##car _e2190522070_))
                                 (_tl2190722077_ (##cdr _e2190522070_)))
                             (if (gx#stx-null? _tl2190722077_)
                                 ((lambda (_L22080_)
                                    (_loop-class-list21543_
                                     _L22080_
                                     _vars21816_
                                     _K21817_))
                                  _hd2190622074_)
                                 (_g2182722043_ _g2183122047_))))
                         (_g2182722043_ _g2183122047_))))
                 (_g2182722043_ _g2183122047_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182722043_
                                                      _g2183122047_))
                                                 (_g2182722043_
                                                  _g2183122047_))))
                                         (_g2182722043_ _g2183122047_)))))
                              (let ((_g2182522147_
                                     (lambda (_g2183122099_)
                                       (if (gx#stx-pair? _g2183122099_)
                                           (let ((_e2188922102_
                                                  (gx#syntax-e _g2183122099_)))
                                             (let ((_hd2189022106_
                                                    (##car _e2188922102_))
                                                   (_tl2189122109_
                                                    (##cdr _e2188922102_)))
                                               (if (gx#stx-datum?
                                                    _hd2189022106_)
                                                   (if (equal? (gx#stx-e
                                                                _hd2189022106_)
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _tl2189122109_)
                                                           (let ((_e2189222112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2189122109_)))
                     (let ((_hd2189322116_ (##car _e2189222112_))
                           (_tl2189422119_ (##cdr _e2189222112_)))
                       (if (gx#stx-pair? _tl2189422119_)
                           (let ((_e2189522122_ (gx#syntax-e _tl2189422119_)))
                             (let ((_hd2189622126_ (##car _e2189522122_))
                                   (_tl2189722129_ (##cdr _e2189522122_)))
                               (if (gx#stx-null? _tl2189722129_)
                                   ((lambda (_L22132_)
                                      (_loop-vector21541_
                                       _L22132_
                                       _vars21816_
                                       _K21817_))
                                    _hd2189622126_)
                                   (_g2182622095_ _g2183122099_))))
                           (_g2182622095_ _g2183122099_))))
                   (_g2182622095_ _g2183122099_))
               (_g2182622095_ _g2183122099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2182622095_
                                                    _g2183122099_))))
                                           (_g2182622095_ _g2183122099_)))))
                                (let ((_g2182422193_
                                       (lambda (_g2183122151_)
                                         (if (gx#stx-pair? _g2183122151_)
                                             (let ((_e2188222154_
                                                    (gx#syntax-e
                                                     _g2183122151_)))
                                               (let ((_hd2188322158_
                                                      (##car _e2188222154_))
                                                     (_tl2188422161_
                                                      (##cdr _e2188222154_)))
                                                 (if (gx#stx-pair?
                                                      _tl2188422161_)
                                                     (let ((_e2188522164_
                                                            (gx#syntax-e
                                                             _tl2188422161_)))
                                                       (let ((_hd2188622168_
                                                              (##car _e2188522164_))
                                                             (_tl2188722171_
                                                              (##cdr _e2188522164_)))
                                                         (if (gx#stx-null?
                                                              _tl2188722171_)
                                                             ((lambda (_L22174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22176_)
                        (if (let ((_$e22189_ (gx#stx-eq? 'values: _L22176_)))
                              (if _$e22189_
                                  _$e22189_
                                  (gx#stx-eq? 'vector: _L22176_)))
                            (_loop-vector21541_ _L22174_ _vars21816_ _K21817_)
                            (_g2182522147_ _g2183122151_)))
                      _hd2188622168_
                      _hd2188322158_)
                     (_g2182522147_ _g2183122151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182522147_
                                                      _g2183122151_))))
                                             (_g2182522147_ _g2183122151_)))))
                                  (let ((_g2182322233_
                                         (lambda (_g2183122197_)
                                           (if (gx#stx-pair? _g2183122197_)
                                               (let ((_e2187422200_
                                                      (gx#syntax-e
                                                       _g2183122197_)))
                                                 (let ((_hd2187522204_
                                                        (##car _e2187422200_))
                                                       (_tl2187622207_
                                                        (##cdr _e2187422200_)))
                                                   (if (gx#stx-datum?
                                                        _hd2187522204_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2187522204_)
                           'box:)
                   (if (gx#stx-pair? _tl2187622207_)
                       (let ((_e2187722210_ (gx#syntax-e _tl2187622207_)))
                         (let ((_hd2187822214_ (##car _e2187722210_))
                               (_tl2187922217_ (##cdr _e2187722210_)))
                           (if (gx#stx-null? _tl2187922217_)
                               ((lambda (_L22220_)
                                  (_loop21539_ _L22220_ _vars21816_ _K21817_))
                                _hd2187822214_)
                               (_g2182422193_ _g2183122197_))))
                       (_g2182422193_ _g2183122197_))
                   (_g2182422193_ _g2183122197_))
               (_g2182422193_ _g2183122197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2182422193_
                                                _g2183122197_)))))
                                    (let ((_g2182222292_
                                           (lambda (_g2183122237_)
                                             (if (gx#stx-pair? _g2183122237_)
                                                 (let ((_e2186422240_
                                                        (gx#syntax-e
                                                         _g2183122237_)))
                                                   (let ((_hd2186522244_
                                                          (##car _e2186422240_))
                                                         (_tl2186622247_
                                                          (##cdr _e2186422240_)))
                                                     (if (gx#stx-datum?
                                                          _hd2186522244_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2186522244_)
                             'splice:)
                     (if (gx#stx-pair? _tl2186622247_)
                         (let ((_e2186722250_ (gx#syntax-e _tl2186622247_)))
                           (let ((_hd2186822254_ (##car _e2186722250_))
                                 (_tl2186922257_ (##cdr _e2186722250_)))
                             (if (gx#stx-pair? _tl2186922257_)
                                 (let ((_e2187022260_
                                        (gx#syntax-e _tl2186922257_)))
                                   (let ((_hd2187122264_ (##car _e2187022260_))
                                         (_tl2187222267_
                                          (##cdr _e2187022260_)))
                                     (if (gx#stx-null? _tl2187222267_)
                                         ((lambda (_L22270_ _L22272_)
                                            (_loop21539_
                                             _L22272_
                                             _vars21816_
                                             (lambda (_g2228622288_)
                                               (_loop21539_
                                                _L22270_
                                                _g2228622288_
                                                _K21817_))))
                                          _hd2187122264_
                                          _hd2186822254_)
                                         (_g2182322233_ _g2183122237_))))
                                 (_g2182322233_ _g2183122237_))))
                         (_g2182322233_ _g2183122237_))
                     (_g2182322233_ _g2183122237_))
                 (_g2182322233_ _g2183122237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2182322233_
                                                  _g2183122237_)))))
                                      (let ((_g2182122351_
                                             (lambda (_g2183122296_)
                                               (if (gx#stx-pair? _g2183122296_)
                                                   (let ((_e2185322299_
                                                          (gx#syntax-e
                                                           _g2183122296_)))
                                                     (let ((_hd2185422303_
                                                            (##car _e2185322299_))
                                                           (_tl2185522306_
                                                            (##cdr _e2185322299_)))
                                                       (if (gx#stx-datum?
                                                            _hd2185422303_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2185422303_)
                               'cons:)
                       (if (gx#stx-pair? _tl2185522306_)
                           (let ((_e2185622309_ (gx#syntax-e _tl2185522306_)))
                             (let ((_hd2185722313_ (##car _e2185622309_))
                                   (_tl2185822316_ (##cdr _e2185622309_)))
                               (if (gx#stx-pair? _tl2185822316_)
                                   (let ((_e2185922319_
                                          (gx#syntax-e _tl2185822316_)))
                                     (let ((_hd2186022323_
                                            (##car _e2185922319_))
                                           (_tl2186122326_
                                            (##cdr _e2185922319_)))
                                       (if (gx#stx-null? _tl2186122326_)
                                           ((lambda (_L22329_ _L22331_)
                                              (_loop21539_
                                               _L22331_
                                               _vars21816_
                                               (lambda (_g2234522347_)
                                                 (_loop21539_
                                                  _L22329_
                                                  _g2234522347_
                                                  _K21817_))))
                                            _hd2186022323_
                                            _hd2185722313_)
                                           (_g2182222292_ _g2183122296_))))
                                   (_g2182222292_ _g2183122296_))))
                           (_g2182222292_ _g2183122296_))
                       (_g2182222292_ _g2183122296_))
                   (_g2182222292_ _g2183122296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2182222292_
                                                    _g2183122296_)))))
                                        (let ((_g2182022391_
                                               (lambda (_g2183122355_)
                                                 (if (gx#stx-pair?
                                                      _g2183122355_)
                                                     (let ((_e2184522358_
                                                            (gx#syntax-e
                                                             _g2183122355_)))
                                                       (let ((_hd2184622362_
                                                              (##car _e2184522358_))
                                                             (_tl2184722365_
                                                              (##cdr _e2184522358_)))
                                                         (if (gx#stx-datum?
                                                              _hd2184622362_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2184622362_)
                                 'not:)
                         (if (gx#stx-pair? _tl2184722365_)
                             (let ((_e2184822368_
                                    (gx#syntax-e _tl2184722365_)))
                               (let ((_hd2184922372_ (##car _e2184822368_))
                                     (_tl2185022375_ (##cdr _e2184822368_)))
                                 (if (gx#stx-null? _tl2185022375_)
                                     ((lambda (_L22378_)
                                        (_loop21539_
                                         _L22378_
                                         _vars21816_
                                         _K21817_))
                                      _hd2184922372_)
                                     (_g2182122351_ _g2183122355_))))
                             (_g2182122351_ _g2183122355_))
                         (_g2182122351_ _g2183122355_))
                     (_g2182122351_ _g2183122355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182122351_
                                                      _g2183122355_)))))
                                          (let ((_g2181922490_
                                                 (lambda (_g2183122395_)
                                                   (if (gx#stx-pair?
                                                        _g2183122395_)
                                                       (let ((_e2184122398_
                                                              (gx#syntax-e
                                                               _g2183122395_)))
                                                         (let ((_hd2184222402_
                                                                (##car _e2184122398_))
                                                               (_tl2184322405_
                                                                (##cdr _e2184122398_)))
                                                           ((lambda (_L22408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22410_)
                      (if (let ((_$e22421_ (gx#stx-eq? 'and: _L22410_)))
                            (if _$e22421_
                                _$e22421_
                                (gx#stx-eq? 'or: _L22410_)))
                          (let ((_g2242622438_
                                 (lambda (_g2242722434_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2242722434_))))
                            (let ((_g2242522449_
                                   (lambda (_g2242722442_)
                                     ((lambda () (_K21817_ _vars21816_))))))
                              (let ((_g2242422486_
                                     (lambda (_g2242722453_)
                                       (if (gx#stx-pair? _g2242722453_)
                                           (let ((_e2243022456_
                                                  (gx#syntax-e _g2242722453_)))
                                             (let ((_hd2243122460_
                                                    (##car _e2243022456_))
                                                   (_tl2243222463_
                                                    (##cdr _e2243022456_)))
                                               ((lambda (_L22466_ _L22468_)
                                                  (_loop21539_
                                                   _L22468_
                                                   _vars21816_
                                                   (lambda (_g2248022482_)
                                                     (_loop21539_
                                                      (cons _L22410_ _L22466_)
                                                      _g2248022482_
                                                      _K21817_))))
                                                _tl2243222463_
                                                _hd2243122460_)))
                                           (_g2242522449_ _g2242722453_)))))
                                (_g2242422486_ _L22408_))))
                          (_g2182022391_ _g2183122395_)))
                    _tl2184322405_
                    _hd2184222402_)))
               (_g2182022391_ _g2183122395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2181822743_
                                                   (lambda (_g2183122494_)
                                                     (if (gx#stx-pair?
                                                          _g2183122494_)
                                                         (let ((_e2183322497_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2183122494_)))
                   (let ((_hd2183422501_ (##car _e2183322497_))
                         (_tl2183522504_ (##cdr _e2183322497_)))
                     (if (gx#stx-datum? _hd2183422501_)
                         (if (equal? (gx#stx-e _hd2183422501_) '?:)
                             (if (gx#stx-pair? _tl2183522504_)
                                 (let ((_e2183622507_
                                        (gx#syntax-e _tl2183522504_)))
                                   (let ((_hd2183722511_ (##car _e2183622507_))
                                         (_tl2183822514_
                                          (##cdr _e2183622507_)))
                                     ((lambda (_L22517_)
                                        (let ((_g2253322570_
                                               (lambda (_g2253422566_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2253422566_))))
                                          (let ((_g2253222581_
                                                 (lambda (_g2253422574_)
                                                   ((lambda ()
                                                      (_K21817_
                                                       _vars21816_))))))
                                            (let ((_g2253122659_
                                                   (lambda (_g2253422585_)
                                                     (if (gx#stx-pair?
                                                          _g2253422585_)
                                                         (let ((_e2255022588_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2253422585_)))
                   (let ((_hd2255122592_ (##car _e2255022588_))
                         (_tl2255222595_ (##cdr _e2255022588_)))
                     (if (gx#stx-pair? _tl2255222595_)
                         (let ((_e2255322598_ (gx#syntax-e _tl2255222595_)))
                           (let ((_hd2255422602_ (##car _e2255322598_))
                                 (_tl2255522605_ (##cdr _e2255322598_)))
                             (if (gx#stx-datum? _hd2255422602_)
                                 (if (equal? (gx#stx-e _hd2255422602_) '::)
                                     (if (gx#stx-pair? _tl2255522605_)
                                         (let ((_e2255622608_
                                                (gx#syntax-e _tl2255522605_)))
                                           (let ((_hd2255722612_
                                                  (##car _e2255622608_))
                                                 (_tl2255822615_
                                                  (##cdr _e2255622608_)))
                                             (if (gx#stx-pair? _tl2255822615_)
                                                 (let ((_e2255922618_
                                                        (gx#syntax-e
                                                         _tl2255822615_)))
                                                   (let ((_hd2256022622_
                                                          (##car _e2255922618_))
                                                         (_tl2256122625_
                                                          (##cdr _e2255922618_)))
                                                     (if (gx#stx-datum?
                                                          _hd2256022622_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2256022622_)
                             '=>:)
                     (if (gx#stx-pair? _tl2256122625_)
                         (let ((_e2256222628_ (gx#syntax-e _tl2256122625_)))
                           (let ((_hd2256322632_ (##car _e2256222628_))
                                 (_tl2256422635_ (##cdr _e2256222628_)))
                             (if (gx#stx-null? _tl2256422635_)
                                 ((lambda (_L22638_)
                                    (_loop21539_
                                     _L22638_
                                     _vars21816_
                                     _K21817_))
                                  _hd2256322632_)
                                 (_g2253222581_ _g2253422585_))))
                         (_g2253222581_ _g2253422585_))
                     (_g2253222581_ _g2253422585_))
                 (_g2253222581_ _g2253422585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2253222581_
                                                  _g2253422585_))))
                                         (_g2253222581_ _g2253422585_))
                                     (_g2253222581_ _g2253422585_))
                                 (_g2253222581_ _g2253422585_))))
                         (_g2253222581_ _g2253422585_))))
                 (_g2253222581_ _g2253422585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2253022711_
                                                     (lambda (_g2253422663_)
                                                       (if (gx#stx-pair?
                                                            _g2253422663_)
                                                           (let ((_e2254022666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2253422663_)))
                     (let ((_hd2254122670_ (##car _e2254022666_))
                           (_tl2254222673_ (##cdr _e2254022666_)))
                       (if (gx#stx-pair? _tl2254222673_)
                           (let ((_e2254322676_ (gx#syntax-e _tl2254222673_)))
                             (let ((_hd2254422680_ (##car _e2254322676_))
                                   (_tl2254522683_ (##cdr _e2254322676_)))
                               (if (gx#stx-datum? _hd2254422680_)
                                   (if (equal? (gx#stx-e _hd2254422680_) '=>:)
                                       (if (gx#stx-pair? _tl2254522683_)
                                           (let ((_e2254622686_
                                                  (gx#syntax-e
                                                   _tl2254522683_)))
                                             (let ((_hd2254722690_
                                                    (##car _e2254622686_))
                                                   (_tl2254822693_
                                                    (##cdr _e2254622686_)))
                                               (if (gx#stx-null?
                                                    _tl2254822693_)
                                                   ((lambda (_L22696_)
                                                      (_loop21539_
                                                       _L22696_
                                                       _vars21816_
                                                       _K21817_))
                                                    _hd2254722690_)
                                                   (_g2253122659_
                                                    _g2253422663_))))
                                           (_g2253122659_ _g2253422663_))
                                       (_g2253122659_ _g2253422663_))
                                   (_g2253122659_ _g2253422663_))))
                           (_g2253122659_ _g2253422663_))))
                   (_g2253122659_ _g2253422663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g2252922739_
                                                       (lambda (_g2253422715_)
                                                         (if (gx#stx-pair?
                                                              _g2253422715_)
                                                             (let ((_e2253622718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2253422715_)))
                       (let ((_hd2253722722_ (##car _e2253622718_))
                             (_tl2253822725_ (##cdr _e2253622718_)))
                         (if (gx#stx-null? _tl2253822725_)
                             ((lambda (_L22728_)
                                (_loop21539_ _L22728_ _vars21816_ _K21817_))
                              _hd2253722722_)
                             (_g2253022711_ _g2253422715_))))
                     (_g2253022711_ _g2253422715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2252922739_
                                                   _L22517_)))))))
                                      _tl2183822514_)))
                                 (_g2181922490_ _g2183122494_))
                             (_g2181922490_ _g2183122494_))
                         (_g2181922490_ _g2183122494_))))
                 (_g2181922490_ _g2183122494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2181822743_
                                               _ptree21814_))))))))))))))))
                 (_loop-vector21541_
                  (lambda (_body21702_ _vars21704_ _K21705_)
                    (let ((_g2170821729_
                           (lambda (_g2170921725_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2170921725_))))
                      (let ((_g2170721770_
                             (lambda (_g2170921733_)
                               (if (gx#stx-pair? _g2170921733_)
                                   (let ((_e2171821736_
                                          (gx#syntax-e _g2170921733_)))
                                     (let ((_hd2171921740_
                                            (##car _e2171821736_))
                                           (_tl2172021743_
                                            (##cdr _e2171821736_)))
                                       (if (gx#stx-datum? _hd2171921740_)
                                           (if (equal? (gx#stx-e
                                                        _hd2171921740_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2172021743_)
                                                   (let ((_e2172121746_
                                                          (gx#syntax-e
                                                           _tl2172021743_)))
                                                     (let ((_hd2172221750_
                                                            (##car _e2172121746_))
                                                           (_tl2172321753_
                                                            (##cdr _e2172121746_)))
                                                       (if (gx#stx-null?
                                                            _tl2172321753_)
                                                           ((lambda (_L21756_)
                                                              (_loop21539_
                                                               _L21756_
                                                               _vars21704_
                                                               _K21705_))
                                                            _hd2172221750_)
                                                           (_g2170821729_
                                                            _g2170921733_))))
                                                   (_g2170821729_
                                                    _g2170921733_))
                                               (_g2170821729_ _g2170921733_))
                                           (_g2170821729_ _g2170921733_))))
                                   (_g2170821729_ _g2170921733_)))))
                        (let ((_g2170621810_
                               (lambda (_g2170921774_)
                                 (if (gx#stx-pair? _g2170921774_)
                                     (let ((_e2171121777_
                                            (gx#syntax-e _g2170921774_)))
                                       (let ((_hd2171221781_
                                              (##car _e2171121777_))
                                             (_tl2171321784_
                                              (##cdr _e2171121777_)))
                                         (if (gx#stx-datum? _hd2171221781_)
                                             (if (equal? (gx#stx-e
                                                          _hd2171221781_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2171321784_)
                                                     (let ((_e2171421787_
                                                            (gx#syntax-e
                                                             _tl2171321784_)))
                                                       (let ((_hd2171521791_
                                                              (##car _e2171421787_))
                                                             (_tl2171621794_
                                                              (##cdr _e2171421787_)))
                                                         (if (gx#stx-null?
                                                              _tl2171621794_)
                                                             ((lambda (_L21797_)
                                                                (_loop-list21542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21797_
                         _vars21704_
                         _K21705_))
                      _hd2171521791_)
                     (_g2170721770_ _g2170921774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2170721770_
                                                      _g2170921774_))
                                                 (_g2170721770_ _g2170921774_))
                                             (_g2170721770_ _g2170921774_))))
                                     (_g2170721770_ _g2170921774_)))))
                          (_g2170621810_ _body21702_))))))
                 (_loop-list21542_
                  (lambda (_rest21632_ _vars21634_ _K21635_)
                    (let ((_g2163821650_
                           (lambda (_g2163921646_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2163921646_))))
                      (let ((_g2163721661_
                             (lambda (_g2163921654_)
                               ((lambda () (_K21635_ _vars21634_))))))
                        (let ((_g2163621698_
                               (lambda (_g2163921665_)
                                 (if (gx#stx-pair? _g2163921665_)
                                     (let ((_e2164221668_
                                            (gx#syntax-e _g2163921665_)))
                                       (let ((_hd2164321672_
                                              (##car _e2164221668_))
                                             (_tl2164421675_
                                              (##cdr _e2164221668_)))
                                         ((lambda (_L21678_ _L21680_)
                                            (_loop21539_
                                             _L21680_
                                             _vars21634_
                                             (lambda (_g2169221694_)
                                               (_loop-list21542_
                                                _L21678_
                                                _g2169221694_
                                                _K21635_))))
                                          _tl2164421675_
                                          _hd2164321672_)))
                                     (_g2163721661_ _g2163921665_)))))
                          (_g2163621698_ _rest21632_))))))
                 (_loop-class-list21543_
                  (lambda (_rest21545_ _vars21547_ _K21548_)
                    (let ((_g2155121566_
                           (lambda (_g2155221562_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2155221562_))))
                      (let ((_g2155021577_
                             (lambda (_g2155221570_)
                               ((lambda () (_K21548_ _vars21547_))))))
                        (let ((_g2154921628_
                               (lambda (_g2155221581_)
                                 (if (gx#stx-pair? _g2155221581_)
                                     (let ((_e2155521584_
                                            (gx#syntax-e _g2155221581_)))
                                       (let ((_hd2155621588_
                                              (##car _e2155521584_))
                                             (_tl2155721591_
                                              (##cdr _e2155521584_)))
                                         (if (gx#stx-pair? _tl2155721591_)
                                             (let ((_e2155821594_
                                                    (gx#syntax-e
                                                     _tl2155721591_)))
                                               (let ((_hd2155921598_
                                                      (##car _e2155821594_))
                                                     (_tl2156021601_
                                                      (##cdr _e2155821594_)))
                                                 ((lambda (_L21604_ _L21606_)
                                                    (_loop21539_
                                                     _L21606_
                                                     _vars21547_
                                                     (lambda (_g2162221624_)
                                                       (_loop-class-list21543_
                                                        _L21604_
                                                        _g2162221624_
                                                        _K21548_))))
                                                  _tl2156021601_
                                                  _hd2155921598_)))
                                             (_g2155021577_ _g2155221581_))))
                                     (_g2155021577_ _g2155221581_)))))
                          (_g2154921628_ _rest21545_)))))))
          (_loop21539_ _ptree21536_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx18352_ _tgt18354_ _ptree18355_ _K18356_ _E18357_)
        (letrec ((_generate118359_
                  (lambda (_tgt19889_ _ptree19891_ _K19892_ _E19893_)
                    (let ((_g1989519903_
                           (lambda (_g1989619899_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1989619899_))))
                      (let ((_g1989421532_
                             (lambda (_g1989619907_)
                               ((lambda (_L19910_)
                                  (let ()
                                    (let ((_g1993720063_
                                           (lambda (_g1993820059_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1993820059_))))
                                      (let ((_g1993620084_
                                             (lambda (_g1993820067_)
                                               (if (gx#stx-pair? _g1993820067_)
                                                   (let ((_e2005520070_
                                                          (gx#syntax-e
                                                           _g1993820067_)))
                                                     (let ((_hd2005620074_
                                                            (##car _e2005520070_))
                                                           (_tl2005720077_
                                                            (##cdr _e2005520070_)))
                                                       (if (gx#stx-datum?
                                                            _hd2005620074_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2005620074_)
                               'any:)
                       (if (gx#stx-null? _tl2005720077_)
                           ((lambda () _K19892_))
                           (_g1993720063_ _g1993820067_))
                       (_g1993720063_ _g1993820067_))
                   (_g1993720063_ _g1993820067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1993720063_
                                                    _g1993820067_)))))
                                        (let ((_g1993520127_
                                               (lambda (_g1993820088_)
                                                 (if (gx#stx-pair?
                                                      _g1993820088_)
                                                     (let ((_e2004920091_
                                                            (gx#syntax-e
                                                             _g1993820088_)))
                                                       (let ((_hd2005020095_
                                                              (##car _e2004920091_))
                                                             (_tl2005120098_
                                                              (##cdr _e2004920091_)))
                                                         (if (gx#stx-datum?
                                                              _hd2005020095_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2005020095_)
                                 'var:)
                         (if (gx#stx-pair? _tl2005120098_)
                             (let ((_e2005220101_
                                    (gx#syntax-e _tl2005120098_)))
                               (let ((_hd2005320105_ (##car _e2005220101_))
                                     (_tl2005420108_ (##cdr _e2005220101_)))
                                 (if (gx#stx-null? _tl2005420108_)
                                     ((lambda (_L20111_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20111_
                                                                (cons _L19910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19892_ '()))))
                                      _hd2005320105_)
                                     (_g1993620084_ _g1993820088_))))
                             (_g1993620084_ _g1993820088_))
                         (_g1993620084_ _g1993820088_))
                     (_g1993620084_ _g1993820088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1993620084_
                                                      _g1993820088_)))))
                                          (let ((_g1993420212_
                                                 (lambda (_g1993820131_)
                                                   (if (gx#stx-pair?
                                                        _g1993820131_)
                                                       (let ((_e2003920134_
                                                              (gx#syntax-e
                                                               _g1993820131_)))
                                                         (let ((_hd2004020138_
                                                                (##car _e2003920134_))
                                                               (_tl2004120141_
                                                                (##cdr _e2003920134_)))
                                                           (if (gx#stx-datum?
                                                                _hd2004020138_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2004020138_)
                                   'apply:)
                           (if (gx#stx-pair? _tl2004120141_)
                               (let ((_e2004220144_
                                      (gx#syntax-e _tl2004120141_)))
                                 (let ((_hd2004320148_ (##car _e2004220144_))
                                       (_tl2004420151_ (##cdr _e2004220144_)))
                                   (if (gx#stx-pair? _tl2004420151_)
                                       (let ((_e2004520154_
                                              (gx#syntax-e _tl2004420151_)))
                                         (let ((_hd2004620158_
                                                (##car _e2004520154_))
                                               (_tl2004720161_
                                                (##cdr _e2004520154_)))
                                           (if (gx#stx-null? _tl2004720161_)
                                               ((lambda (_L20164_ _L20166_)
                                                  (let ((_g2018120189_
                                                         (lambda (_g2018220185_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2018220185_))))
                                                    (let ((_g2018020208_
                                                           (lambda (_g2018220193_)
                                                             ((lambda (_L20196_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _L20196_
                                                  (cons (cons _L20166_
                                                              (cons _L19910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (_generate118359_
                                             _L20196_
                                             _L20164_
                                             _K19892_
                                             _E19893_)
                                            '())))))
                      _g2018220193_))))
              (_g2018020208_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2004620158_
                                                _hd2004320148_)
                                               (_g1993520127_ _g1993820131_))))
                                       (_g1993520127_ _g1993820131_))))
                               (_g1993520127_ _g1993820131_))
                           (_g1993520127_ _g1993820131_))
                       (_g1993520127_ _g1993820131_))))
               (_g1993520127_ _g1993820131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1993320294_
                                                   (lambda (_g1993820216_)
                                                     (if (gx#stx-pair?
                                                          _g1993820216_)
                                                         (let ((_e2003120219_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1993820216_)))
                   (let ((_hd2003220223_ (##car _e2003120219_))
                         (_tl2003320226_ (##cdr _e2003120219_)))
                     (if (gx#stx-datum? _hd2003220223_)
                         (if (equal? (gx#stx-e _hd2003220223_) 'datum:)
                             (if (gx#stx-pair? _tl2003320226_)
                                 (let ((_e2003420229_
                                        (gx#syntax-e _tl2003320226_)))
                                   (let ((_hd2003520233_ (##car _e2003420229_))
                                         (_tl2003620236_
                                          (##cdr _e2003420229_)))
                                     (if (gx#stx-null? _tl2003620236_)
                                         ((lambda (_L20239_)
                                            (let ((_g2025220260_
                                                   (lambda (_g2025320256_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2025320256_))))
                                              (let ((_g2025120279_
                                                     (lambda (_g2025320264_)
                                                       ((lambda (_L20267_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons _L20267_
                                      (cons _L19910_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L20239_ '()))
                                                  '())))
                                (cons _K19892_ (cons _E19893_ '()))))))
                _g2025320264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2025120279_
                                                 (let ((_e20283_
                                                        (gx#stx-e _L20239_)))
                                                   (if (let ((_$e20286_
                                                              (symbol? _e20283_)))
                                                         (if _$e20286_
                                                             _$e20286_
                                                             (let ((_$e20290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _e20283_)))
                       (if _$e20290_ _$e20290_ (immediate? _e20283_)))))
               (gx#datum->syntax '#f '##eq?)
               (if (number? _e20283_)
                   (gx#datum->syntax '#f 'eqv?)
                   (gx#datum->syntax '#f 'equal?))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2003520233_)
                                         (_g1993420212_ _g1993820216_))))
                                 (_g1993420212_ _g1993820216_))
                             (_g1993420212_ _g1993820216_))
                         (_g1993420212_ _g1993820216_))))
                 (_g1993420212_ _g1993820216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1993220348_
                                                     (lambda (_g1993820298_)
                                                       (if (gx#stx-pair?
                                                            _g1993820298_)
                                                           (let ((_e2002120301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1993820298_)))
                     (let ((_hd2002220305_ (##car _e2002120301_))
                           (_tl2002320308_ (##cdr _e2002120301_)))
                       (if (gx#stx-datum? _hd2002220305_)
                           (if (equal? (gx#stx-e _hd2002220305_) 'class:)
                               (if (gx#stx-pair? _tl2002320308_)
                                   (let ((_e2002420311_
                                          (gx#syntax-e _tl2002320308_)))
                                     (let ((_hd2002520315_
                                            (##car _e2002420311_))
                                           (_tl2002620318_
                                            (##cdr _e2002420311_)))
                                       (if (gx#stx-pair? _tl2002620318_)
                                           (let ((_e2002720321_
                                                  (gx#syntax-e
                                                   _tl2002620318_)))
                                             (let ((_hd2002820325_
                                                    (##car _e2002720321_))
                                                   (_tl2002920328_
                                                    (##cdr _e2002720321_)))
                                               (if (gx#stx-null?
                                                    _tl2002920328_)
                                                   ((lambda (_L20331_ _L20333_)
                                                      (_generate-class18365_
                                                       (gx#stx-e _L20333_)
                                                       _tgt19889_
                                                       _L20331_
                                                       _K19892_
                                                       _E19893_))
                                                    _hd2002820325_
                                                    _hd2002520315_)
                                                   (_g1993320294_
                                                    _g1993820298_))))
                                           (_g1993320294_ _g1993820298_))))
                                   (_g1993320294_ _g1993820298_))
                               (_g1993320294_ _g1993820298_))
                           (_g1993320294_ _g1993820298_))))
                   (_g1993320294_ _g1993820298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1993120402_
                                                       (lambda (_g1993820352_)
                                                         (if (gx#stx-pair?
                                                              _g1993820352_)
                                                             (let ((_e2001020355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1993820352_)))
                       (let ((_hd2001120359_ (##car _e2001020355_))
                             (_tl2001220362_ (##cdr _e2001020355_)))
                         (if (gx#stx-datum? _hd2001120359_)
                             (if (equal? (gx#stx-e _hd2001120359_) 'struct:)
                                 (if (gx#stx-pair? _tl2001220362_)
                                     (let ((_e2001320365_
                                            (gx#syntax-e _tl2001220362_)))
                                       (let ((_hd2001420369_
                                              (##car _e2001320365_))
                                             (_tl2001520372_
                                              (##cdr _e2001320365_)))
                                         (if (gx#stx-pair? _tl2001520372_)
                                             (let ((_e2001620375_
                                                    (gx#syntax-e
                                                     _tl2001520372_)))
                                               (let ((_hd2001720379_
                                                      (##car _e2001620375_))
                                                     (_tl2001820382_
                                                      (##cdr _e2001620375_)))
                                                 (if (gx#stx-null?
                                                      _tl2001820382_)
                                                     ((lambda (_L20385_
                                                               _L20387_)
                                                        (_generate-struct18364_
                                                         (gx#stx-e _L20387_)
                                                         _tgt19889_
                                                         _L20385_
                                                         _K19892_
                                                         _E19893_))
                                                      _hd2001720379_
                                                      _hd2001420369_)
                                                     (_g1993220348_
                                                      _g1993820352_))))
                                             (_g1993220348_ _g1993820352_))))
                                     (_g1993220348_ _g1993820352_))
                                 (_g1993220348_ _g1993820352_))
                             (_g1993220348_ _g1993820352_))))
                     (_g1993220348_ _g1993820352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1993020580_
                                                         (lambda (_g1993820406_)
                                                           (if (gx#stx-pair?
                                                                _g1993820406_)
                                                               (let ((_e2000220409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1993820406_)))
                         (let ((_hd2000320413_ (##car _e2000220409_))
                               (_tl2000420416_ (##cdr _e2000220409_)))
                           (if (gx#stx-datum? _hd2000320413_)
                               (if (equal? (gx#stx-e _hd2000320413_) 'vector:)
                                   (if (gx#stx-pair? _tl2000420416_)
                                       (let ((_e2000520419_
                                              (gx#syntax-e _tl2000420416_)))
                                         (let ((_hd2000620423_
                                                (##car _e2000520419_))
                                               (_tl2000720426_
                                                (##cdr _e2000520419_)))
                                           (if (gx#stx-null? _tl2000720426_)
                                               ((lambda (_L20429_)
                                                  (let ((_g2044320464_
                                                         (lambda (_g2044420460_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2044420460_))))
                                                    (let ((_g2044220505_
                                                           (lambda (_g2044420468_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2044420468_)
                         (let ((_e2045320471_ (gx#syntax-e _g2044420468_)))
                           (let ((_hd2045420475_ (##car _e2045320471_))
                                 (_tl2045520478_ (##cdr _e2045320471_)))
                             (if (gx#stx-datum? _hd2045420475_)
                                 (if (equal? (gx#stx-e _hd2045420475_) 'list:)
                                     (if (gx#stx-pair? _tl2045520478_)
                                         (let ((_e2045620481_
                                                (gx#syntax-e _tl2045520478_)))
                                           (let ((_hd2045720485_
                                                  (##car _e2045620481_))
                                                 (_tl2045820488_
                                                  (##cdr _e2045620481_)))
                                             (if (gx#stx-null? _tl2045820488_)
                                                 ((lambda (_L20491_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _L19910_ '()))
                        (cons (_generate-list-vector18363_
                               _tgt19889_
                               _L20491_
                               (gx#datum->syntax '#f 'subvector->list)
                               '0
                               _K19892_
                               _E19893_)
                              (cons _E19893_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2045720485_)
                                                 (_g2044320464_
                                                  _g2044420468_))))
                                         (_g2044320464_ _g2044420468_))
                                     (_g2044320464_ _g2044420468_))
                                 (_g2044320464_ _g2044420468_))))
                         (_g2044320464_ _g2044420468_)))))
              (let ((_g2044120576_
                     (lambda (_g2044420509_)
                       (if (gx#stx-pair? _g2044420509_)
                           (let ((_e2044620512_ (gx#syntax-e _g2044420509_)))
                             (let ((_hd2044720516_ (##car _e2044620512_))
                                   (_tl2044820519_ (##cdr _e2044620512_)))
                               (if (gx#stx-datum? _hd2044720516_)
                                   (if (equal? (gx#stx-e _hd2044720516_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl2044820519_)
                                           (let ((_e2044920522_
                                                  (gx#syntax-e
                                                   _tl2044820519_)))
                                             (let ((_hd2045020526_
                                                    (##car _e2044920522_))
                                                   (_tl2045120529_
                                                    (##cdr _e2044920522_)))
                                               (if (gx#stx-null?
                                                    _tl2045120529_)
                                                   ((lambda (_L20532_)
                                                      (let ((_g2054520553_
                                                             (lambda (_g2054620549_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2054620549_))))
                                                        (let ((_g2054420572_
                                                               (lambda (_g2054620557_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20560_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector?)
                                                            (cons _L19910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f '##fx=)
                          (cons (cons (gx#datum->syntax '#f '##vector-length)
                                      (cons _L19910_ '()))
                                (cons _L20560_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector18362_
                                                 _tgt19889_
                                                 _L20532_
                                                 '0
                                                 _K19892_
                                                 _E19893_)
                                                (cons _E19893_ '()))))))
                          _g2054620557_))))
                  (_g2054420572_ (gx#stx-length _L20532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2045020526_)
                                                   (_g2044220505_
                                                    _g2044420509_))))
                                           (_g2044220505_ _g2044420509_))
                                       (_g2044220505_ _g2044420509_))
                                   (_g2044220505_ _g2044420509_))))
                           (_g2044220505_ _g2044420509_)))))
                (_g2044120576_ _L20429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2000620423_)
                                               (_g1993120402_ _g1993820406_))))
                                       (_g1993120402_ _g1993820406_))
                                   (_g1993120402_ _g1993820406_))
                               (_g1993120402_ _g1993820406_))))
                       (_g1993120402_ _g1993820406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1992920758_
                                                           (lambda (_g1993820584_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1993820584_)
                         (let ((_e1999520587_ (gx#syntax-e _g1993820584_)))
                           (let ((_hd1999620591_ (##car _e1999520587_))
                                 (_tl1999720594_ (##cdr _e1999520587_)))
                             (if (gx#stx-datum? _hd1999620591_)
                                 (if (equal? (gx#stx-e _hd1999620591_)
                                             'values:)
                                     (if (gx#stx-pair? _tl1999720594_)
                                         (let ((_e1999820597_
                                                (gx#syntax-e _tl1999720594_)))
                                           (let ((_hd1999920601_
                                                  (##car _e1999820597_))
                                                 (_tl2000020604_
                                                  (##cdr _e1999820597_)))
                                             (if (gx#stx-null? _tl2000020604_)
                                                 ((lambda (_L20607_)
                                                    (let ((_g2062120642_
                                                           (lambda (_g2062220638_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2062220638_))))
                                                      (let ((_g2062020683_
                                                             (lambda (_g2062220646_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2062220646_)
                           (let ((_e2063120649_ (gx#syntax-e _g2062220646_)))
                             (let ((_hd2063220653_ (##car _e2063120649_))
                                   (_tl2063320656_ (##cdr _e2063120649_)))
                               (if (gx#stx-datum? _hd2063220653_)
                                   (if (equal? (gx#stx-e _hd2063220653_)
                                               'list:)
                                       (if (gx#stx-pair? _tl2063320656_)
                                           (let ((_e2063420659_
                                                  (gx#syntax-e
                                                   _tl2063320656_)))
                                             (let ((_hd2063520663_
                                                    (##car _e2063420659_))
                                                   (_tl2063620666_
                                                    (##cdr _e2063420659_)))
                                               (if (gx#stx-null?
                                                    _tl2063620666_)
                                                   ((lambda (_L20669_)
                                                      (_generate-list-vector18363_
                                                       _tgt19889_
                                                       _L20669_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       '0
                                                       _K19892_
                                                       _E19893_))
                                                    _hd2063520663_)
                                                   (_g2062120642_
                                                    _g2062220646_))))
                                           (_g2062120642_ _g2062220646_))
                                       (_g2062120642_ _g2062220646_))
                                   (_g2062120642_ _g2062220646_))))
                           (_g2062120642_ _g2062220646_)))))
                (let ((_g2061920754_
                       (lambda (_g2062220687_)
                         (if (gx#stx-pair? _g2062220687_)
                             (let ((_e2062420690_ (gx#syntax-e _g2062220687_)))
                               (let ((_hd2062520694_ (##car _e2062420690_))
                                     (_tl2062620697_ (##cdr _e2062420690_)))
                                 (if (gx#stx-datum? _hd2062520694_)
                                     (if (equal? (gx#stx-e _hd2062520694_)
                                                 'simple:)
                                         (if (gx#stx-pair? _tl2062620697_)
                                             (let ((_e2062720700_
                                                    (gx#syntax-e
                                                     _tl2062620697_)))
                                               (let ((_hd2062820704_
                                                      (##car _e2062720700_))
                                                     (_tl2062920707_
                                                      (##cdr _e2062720700_)))
                                                 (if (gx#stx-null?
                                                      _tl2062920707_)
                                                     ((lambda (_L20710_)
                                                        (let ((_g2072320731_
                                                               (lambda (_g2072420727_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2072420727_))))
                  (let ((_g2072220750_
                         (lambda (_g2072420735_)
                           ((lambda (_L20738_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L19910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L20738_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector18362_
                                                   _tgt19889_
                                                   _L20710_
                                                   '0
                                                   _K19892_
                                                   _E19893_)
                                                  (cons _E19893_ '()))))))
                            _g2072420735_))))
                    (_g2072220750_ (gx#stx-length _L20710_)))))
              _hd2062820704_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2062020683_
                                                      _g2062220687_))))
                                             (_g2062020683_ _g2062220687_))
                                         (_g2062020683_ _g2062220687_))
                                     (_g2062020683_ _g2062220687_))))
                             (_g2062020683_ _g2062220687_)))))
                  (_g2061920754_ _L20607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1999920601_)
                                                 (_g1993020580_
                                                  _g1993820584_))))
                                         (_g1993020580_ _g1993820584_))
                                     (_g1993020580_ _g1993820584_))
                                 (_g1993020580_ _g1993820584_))))
                         (_g1993020580_ _g1993820584_)))))
              (let ((_g1992820829_
                     (lambda (_g1993820762_)
                       (if (gx#stx-pair? _g1993820762_)
                           (let ((_e1998820765_ (gx#syntax-e _g1993820762_)))
                             (let ((_hd1998920769_ (##car _e1998820765_))
                                   (_tl1999020772_ (##cdr _e1998820765_)))
                               (if (gx#stx-datum? _hd1998920769_)
                                   (if (equal? (gx#stx-e _hd1998920769_) 'box:)
                                       (if (gx#stx-pair? _tl1999020772_)
                                           (let ((_e1999120775_
                                                  (gx#syntax-e
                                                   _tl1999020772_)))
                                             (let ((_hd1999220779_
                                                    (##car _e1999120775_))
                                                   (_tl1999320782_
                                                    (##cdr _e1999120775_)))
                                               (if (gx#stx-null?
                                                    _tl1999320782_)
                                                   ((lambda (_L20785_)
                                                      (let ((_g2079820806_
                                                             (lambda (_g2079920802_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2079920802_))))
                                                        (let ((_g2079720825_
                                                               (lambda (_g2079920810_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20813_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##box?)
                                                (cons _L19910_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L20813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f '##unbox)
                                            (cons _L19910_ '()))
                                      '()))
                          '())
                    (cons (_generate118359_
                           _L20813_
                           _L20785_
                           _K19892_
                           _E19893_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _E19893_ '()))))))
                          _g2079920810_))))
                  (_g2079720825_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1999220779_)
                                                   (_g1992920758_
                                                    _g1993820762_))))
                                           (_g1992920758_ _g1993820762_))
                                       (_g1992920758_ _g1993820762_))
                                   (_g1992920758_ _g1993820762_))))
                           (_g1992920758_ _g1993820762_)))))
                (let ((_g1992720883_
                       (lambda (_g1993820833_)
                         (if (gx#stx-pair? _g1993820833_)
                             (let ((_e1997820836_ (gx#syntax-e _g1993820833_)))
                               (let ((_hd1997920840_ (##car _e1997820836_))
                                     (_tl1998020843_ (##cdr _e1997820836_)))
                                 (if (gx#stx-datum? _hd1997920840_)
                                     (if (equal? (gx#stx-e _hd1997920840_)
                                                 'splice:)
                                         (if (gx#stx-pair? _tl1998020843_)
                                             (let ((_e1998120846_
                                                    (gx#syntax-e
                                                     _tl1998020843_)))
                                               (let ((_hd1998220850_
                                                      (##car _e1998120846_))
                                                     (_tl1998320853_
                                                      (##cdr _e1998120846_)))
                                                 (if (gx#stx-pair?
                                                      _tl1998320853_)
                                                     (let ((_e1998420856_
                                                            (gx#syntax-e
                                                             _tl1998320853_)))
                                                       (let ((_hd1998520860_
                                                              (##car _e1998420856_))
                                                             (_tl1998620863_
                                                              (##cdr _e1998420856_)))
                                                         (if (gx#stx-null?
                                                              _tl1998620863_)
                                                             ((lambda (_L20866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20868_)
                        (_generate-splice18361_
                         _tgt19889_
                         _L20868_
                         _L20866_
                         _K19892_
                         _E19893_))
                      _hd1998520860_
                      _hd1998220850_)
                     (_g1992820829_ _g1993820833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1992820829_
                                                      _g1993820833_))))
                                             (_g1992820829_ _g1993820833_))
                                         (_g1992820829_ _g1993820833_))
                                     (_g1992820829_ _g1993820833_))))
                             (_g1992820829_ _g1993820833_)))))
                  (let ((_g1992620904_
                         (lambda (_g1993820887_)
                           (if (gx#stx-pair? _g1993820887_)
                               (let ((_e1997320890_
                                      (gx#syntax-e _g1993820887_)))
                                 (let ((_hd1997420894_ (##car _e1997320890_))
                                       (_tl1997520897_ (##cdr _e1997320890_)))
                                   (if (gx#stx-datum? _hd1997420894_)
                                       (if (equal? (gx#stx-e _hd1997420894_)
                                                   'null:)
                                           (if (gx#stx-null? _tl1997520897_)
                                               ((lambda ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##null?)
                            (cons _L19910_ '()))
                      (cons _K19892_ (cons _E19893_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1992720883_ _g1993820887_))
                                           (_g1992720883_ _g1993820887_))
                                       (_g1992720883_ _g1993820887_))))
                               (_g1992720883_ _g1993820887_)))))
                    (let ((_g1992521023_
                           (lambda (_g1993820908_)
                             (if (gx#stx-pair? _g1993820908_)
                                 (let ((_e1996420911_
                                        (gx#syntax-e _g1993820908_)))
                                   (let ((_hd1996520915_ (##car _e1996420911_))
                                         (_tl1996620918_
                                          (##cdr _e1996420911_)))
                                     (if (gx#stx-datum? _hd1996520915_)
                                         (if (equal? (gx#stx-e _hd1996520915_)
                                                     'cons:)
                                             (if (gx#stx-pair? _tl1996620918_)
                                                 (let ((_e1996720921_
                                                        (gx#syntax-e
                                                         _tl1996620918_)))
                                                   (let ((_hd1996820925_
                                                          (##car _e1996720921_))
                                                         (_tl1996920928_
                                                          (##cdr _e1996720921_)))
                                                     (if (gx#stx-pair?
                                                          _tl1996920928_)
                                                         (let ((_e1997020931_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1996920928_)))
                   (let ((_hd1997120935_ (##car _e1997020931_))
                         (_tl1997220938_ (##cdr _e1997020931_)))
                     (if (gx#stx-null? _tl1997220938_)
                         ((lambda (_L20941_ _L20943_)
                            (let ((_g2095920974_
                                   (lambda (_g2096020970_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2096020970_))))
                              (let ((_g2095821019_
                                     (lambda (_g2096020978_)
                                       (if (gx#stx-pair? _g2096020978_)
                                           (let ((_e2096320981_
                                                  (gx#syntax-e _g2096020978_)))
                                             (let ((_hd2096420985_
                                                    (##car _e2096320981_))
                                                   (_tl2096520988_
                                                    (##cdr _e2096320981_)))
                                               (if (gx#stx-pair?
                                                    _tl2096520988_)
                                                   (let ((_e2096620991_
                                                          (gx#syntax-e
                                                           _tl2096520988_)))
                                                     (let ((_hd2096720995_
                                                            (##car _e2096620991_))
                                                           (_tl2096820998_
                                                            (##cdr _e2096620991_)))
                                                       (if (gx#stx-null?
                                                            _tl2096820998_)
                                                           ((lambda (_L21001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21003_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f '##pair?)
                                          (cons _L19910_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f '##car)
                                      (cons _L19910_ '()))
                                '()))
                    (cons (cons _L21001_
                                (cons (cons (gx#datum->syntax '#f '##cdr)
                                            (cons _L19910_ '()))
                                      '()))
                          '()))
              (cons (_generate118359_
                     _L21003_
                     _L20943_
                     (_generate118359_ _L21001_ _L20941_ _K19892_ _E19893_)
                     _E19893_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19893_ '()))))))
                    _hd2096720995_
                    _hd2096420985_)
                   (_g2095920974_ _g2096020978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2095920974_
                                                    _g2096020978_))))
                                           (_g2095920974_ _g2096020978_)))))
                                (_g2095821019_
                                 (list (gx#genident 'hd) (gx#genident 'tl))))))
                          _hd1997120935_
                          _hd1996820925_)
                         (_g1992620904_ _g1993820908_))))
                 (_g1992620904_ _g1993820908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1992620904_ _g1993820908_))
                                             (_g1992620904_ _g1993820908_))
                                         (_g1992620904_ _g1993820908_))))
                                 (_g1992620904_ _g1993820908_)))))
                      (let ((_g1992421063_
                             (lambda (_g1993821027_)
                               (if (gx#stx-pair? _g1993821027_)
                                   (let ((_e1995621030_
                                          (gx#syntax-e _g1993821027_)))
                                     (let ((_hd1995721034_
                                            (##car _e1995621030_))
                                           (_tl1995821037_
                                            (##cdr _e1995621030_)))
                                       (if (gx#stx-datum? _hd1995721034_)
                                           (if (equal? (gx#stx-e
                                                        _hd1995721034_)
                                                       'not:)
                                               (if (gx#stx-pair?
                                                    _tl1995821037_)
                                                   (let ((_e1995921040_
                                                          (gx#syntax-e
                                                           _tl1995821037_)))
                                                     (let ((_hd1996021044_
                                                            (##car _e1995921040_))
                                                           (_tl1996121047_
                                                            (##cdr _e1995921040_)))
                                                       (if (gx#stx-null?
                                                            _tl1996121047_)
                                                           ((lambda (_L21050_)
                                                              (_generate118359_
                                                               _tgt19889_
                                                               _L21050_
                                                               _E19893_
                                                               _K19892_))
                                                            _hd1996021044_)
                                                           (_g1992521023_
                                                            _g1993821027_))))
                                                   (_g1992521023_
                                                    _g1993821027_))
                                               (_g1992521023_ _g1993821027_))
                                           (_g1992521023_ _g1993821027_))))
                                   (_g1992521023_ _g1993821027_)))))
                        (let ((_g1992321151_
                               (lambda (_g1993821067_)
                                 (if (gx#stx-pair? _g1993821067_)
                                     (let ((_e1995221070_
                                            (gx#syntax-e _g1993821067_)))
                                       (let ((_hd1995321074_
                                              (##car _e1995221070_))
                                             (_tl1995421077_
                                              (##cdr _e1995221070_)))
                                         (if (gx#stx-datum? _hd1995321074_)
                                             (if (equal? (gx#stx-e
                                                          _hd1995321074_)
                                                         'or:)
                                                 ((lambda (_L21080_)
                                                    (let ((_g2109221104_
                                                           (lambda (_g2109321100_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2109321100_))))
                                                      (let ((_g2109121115_
                                                             (lambda (_g2109321108_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _E19893_)))))
                (let ((_g2109021147_
                       (lambda (_g2109321119_)
                         (if (gx#stx-pair? _g2109321119_)
                             (let ((_e2109621122_ (gx#syntax-e _g2109321119_)))
                               (let ((_hd2109721126_ (##car _e2109621122_))
                                     (_tl2109821129_ (##cdr _e2109621122_)))
                                 ((lambda (_L21132_ _L21134_)
                                    (_generate118359_
                                     _tgt19889_
                                     _L21134_
                                     _K19892_
                                     (_generate118359_
                                      _tgt19889_
                                      (cons 'or: _L21132_)
                                      _K19892_
                                      _E19893_)))
                                  _tl2109821129_
                                  _hd2109721126_)))
                             (_g2109121115_ _g2109321119_)))))
                  (_g2109021147_ _L21080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1995421077_)
                                                 (_g1992421063_ _g1993821067_))
                                             (_g1992421063_ _g1993821067_))))
                                     (_g1992421063_ _g1993821067_)))))
                          (let ((_g1992221239_
                                 (lambda (_g1993821155_)
                                   (if (gx#stx-pair? _g1993821155_)
                                       (let ((_e1994821158_
                                              (gx#syntax-e _g1993821155_)))
                                         (let ((_hd1994921162_
                                                (##car _e1994821158_))
                                               (_tl1995021165_
                                                (##cdr _e1994821158_)))
                                           (if (gx#stx-datum? _hd1994921162_)
                                               (if (equal? (gx#stx-e
                                                            _hd1994921162_)
                                                           'and:)
                                                   ((lambda (_L21168_)
                                                      (let ((_g2118021192_
                                                             (lambda (_g2118121188_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2118121188_))))
                                                        (let ((_g2117921203_
                                                               (lambda (_g2118121196_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda () _K19892_)))))
                  (let ((_g2117821235_
                         (lambda (_g2118121207_)
                           (if (gx#stx-pair? _g2118121207_)
                               (let ((_e2118421210_
                                      (gx#syntax-e _g2118121207_)))
                                 (let ((_hd2118521214_ (##car _e2118421210_))
                                       (_tl2118621217_ (##cdr _e2118421210_)))
                                   ((lambda (_L21220_ _L21222_)
                                      (_generate118359_
                                       _tgt19889_
                                       _L21222_
                                       (_generate118359_
                                        _tgt19889_
                                        (cons 'and: _L21220_)
                                        _K19892_
                                        _E19893_)
                                       _E19893_))
                                    _tl2118621217_
                                    _hd2118521214_)))
                               (_g2117921203_ _g2118121207_)))))
                    (_g2117821235_ _L21168_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1995021165_)
                                                   (_g1992321151_
                                                    _g1993821155_))
                                               (_g1992321151_ _g1993821155_))))
                                       (_g1992321151_ _g1993821155_)))))
                            (let ((_g1992121528_
                                   (lambda (_g1993821243_)
                                     (if (gx#stx-pair? _g1993821243_)
                                         (let ((_e1994121246_
                                                (gx#syntax-e _g1993821243_)))
                                           (let ((_hd1994221250_
                                                  (##car _e1994121246_))
                                                 (_tl1994321253_
                                                  (##cdr _e1994121246_)))
                                             (if (gx#stx-datum? _hd1994221250_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1994221250_)
                                                             '?:)
                                                     (if (gx#stx-pair?
                                                          _tl1994321253_)
                                                         (let ((_e1994421256_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1994321253_)))
                   (let ((_hd1994521260_ (##car _e1994421256_))
                         (_tl1994621263_ (##cdr _e1994421256_)))
                     ((lambda (_L21266_ _L21268_)
                        (let ((_g2128421316_
                               (lambda (_g2128521312_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2128521312_))))
                          (let ((_g2128321414_
                                 (lambda (_g2128521320_)
                                   (if (gx#stx-pair? _g2128521320_)
                                       (let ((_e2129921323_
                                              (gx#syntax-e _g2128521320_)))
                                         (let ((_hd2130021327_
                                                (##car _e2129921323_))
                                               (_tl2130121330_
                                                (##cdr _e2129921323_)))
                                           (if (gx#stx-datum? _hd2130021327_)
                                               (if (equal? (gx#stx-e
                                                            _hd2130021327_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2130121330_)
                                                       (let ((_e2130221333_
                                                              (gx#syntax-e
                                                               _tl2130121330_)))
                                                         (let ((_hd2130321337_
                                                                (##car _e2130221333_))
                                                               (_tl2130421340_
                                                                (##cdr _e2130221333_)))
                                                           (if (gx#stx-pair?
                                                                _tl2130421340_)
                                                               (let ((_e2130521343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2130421340_)))
                         (let ((_hd2130621347_ (##car _e2130521343_))
                               (_tl2130721350_ (##cdr _e2130521343_)))
                           (if (gx#stx-datum? _hd2130621347_)
                               (if (equal? (gx#stx-e _hd2130621347_) '=>:)
                                   (if (gx#stx-pair? _tl2130721350_)
                                       (let ((_e2130821353_
                                              (gx#syntax-e _tl2130721350_)))
                                         (let ((_hd2130921357_
                                                (##car _e2130821353_))
                                               (_tl2131021360_
                                                (##cdr _e2130821353_)))
                                           (if (gx#stx-null? _tl2131021360_)
                                               ((lambda (_L21363_ _L21365_)
                                                  (let ((_g2138321391_
                                                         (lambda (_g2138421387_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2138421387_))))
                                                    (let ((_g2138221410_
                                                           (lambda (_g2138421395_)
                                                             ((lambda (_L21398_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '?)
                                            (cons _L21268_
                                                  (cons _L19910_ '())))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L21398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21365_ (cons _L19910_ '())) '()))
                      '())
                (cons (_generate118359_ _L21398_ _L21363_ _K19892_ _E19893_)
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _E19893_ '()))))))
                      _g2138421395_))))
              (_g2138221410_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2130921357_
                                                _hd2130321337_)
                                               (_g2128421316_ _g2128521320_))))
                                       (_g2128421316_ _g2128521320_))
                                   (_g2128421316_ _g2128521320_))
                               (_g2128421316_ _g2128521320_))))
                       (_g2128421316_ _g2128521320_))))
               (_g2128421316_ _g2128521320_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2128421316_
                                                    _g2128521320_))
                                               (_g2128421316_ _g2128521320_))))
                                       (_g2128421316_ _g2128521320_)))))
                            (let ((_g2128221485_
                                   (lambda (_g2128521418_)
                                     (if (gx#stx-pair? _g2128521418_)
                                         (let ((_e2129121421_
                                                (gx#syntax-e _g2128521418_)))
                                           (let ((_hd2129221425_
                                                  (##car _e2129121421_))
                                                 (_tl2129321428_
                                                  (##cdr _e2129121421_)))
                                             (if (gx#stx-datum? _hd2129221425_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2129221425_)
                                                             '=>:)
                                                     (if (gx#stx-pair?
                                                          _tl2129321428_)
                                                         (let ((_e2129421431_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2129321428_)))
                   (let ((_hd2129521435_ (##car _e2129421431_))
                         (_tl2129621438_ (##cdr _e2129421431_)))
                     (if (gx#stx-null? _tl2129621438_)
                         ((lambda (_L21441_)
                            (let ((_g2145421462_
                                   (lambda (_g2145521458_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2145521458_))))
                              (let ((_g2145321481_
                                     (lambda (_g2145521466_)
                                       ((lambda (_L21469_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L21469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21268_ (cons _L19910_ '())) '()))
                      '())
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons _L21469_
                                  (cons (_generate118359_
                                         _L21469_
                                         _L21441_
                                         _K19892_
                                         _E19893_)
                                        (cons _E19893_ '()))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2145521466_))))
                                (_g2145321481_ (gx#genident 'e)))))
                          _hd2129521435_)
                         (_g2128321414_ _g2128521418_))))
                 (_g2128321414_ _g2128521418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2128321414_
                                                      _g2128521418_))
                                                 (_g2128321414_
                                                  _g2128521418_))))
                                         (_g2128321414_ _g2128521418_)))))
                              (let ((_g2128121513_
                                     (lambda (_g2128521489_)
                                       (if (gx#stx-pair? _g2128521489_)
                                           (let ((_e2128721492_
                                                  (gx#syntax-e _g2128521489_)))
                                             (let ((_hd2128821496_
                                                    (##car _e2128721492_))
                                                   (_tl2128921499_
                                                    (##cdr _e2128721492_)))
                                               (if (gx#stx-null?
                                                    _tl2128921499_)
                                                   ((lambda (_L21502_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '?)
                                (cons _L21268_ (cons _L19910_ '())))
                          (cons (_generate118359_
                                 _tgt19889_
                                 _L21502_
                                 _K19892_
                                 _E19893_)
                                (cons _E19893_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2128821496_)
                                                   (_g2128221485_
                                                    _g2128521489_))))
                                           (_g2128221485_ _g2128521489_)))))
                                (let ((_g2128021524_
                                       (lambda (_g2128521517_)
                                         (if (gx#stx-null? _g2128521517_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '?)
                          (cons _L21268_ (cons _L19910_ '())))
                    (cons _K19892_ (cons _E19893_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2128121513_ _g2128521517_)))))
                                  (_g2128021524_ _L21266_)))))))
                      _tl1994621263_
                      _hd1994521260_)))
                 (_g1992221239_ _g1993821243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1992221239_
                                                      _g1993821243_))
                                                 (_g1992221239_
                                                  _g1993821243_))))
                                         (_g1992221239_ _g1993821243_)))))
                              (_g1992121528_ _ptree19891_))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1989619907_))))
                        (_g1989421532_ _tgt19889_)))))
                 (_generate-splice18361_
                  (lambda (_tgt19261_ _hd19263_ _rest19264_ _K19265_ _E19266_)
                    (let ((_g1926819285_
                           (lambda (_g1926919281_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1926919281_))))
                      (let ((_g1926719885_
                             (lambda (_g1926919289_)
                               (if (gx#stx-pair/null? _g1926919289_)
                                   (if (fx>= (gx#stx-length _g1926919289_) '0)
                                       (let ((_g30363_
                                              (gx#syntax-split-splice
                                               _g1926919289_
                                               '0)))
                                         (begin
                                           (let ((_g30364_
                                                  (values-count _g30363_)))
                                             (if (not (fx= _g30364_ 2))
                                                 (error "Context expects 2 values"
                                                        _g30364_)))
                                           (let ((_target1927119292_
                                                  (values-ref _g30363_ 0))
                                                 (_tl1927319295_
                                                  (values-ref _g30363_ 1)))
                                             (if (gx#stx-null? _tl1927319295_)
                                                 (letrec ((_loop1927419298_
                                                           (lambda (_hd1927219302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1927819305_)
                     (if (gx#stx-pair? _hd1927219302_)
                         (let ((_e1927519308_ (gx#syntax-e _hd1927219302_)))
                           (let ((_lp-hd1927619312_ (##car _e1927519308_))
                                 (_lp-tl1927719315_ (##cdr _e1927519308_)))
                             (_loop1927419298_
                              _lp-tl1927719315_
                              (cons _lp-hd1927619312_ _var1927819305_))))
                         (let ((_var1927919318_ (reverse _var1927819305_)))
                           ((lambda (_L19322_)
                              (let ()
                                (let ((_g1933819355_
                                       (lambda (_g1933919351_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1933919351_))))
                                  (let ((_g1933719873_
                                         (lambda (_g1933919359_)
                                           (if (gx#stx-pair/null?
                                                _g1933919359_)
                                               (if (fx>= (gx#stx-length
                                                          _g1933919359_)
                                                         '0)
                                                   (let ((_g30365_
                                                          (gx#syntax-split-splice
                                                           _g1933919359_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30366_
                                                              (values-count
                                                               _g30365_)))
                                                         (if (not (fx= _g30366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30366_)))
               (let ((_target1934119362_ (values-ref _g30365_ 0))
                     (_tl1934319365_ (values-ref _g30365_ 1)))
                 (if (gx#stx-null? _tl1934319365_)
                     (letrec ((_loop1934419368_
                               (lambda (_hd1934219372_ _var-r1934819375_)
                                 (if (gx#stx-pair? _hd1934219372_)
                                     (let ((_e1934519378_
                                            (gx#syntax-e _hd1934219372_)))
                                       (let ((_lp-hd1934619382_
                                              (##car _e1934519378_))
                                             (_lp-tl1934719385_
                                              (##cdr _e1934519378_)))
                                         (_loop1934419368_
                                          _lp-tl1934719385_
                                          (cons _lp-hd1934619382_
                                                _var-r1934819375_))))
                                     (let ((_var-r1934919388_
                                            (reverse _var-r1934819375_)))
                                       ((lambda (_L19392_)
                                          (let ()
                                            (let ((_g1940919426_
                                                   (lambda (_g1941019422_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1941019422_))))
                                              (let ((_g1940819861_
                                                     (lambda (_g1941019430_)
                                                       (if (gx#stx-pair/null?
                                                            _g1941019430_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1941019430_)
                             '0)
                       (let ((_g30367_
                              (gx#syntax-split-splice _g1941019430_ '0)))
                         (begin
                           (let ((_g30368_ (values-count _g30367_)))
                             (if (not (fx= _g30368_ 2))
                                 (error "Context expects 2 values" _g30368_)))
                           (let ((_target1941219433_ (values-ref _g30367_ 0))
                                 (_tl1941419436_ (values-ref _g30367_ 1)))
                             (if (gx#stx-null? _tl1941419436_)
                                 (letrec ((_loop1941519439_
                                           (lambda (_hd1941319443_
                                                    _init1941919446_)
                                             (if (gx#stx-pair? _hd1941319443_)
                                                 (let ((_e1941619449_
                                                        (gx#syntax-e
                                                         _hd1941319443_)))
                                                   (let ((_lp-hd1941719453_
                                                          (##car _e1941619449_))
                                                         (_lp-tl1941819456_
                                                          (##cdr _e1941619449_)))
                                                     (_loop1941519439_
                                                      _lp-tl1941819456_
                                                      (cons _lp-hd1941719453_
                                                            _init1941919446_))))
                                                 (let ((_init1942019459_
                                                        (reverse _init1941919446_)))
                                                   ((lambda (_L19463_)
                                                      (let ()
                                                        (let ((_g1948019488_
                                                               (lambda (_g1948119484_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1948119484_))))
                  (let ((_g1947919857_
                         (lambda (_g1948119492_)
                           ((lambda (_L19495_)
                              (let ()
                                (let ((_g1950819516_
                                       (lambda (_g1950919512_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1950919512_))))
                                  (let ((_g1950719853_
                                         (lambda (_g1950919520_)
                                           ((lambda (_L19523_)
                                              (let ()
                                                (let ((_g1953619544_
                                                       (lambda (_g1953719540_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1953719540_))))
                                                  (let ((_g1953519849_
                                                         (lambda (_g1953719548_)
                                                           ((lambda (_L19551_)
                                                              (let ()
                                                                (let ((_g1956419572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1956519568_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1956519568_))))
                          (let ((_g1956319845_
                                 (lambda (_g1956519576_)
                                   ((lambda (_L19579_)
                                      (let ()
                                        (let ((_g1959219600_
                                               (lambda (_g1959319596_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1959319596_))))
                                          (let ((_g1959119841_
                                                 (lambda (_g1959319604_)
                                                   ((lambda (_L19607_)
                                                      (let ()
                                                        (let ((_g1962019628_
                                                               (lambda (_g1962119624_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1962119624_))))
                  (let ((_g1961919837_
                         (lambda (_g1962119632_)
                           ((lambda (_L19635_)
                              (let ()
                                (let ((_g1964819656_
                                       (lambda (_g1964919652_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1964919652_))))
                                  (let ((_g1964719833_
                                         (lambda (_g1964919660_)
                                           ((lambda (_L19663_)
                                              (let ()
                                                (let ((_g1967619684_
                                                       (lambda (_g1967719680_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1967719680_))))
                                                  (let ((_g1967519818_
                                                         (lambda (_g1967719688_)
                                                           ((lambda (_L19691_)
                                                              (let ()
                                                                (let ((_g1970419712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1970519708_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1970519708_))))
                          (let ((_g1970319806_
                                 (lambda (_g1970519716_)
                                   ((lambda (_L19719_)
                                      (let ()
                                        (let ((_g1973219740_
                                               (lambda (_g1973319736_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1973319736_))))
                                          (let ((_g1973119802_
                                                 (lambda (_g1973319744_)
                                                   ((lambda (_L19747_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L19523_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1976119772_ _g1976219775_)
                                     (cons _g1976119772_ _g1976219775_))
                                   '()
                                   _L19322_)))
                    (cons _L19663_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19579_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19635_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1976319778_
                                                        _g1976419781_)
                                                 (cons _g1976319778_
                                                       _g1976419781_))
                                               '()
                                               _L19392_))))
                          (cons _L19747_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L19551_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19635_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1976519784_
                                                        _g1976619787_)
                                                 (cons _g1976519784_
                                                       _g1976619787_))
                                               '()
                                               _L19392_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19635_ '()))
                                                  (cons (cons _L19579_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19635_ '()))
                            (cons _L19635_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1976719790_
                                                    _g1976819793_)
                                             (cons _g1976719790_
                                                   _g1976819793_))
                                           '()
                                           _L19392_)))))
                (cons _L19719_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L19551_
                                          (cons _L19495_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1976919796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1977019799_)
                   (cons _g1976919796_ _g1977019799_))
                 '()
                 _L19463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1973319744_))))
                                            (_g1973119802_
                                             (_generate118359_
                                              _L19607_
                                              _hd19263_
                                              _L19691_
                                              _L19719_))))))
                                    _g1970519716_))))
                            (_g1970319806_
                             (cons _L19523_
                                   (cons _L19635_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1980919812_
                                                           _g1981019815_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1980919812_ '()))
                  _g1981019815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19392_)))))))))
                    _g1967719688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1967519818_
                                                     (cons _L19551_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19635_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L19392_ _L19322_)
                           (foldr (lambda (_g1982119825_
                                           _g1982219828_
                                           _g1982319830_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1982219828_
                                                      (cons _g1982119825_
                                                            '())))
                                          _g1982319830_))
                                  '()
                                  _L19392_
                                  _L19322_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1964919660_))))
                                    (_g1964719833_
                                     (_generate118359_
                                      _L19635_
                                      _rest19264_
                                      _K19265_
                                      _E19266_))))))
                            _g1962119632_))))
                    (_g1961919837_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1959319604_))))
                                            (_g1959119841_
                                             (gx#genident 'hd))))))
                                    _g1956519576_))))
                            (_g1956319845_ (gx#genident 'splice-try))))))
                    _g1953719548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1953519849_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1950919520_))))
                                    (_g1950719853_
                                     (gx#genident 'splice-rest))))))
                            _g1948119492_))))
                    (_g1947919857_ _tgt19261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1942019459_))))))
                                   (_loop1941519439_ _target1941219433_ '()))
                                 (_g1940919426_ _g1941019430_)))))
                       (_g1940919426_ _g1941019430_))
                   (_g1940919426_ _g1941019430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1940819861_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1986419867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1986519870_)
                      (cons _g1986419867_ _g1986519870_))
                    '()
                    _L19322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1934919388_))))))
                       (_loop1934419368_ _target1934119362_ '()))
                     (_g1933819355_ _g1933919359_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1933819355_
                                                    _g1933919359_))
                                               (_g1933819355_
                                                _g1933919359_)))))
                                    (_g1933719873_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1987619879_
                                                        _g1987719882_)
                                                 (cons _g1987619879_
                                                       _g1987719882_))
                                               '()
                                               _L19322_))))))))
                            _var1927919318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1927419298_
                                                    _target1927119292_
                                                    '()))
                                                 (_g1926819285_
                                                  _g1926919289_)))))
                                       (_g1926819285_ _g1926919289_))
                                   (_g1926819285_ _g1926919289_)))))
                        (_g1926719885_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd19263_))))))
                 (_generate-simple-vector18362_
                  (lambda (_tgt19103_
                           _body19105_
                           _start19106_
                           _K19107_
                           _E19108_)
                    ((letrec ((_recur19110_
                               (lambda (_rest19113_ _off19115_)
                                 (let ((_g1911819130_
                                        (lambda (_g1911919126_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1911919126_))))
                                   (let ((_g1911719141_
                                          (lambda (_g1911919134_)
                                            ((lambda () _K19107_)))))
                                     (let ((_g1911619257_
                                            (lambda (_g1911919145_)
                                              (if (gx#stx-pair? _g1911919145_)
                                                  (let ((_e1912219148_
                                                         (gx#syntax-e
                                                          _g1911919145_)))
                                                    (let ((_hd1912319152_
                                                           (##car _e1912219148_))
                                                          (_tl1912419155_
                                                           (##cdr _e1912219148_)))
                                                      ((lambda (_L19158_
                                                                _L19160_)
                                                         (let ((_g1917519194_
                                                                (lambda (_g1917619190_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1917619190_))))
                   (let ((_g1917419253_
                          (lambda (_g1917619198_)
                            (if (gx#stx-pair? _g1917619198_)
                                (let ((_e1918019201_
                                       (gx#syntax-e _g1917619198_)))
                                  (let ((_hd1918119205_ (##car _e1918019201_))
                                        (_tl1918219208_ (##cdr _e1918019201_)))
                                    (if (gx#stx-pair? _tl1918219208_)
                                        (let ((_e1918319211_
                                               (gx#syntax-e _tl1918219208_)))
                                          (let ((_hd1918419215_
                                                 (##car _e1918319211_))
                                                (_tl1918519218_
                                                 (##cdr _e1918319211_)))
                                            (if (gx#stx-pair? _tl1918519218_)
                                                (let ((_e1918619221_
                                                       (gx#syntax-e
                                                        _tl1918519218_)))
                                                  (let ((_hd1918719225_
                                                         (##car _e1918619221_))
                                                        (_tl1918819228_
                                                         (##cdr _e1918619221_)))
                                                    (if (gx#stx-null?
                                                         _tl1918819228_)
                                                        ((lambda (_L19231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19233_
                          _L19234_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L19234_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L19233_
                                                               (cons _L19231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate118359_
                                        _L19234_
                                        _L19160_
                                        (_recur19110_
                                         _L19158_
                                         (fx1+ _off19115_))
                                        _E19108_)
                                       '())))))
                 _hd1918719225_
                 _hd1918419215_
                 _hd1918119205_)
                (_g1917519194_ _g1917619198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1917519194_
                                                 _g1917619198_))))
                                        (_g1917519194_ _g1917619198_))))
                                (_g1917519194_ _g1917619198_)))))
                     (_g1917419253_
                      (list (gx#genident 'e) _tgt19103_ _off19115_)))))
               _tl1912419155_
               _hd1912319152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1911719141_
                                                   _g1911919145_)))))
                                       (_g1911619257_ _rest19113_)))))))
                       _recur19110_)
                     _body19105_
                     _start19106_)))
                 (_generate-list-vector18363_
                  (lambda (_tgt19013_
                           _body19015_
                           _tgt->list19016_
                           _start19017_
                           _K19018_
                           _E19019_)
                    (let ((_g1902119040_
                           (lambda (_g1902219036_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1902219036_))))
                      (let ((_g1902019099_
                             (lambda (_g1902219044_)
                               (if (gx#stx-pair? _g1902219044_)
                                   (let ((_e1902619047_
                                          (gx#syntax-e _g1902219044_)))
                                     (let ((_hd1902719051_
                                            (##car _e1902619047_))
                                           (_tl1902819054_
                                            (##cdr _e1902619047_)))
                                       (if (gx#stx-pair? _tl1902819054_)
                                           (let ((_e1902919057_
                                                  (gx#syntax-e
                                                   _tl1902819054_)))
                                             (let ((_hd1903019061_
                                                    (##car _e1902919057_))
                                                   (_tl1903119064_
                                                    (##cdr _e1902919057_)))
                                               (if (gx#stx-pair?
                                                    _tl1903119064_)
                                                   (let ((_e1903219067_
                                                          (gx#syntax-e
                                                           _tl1903119064_)))
                                                     (let ((_hd1903319071_
                                                            (##car _e1903219067_))
                                                           (_tl1903419074_
                                                            (##cdr _e1903219067_)))
                                                       (if (gx#stx-null?
                                                            _tl1903419074_)
                                                           ((lambda (_L19077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19079_
                             _L19080_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L19080_
                                                (cons (cons _L19077_
                                                            (cons _L19079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate118359_
                                           _L19080_
                                           _body19015_
                                           _K19018_
                                           _E19019_)
                                          '())))))
                    _hd1903319071_
                    _hd1903019061_
                    _hd1902719051_)
                   (_g1902119040_ _g1902219044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1902119040_
                                                    _g1902219044_))))
                                           (_g1902119040_ _g1902219044_))))
                                   (_g1902119040_ _g1902219044_)))))
                        (_g1902019099_
                         (list (gx#genident 'e)
                               _tgt19013_
                               _tgt->list19016_))))))
                 (_generate-struct18364_
                  (lambda (_info18746_
                           _tgt18748_
                           _body18749_
                           _K18750_
                           _E18751_)
                    (let ((_rtd18753_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18746_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18746_)
                               '#f)))
                      (let ((_fields18763_
                             ((letrec ((_lp18756_
                                        (lambda (_rtd18759_ _k18761_)
                                          (if _rtd18759_
                                              (_lp18756_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18759_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18759_))
                                                    _k18761_))
                                              _k18761_))))
                                _lp18756_)
                              _rtd18753_
                              '0)))
                        (let ((_final?18766_
                               (if _rtd18753_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18753_))
                                   '#f)))
                          (let ((_g1876918777_
                                 (lambda (_g1877018773_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1877018773_))))
                            (let ((_g1876819009_
                                   (lambda (_g1877018781_)
                                     ((lambda (_L18784_)
                                        (let ()
                                          (let ((_g1879918807_
                                                 (lambda (_g1880018803_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1880018803_))))
                                            (let ((_g1879819005_
                                                   (lambda (_g1880018811_)
                                                     ((lambda (_L18814_)
                                                        (let ()
                                                          (let ((_g1882718835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1882818831_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1882818831_))))
                    (let ((_g1882619001_
                           (lambda (_g1882818839_)
                             ((lambda (_L18842_)
                                (let ()
                                  (let ()
                                    (let ((_g1885818879_
                                           (lambda (_g1885918875_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1885918875_))))
                                      (let ((_g1885718922_
                                             (lambda (_g1885918883_)
                                               (if (gx#stx-pair? _g1885918883_)
                                                   (let ((_e1886818886_
                                                          (gx#syntax-e
                                                           _g1885918883_)))
                                                     (let ((_hd1886918890_
                                                            (##car _e1886818886_))
                                                           (_tl1887018893_
                                                            (##cdr _e1886818886_)))
                                                       (if (gx#stx-datum?
                                                            _hd1886918890_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1886918890_)
                               'list:)
                       (if (gx#stx-pair? _tl1887018893_)
                           (let ((_e1887118896_ (gx#syntax-e _tl1887018893_)))
                             (let ((_hd1887218900_ (##car _e1887118896_))
                                   (_tl1887318903_ (##cdr _e1887118896_)))
                               (if (gx#stx-null? _tl1887318903_)
                                   ((lambda (_L18906_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18842_
                                                        (cons _L18814_
                                                              (cons _L18784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector18363_
                                                         _tgt18748_
                                                         _L18906_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18750_
                                                         _E18751_)
                                                        (cons _E18751_ '())))))
                                    _hd1887218900_)
                                   (_g1885818879_ _g1885918883_))))
                           (_g1885818879_ _g1885918883_))
                       (_g1885818879_ _g1885918883_))
                   (_g1885818879_ _g1885918883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1885818879_
                                                    _g1885918883_)))))
                                        (let ((_g1885618997_
                                               (lambda (_g1885918926_)
                                                 (if (gx#stx-pair?
                                                      _g1885918926_)
                                                     (let ((_e1886118929_
                                                            (gx#syntax-e
                                                             _g1885918926_)))
                                                       (let ((_hd1886218933_
                                                              (##car _e1886118929_))
                                                             (_tl1886318936_
                                                              (##cdr _e1886118929_)))
                                                         (if (gx#stx-datum?
                                                              _hd1886218933_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1886218933_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1886318936_)
                             (let ((_e1886418939_
                                    (gx#syntax-e _tl1886318936_)))
                               (let ((_hd1886518943_ (##car _e1886418939_))
                                     (_tl1886618946_ (##cdr _e1886418939_)))
                                 (if (gx#stx-null? _tl1886618946_)
                                     ((lambda (_L18949_)
                                        (let ((_K18962_
                                               (_generate-simple-vector18362_
                                                _tgt18748_
                                                _L18949_
                                                '1
                                                _K18750_
                                                _E18751_)))
                                          (if (if _rtd18753_
                                                  (fx<= (gx#stx-length
                                                         _L18949_)
                                                        _fields18763_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18842_
                                                                (cons _L18814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18784_ '())))
                  (cons _K18962_ (cons _E18751_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1896518973_
                                                     (lambda (_g1896618969_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1896618969_))))
                                                (let ((_g1896418993_
                                                       (lambda (_g1896618977_)
                                                         ((lambda (_L18980_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18842_
                                                    (cons _L18814_
                                                          (cons _L18784_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18980_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18784_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18962_ (cons _E18751_ '()))))))
                  _g1896618977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1896418993_
                                                   (gx#stx-length
                                                    _L18949_)))))))
                                      _hd1886518943_)
                                     (_g1885718922_ _g1885918926_))))
                             (_g1885718922_ _g1885918926_))
                         (_g1885718922_ _g1885918926_))
                     (_g1885718922_ _g1885918926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1885718922_
                                                      _g1885918926_)))))
                                          (_g1885618997_ _body18749_)))))))
                              _g1882818839_))))
                      (_g1882619001_
                       (if _final?18766_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1880018811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1879819005_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18746_))))))
                                      _g1877018781_))))
                              (_g1876819009_ _tgt18748_))))))))
                 (_generate-class18365_
                  (lambda (_info18367_
                           _tgt18369_
                           _body18370_
                           _K18371_
                           _E18372_)
                    (let ((_rtd18374_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info18367_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18367_)
                               '#f)))
                      (let ((_known-slot?18376_ #!void))
                        (letrec ((_rtd-known-slot?18378_
                                  (lambda (_rtd18727_ _slot18729_)
                                    (if _rtd18727_
                                        (let ((_$e18731_
                                               (memq _slot18729_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18727_))))
                                          (if _$e18731_
                                              _$e18731_
                                              (ormap (lambda (_g1873418736_)
                                                       (_rtd-known-slot?18378_
                                                        _g1873418736_
                                                        _slot18729_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18727_)))))
                                        '#f)))
                                 (_recur18379_
                                  (lambda (_klass18513_ _rest18515_)
                                    (let ((_g1851818534_
                                           (lambda (_g1851918530_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1851918530_))))
                                      (let ((_g1851718545_
                                             (lambda (_g1851918538_)
                                               ((lambda () _K18371_)))))
                                        (let ((_g1851618723_
                                               (lambda (_g1851918549_)
                                                 (if (gx#stx-pair?
                                                      _g1851918549_)
                                                     (let ((_e1852318552_
                                                            (gx#syntax-e
                                                             _g1851918549_)))
                                                       (let ((_hd1852418556_
                                                              (##car _e1852318552_))
                                                             (_tl1852518559_
                                                              (##cdr _e1852318552_)))
                                                         (if (gx#stx-pair?
                                                              _tl1852518559_)
                                                             (let ((_e1852618562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1852518559_)))
                       (let ((_hd1852718566_ (##car _e1852618562_))
                             (_tl1852818569_ (##cdr _e1852618562_)))
                         ((lambda (_L18572_ _L18574_ _L18575_)
                            (let ((_g1859118599_
                                   (lambda (_g1859218595_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1859218595_))))
                              (let ((_g1859018719_
                                     (lambda (_g1859218603_)
                                       ((lambda (_L18606_)
                                          (let ()
                                            (let ((_g1861818626_
                                                   (lambda (_g1861918622_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1861918622_))))
                                              (let ((_g1861718715_
                                                     (lambda (_g1861918630_)
                                                       ((lambda (_L18633_)
                                                          (let ()
                                                            (let ((_g1864618654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1864718650_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1864718650_))))
                      (let ((_g1864518711_
                             (lambda (_g1864718658_)
                               ((lambda (_L18661_)
                                  (let ()
                                    (let ((_g1867418682_
                                           (lambda (_g1867518678_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1867518678_))))
                                      (let ((_g1867318707_
                                             (lambda (_g1867518686_)
                                               ((lambda (_L18689_)
                                                  (let ()
                                                    (let ((_K18702_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18689_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18606_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18661_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate118359_
                                      _L18689_
                                      _L18574_
                                      (_recur18379_ _klass18513_ _L18572_)
                                      _E18372_)
                                     '())))))
              (let ()
                (if (_known-slot?18376_ _L18575_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18661_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18633_
                                                              (cons _L18575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18702_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18661_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18633_
                                                              (cons _L18575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18661_
                                                  (cons _K18702_
                                                        (cons _E18372_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1867518686_))))
                                        (_g1867318707_ (gx#genident 'e))))))
                                _g1864718658_))))
                        (_g1864518711_ (gx#genident 'slot))))))
                _g1861918630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1861718715_
                                                 _klass18513_)))))
                                        _g1859218603_))))
                                (_g1859018719_ _tgt18369_))))
                          _tl1852818569_
                          _hd1852718566_
                          _hd1852418556_)))
                     (_g1851718545_ _g1851918549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1851718545_
                                                      _g1851918549_)))))
                                          (_g1851618723_ _rest18515_)))))))
                          (begin
                            (set! _known-slot?18376_
                                  (if _rtd18374_
                                      (lambda (_key18740_)
                                        (let ((_slot18743_
                                               (keyword->symbol
                                                (gx#stx-e _key18740_))))
                                          (_rtd-known-slot?18378_
                                           _rtd18374_
                                           _slot18743_)))
                                      false))
                            (let ((_final?18377_
                                   (if _rtd18374_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd18374_))
                                       '#f)))
                              (let ((_g1838118389_
                                     (lambda (_g1838218385_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1838218385_))))
                                (let ((_g1838018509_
                                       (lambda (_g1838218393_)
                                         ((lambda (_L18396_)
                                            (let ()
                                              (let ((_g1841118419_
                                                     (lambda (_g1841218415_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1841218415_))))
                                                (let ((_g1841018505_
                                                       (lambda (_g1841218423_)
                                                         ((lambda (_L18426_)
                                                            (let ()
                                                              (let ((_g1843918447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1844018443_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1844018443_))))
                        (let ((_g1843818501_
                               (lambda (_g1844018451_)
                                 ((lambda (_L18454_)
                                    (let ()
                                      (let ((_g1846718475_
                                             (lambda (_g1846818471_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1846818471_))))
                                        (let ((_g1846618497_
                                               (lambda (_g1846818479_)
                                                 ((lambda (_L18482_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L18482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L18454_ (cons _L18426_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L18396_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L18426_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur18379_
                                                     _L18396_
                                                     _body18370_)
                                                    '())))
                                  (cons _E18372_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1846818479_))))
                                          (_g1846618497_
                                           (if _final?18377_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1844018451_))))
                          (_g1843818501_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info18367_))))))
                  _g1841218423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1841018505_
                                                   _tgt18369_)))))
                                          _g1838218393_))))
                                  (_g1838018509_
                                   (gx#genident 'class))))))))))))
          (_generate118359_ _tgt18354_ _ptree18355_ _K18356_ _E18357_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx17351_ _tgt-lst17353_ _clauses17354_)
        (let ((_parse-body17356_
               (lambda (_hd-len18174_)
                 ((letrec ((_lp18177_
                            (lambda (_rest18180_ _r18182_)
                              (let ((_g1818518197_
                                     (lambda (_g1818618193_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1818618193_))))
                                (let ((_g1818418208_
                                       (lambda (_g1818618201_)
                                         ((lambda () _r18182_)))))
                                  (let ((_g1818318348_
                                         (lambda (_g1818618212_)
                                           (if (gx#stx-pair? _g1818618212_)
                                               (let ((_e1818918215_
                                                      (gx#syntax-e
                                                       _g1818618212_)))
                                                 (let ((_hd1819018219_
                                                        (##car _e1818918215_))
                                                       (_tl1819118222_
                                                        (##cdr _e1818918215_)))
                                                   ((lambda (_L18225_ _L18227_)
                                                      (let ((_g1824418260_
                                                             (lambda (_g1824518256_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1824518256_))))
                                                        (let ((_g1824318271_
                                                               (lambda (_g1824518264_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx17351_
                             _L18227_))))))
                  (let ((_g1824218312_
                         (lambda (_g1824518275_)
                           (if (gx#stx-pair? _g1824518275_)
                               (let ((_e1825218278_
                                      (gx#syntax-e _g1824518275_)))
                                 (let ((_hd1825318282_ (##car _e1825218278_))
                                       (_tl1825418285_ (##cdr _e1825218278_)))
                                   ((lambda (_L18288_ _L18290_)
                                      (if (if (gx#stx-list? _L18290_)
                                              (if (fx= (gx#stx-length _L18290_)
                                                       _hd-len18174_)
                                                  (if (gx#stx-list? _L18288_)
                                                      (not (gx#stx-null?
                                                            _L18288_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp18177_
                                           _L18225_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1830218304_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1830218304_
                         _stx17351_))
                      _L18290_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L18288_)
                            (let ((_$e18308_ (gx#stx-source _L18227_)))
                              (if _$e18308_
                                  _$e18308_
                                  (gx#stx-source _stx17351_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r18182_))
                                          (_g1824318271_ _g1824518275_)))
                                    _tl1825418285_
                                    _hd1825318282_)))
                               (_g1824318271_ _g1824518275_)))))
                    (let ((_g1824118344_
                           (lambda (_g1824518316_)
                             (if (gx#stx-pair? _g1824518316_)
                                 (let ((_e1824718319_
                                        (gx#syntax-e _g1824518316_)))
                                   (let ((_hd1824818323_ (##car _e1824718319_))
                                         (_tl1824918326_
                                          (##cdr _e1824718319_)))
                                     (if (gx#identifier? _hd1824818323_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g30373_|
                                              _hd1824818323_)
                                             ((lambda (_L18329_)
                                                (if (if (gx#stx-list? _L18329_)
                                                        (not (gx#stx-null?
                                                              _L18329_))
                                                        '#f)
                                                    (if (gx#stx-null? _L18225_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L18329_)
                                         (let ((_$e18340_
                                                (gx#stx-source _L18227_)))
                                           (if _$e18340_
                                               _$e18340_
                                               (gx#stx-source _stx17351_))))
                                        '())))
                      _r18182_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx17351_
                 _L18227_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1824218312_
                                                     _g1824518316_)))
                                              _tl1824918326_)
                                             (_g1824218312_ _g1824518316_))
                                         (_g1824218312_ _g1824518316_))))
                                 (_g1824218312_ _g1824518316_)))))
                      (_g1824118344_ _L18227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1819118222_
                                                    _hd1819018219_)))
                                               (_g1818418208_
                                                _g1818618212_)))))
                                    (_g1818318348_ _rest18180_)))))))
                    _lp18177_)
                  _clauses17354_
                  '()))))
          (let ((_generate117360_
                 (lambda (_clause17362_ _body17364_ _E17365_)
                   ((letrec ((_recur17367_
                              (lambda (_rest17370_ _rest-targets17372_)
                                (let ((_g1737517387_
                                       (lambda (_g1737617383_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1737617383_))))
                                  (let ((_g1737417398_
                                         (lambda (_g1737617391_)
                                           ((lambda () _body17364_)))))
                                    (let ((_g1737317669_
                                           (lambda (_g1737617402_)
                                             (if (gx#stx-pair? _g1737617402_)
                                                 (let ((_e1737917405_
                                                        (gx#syntax-e
                                                         _g1737617402_)))
                                                   (let ((_hd1738017409_
                                                          (##car _e1737917405_))
                                                         (_tl1738117412_
                                                          (##cdr _e1737917405_)))
                                                     ((lambda (_L17415_
                                                               _L17417_)
                                                        (let ((_g1743417446_
                                                               (lambda (_g1743517442_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1743517442_))))
                  (let ((_g1743317665_
                         (lambda (_g1743517450_)
                           (if (gx#stx-pair? _g1743517450_)
                               (let ((_e1743817453_
                                      (gx#syntax-e _g1743517450_)))
                                 (let ((_hd1743917457_ (##car _e1743817453_))
                                       (_tl1744017460_ (##cdr _e1743817453_)))
                                   ((lambda (_L17463_ _L17465_)
                                      (let ((_g1747717485_
                                             (lambda (_g1747817481_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1747817481_))))
                                        (let ((_g1747617661_
                                               (lambda (_g1747817489_)
                                                 ((lambda (_L17492_)
                                                    (let ()
                                                      (let ((_g1750417521_
                                                             (lambda (_g1750517517_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1750517517_))))
                                                        (let ((_g1750317657_
                                                               (lambda (_g1750517525_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1750517525_)
                             (if (fx>= (gx#stx-length _g1750517525_) '0)
                                 (let ((_g30371_
                                        (gx#syntax-split-splice
                                         _g1750517525_
                                         '0)))
                                   (begin
                                     (let ((_g30372_ (values-count _g30371_)))
                                       (if (not (fx= _g30372_ 2))
                                           (error "Context expects 2 values"
                                                  _g30372_)))
                                     (let ((_target1750717528_
                                            (values-ref _g30371_ 0))
                                           (_tl1750917531_
                                            (values-ref _g30371_ 1)))
                                       (if (gx#stx-null? _tl1750917531_)
                                           (letrec ((_loop1751017534_
                                                     (lambda (_hd1750817538_
                                                              _var1751417541_)
                                                       (if (gx#stx-pair?
                                                            _hd1750817538_)
                                                           (let ((_e1751117544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1750817538_)))
                     (let ((_lp-hd1751217548_ (##car _e1751117544_))
                           (_lp-tl1751317551_ (##cdr _e1751117544_)))
                       (_loop1751017534_
                        _lp-tl1751317551_
                        (cons _lp-hd1751217548_ _var1751417541_))))
                   (let ((_var1751517554_ (reverse _var1751417541_)))
                     ((lambda (_L17558_)
                        (let ()
                          (let ((_g1757517583_
                                 (lambda (_g1757617579_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1757617579_))))
                            (let ((_g1757417653_
                                   (lambda (_g1757617587_)
                                     ((lambda (_L17590_)
                                        (let ()
                                          (let ((_g1760317611_
                                                 (lambda (_g1760417607_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1760417607_))))
                                            (let ((_g1760217641_
                                                   (lambda (_g1760417615_)
                                                     ((lambda (_L17618_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L17492_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1763217635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1763317638_)
                                 (cons _g1763217635_ _g1763317638_))
                               '()
                               _L17558_))
                      (cons _L17590_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17618_ '()))))))
              _g1760417615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1760217641_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx17351_
                                                _L17465_
                                                _L17417_
                                                (cons _L17492_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1764417647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1764517650_)
                         (cons _g1764417647_ _g1764517650_))
                       '()
                       _L17558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E17365_))))))
                                      _g1757617587_))))
                              (_g1757417653_
                               (_recur17367_ _L17415_ _L17463_))))))
                      _var1751517554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1751017534_
                                              _target1750717528_
                                              '()))
                                           (_g1750417521_ _g1750517525_)))))
                                 (_g1750417521_ _g1750517525_))
                             (_g1750417521_ _g1750517525_)))))
                  (_g1750317657_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L17417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1747817489_))))
                                          (_g1747617661_ (gx#genident 'K)))))
                                    _tl1744017460_
                                    _hd1743917457_)))
                               (_g1743417446_ _g1743517450_)))))
                    (_g1743317665_ _rest-targets17372_))))
              _tl1738117412_
              _hd1738017409_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1737417398_
                                                  _g1737617402_)))))
                                      (_g1737317669_ _rest17370_)))))))
                      _recur17367_)
                    _clause17362_
                    _tgt-lst17353_))))
            (letrec ((_generate-clauses17359_
                      (lambda (_rest17673_ _E17675_)
                        (let ((_g1767917695_
                               (lambda (_g1768017691_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1768017691_))))
                          (let ((_g1767817706_
                                 (lambda (_g1768017699_)
                                   ((lambda () _E17675_)))))
                            (let ((_g1767717882_
                                   (lambda (_g1768017710_)
                                     (if (gx#stx-pair? _g1768017710_)
                                         (let ((_e1768717713_
                                                (gx#syntax-e _g1768017710_)))
                                           (let ((_hd1768817717_
                                                  (##car _e1768717713_))
                                                 (_tl1768917720_
                                                  (##cdr _e1768717713_)))
                                             ((lambda (_L17723_ _L17725_)
                                                (let ((_g1773817757_
                                                       (lambda (_g1773917753_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1773917753_))))
                                                  (let ((_g1773717878_
                                                         (lambda (_g1773917761_)
                                                           (if (gx#stx-pair?
                                                                _g1773917761_)
                                                               (let ((_e1774317764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1773917761_)))
                         (let ((_hd1774417768_ (##car _e1774317764_))
                               (_tl1774517771_ (##cdr _e1774317764_)))
                           (if (gx#stx-pair? _tl1774517771_)
                               (let ((_e1774617774_
                                      (gx#syntax-e _tl1774517771_)))
                                 (let ((_hd1774717778_ (##car _e1774617774_))
                                       (_tl1774817781_ (##cdr _e1774617774_)))
                                   (if (gx#stx-pair? _tl1774817781_)
                                       (let ((_e1774917784_
                                              (gx#syntax-e _tl1774817781_)))
                                         (let ((_hd1775017788_
                                                (##car _e1774917784_))
                                               (_tl1775117791_
                                                (##cdr _e1774917784_)))
                                           (if (gx#stx-null? _tl1775117791_)
                                               ((lambda (_L17794_
                                                         _L17796_
                                                         _L17797_)
                                                  (let ((_g1781417829_
                                                         (lambda (_g1781517825_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1781517825_))))
                                                    (let ((_g1781317874_
                                                           (lambda (_g1781517833_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1781517833_)
                         (let ((_e1781817836_ (gx#syntax-e _g1781517833_)))
                           (let ((_hd1781917840_ (##car _e1781817836_))
                                 (_tl1782017843_ (##cdr _e1781817836_)))
                             (if (gx#stx-pair? _tl1782017843_)
                                 (let ((_e1782117846_
                                        (gx#syntax-e _tl1782017843_)))
                                   (let ((_hd1782217850_ (##car _e1782117846_))
                                         (_tl1782317853_
                                          (##cdr _e1782117846_)))
                                     (if (gx#stx-null? _tl1782317853_)
                                         ((lambda (_L17856_ _L17858_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17858_ '())))
                                    '()))
                        '())
                  (cons _L17856_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1782217850_
                                          _hd1781917840_)
                                         (_g1781417829_ _g1781517833_))))
                                 (_g1781417829_ _g1781517833_))))
                         (_g1781417829_ _g1781517833_)))))
              (_g1781317874_
               (list (if (gx#stx-e _L17796_)
                         (_generate117360_ _L17796_ _L17794_ _E17675_)
                         _L17794_)
                     (_generate-clauses17359_
                      _L17723_
                      (cons _L17797_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1775017788_
                                                _hd1774717778_
                                                _hd1774417768_)
                                               (_g1773817757_ _g1773917761_))))
                                       (_g1773817757_ _g1773917761_))))
                               (_g1773817757_ _g1773917761_))))
                       (_g1773817757_ _g1773917761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1773717878_ _L17725_))))
                                              _tl1768917720_
                                              _hd1768817717_)))
                                         (_g1767817706_ _g1768017710_)))))
                              (let ((_g1767617987_
                                     (lambda (_g1768017886_)
                                       (if (gx#stx-pair? _g1768017886_)
                                           (let ((_e1768217889_
                                                  (gx#syntax-e _g1768017886_)))
                                             (let ((_hd1768317893_
                                                    (##car _e1768217889_))
                                                   (_tl1768417896_
                                                    (##cdr _e1768217889_)))
                                               (if (gx#stx-null?
                                                    _tl1768417896_)
                                                   ((lambda (_L17899_)
                                                      (let ((_g1791017928_
                                                             (lambda (_g1791117924_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1791117924_))))
                                                        (let ((_g1790917983_
                                                               (lambda (_g1791117932_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1791117932_)
                             (let ((_e1791417935_ (gx#syntax-e _g1791117932_)))
                               (let ((_hd1791517939_ (##car _e1791417935_))
                                     (_tl1791617942_ (##cdr _e1791417935_)))
                                 (if (gx#stx-pair? _tl1791617942_)
                                     (let ((_e1791717945_
                                            (gx#syntax-e _tl1791617942_)))
                                       (let ((_hd1791817949_
                                              (##car _e1791717945_))
                                             (_tl1791917952_
                                              (##cdr _e1791717945_)))
                                         (if (gx#stx-pair? _tl1791917952_)
                                             (let ((_e1792017955_
                                                    (gx#syntax-e
                                                     _tl1791917952_)))
                                               (let ((_hd1792117959_
                                                      (##car _e1792017955_))
                                                     (_tl1792217962_
                                                      (##cdr _e1792017955_)))
                                                 (if (gx#stx-null?
                                                      _tl1792217962_)
                                                     ((lambda (_L17965_
                                                               _L17967_)
                                                        (if (gx#stx-e _L17967_)
                                                            (_generate117360_
                                                             _L17967_
                                                             _L17965_
                                                             _E17675_)
                                                            _L17965_))
                                                      _hd1792117959_
                                                      _hd1791817949_)
                                                     (_g1791017928_
                                                      _g1791117932_))))
                                             (_g1791017928_ _g1791117932_))))
                                     (_g1791017928_ _g1791117932_))))
                             (_g1791017928_ _g1791117932_)))))
                  (_g1790917983_ _L17899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1768317893_)
                                                   (_g1767717882_
                                                    _g1768017886_))))
                                           (_g1767717882_ _g1768017886_)))))
                                (_g1767617987_ _rest17673_))))))))
              (let ((_generate-body17358_
                     (lambda (_body17991_)
                       (let ((_g1799418002_
                              (lambda (_g1799517998_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1799517998_))))
                         (let ((_g1799318170_
                                (lambda (_g1799518006_)
                                  ((lambda (_L18009_)
                                     (let ()
                                       (let ((_g1802118038_
                                              (lambda (_g1802218034_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1802218034_))))
                                         (let ((_g1802018166_
                                                (lambda (_g1802218042_)
                                                  (if (gx#stx-pair/null?
                                                       _g1802218042_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1802218042_)
                        '0)
                  (let ((_g30369_ (gx#syntax-split-splice _g1802218042_ '0)))
                    (begin
                      (let ((_g30370_ (values-count _g30369_)))
                        (if (not (fx= _g30370_ 2))
                            (error "Context expects 2 values" _g30370_)))
                      (let ((_target1802418045_ (values-ref _g30369_ 0))
                            (_tl1802618048_ (values-ref _g30369_ 1)))
                        (if (gx#stx-null? _tl1802618048_)
                            (letrec ((_loop1802718051_
                                      (lambda (_hd1802518055_
                                               _target1803118058_)
                                        (if (gx#stx-pair? _hd1802518055_)
                                            (let ((_e1802818061_
                                                   (gx#syntax-e
                                                    _hd1802518055_)))
                                              (let ((_lp-hd1802918065_
                                                     (##car _e1802818061_))
                                                    (_lp-tl1803018068_
                                                     (##cdr _e1802818061_)))
                                                (_loop1802718051_
                                                 _lp-tl1803018068_
                                                 (cons _lp-hd1802918065_
                                                       _target1803118058_))))
                                            (let ((_target1803218071_
                                                   (reverse _target1803118058_)))
                                              ((lambda (_L18075_)
                                                 (let ()
                                                   (let ((_g1809218100_
                                                          (lambda (_g1809318096_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1809318096_))))
                                                     (let ((_g1809118154_
                                                            (lambda (_g1809318104_)
                                                              ((lambda (_L18107_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1812018128_
                                  (lambda (_g1812118124_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1812118124_))))
                             (let ((_g1811918150_
                                    (lambda (_g1812118132_)
                                      ((lambda (_L18135_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L18009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L18107_ '()))
                       '())
                 (cons _L18135_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1812118132_))))
                               (_g1811918150_
                                (_generate-clauses17359_
                                 _body17991_
                                 (cons _L18009_ '())))))))
                       _g1809318104_))))
               (_g1809118154_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1815718160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1815818163_)
                  (cons _g1815718160_ _g1815818163_))
                '()
                _L18075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx17351_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1803218071_))))))
                              (_loop1802718051_ _target1802418045_ '()))
                            (_g1802118038_ _g1802218042_)))))
                  (_g1802118038_ _g1802218042_))
              (_g1802118038_ _g1802218042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1802018166_ _tgt-lst17353_)))))
                                   _g1799518006_))))
                           (_g1799318170_ (gx#genident 'E)))))))
                (_generate-body17358_
                 (_parse-body17356_ (gx#stx-length _tgt-lst17353_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx17253_ _tgt17255_ _clauses17256_)
        (let ((_reclause17258_
               (lambda (_clause17261_)
                 (let ((_g1726617281_
                        (lambda (_g1726717277_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1726717277_))))
                   (let ((_g1726517292_
                          (lambda (_g1726717285_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx17253_
                                _clause17261_))))))
                     (let ((_g1726417326_
                            (lambda (_g1726717296_)
                              (if (gx#stx-pair? _g1726717296_)
                                  (let ((_e1727317299_
                                         (gx#syntax-e _g1726717296_)))
                                    (let ((_hd1727417303_
                                           (##car _e1727317299_))
                                          (_tl1727517306_
                                           (##cdr _e1727317299_)))
                                      ((lambda (_L17309_ _L17311_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L17311_ '()) _L17309_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1727517306_
                                       _hd1727417303_)))
                                  (_g1726517292_ _g1726717296_)))))
                       (let ((_g1726317347_
                              (lambda (_g1726717330_)
                                (if (gx#stx-pair? _g1726717330_)
                                    (let ((_e1726817333_
                                           (gx#syntax-e _g1726717330_)))
                                      (let ((_hd1726917337_
                                             (##car _e1726817333_))
                                            (_tl1727017340_
                                             (##cdr _e1726817333_)))
                                        (if (gx#identifier? _hd1726917337_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g30374_|
                                                 _hd1726917337_)
                                                ((lambda () _clause17261_))
                                                (_g1726417326_ _g1726717330_))
                                            (_g1726417326_ _g1726717330_))))
                                    (_g1726417326_ _g1726717330_)))))
                         (_g1726317347_ _clause17261_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx17253_
           (cons _tgt17255_ '())
           (gx#stx-map _reclause17258_ _clauses17256_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx24460_)
        (let ((_g2446524494_
               (lambda (_g2446624490_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2446624490_))))
          (let ((_g2446424602_
                 (lambda (_g2446624498_)
                   (if (gx#stx-pair? _g2446624498_)
                       (let ((_e2448324501_ (gx#syntax-e _g2446624498_)))
                         (let ((_hd2448424505_ (##car _e2448324501_))
                               (_tl2448524508_ (##cdr _e2448324501_)))
                           (if (gx#stx-pair? _tl2448524508_)
                               (let ((_e2448624511_
                                      (gx#syntax-e _tl2448524508_)))
                                 (let ((_hd2448724515_ (##car _e2448624511_))
                                       (_tl2448824518_ (##cdr _e2448624511_)))
                                   ((lambda (_L24521_ _L24523_)
                                      (if (gx#stx-list? _L24521_)
                                          (let ((_g2453724545_
                                                 (lambda (_g2453824541_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2453824541_))))
                                            (let ((_g2453624598_
                                                   (lambda (_g2453824549_)
                                                     ((lambda (_L24552_)
                                                        (let ()
                                                          (let ((_g2456424572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2456524568_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2456524568_))))
                    (let ((_g2456324594_
                           (lambda (_g2456524576_)
                             ((lambda (_L24579_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24552_
                                                            (cons _L24523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L24579_ '()))))))
                              _g2456524576_))))
                      (_g2456324594_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx24460_
                        _L24552_
                        _L24521_))))))
              _g2453824549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2453624598_
                                               (gx#genident _L24523_))))
                                          (_g2446524494_ _g2446624498_)))
                                    _tl2448824518_
                                    _hd2448724515_)))
                               (_g2446524494_ _g2446624498_))))
                       (_g2446524494_ _g2446624498_)))))
            (let ((_g2446324707_
                   (lambda (_g2446624606_)
                     (if (gx#stx-pair? _g2446624606_)
                         (let ((_e2447524609_ (gx#syntax-e _g2446624606_)))
                           (let ((_hd2447624613_ (##car _e2447524609_))
                                 (_tl2447724616_ (##cdr _e2447524609_)))
                             (if (gx#stx-pair? _tl2447724616_)
                                 (let ((_e2447824619_
                                        (gx#syntax-e _tl2447724616_)))
                                   (let ((_hd2447924623_ (##car _e2447824619_))
                                         (_tl2448024626_
                                          (##cdr _e2447824619_)))
                                     (if (gx#identifier? _hd2447924623_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g30375_|
                                              _hd2447924623_)
                                             ((lambda (_L24629_)
                                                (if (gx#stx-list? _L24629_)
                                                    (let ((_g2464224650_
                                                           (lambda (_g2464324646_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2464324646_))))
                                                      (let ((_g2464124703_
                                                             (lambda (_g2464324654_)
                                                               ((lambda (_L24657_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2466924677_
                                   (lambda (_g2467024673_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2467024673_))))
                              (let ((_g2466824699_
                                     (lambda (_g2467024681_)
                                       ((lambda (_L24684_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L24657_
                                                          (cons _L24684_
                                                                '()))))))
                                        _g2467024681_))))
                                (_g2466824699_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L24657_ _L24629_))
                                  (gx#stx-source _stx24460_)))))))
                        _g2464324654_))))
                (_g2464124703_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2446424602_
                                                     _g2446624606_)))
                                              _tl2448024626_)
                                             (_g2446424602_ _g2446624606_))
                                         (_g2446424602_ _g2446624606_))))
                                 (_g2446424602_ _g2446624606_))))
                         (_g2446424602_ _g2446624606_)))))
              (let ((_g2446224812_
                     (lambda (_g2446624711_)
                       (if (gx#stx-pair? _g2446624711_)
                           (let ((_e2446824714_ (gx#syntax-e _g2446624711_)))
                             (let ((_hd2446924718_ (##car _e2446824714_))
                                   (_tl2447024721_ (##cdr _e2446824714_)))
                               (if (gx#stx-pair? _tl2447024721_)
                                   (let ((_e2447124724_
                                          (gx#syntax-e _tl2447024721_)))
                                     (let ((_hd2447224728_
                                            (##car _e2447124724_))
                                           (_tl2447324731_
                                            (##cdr _e2447124724_)))
                                       (if (gx#identifier? _hd2447224728_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g30376_|
                                                _hd2447224728_)
                                               ((lambda (_L24734_)
                                                  (if (gx#stx-list? _L24734_)
                                                      (let ((_g2474724755_
                                                             (lambda (_g2474824751_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2474824751_))))
                                                        (let ((_g2474624808_
                                                               (lambda (_g2474824759_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L24762_)
                            (let ()
                              (let ((_g2477424782_
                                     (lambda (_g2477524778_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2477524778_))))
                                (let ((_g2477324804_
                                       (lambda (_g2477524786_)
                                         ((lambda (_L24789_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L24762_ '())
                                                            (cons _L24789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2477524786_))))
                                  (_g2477324804_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L24762_ _L24734_))
                                    (gx#stx-source _stx24460_)))))))
                          _g2474824759_))))
                  (_g2474624808_ (gx#genident 'e))))
              (_g2446324707_ _g2446624711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2447324731_)
                                               (_g2446324707_ _g2446624711_))
                                           (_g2446324707_ _g2446624711_))))
                                   (_g2446324707_ _g2446624711_))))
                           (_g2446324707_ _g2446624711_)))))
                (_g2446224812_ _stx24460_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24816_)
        (let ((_g2481924843_
               (lambda (_g2482024839_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2482024839_))))
          (let ((_g2481825055_
                 (lambda (_g2482024847_)
                   (if (gx#stx-pair? _g2482024847_)
                       (let ((_e2482324850_ (gx#syntax-e _g2482024847_)))
                         (let ((_hd2482424854_ (##car _e2482324850_))
                               (_tl2482524857_ (##cdr _e2482324850_)))
                           (if (gx#stx-pair? _tl2482524857_)
                               (let ((_e2482624860_
                                      (gx#syntax-e _tl2482524857_)))
                                 (let ((_hd2482724864_ (##car _e2482624860_))
                                       (_tl2482824867_ (##cdr _e2482624860_)))
                                   (if (gx#stx-pair/null? _hd2482724864_)
                                       (if (fx>= (gx#stx-length _hd2482724864_)
                                                 '0)
                                           (let ((_g30377_
                                                  (gx#syntax-split-splice
                                                   _hd2482724864_
                                                   '0)))
                                             (begin
                                               (let ((_g30378_
                                                      (values-count _g30377_)))
                                                 (if (not (fx= _g30378_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30378_)))
                                               (let ((_target2482924870_
                                                      (values-ref _g30377_ 0))
                                                     (_tl2483124873_
                                                      (values-ref _g30377_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2483124873_)
                                                     (letrec ((_loop2483224876_
                                                               (lambda (_hd2483024880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2483624883_)
                         (if (gx#stx-pair? _hd2483024880_)
                             (let ((_e2483324886_
                                    (gx#syntax-e _hd2483024880_)))
                               (let ((_lp-hd2483424890_ (##car _e2483324886_))
                                     (_lp-tl2483524893_ (##cdr _e2483324886_)))
                                 (_loop2483224876_
                                  _lp-tl2483524893_
                                  (cons _lp-hd2483424890_ _e2483624883_))))
                             (let ((_e2483724896_ (reverse _e2483624883_)))
                               ((lambda (_L24900_ _L24902_)
                                  (if (gx#stx-list? _L24900_)
                                      (let ((_g2492024937_
                                             (lambda (_g2492124933_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2492124933_))))
                                        (let ((_g2491925043_
                                               (lambda (_g2492124941_)
                                                 (if (gx#stx-pair/null?
                                                      _g2492124941_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2492124941_)
                                                               '0)
                                                         (let ((_g30379_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2492124941_
                         '0)))
                   (begin
                     (let ((_g30380_ (values-count _g30379_)))
                       (if (not (fx= _g30380_ 2))
                           (error "Context expects 2 values" _g30380_)))
                     (let ((_target2492324944_ (values-ref _g30379_ 0))
                           (_tl2492524947_ (values-ref _g30379_ 1)))
                       (if (gx#stx-null? _tl2492524947_)
                           (letrec ((_loop2492624950_
                                     (lambda (_hd2492424954_ _$e2493024957_)
                                       (if (gx#stx-pair? _hd2492424954_)
                                           (let ((_e2492724960_
                                                  (gx#syntax-e
                                                   _hd2492424954_)))
                                             (let ((_lp-hd2492824964_
                                                    (##car _e2492724960_))
                                                   (_lp-tl2492924967_
                                                    (##cdr _e2492724960_)))
                                               (_loop2492624950_
                                                _lp-tl2492924967_
                                                (cons _lp-hd2492824964_
                                                      _$e2493024957_))))
                                           (let ((_$e2493124970_
                                                  (reverse _$e2493024957_)))
                                             ((lambda (_L24974_)
                                                (let ()
                                                  (let ((_g2499024998_
                                                         (lambda (_g2499124994_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2499124994_))))
                                                    (let ((_g2498925031_
                                                           (lambda (_g2499125002_)
                                                             ((lambda (_L25005_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24902_
                                           _L24974_)
                                          (foldr (lambda (_g2501925023_
                                                          _g2502025026_
                                                          _g2502125028_)
                                                   (cons (cons _g2502025026_
                                                               (cons _g2501925023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2502125028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24902_
                                                 _L24974_))
                                        (cons _L25005_ '()))))))
                      _g2499125002_))))
              (_g2498925031_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24816_
                (begin
                  '#!void
                  (foldr (lambda (_g2503425037_ _g2503525040_)
                           (cons _g2503425037_ _g2503525040_))
                         '()
                         _L24974_))
                _L24900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2493124970_))))))
                             (_loop2492624950_ _target2492324944_ '()))
                           (_g2492024937_ _g2492124941_)))))
                 (_g2492024937_ _g2492124941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2492024937_
                                                      _g2492124941_)))))
                                          (_g2491925043_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2504625049_
                                                              _g2504725052_)
                                                       (cons _g2504625049_
                                                             _g2504725052_))
                                                     '()
                                                     _L24902_))))))
                                      (_g2481924843_ _g2482024847_)))
                                _tl2482824867_
                                _e2483724896_))))))
               (_loop2483224876_ _target2482924870_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2481924843_
                                                      _g2482024847_)))))
                                           (_g2481924843_ _g2482024847_))
                                       (_g2481924843_ _g2482024847_))))
                               (_g2481924843_ _g2482024847_))))
                       (_g2481924843_ _g2482024847_)))))
            (_g2481825055_ _stx24816_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx25061_)
        (let ((_g2506725150_
               (lambda (_g2506825146_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2506825146_))))
          (let ((_g2506625311_
                 (lambda (_g2506825154_)
                   (if (gx#stx-pair? _g2506825154_)
                       (let ((_e2511325157_ (gx#syntax-e _g2506825154_)))
                         (let ((_hd2511425161_ (##car _e2511325157_))
                               (_tl2511525164_ (##cdr _e2511325157_)))
                           (if (gx#stx-pair? _tl2511525164_)
                               (let ((_e2511625167_
                                      (gx#syntax-e _tl2511525164_)))
                                 (let ((_hd2511725171_ (##car _e2511625167_))
                                       (_tl2511825174_ (##cdr _e2511625167_)))
                                   (if (gx#stx-pair/null? _hd2511725171_)
                                       (if (fx>= (gx#stx-length _hd2511725171_)
                                                 '0)
                                           (let ((_g30381_
                                                  (gx#syntax-split-splice
                                                   _hd2511725171_
                                                   '0)))
                                             (begin
                                               (let ((_g30382_
                                                      (values-count _g30381_)))
                                                 (if (not (fx= _g30382_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30382_)))
                                               (let ((_target2511925177_
                                                      (values-ref _g30381_ 0))
                                                     (_tl2512125180_
                                                      (values-ref _g30381_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2512125180_)
                                                     (letrec ((_loop2512225183_
                                                               (lambda (_hd2512025187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2512625190_
                                _hd2512725192_)
                         (if (gx#stx-pair? _hd2512025187_)
                             (let ((_e2512325195_
                                    (gx#syntax-e _hd2512025187_)))
                               (let ((_lp-hd2512425199_ (##car _e2512325195_))
                                     (_lp-tl2512525202_ (##cdr _e2512325195_)))
                                 (if (gx#stx-pair? _lp-hd2512425199_)
                                     (let ((_e2513025205_
                                            (gx#syntax-e _lp-hd2512425199_)))
                                       (let ((_hd2513125209_
                                              (##car _e2513025205_))
                                             (_tl2513225212_
                                              (##cdr _e2513025205_)))
                                         (if (gx#stx-pair? _tl2513225212_)
                                             (let ((_e2513325215_
                                                    (gx#syntax-e
                                                     _tl2513225212_)))
                                               (let ((_hd2513425219_
                                                      (##car _e2513325215_))
                                                     (_tl2513525222_
                                                      (##cdr _e2513325215_)))
                                                 (if (gx#stx-null?
                                                      _tl2513525222_)
                                                     (_loop2512225183_
                                                      _lp-tl2512525202_
                                                      (cons _hd2513425219_
                                                            _expr2512625190_)
                                                      (cons _hd2513125209_
                                                            _hd2512725192_))
                                                     (_g2506725150_
                                                      _g2506825154_))))
                                             (_g2506725150_ _g2506825154_))))
                                     (_g2506725150_ _g2506825154_))))
                             (let ((_expr2512825225_
                                    (reverse _expr2512625190_))
                                   (_hd2512925228_ (reverse _hd2512725192_)))
                               (if (gx#stx-pair/null? _tl2511825174_)
                                   (if (fx>= (gx#stx-length _tl2511825174_) '0)
                                       (let ((_g30383_
                                              (gx#syntax-split-splice
                                               _tl2511825174_
                                               '0)))
                                         (begin
                                           (let ((_g30384_
                                                  (values-count _g30383_)))
                                             (if (not (fx= _g30384_ 2))
                                                 (error "Context expects 2 values"
                                                        _g30384_)))
                                           (let ((_target2513625231_
                                                  (values-ref _g30383_ 0))
                                                 (_tl2513825234_
                                                  (values-ref _g30383_ 1)))
                                             (if (gx#stx-null? _tl2513825234_)
                                                 (letrec ((_loop2513925237_
                                                           (lambda (_hd2513725241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2514325244_)
                     (if (gx#stx-pair? _hd2513725241_)
                         (let ((_e2514025247_ (gx#syntax-e _hd2513725241_)))
                           (let ((_lp-hd2514125251_ (##car _e2514025247_))
                                 (_lp-tl2514225254_ (##cdr _e2514025247_)))
                             (_loop2513925237_
                              _lp-tl2514225254_
                              (cons _lp-hd2514125251_ _body2514325244_))))
                         (let ((_body2514425257_ (reverse _body2514325244_)))
                           ((lambda (_L25261_ _L25263_ _L25264_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2528625293_
                                                            _g2528725296_)
                                                     (cons _g2528625293_
                                                           _g2528725296_))
                                                   '()
                                                   _L25263_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2528825299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2528925302_)
                         (cons _g2528825299_ _g2528925302_))
                       '()
                       _L25264_))
              (begin
                '#!void
                (foldr (lambda (_g2529025305_ _g2529125308_)
                         (cons _g2529025305_ _g2529125308_))
                       '()
                       _L25261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2514425257_
                            _expr2512825225_
                            _hd2512925228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2513925237_
                                                    _target2513625231_
                                                    '()))
                                                 (_g2506725150_
                                                  _g2506825154_)))))
                                       (_g2506725150_ _g2506825154_))
                                   (_g2506725150_ _g2506825154_)))))))
               (_loop2512225183_ _target2511925177_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2506725150_
                                                      _g2506825154_)))))
                                           (_g2506725150_ _g2506825154_))
                                       (_g2506725150_ _g2506825154_))))
                               (_g2506725150_ _g2506825154_))))
                       (_g2506725150_ _g2506825154_)))))
            (let ((_g2506525423_
                   (lambda (_g2506825315_)
                     (if (gx#stx-pair? _g2506825315_)
                         (let ((_e2508925318_ (gx#syntax-e _g2506825315_)))
                           (let ((_hd2509025322_ (##car _e2508925318_))
                                 (_tl2509125325_ (##cdr _e2508925318_)))
                             (if (gx#stx-pair? _tl2509125325_)
                                 (let ((_e2509225328_
                                        (gx#syntax-e _tl2509125325_)))
                                   (let ((_hd2509325332_ (##car _e2509225328_))
                                         (_tl2509425335_
                                          (##cdr _e2509225328_)))
                                     (if (gx#stx-pair? _hd2509325332_)
                                         (let ((_e2509525338_
                                                (gx#syntax-e _hd2509325332_)))
                                           (let ((_hd2509625342_
                                                  (##car _e2509525338_))
                                                 (_tl2509725345_
                                                  (##cdr _e2509525338_)))
                                             (if (gx#stx-pair? _tl2509725345_)
                                                 (let ((_e2509825348_
                                                        (gx#syntax-e
                                                         _tl2509725345_)))
                                                   (let ((_hd2509925352_
                                                          (##car _e2509825348_))
                                                         (_tl2510025355_
                                                          (##cdr _e2509825348_)))
                                                     (if (gx#stx-null?
                                                          _tl2510025355_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2509425335_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2509425335_)
                               '0)
                         (let ((_g30385_
                                (gx#syntax-split-splice _tl2509425335_ '0)))
                           (begin
                             (let ((_g30386_ (values-count _g30385_)))
                               (if (not (fx= _g30386_ 2))
                                   (error "Context expects 2 values"
                                          _g30386_)))
                             (let ((_target2510125358_ (values-ref _g30385_ 0))
                                   (_tl2510325361_ (values-ref _g30385_ 1)))
                               (if (gx#stx-null? _tl2510325361_)
                                   (letrec ((_loop2510425364_
                                             (lambda (_hd2510225368_
                                                      _body2510825371_)
                                               (if (gx#stx-pair?
                                                    _hd2510225368_)
                                                   (let ((_e2510525374_
                                                          (gx#syntax-e
                                                           _hd2510225368_)))
                                                     (let ((_lp-hd2510625378_
                                                            (##car _e2510525374_))
                                                           (_lp-tl2510725381_
                                                            (##cdr _e2510525374_)))
                                                       (_loop2510425364_
                                                        _lp-tl2510725381_
                                                        (cons _lp-hd2510625378_
                                                              _body2510825371_))))
                                                   (let ((_body2510925384_
                                                          (reverse _body2510825371_)))
                                                     ((lambda (_L25388_
                                                               _L25390_
                                                               _L25391_
                                                               _L25392_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L25391_)
                                                            (cons _L25392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L25391_ (cons _L25390_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2541425417_ _g2541525420_)
                                           (cons _g2541425417_ _g2541525420_))
                                         '()
                                         _L25388_))))
                    (_g2506625311_ _g2506825315_)))
              _body2510925384_
              _hd2509925352_
              _hd2509625342_
              _hd2509025322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2510425364_ _target2510125358_ '()))
                                   (_g2506625311_ _g2506825315_)))))
                         (_g2506625311_ _g2506825315_))
                     (_g2506625311_ _g2506825315_))
                 (_g2506625311_ _g2506825315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2506625311_
                                                  _g2506825315_))))
                                         (_g2506625311_ _g2506825315_))))
                                 (_g2506625311_ _g2506825315_))))
                         (_g2506625311_ _g2506825315_)))))
              (let ((_g2506425505_
                     (lambda (_g2506825427_)
                       (if (gx#stx-pair? _g2506825427_)
                           (let ((_e2507025430_ (gx#syntax-e _g2506825427_)))
                             (let ((_hd2507125434_ (##car _e2507025430_))
                                   (_tl2507225437_ (##cdr _e2507025430_)))
                               (if (gx#stx-pair? _tl2507225437_)
                                   (let ((_e2507325440_
                                          (gx#syntax-e _tl2507225437_)))
                                     (let ((_hd2507425444_
                                            (##car _e2507325440_))
                                           (_tl2507525447_
                                            (##cdr _e2507325440_)))
                                       (if (gx#stx-null? _hd2507425444_)
                                           (if (gx#stx-pair/null?
                                                _tl2507525447_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2507525447_)
                                                         '0)
                                                   (let ((_g30387_
                                                          (gx#syntax-split-splice
                                                           _tl2507525447_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30388_
                                                              (values-count
                                                               _g30387_)))
                                                         (if (not (fx= _g30388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30388_)))
               (let ((_target2507625450_ (values-ref _g30387_ 0))
                     (_tl2507825453_ (values-ref _g30387_ 1)))
                 (if (gx#stx-null? _tl2507825453_)
                     (letrec ((_loop2507925456_
                               (lambda (_hd2507725460_ _body2508325463_)
                                 (if (gx#stx-pair? _hd2507725460_)
                                     (let ((_e2508025466_
                                            (gx#syntax-e _hd2507725460_)))
                                       (let ((_lp-hd2508125470_
                                              (##car _e2508025466_))
                                             (_lp-tl2508225473_
                                              (##cdr _e2508025466_)))
                                         (_loop2507925456_
                                          _lp-tl2508225473_
                                          (cons _lp-hd2508125470_
                                                _body2508325463_))))
                                     (let ((_body2508425476_
                                            (reverse _body2508325463_)))
                                       ((lambda (_L25480_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2549625499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2549725502_)
                         (cons _g2549625499_ _g2549725502_))
                       '()
                       _L25480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2508425476_))))))
                       (_loop2507925456_ _target2507625450_ '()))
                     (_g2506525423_ _g2506825427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2506525423_
                                                    _g2506825427_))
                                               (_g2506525423_ _g2506825427_))
                                           (_g2506525423_ _g2506825427_))))
                                   (_g2506525423_ _g2506825427_))))
                           (_g2506525423_ _g2506825427_)))))
                (_g2506425505_ _$stx25061_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx25513_)
        (let ((_g2551825570_
               (lambda (_g2551925566_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2551925566_))))
          (let ((_g2551725653_
                 (lambda (_g2551925574_)
                   (if (gx#stx-pair? _g2551925574_)
                       (let ((_e2555025577_ (gx#syntax-e _g2551925574_)))
                         (let ((_hd2555125581_ (##car _e2555025577_))
                               (_tl2555225584_ (##cdr _e2555025577_)))
                           (if (gx#stx-pair? _tl2555225584_)
                               (let ((_e2555325587_
                                      (gx#syntax-e _tl2555225584_)))
                                 (let ((_hd2555425591_ (##car _e2555325587_))
                                       (_tl2555525594_ (##cdr _e2555325587_)))
                                   (if (gx#stx-null? _hd2555425591_)
                                       (if (gx#stx-pair/null? _tl2555525594_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2555525594_)
                                                     '0)
                                               (let ((_g30389_
                                                      (gx#syntax-split-splice
                                                       _tl2555525594_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30390_
                                                          (values-count
                                                           _g30389_)))
                                                     (if (not (fx= _g30390_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30390_)))
                                                   (let ((_target2555625597_
                                                          (values-ref
                                                           _g30389_
                                                           0))
                                                         (_tl2555825600_
                                                          (values-ref
                                                           _g30389_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2555825600_)
                                                         (letrec ((_loop2555925603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2555725607_ _body2556325610_)
                             (if (gx#stx-pair? _hd2555725607_)
                                 (let ((_e2556025613_
                                        (gx#syntax-e _hd2555725607_)))
                                   (let ((_lp-hd2556125617_
                                          (##car _e2556025613_))
                                         (_lp-tl2556225620_
                                          (##cdr _e2556025613_)))
                                     (_loop2555925603_
                                      _lp-tl2556225620_
                                      (cons _lp-hd2556125617_
                                            _body2556325610_))))
                                 (let ((_body2556425623_
                                        (reverse _body2556325610_)))
                                   ((lambda (_L25627_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2564425647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2564525650_)
                     (cons _g2564425647_ _g2564525650_))
                   '()
                   _L25627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2556425623_))))))
                   (_loop2555925603_ _target2555625597_ '()))
                 (_g2551825570_ _g2551925574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2551825570_ _g2551925574_))
                                           (_g2551825570_ _g2551925574_))
                                       (_g2551825570_ _g2551925574_))))
                               (_g2551825570_ _g2551925574_))))
                       (_g2551825570_ _g2551925574_)))))
            (let ((_g2551625779_
                   (lambda (_g2551925657_)
                     (if (gx#stx-pair? _g2551925657_)
                         (let ((_e2552525660_ (gx#syntax-e _g2551925657_)))
                           (let ((_hd2552625664_ (##car _e2552525660_))
                                 (_tl2552725667_ (##cdr _e2552525660_)))
                             (if (gx#stx-pair? _tl2552725667_)
                                 (let ((_e2552825670_
                                        (gx#syntax-e _tl2552725667_)))
                                   (let ((_hd2552925674_ (##car _e2552825670_))
                                         (_tl2553025677_
                                          (##cdr _e2552825670_)))
                                     (if (gx#stx-pair? _hd2552925674_)
                                         (let ((_e2553125680_
                                                (gx#syntax-e _hd2552925674_)))
                                           (let ((_hd2553225684_
                                                  (##car _e2553125680_))
                                                 (_tl2553325687_
                                                  (##cdr _e2553125680_)))
                                             (if (gx#stx-pair? _hd2553225684_)
                                                 (let ((_e2553425690_
                                                        (gx#syntax-e
                                                         _hd2553225684_)))
                                                   (let ((_hd2553525694_
                                                          (##car _e2553425690_))
                                                         (_tl2553625697_
                                                          (##cdr _e2553425690_)))
                                                     (if (gx#stx-pair?
                                                          _tl2553625697_)
                                                         (let ((_e2553725700_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2553625697_)))
                   (let ((_hd2553825704_ (##car _e2553725700_))
                         (_tl2553925707_ (##cdr _e2553725700_)))
                     (if (gx#stx-null? _tl2553925707_)
                         (if (gx#stx-pair/null? _tl2553025677_)
                             (if (fx>= (gx#stx-length _tl2553025677_) '0)
                                 (let ((_g30391_
                                        (gx#syntax-split-splice
                                         _tl2553025677_
                                         '0)))
                                   (begin
                                     (let ((_g30392_ (values-count _g30391_)))
                                       (if (not (fx= _g30392_ 2))
                                           (error "Context expects 2 values"
                                                  _g30392_)))
                                     (let ((_target2554025710_
                                            (values-ref _g30391_ 0))
                                           (_tl2554225713_
                                            (values-ref _g30391_ 1)))
                                       (if (gx#stx-null? _tl2554225713_)
                                           (letrec ((_loop2554325716_
                                                     (lambda (_hd2554125720_
                                                              _body2554725723_)
                                                       (if (gx#stx-pair?
                                                            _hd2554125720_)
                                                           (let ((_e2554425726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2554125720_)))
                     (let ((_lp-hd2554525730_ (##car _e2554425726_))
                           (_lp-tl2554625733_ (##cdr _e2554425726_)))
                       (_loop2554325716_
                        _lp-tl2554625733_
                        (cons _lp-hd2554525730_ _body2554725723_))))
                   (let ((_body2554825736_ (reverse _body2554725723_)))
                     ((lambda (_L25740_ _L25742_ _L25743_ _L25744_ _L25745_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L25744_ (cons _L25743_ '()))
                                          '())
                                    (cons (cons _L25745_
                                                (cons _L25742_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2577025773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2577125776_)
                         (cons _g2577025773_ _g2577125776_))
                       '()
                       _L25740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2554825736_
                      _tl2553325687_
                      _hd2553825704_
                      _hd2553525694_
                      _hd2552625664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2554325716_
                                              _target2554025710_
                                              '()))
                                           (_g2551725653_ _g2551925657_)))))
                                 (_g2551725653_ _g2551925657_))
                             (_g2551725653_ _g2551925657_))
                         (_g2551725653_ _g2551925657_))))
                 (_g2551725653_ _g2551925657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2551725653_
                                                  _g2551925657_))))
                                         (_g2551725653_ _g2551925657_))))
                                 (_g2551725653_ _g2551925657_))))
                         (_g2551725653_ _g2551925657_)))))
              (_g2551625779_ _$stx25513_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx25785_)
        (let ((_g2579625940_
               (lambda (_g2579725936_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2579725936_))))
          (let ((_g2579526035_
                 (lambda (_g2579725944_)
                   (if (gx#stx-pair? _g2579725944_)
                       (let ((_e2591725947_ (gx#syntax-e _g2579725944_)))
                         (let ((_hd2591825951_ (##car _e2591725947_))
                               (_tl2591925954_ (##cdr _e2591725947_)))
                           (if (gx#stx-pair? _tl2591925954_)
                               (let ((_e2592025957_
                                      (gx#syntax-e _tl2591925954_)))
                                 (let ((_hd2592125961_ (##car _e2592025957_))
                                       (_tl2592225964_ (##cdr _e2592025957_)))
                                   (if (gx#stx-pair? _tl2592225964_)
                                       (let ((_e2592325967_
                                              (gx#syntax-e _tl2592225964_)))
                                         (let ((_hd2592425971_
                                                (##car _e2592325967_))
                                               (_tl2592525974_
                                                (##cdr _e2592325967_)))
                                           (if (gx#stx-datum? _hd2592425971_)
                                               (if (equal? (gx#stx-e
                                                            _hd2592425971_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2592525974_)
                                                       (let ((_e2592625977_
                                                              (gx#syntax-e
                                                               _tl2592525974_)))
                                                         (let ((_hd2592725981_
                                                                (##car _e2592625977_))
                                                               (_tl2592825984_
                                                                (##cdr _e2592625977_)))
                                                           (if (gx#stx-pair?
                                                                _tl2592825984_)
                                                               (let ((_e2592925987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2592825984_)))
                         (let ((_hd2593025991_ (##car _e2592925987_))
                               (_tl2593125994_ (##cdr _e2592925987_)))
                           (if (gx#identifier? _hd2593025991_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g30393_|
                                    _hd2593025991_)
                                   (if (gx#stx-pair? _tl2593125994_)
                                       (let ((_e2593225997_
                                              (gx#syntax-e _tl2593125994_)))
                                         (let ((_hd2593326001_
                                                (##car _e2593225997_))
                                               (_tl2593426004_
                                                (##cdr _e2593225997_)))
                                           (if (gx#stx-null? _tl2593426004_)
                                               ((lambda (_L26007_
                                                         _L26009_
                                                         _L26010_
                                                         _L26011_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L26011_
                                              (cons _L26010_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L26007_
                                                    (cons (cons _L26009_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '$obj)
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2593326001_
                                                _hd2592725981_
                                                _hd2592125961_
                                                _hd2591825951_)
                                               (_g2579625940_ _g2579725944_))))
                                       (_g2579625940_ _g2579725944_))
                                   (_g2579625940_ _g2579725944_))
                               (_g2579625940_ _g2579725944_))))
                       (_g2579625940_ _g2579725944_))))
               (_g2579625940_ _g2579725944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2579625940_
                                                    _g2579725944_))
                                               (_g2579625940_ _g2579725944_))))
                                       (_g2579625940_ _g2579725944_))))
                               (_g2579625940_ _g2579725944_))))
                       (_g2579625940_ _g2579725944_)))))
            (let ((_g2579426103_
                   (lambda (_g2579726039_)
                     (if (gx#stx-pair? _g2579726039_)
                         (let ((_e2590126042_ (gx#syntax-e _g2579726039_)))
                           (let ((_hd2590226046_ (##car _e2590126042_))
                                 (_tl2590326049_ (##cdr _e2590126042_)))
                             (if (gx#stx-pair? _tl2590326049_)
                                 (let ((_e2590426052_
                                        (gx#syntax-e _tl2590326049_)))
                                   (let ((_hd2590526056_ (##car _e2590426052_))
                                         (_tl2590626059_
                                          (##cdr _e2590426052_)))
                                     (if (gx#stx-pair? _tl2590626059_)
                                         (let ((_e2590726062_
                                                (gx#syntax-e _tl2590626059_)))
                                           (let ((_hd2590826066_
                                                  (##car _e2590726062_))
                                                 (_tl2590926069_
                                                  (##cdr _e2590726062_)))
                                             (if (gx#stx-datum? _hd2590826066_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2590826066_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2590926069_)
                                                         (let ((_e2591026072_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2590926069_)))
                   (let ((_hd2591126076_ (##car _e2591026072_))
                         (_tl2591226079_ (##cdr _e2591026072_)))
                     (if (gx#stx-null? _tl2591226079_)
                         ((lambda (_L26082_ _L26084_ _L26085_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L26085_
                                    (cons _L26084_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L26082_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2591126076_
                          _hd2590526056_
                          _hd2590226046_)
                         (_g2579526035_ _g2579726039_))))
                 (_g2579526035_ _g2579726039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2579526035_
                                                      _g2579726039_))
                                                 (_g2579526035_
                                                  _g2579726039_))))
                                         (_g2579526035_ _g2579726039_))))
                                 (_g2579526035_ _g2579726039_))))
                         (_g2579526035_ _g2579726039_)))))
              (let ((_g2579326171_
                     (lambda (_g2579726107_)
                       (if (gx#stx-pair? _g2579726107_)
                           (let ((_e2588626110_ (gx#syntax-e _g2579726107_)))
                             (let ((_hd2588726114_ (##car _e2588626110_))
                                   (_tl2588826117_ (##cdr _e2588626110_)))
                               (if (gx#stx-pair? _tl2588826117_)
                                   (let ((_e2588926120_
                                          (gx#syntax-e _tl2588826117_)))
                                     (let ((_hd2589026124_
                                            (##car _e2588926120_))
                                           (_tl2589126127_
                                            (##cdr _e2588926120_)))
                                       (if (gx#stx-pair? _tl2589126127_)
                                           (let ((_e2589226130_
                                                  (gx#syntax-e
                                                   _tl2589126127_)))
                                             (let ((_hd2589326134_
                                                    (##car _e2589226130_))
                                                   (_tl2589426137_
                                                    (##cdr _e2589226130_)))
                                               (if (gx#identifier?
                                                    _hd2589326134_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g30394_|
                                                        _hd2589326134_)
                                                       (if (gx#stx-pair?
                                                            _tl2589426137_)
                                                           (let ((_e2589526140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2589426137_)))
                     (let ((_hd2589626144_ (##car _e2589526140_))
                           (_tl2589726147_ (##cdr _e2589526140_)))
                       (if (gx#stx-null? _tl2589726147_)
                           ((lambda (_L26150_ _L26152_ _L26153_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L26153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L26152_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L26150_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2589626144_
                            _hd2589026124_
                            _hd2588726114_)
                           (_g2579426103_ _g2579726107_))))
                   (_g2579426103_ _g2579726107_))
               (_g2579426103_ _g2579726107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2579426103_
                                                    _g2579726107_))))
                                           (_g2579426103_ _g2579726107_))))
                                   (_g2579426103_ _g2579726107_))))
                           (_g2579426103_ _g2579726107_)))))
                (let ((_g2579226213_
                       (lambda (_g2579726175_)
                         (if (gx#stx-pair? _g2579726175_)
                             (let ((_e2587726178_ (gx#syntax-e _g2579726175_)))
                               (let ((_hd2587826182_ (##car _e2587726178_))
                                     (_tl2587926185_ (##cdr _e2587726178_)))
                                 (if (gx#stx-pair? _tl2587926185_)
                                     (let ((_e2588026188_
                                            (gx#syntax-e _tl2587926185_)))
                                       (let ((_hd2588126192_
                                              (##car _e2588026188_))
                                             (_tl2588226195_
                                              (##cdr _e2588026188_)))
                                         (if (gx#stx-null? _tl2588226195_)
                                             ((lambda (_L26198_ _L26200_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L26200_
                                (cons _L26198_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2588126192_
                                              _hd2587826182_)
                                             (_g2579326171_ _g2579726175_))))
                                     (_g2579326171_ _g2579726175_))))
                             (_g2579326171_ _g2579726175_)))))
                  (let ((_g2579126267_
                         (lambda (_g2579726217_)
                           (if (gx#stx-pair? _g2579726217_)
                               (let ((_e2586626220_
                                      (gx#syntax-e _g2579726217_)))
                                 (let ((_hd2586726224_ (##car _e2586626220_))
                                       (_tl2586826227_ (##cdr _e2586626220_)))
                                   (if (gx#stx-pair? _tl2586826227_)
                                       (let ((_e2586926230_
                                              (gx#syntax-e _tl2586826227_)))
                                         (let ((_hd2587026234_
                                                (##car _e2586926230_))
                                               (_tl2587126237_
                                                (##cdr _e2586926230_)))
                                           (if (gx#stx-pair? _tl2587126237_)
                                               (let ((_e2587226240_
                                                      (gx#syntax-e
                                                       _tl2587126237_)))
                                                 (let ((_hd2587326244_
                                                        (##car _e2587226240_))
                                                       (_tl2587426247_
                                                        (##cdr _e2587226240_)))
                                                   (if (gx#stx-null?
                                                        _tl2587426247_)
                                                       ((lambda (_L26250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26252_)
                  (cons _L26252_ (cons _L26250_ '())))
                _hd2587326244_
                _hd2587026234_)
               (_g2579226213_ _g2579726217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2579226213_ _g2579726217_))))
                                       (_g2579226213_ _g2579726217_))))
                               (_g2579226213_ _g2579726217_)))))
                    (let ((_g2579026347_
                           (lambda (_g2579726271_)
                             (if (gx#stx-pair? _g2579726271_)
                                 (let ((_e2584926274_
                                        (gx#syntax-e _g2579726271_)))
                                   (let ((_hd2585026278_ (##car _e2584926274_))
                                         (_tl2585126281_
                                          (##cdr _e2584926274_)))
                                     (if (gx#stx-pair? _tl2585126281_)
                                         (let ((_e2585226284_
                                                (gx#syntax-e _tl2585126281_)))
                                           (let ((_hd2585326288_
                                                  (##car _e2585226284_))
                                                 (_tl2585426291_
                                                  (##cdr _e2585226284_)))
                                             (if (gx#stx-pair? _hd2585326288_)
                                                 (let ((_e2585526294_
                                                        (gx#syntax-e
                                                         _hd2585326288_)))
                                                   (let ((_hd2585626298_
                                                          (##car _e2585526294_))
                                                         (_tl2585726301_
                                                          (##cdr _e2585526294_)))
                                                     (if (gx#identifier?
                                                          _hd2585626298_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g30395_|
                                                              _hd2585626298_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2585726301_)
                         (let ((_e2585826304_ (gx#syntax-e _tl2585726301_)))
                           (let ((_hd2585926308_ (##car _e2585826304_))
                                 (_tl2586026311_ (##cdr _e2585826304_)))
                             (if (gx#stx-null? _tl2586026311_)
                                 (if (gx#stx-pair? _tl2585426291_)
                                     (let ((_e2586126314_
                                            (gx#syntax-e _tl2585426291_)))
                                       (let ((_hd2586226318_
                                              (##car _e2586126314_))
                                             (_tl2586326321_
                                              (##cdr _e2586126314_)))
                                         (if (gx#stx-null? _tl2586326321_)
                                             ((lambda (_L26324_
                                                       _L26326_
                                                       _L26327_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L26327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L26326_ (cons _L26324_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2586226318_
                                              _hd2585926308_
                                              _hd2585026278_)
                                             (_g2579126267_ _g2579726271_))))
                                     (_g2579126267_ _g2579726271_))
                                 (_g2579126267_ _g2579726271_))))
                         (_g2579126267_ _g2579726271_))
                     (_g2579126267_ _g2579726271_))
                 (_g2579126267_ _g2579726271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2579126267_
                                                  _g2579726271_))))
                                         (_g2579126267_ _g2579726271_))))
                                 (_g2579126267_ _g2579726271_)))))
                      (let ((_g2578926457_
                             (lambda (_g2579726351_)
                               (if (gx#stx-pair? _g2579726351_)
                                   (let ((_e2582526354_
                                          (gx#syntax-e _g2579726351_)))
                                     (let ((_hd2582626358_
                                            (##car _e2582526354_))
                                           (_tl2582726361_
                                            (##cdr _e2582526354_)))
                                       (if (gx#stx-pair? _tl2582726361_)
                                           (let ((_e2582826364_
                                                  (gx#syntax-e
                                                   _tl2582726361_)))
                                             (let ((_hd2582926368_
                                                    (##car _e2582826364_))
                                                   (_tl2583026371_
                                                    (##cdr _e2582826364_)))
                                               (if (gx#stx-pair?
                                                    _hd2582926368_)
                                                   (let ((_e2583126374_
                                                          (gx#syntax-e
                                                           _hd2582926368_)))
                                                     (let ((_hd2583226378_
                                                            (##car _e2583126374_))
                                                           (_tl2583326381_
                                                            (##cdr _e2583126374_)))
                                                       (if (gx#identifier?
                                                            _hd2583226378_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g30396_|
                                                                _hd2583226378_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2583326381_)
                           (if (fx>= (gx#stx-length _tl2583326381_) '0)
                               (let ((_g30397_
                                      (gx#syntax-split-splice
                                       _tl2583326381_
                                       '0)))
                                 (begin
                                   (let ((_g30398_ (values-count _g30397_)))
                                     (if (not (fx= _g30398_ 2))
                                         (error "Context expects 2 values"
                                                _g30398_)))
                                   (let ((_target2583426384_
                                          (values-ref _g30397_ 0))
                                         (_tl2583626387_
                                          (values-ref _g30397_ 1)))
                                     (if (gx#stx-null? _tl2583626387_)
                                         (letrec ((_loop2583726390_
                                                   (lambda (_hd2583526394_
                                                            _pred2584126397_)
                                                     (if (gx#stx-pair?
                                                          _hd2583526394_)
                                                         (let ((_e2583826400_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2583526394_)))
                   (let ((_lp-hd2583926404_ (##car _e2583826400_))
                         (_lp-tl2584026407_ (##cdr _e2583826400_)))
                     (_loop2583726390_
                      _lp-tl2584026407_
                      (cons _lp-hd2583926404_ _pred2584126397_))))
                 (let ((_pred2584226410_ (reverse _pred2584126397_)))
                   (if (gx#stx-pair? _tl2583026371_)
                       (let ((_e2584326414_ (gx#syntax-e _tl2583026371_)))
                         (let ((_hd2584426418_ (##car _e2584326414_))
                               (_tl2584526421_ (##cdr _e2584326414_)))
                           (if (gx#stx-null? _tl2584526421_)
                               ((lambda (_L26424_ _L26426_ _L26427_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2644826451_
                                                          _g2644926454_)
                                                   (cons (cons _L26427_
                                                               (cons _g2644826451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L26424_ '())))
                 _g2644926454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L26426_))))
                                _hd2584426418_
                                _pred2584226410_
                                _hd2582626358_)
                               (_g2579026347_ _g2579726351_))))
                       (_g2579026347_ _g2579726351_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2583726390_
                                            _target2583426384_
                                            '()))
                                         (_g2579026347_ _g2579726351_)))))
                               (_g2579026347_ _g2579726351_))
                           (_g2579026347_ _g2579726351_))
                       (_g2579026347_ _g2579726351_))
                   (_g2579026347_ _g2579726351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2579026347_
                                                    _g2579726351_))))
                                           (_g2579026347_ _g2579726351_))))
                                   (_g2579026347_ _g2579726351_)))))
                        (let ((_g2578826567_
                               (lambda (_g2579726461_)
                                 (if (gx#stx-pair? _g2579726461_)
                                     (let ((_e2580126464_
                                            (gx#syntax-e _g2579726461_)))
                                       (let ((_hd2580226468_
                                              (##car _e2580126464_))
                                             (_tl2580326471_
                                              (##cdr _e2580126464_)))
                                         (if (gx#stx-pair? _tl2580326471_)
                                             (let ((_e2580426474_
                                                    (gx#syntax-e
                                                     _tl2580326471_)))
                                               (let ((_hd2580526478_
                                                      (##car _e2580426474_))
                                                     (_tl2580626481_
                                                      (##cdr _e2580426474_)))
                                                 (if (gx#stx-pair?
                                                      _hd2580526478_)
                                                     (let ((_e2580726484_
                                                            (gx#syntax-e
                                                             _hd2580526478_)))
                                                       (let ((_hd2580826488_
                                                              (##car _e2580726484_))
                                                             (_tl2580926491_
                                                              (##cdr _e2580726484_)))
                                                         (if (gx#identifier?
                                                              _hd2580826488_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g30399_|
                          _hd2580826488_)
                         (if (gx#stx-pair/null? _tl2580926491_)
                             (if (fx>= (gx#stx-length _tl2580926491_) '0)
                                 (let ((_g30400_
                                        (gx#syntax-split-splice
                                         _tl2580926491_
                                         '0)))
                                   (begin
                                     (let ((_g30401_ (values-count _g30400_)))
                                       (if (not (fx= _g30401_ 2))
                                           (error "Context expects 2 values"
                                                  _g30401_)))
                                     (let ((_target2581026494_
                                            (values-ref _g30400_ 0))
                                           (_tl2581226497_
                                            (values-ref _g30400_ 1)))
                                       (if (gx#stx-null? _tl2581226497_)
                                           (letrec ((_loop2581326500_
                                                     (lambda (_hd2581126504_
                                                              _pred2581726507_)
                                                       (if (gx#stx-pair?
                                                            _hd2581126504_)
                                                           (let ((_e2581426510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2581126504_)))
                     (let ((_lp-hd2581526514_ (##car _e2581426510_))
                           (_lp-tl2581626517_ (##cdr _e2581426510_)))
                       (_loop2581326500_
                        _lp-tl2581626517_
                        (cons _lp-hd2581526514_ _pred2581726507_))))
                   (let ((_pred2581826520_ (reverse _pred2581726507_)))
                     (if (gx#stx-pair? _tl2580626481_)
                         (let ((_e2581926524_ (gx#syntax-e _tl2580626481_)))
                           (let ((_hd2582026528_ (##car _e2581926524_))
                                 (_tl2582126531_ (##cdr _e2581926524_)))
                             (if (gx#stx-null? _tl2582126531_)
                                 ((lambda (_L26534_ _L26536_ _L26537_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2655826561_
                                                            _g2655926564_)
                                                     (cons (cons _L26537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2655826561_ (cons _L26534_ '())))
                   _g2655926564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L26536_))))
                                  _hd2582026528_
                                  _pred2581826520_
                                  _hd2580226468_)
                                 (_g2578926457_ _g2579726461_))))
                         (_g2578926457_ _g2579726461_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2581326500_
                                              _target2581026494_
                                              '()))
                                           (_g2578926457_ _g2579726461_)))))
                                 (_g2578926457_ _g2579726461_))
                             (_g2578926457_ _g2579726461_))
                         (_g2578926457_ _g2579726461_))
                     (_g2578926457_ _g2579726461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2578926457_
                                                      _g2579726461_))))
                                             (_g2578926457_ _g2579726461_))))
                                     (_g2578926457_ _g2579726461_)))))
                          (_g2578826567_ _$stx25785_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx26573_)
        (let ((_g2657826612_
               (lambda (_g2657926608_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2657926608_))))
          (let ((_g2657726669_
                 (lambda (_g2657926616_)
                   (if (gx#stx-pair? _g2657926616_)
                       (let ((_e2659826619_ (gx#syntax-e _g2657926616_)))
                         (let ((_hd2659926623_ (##car _e2659826619_))
                               (_tl2660026626_ (##cdr _e2659826619_)))
                           (if (gx#stx-pair? _tl2660026626_)
                               (let ((_e2660126629_
                                      (gx#syntax-e _tl2660026626_)))
                                 (let ((_hd2660226633_ (##car _e2660126629_))
                                       (_tl2660326636_ (##cdr _e2660126629_)))
                                   (if (gx#stx-pair? _tl2660326636_)
                                       (let ((_e2660426639_
                                              (gx#syntax-e _tl2660326636_)))
                                         (let ((_hd2660526643_
                                                (##car _e2660426639_))
                                               (_tl2660626646_
                                                (##cdr _e2660426639_)))
                                           (if (gx#stx-null? _tl2660626646_)
                                               ((lambda (_L26649_
                                                         _L26651_
                                                         _L26652_)
                                                  (cons _L26652_
                                                        (cons _L26651_
                                                              (cons _L26649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '$stx)
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2660526643_
                                                _hd2660226633_
                                                _hd2659926623_)
                                               (_g2657826612_ _g2657926616_))))
                                       (_g2657826612_ _g2657926616_))))
                               (_g2657826612_ _g2657926616_))))
                       (_g2657826612_ _g2657926616_)))))
            (let ((_g2657626737_
                   (lambda (_g2657926673_)
                     (if (gx#stx-pair? _g2657926673_)
                         (let ((_e2658326676_ (gx#syntax-e _g2657926673_)))
                           (let ((_hd2658426680_ (##car _e2658326676_))
                                 (_tl2658526683_ (##cdr _e2658326676_)))
                             (if (gx#stx-pair? _tl2658526683_)
                                 (let ((_e2658626686_
                                        (gx#syntax-e _tl2658526683_)))
                                   (let ((_hd2658726690_ (##car _e2658626686_))
                                         (_tl2658826693_
                                          (##cdr _e2658626686_)))
                                     (if (gx#stx-pair? _tl2658826693_)
                                         (let ((_e2658926696_
                                                (gx#syntax-e _tl2658826693_)))
                                           (let ((_hd2659026700_
                                                  (##car _e2658926696_))
                                                 (_tl2659126703_
                                                  (##cdr _e2658926696_)))
                                             (if (gx#stx-pair? _tl2659126703_)
                                                 (let ((_e2659226706_
                                                        (gx#syntax-e
                                                         _tl2659126703_)))
                                                   (let ((_hd2659326710_
                                                          (##car _e2659226706_))
                                                         (_tl2659426713_
                                                          (##cdr _e2659226706_)))
                                                     (if (gx#stx-null?
                                                          _tl2659426713_)
                                                         ((lambda (_L26716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L26718_
                           _L26719_)
                    (if (gx#identifier? _L26719_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L26719_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L26718_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L26716_ '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'lambda)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons '()
                                  (cons (cons (cons 'match:
                                                    (gx#datum->syntax
                                                     '#f
                                                     'body))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-apply-expander)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$match-e)
                        (cons (cons (gx#datum->syntax '#f 'stx-wrap-source)
                                    (cons (cons (gx#datum->syntax '#f 'syntax)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'body)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-source)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             '$stx)
                                                            '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f '_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-apply-expander)
                        (cons (gx#datum->syntax '#f '$macro-e)
                              (cons (gx#datum->syntax '#f '$stx) '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (_g2657726669_ _g2657926673_)))
                  _hd2659326710_
                  _hd2659026700_
                  _hd2658726690_)
                 (_g2657726669_ _g2657926673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2657726669_
                                                  _g2657926673_))))
                                         (_g2657726669_ _g2657926673_))))
                                 (_g2657726669_ _g2657926673_))))
                         (_g2657726669_ _g2657926673_)))))
              (_g2657626737_ _$stx26573_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx26741_)
        (let ((_g2674526760_
               (lambda (_g2674626756_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2674626756_))))
          (let ((_g2674426803_
                 (lambda (_g2674626764_)
                   (if (gx#stx-pair? _g2674626764_)
                       (let ((_e2674926767_ (gx#syntax-e _g2674626764_)))
                         (let ((_hd2675026771_ (##car _e2674926767_))
                               (_tl2675126774_ (##cdr _e2674926767_)))
                           (if (gx#stx-pair? _tl2675126774_)
                               (let ((_e2675226777_
                                      (gx#syntax-e _tl2675126774_)))
                                 (let ((_hd2675326781_ (##car _e2675226777_))
                                       (_tl2675426784_ (##cdr _e2675226777_)))
                                   ((lambda (_L26787_ _L26789_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L26789_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L26787_)
                                                        '()))))
                                    _tl2675426784_
                                    _hd2675326781_)))
                               (_g2674526760_ _g2674626764_))))
                       (_g2674526760_ _g2674626764_)))))
            (_g2674426803_ _$stx26741_)))))))
