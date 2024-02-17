(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708168069)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx162407_)
        (letrec ((_expand-special162409_
                  (lambda (_hd162411_ _K162412_ _rest162413_ _r162414_)
                    (_K162412_
                     _rest162413_
                     (cons (gx#core-expand-top _hd162411_) _r162414_)))))
          (gx#core-expand-block__0 _stx162407_ _expand-special162409_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx162160_)
        (letrec ((_expand-special162162_
                  (lambda (_hd162282_ _K162283_ _rest162284_ _r162285_)
                    (let* ((_K162289_
                            (lambda (_e162287_)
                              (_K162283_
                               _rest162284_
                               (cons _e162287_ _r162285_))))
                           (_e162290162319_ _hd162282_)
                           (_E162314162323_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e162290162319_)))
                           (_E162310162335_
                            (lambda ()
                              (if (gx#stx-pair? _e162290162319_)
                                  (let ((_e162315162327_
                                         (gx#syntax-e _e162290162319_)))
                                    (let ((_hd162316162330_
                                           (##car _e162315162327_))
                                          (_tl162317162332_
                                           (##cdr _e162315162327_)))
                                      (if (and (gx#identifier?
                                                _hd162316162330_)
                                               (gx#core-identifier=?
                                                _hd162316162330_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K162289_
                                               (gx#core-expand-define-runtime%
                                                _hd162282_))
                                              (_E162314162323_))
                                          (_E162314162323_))))
                                  (_E162314162323_))))
                           (_E162306162347_
                            (lambda ()
                              (if (gx#stx-pair? _e162290162319_)
                                  (let ((_e162311162339_
                                         (gx#syntax-e _e162290162319_)))
                                    (let ((_hd162312162342_
                                           (##car _e162311162339_))
                                          (_tl162313162344_
                                           (##cdr _e162311162339_)))
                                      (if (and (gx#identifier?
                                                _hd162312162342_)
                                               (gx#core-identifier=?
                                                _hd162312162342_
                                                '%#define-alias))
                                          (if '#t
                                              (_K162289_
                                               (gx#core-expand-define-alias%
                                                _hd162282_))
                                              (_E162310162335_))
                                          (_E162310162335_))))
                                  (_E162310162335_))))
                           (_E162296162359_
                            (lambda ()
                              (if (gx#stx-pair? _e162290162319_)
                                  (let ((_e162307162351_
                                         (gx#syntax-e _e162290162319_)))
                                    (let ((_hd162308162354_
                                           (##car _e162307162351_))
                                          (_tl162309162356_
                                           (##cdr _e162307162351_)))
                                      (if (and (gx#identifier?
                                                _hd162308162354_)
                                               (gx#core-identifier=?
                                                _hd162308162354_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K162289_
                                               (gx#core-expand-define-syntax%
                                                _hd162282_))
                                              (_E162306162347_))
                                          (_E162306162347_))))
                                  (_E162306162347_))))
                           (_E162292162391_
                            (lambda ()
                              (if (gx#stx-pair? _e162290162319_)
                                  (let ((_e162297162363_
                                         (gx#syntax-e _e162290162319_)))
                                    (let ((_hd162298162366_
                                           (##car _e162297162363_))
                                          (_tl162299162368_
                                           (##cdr _e162297162363_)))
                                      (if (and (gx#identifier?
                                                _hd162298162366_)
                                               (gx#core-identifier=?
                                                _hd162298162366_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl162299162368_)
                                              (let ((_e162300162371_
                                                     (gx#syntax-e
                                                      _tl162299162368_)))
                                                (let ((_hd162301162374_
                                                       (##car _e162300162371_))
                                                      (_tl162302162376_
                                                       (##cdr _e162300162371_)))
                                                  (let ((_hd-bind162379_
                                                         _hd162301162374_))
                                                    (if (gx#stx-pair?
                                                         _tl162302162376_)
                                                        (let ((_e162303162381_
                                                               (gx#syntax-e
                                                                _tl162302162376_)))
                                                          (let ((_hd162304162384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e162303162381_))
                        (_tl162305162386_ (##cdr _e162303162381_)))
                    (let ((_expr162389_ _hd162304162384_))
                      (if (gx#stx-null? _tl162305162386_)
                          (if (gx#core-bind-values? _hd-bind162379_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind162379_)
                                (_K162289_ _hd162282_))
                              (_E162296162359_))
                          (_E162296162359_)))))
                (_E162296162359_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E162296162359_))
                                          (_E162296162359_))))
                                  (_E162296162359_))))
                           (_E162291162403_
                            (lambda ()
                              (if (gx#stx-pair? _e162290162319_)
                                  (let ((_e162293162395_
                                         (gx#syntax-e _e162290162319_)))
                                    (let ((_hd162294162398_
                                           (##car _e162293162395_))
                                          (_tl162295162400_
                                           (##cdr _e162293162395_)))
                                      (if (and (gx#identifier?
                                                _hd162294162398_)
                                               (gx#core-identifier=?
                                                _hd162294162398_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K162289_
                                               (gx#core-expand-begin-syntax%
                                                _hd162282_))
                                              (_E162292162391_))
                                          (_E162292162391_))))
                                  (_E162292162391_)))))
                      (_E162291162403_))))
                 (_eval-body162163_
                  (lambda (_rbody162171_)
                    (let _lp162173_ ((_rest162175_ _rbody162171_)
                                     (_body162176_ '())
                                     (_ebody162177_ '()))
                      (let* ((_rest162178162186_ _rest162175_)
                             (_else162180162194_
                              (lambda ()
                                (values _body162176_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody162177_)
                                          (gx#stx-source _stx162160_))))))
                             (_K162182162270_
                              (lambda (_rest162197_ _hd162198_)
                                (let* ((_e162199162216_ _hd162198_)
                                       (_E162211162220_
                                        (lambda ()
                                          (_lp162173_
                                           _rest162197_
                                           (cons _hd162198_ _body162176_)
                                           (cons _hd162198_ _ebody162177_))))
                                       (_E162201162232_
                                        (lambda ()
                                          (if (gx#stx-pair? _e162199162216_)
                                              (let ((_e162212162224_
                                                     (gx#syntax-e
                                                      _e162199162216_)))
                                                (let ((_hd162213162227_
                                                       (##car _e162212162224_))
                                                      (_tl162214162229_
                                                       (##cdr _e162212162224_)))
                                                  (if (and (gx#identifier?
                                                            _hd162213162227_)
                                                           (gx#core-identifier=?
                                                            _hd162213162227_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp162173_
                                                           _rest162197_
                                                           (cons _hd162198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body162176_)
                   _ebody162177_)
                  (_E162211162220_))
              (_E162211162220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E162211162220_))))
                                       (_E162200162266_
                                        (lambda ()
                                          (if (gx#stx-pair? _e162199162216_)
                                              (let ((_e162202162236_
                                                     (gx#syntax-e
                                                      _e162199162216_)))
                                                (let ((_hd162203162239_
                                                       (##car _e162202162236_))
                                                      (_tl162204162241_
                                                       (##cdr _e162202162236_)))
                                                  (if (and (gx#identifier?
                                                            _hd162203162239_)
                                                           (gx#core-identifier=?
                                                            _hd162203162239_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl162204162241_)
                                                          (let ((_e162205162244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl162204162241_)))
                    (let ((_hd162206162247_ (##car _e162205162244_))
                          (_tl162207162249_ (##cdr _e162205162244_)))
                      (let ((_hd-bind162252_ _hd162206162247_))
                        (if (gx#stx-pair? _tl162207162249_)
                            (let ((_e162208162254_
                                   (gx#syntax-e _tl162207162249_)))
                              (let ((_hd162209162257_ (##car _e162208162254_))
                                    (_tl162210162259_ (##cdr _e162208162254_)))
                                (let ((_expr162262_ _hd162209162257_))
                                  (if (gx#stx-null? _tl162210162259_)
                                      (if '#t
                                          (let ((_ehd162264_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind162252_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr162262_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd162198_))))
                                            (_lp162173_
                                             _rest162197_
                                             (cons _ehd162264_ _body162176_)
                                             (cons _ehd162264_ _ebody162177_)))
                                          (_E162201162232_))
                                      (_E162201162232_)))))
                            (_E162201162232_)))))
                  (_E162201162232_))
              (_E162201162232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E162201162232_)))))
                                  (_E162200162266_)))))
                        (if (##pair? _rest162178162186_)
                            (let ((_hd162183162273_ (##car _rest162178162186_))
                                  (_tl162184162275_
                                   (##cdr _rest162178162186_)))
                              (let* ((_hd162278_ _hd162183162273_)
                                     (_rest162280_ _tl162184162275_))
                                (_K162182162270_ _rest162280_ _hd162278_)))
                            (_else162180162194_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody162166_
                     (gx#core-expand-block__1
                      _stx162160_
                      _expand-special162162_
                      '#f))
                    (_g166998_ (_eval-body162163_ _rbody162166_)))
               (begin
                 (let ((_g166999_
                        (if (##values? _g166998_)
                            (##vector-length _g166998_)
                            1)))
                   (if (not (##fx= _g166999_ 2))
                       (error "Context expects 2 values" _g166999_)))
                 (let ((_expanded-body162168_ (##vector-ref _g166998_ 0))
                       (_value162169_ (##vector-ref _g166998_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body162168_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value162169_ '())))
                    (gx#stx-source _stx162160_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx162130_)
        (let* ((_e162131162138_ _stx162130_)
               (_E162133162142_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e162131162138_)))
               (_E162132162156_
                (lambda ()
                  (if (gx#stx-pair? _e162131162138_)
                      (let ((_e162134162146_ (gx#syntax-e _e162131162138_)))
                        (let ((_hd162135162149_ (##car _e162134162146_))
                              (_tl162136162151_ (##cdr _e162134162146_)))
                          (let ((_body162154_ _tl162136162151_))
                            (if (gx#stx-list? _body162154_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body162154_)
                                 (gx#stx-source _stx162130_))
                                (_E162133162142_)))))
                      (_E162133162142_)))))
          (_E162132162156_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx162128_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx162128_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx162074_)
        (let* ((_e162075162088_ _stx162074_)
               (_E162077162092_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e162075162088_)))
               (_E162076162124_
                (lambda ()
                  (if (gx#stx-pair? _e162075162088_)
                      (let ((_e162078162096_ (gx#syntax-e _e162075162088_)))
                        (let ((_hd162079162099_ (##car _e162078162096_))
                              (_tl162080162101_ (##cdr _e162078162096_)))
                          (if (gx#stx-pair? _tl162080162101_)
                              (let ((_e162081162104_
                                     (gx#syntax-e _tl162080162101_)))
                                (let ((_hd162082162107_
                                       (##car _e162081162104_))
                                      (_tl162083162109_
                                       (##cdr _e162081162104_)))
                                  (let ((_ann162112_ _hd162082162107_))
                                    (if (gx#stx-pair? _tl162083162109_)
                                        (let ((_e162084162114_
                                               (gx#syntax-e _tl162083162109_)))
                                          (let ((_hd162085162117_
                                                 (##car _e162084162114_))
                                                (_tl162086162119_
                                                 (##cdr _e162084162114_)))
                                            (let ((_expr162122_
                                                   _hd162085162117_))
                                              (if (gx#stx-null?
                                                   _tl162086162119_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann162112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr162122_)
                                 '())))
               (gx#stx-source _stx162074_))
              (_E162077162092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E162077162092_)))))
                                        (_E162077162092_)))))
                              (_E162077162092_))))
                      (_E162077162092_)))))
          (_E162076162124_))))
    (define gx#core-expand-local-block
      (lambda (_stx161798_ _body161799_)
        (letrec ((_expand-special161801_
                  (lambda (_hd162069_ _K162070_ _rest162071_ _r162072_)
                    (_K162070_
                     '()
                     (cons (_expand-internal161802_ _hd162069_ _rest162071_)
                           _r162072_))))
                 (_expand-internal161802_
                  (lambda (_hd162065_ _rest162066_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal161804_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd162065_ _rest162066_))
                          (gx#stx-source _stx161798_))
                         _expand-internal-special161803_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj166992
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj166992)
                       __obj166992))))
                 (_expand-internal-special161803_
                  (lambda (_hd161960_ _K161961_ _rest161962_ _r161963_)
                    (let* ((_e161964161989_ _hd161960_)
                           (_E161984161993_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161964161989_)))
                           (_E161980162005_
                            (lambda ()
                              (if (gx#stx-pair? _e161964161989_)
                                  (let ((_e161985161997_
                                         (gx#syntax-e _e161964161989_)))
                                    (let ((_hd161986162000_
                                           (##car _e161985161997_))
                                          (_tl161987162002_
                                           (##cdr _e161985161997_)))
                                      (if (and (gx#identifier?
                                                _hd161986162000_)
                                               (gx#core-identifier=?
                                                _hd161986162000_
                                                '%#declare))
                                          (if '#t
                                              (_K161961_
                                               _rest161962_
                                               (cons (gx#core-expand-declare%
                                                      _hd161960_)
                                                     _r161963_))
                                              (_E161984161993_))
                                          (_E161984161993_))))
                                  (_E161984161993_))))
                           (_E161976162017_
                            (lambda ()
                              (if (gx#stx-pair? _e161964161989_)
                                  (let ((_e161981162009_
                                         (gx#syntax-e _e161964161989_)))
                                    (let ((_hd161982162012_
                                           (##car _e161981162009_))
                                          (_tl161983162014_
                                           (##cdr _e161981162009_)))
                                      (if (and (gx#identifier?
                                                _hd161982162012_)
                                               (gx#core-identifier=?
                                                _hd161982162012_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd161960_)
                                                (_K161961_
                                                 _rest161962_
                                                 _r161963_))
                                              (_E161980162005_))
                                          (_E161980162005_))))
                                  (_E161980162005_))))
                           (_E161966162029_
                            (lambda ()
                              (if (gx#stx-pair? _e161964161989_)
                                  (let ((_e161977162021_
                                         (gx#syntax-e _e161964161989_)))
                                    (let ((_hd161978162024_
                                           (##car _e161977162021_))
                                          (_tl161979162026_
                                           (##cdr _e161977162021_)))
                                      (if (and (gx#identifier?
                                                _hd161978162024_)
                                               (gx#core-identifier=?
                                                _hd161978162024_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd161960_)
                                                (_K161961_
                                                 _rest161962_
                                                 _r161963_))
                                              (_E161976162017_))
                                          (_E161976162017_))))
                                  (_E161976162017_))))
                           (_E161965162061_
                            (lambda ()
                              (if (gx#stx-pair? _e161964161989_)
                                  (let ((_e161967162033_
                                         (gx#syntax-e _e161964161989_)))
                                    (let ((_hd161968162036_
                                           (##car _e161967162033_))
                                          (_tl161969162038_
                                           (##cdr _e161967162033_)))
                                      (if (and (gx#identifier?
                                                _hd161968162036_)
                                               (gx#core-identifier=?
                                                _hd161968162036_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161969162038_)
                                              (let ((_e161970162041_
                                                     (gx#syntax-e
                                                      _tl161969162038_)))
                                                (let ((_hd161971162044_
                                                       (##car _e161970162041_))
                                                      (_tl161972162046_
                                                       (##cdr _e161970162041_)))
                                                  (let ((_hd-bind162049_
                                                         _hd161971162044_))
                                                    (if (gx#stx-pair?
                                                         _tl161972162046_)
                                                        (let ((_e161973162051_
                                                               (gx#syntax-e
                                                                _tl161972162046_)))
                                                          (let ((_hd161974162054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161973162051_))
                        (_tl161975162056_ (##cdr _e161973162051_)))
                    (let ((_expr162059_ _hd161974162054_))
                      (if (gx#stx-null? _tl161975162056_)
                          (if (gx#core-bind-values? _hd-bind162049_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind162049_)
                                (_K161961_
                                 _rest161962_
                                 (cons _hd161960_ _r161963_)))
                              (_E161966162029_))
                          (_E161966162029_)))))
                (_E161966162029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161966162029_))
                                          (_E161966162029_))))
                                  (_E161966162029_)))))
                      (_E161965162061_))))
                 (_wrap-internal161804_
                  (lambda (_rbody161806_)
                    (let _lp161808_ ((_rest161810_ _rbody161806_)
                                     (_decls161811_ '())
                                     (_bind161812_ '())
                                     (_body161813_ '()))
                      (let* ((_e161814161821_ _rest161810_)
                             (_E161816161870_
                              (lambda ()
                                (let* ((_body161865_
                                        (let* ((_body161824161834_
                                                _body161813_)
                                               (_else161827161842_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161813_)
                                                   (gx#stx-source
                                                    _stx161798_)))))
                                          (let ((_K161832161862_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx161798_)))
                                                (_K161829161848_
                                                 (lambda (_expr161846_)
                                                   _expr161846_)))
                                            (let ((_try-match161826161858_
                                                   (lambda ()
                                                     (if (##pair? _body161824161834_)
                                                         (let ((_tl161831161853_
                                                                (##cdr _body161824161834_))
                                                               (_hd161830161851_
                                                                (##car _body161824161834_)))
                                                           (if (##null? _tl161831161853_)
                                                               (let ((_expr161856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd161830161851_))
                         (_K161829161848_ _expr161856_))
                       (_else161827161842_)))
                 (_else161827161842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body161824161834_)
                                                  (_K161832161862_)
                                                  (_try-match161826161858_))))))
                                       (_body161867_
                                        (if (null? _bind161812_)
                                            _body161865_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind161812_
                                                         (cons _body161865_
                                                               '())))
                                             (gx#stx-source _stx161798_)))))
                                  (if (null? _decls161811_)
                                      _body161867_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls161811_
                                                   (cons _body161867_ '())))
                                       (gx#stx-source _stx161798_))))))
                             (_E161815161956_
                              (lambda ()
                                (if (gx#stx-pair? _e161814161821_)
                                    (let ((_e161817161874_
                                           (gx#syntax-e _e161814161821_)))
                                      (let ((_hd161818161877_
                                             (##car _e161817161874_))
                                            (_tl161819161879_
                                             (##cdr _e161817161874_)))
                                        (let* ((_hd161882_ _hd161818161877_)
                                               (_rest161884_ _tl161819161879_))
                                          (if '#t
                                              (let* ((_e161885161902_
                                                      _hd161882_)
                                                     (_E161897161906_
                                                      (lambda ()
                                                        (if (null? _bind161812_)
                                                            (_lp161808_
                                                             _rest161884_
                                                             _decls161811_
                                                             _bind161812_
                                                             (cons _hd161882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body161813_))
                    (_lp161808_
                     _rest161884_
                     _decls161811_
                     (cons (cons '#f (cons _hd161882_ '())) _bind161812_)
                     _body161813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E161887161920_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e161885161902_)
                                                            (let ((_e161898161910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e161885161902_)))
                      (let ((_hd161899161913_ (##car _e161898161910_))
                            (_tl161900161915_ (##cdr _e161898161910_)))
                        (if (and (gx#identifier? _hd161899161913_)
                                 (gx#core-identifier=?
                                  _hd161899161913_
                                  '%#declare))
                            (let ((_xdecls161918_ _tl161900161915_))
                              (if '#t
                                  (_lp161808_
                                   _rest161884_
                                   (gx#stx-foldr
                                    cons
                                    _decls161811_
                                    _xdecls161918_)
                                   _bind161812_
                                   _body161813_)
                                  (_E161897161906_)))
                            (_E161897161906_))))
                    (_E161897161906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E161886161952_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e161885161902_)
                                                            (let ((_e161888161924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e161885161902_)))
                      (let ((_hd161889161927_ (##car _e161888161924_))
                            (_tl161890161929_ (##cdr _e161888161924_)))
                        (if (and (gx#identifier? _hd161889161927_)
                                 (gx#core-identifier=?
                                  _hd161889161927_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl161890161929_)
                                (let ((_e161891161932_
                                       (gx#syntax-e _tl161890161929_)))
                                  (let ((_hd161892161935_
                                         (##car _e161891161932_))
                                        (_tl161893161937_
                                         (##cdr _e161891161932_)))
                                    (let ((_hd-bind161940_ _hd161892161935_))
                                      (if (gx#stx-pair? _tl161893161937_)
                                          (let ((_e161894161942_
                                                 (gx#syntax-e
                                                  _tl161893161937_)))
                                            (let ((_hd161895161945_
                                                   (##car _e161894161942_))
                                                  (_tl161896161947_
                                                   (##cdr _e161894161942_)))
                                              (let ((_expr161950_
                                                     _hd161895161945_))
                                                (if (gx#stx-null?
                                                     _tl161896161947_)
                                                    (if '#t
                                                        (_lp161808_
                                                         _rest161884_
                                                         _decls161811_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind161940_)
                             (cons (gx#core-expand-expression _expr161950_)
                                   '()))
                       _bind161812_)
                 _body161813_)
                (_E161887161920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E161887161920_)))))
                                          (_E161887161920_)))))
                                (_E161887161920_))
                            (_E161887161920_))))
                    (_E161887161920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E161886161952_))
                                              (_E161816161870_)))))
                                    (_E161816161870_)))))
                        (_E161815161956_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body161799_)
            (gx#stx-source _stx161798_))
           _expand-special161801_))))
    (define gx#core-expand-declare%
      (lambda (_stx161736_)
        (let* ((_e161737161744_ _stx161736_)
               (_E161739161748_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161737161744_)))
               (_E161738161794_
                (lambda ()
                  (if (gx#stx-pair? _e161737161744_)
                      (let ((_e161740161752_ (gx#syntax-e _e161737161744_)))
                        (let ((_hd161741161755_ (##car _e161740161752_))
                              (_tl161742161757_ (##cdr _e161740161752_)))
                          (let ((_body161760_ _tl161742161757_))
                            (if (gx#stx-list? _body161760_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl161762_)
                                     (let* ((_e161763161770_ _decl161762_)
                                            (_E161765161774_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e161763161770_)))
                                            (_E161764161790_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e161763161770_)
                                                   (let ((_e161766161778_
                                                          (gx#syntax-e
                                                           _e161763161770_)))
                                                     (let ((_hd161767161781_
                                                            (##car _e161766161778_))
                                                           (_tl161768161783_
                                                            (##cdr _e161766161778_)))
                                                       (let* ((_head161786_
                                                               _hd161767161781_)
                                                              (_args161788_
                                                               _tl161768161783_))
                                                         (if (gx#stx-list?
                                                              _args161788_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl161762_)
                                                             (_E161765161774_)))))
                                                   (_E161765161774_)))))
                                       (_E161764161790_)))
                                   _body161760_))
                                 (gx#stx-source _stx161736_))
                                (_E161739161748_)))))
                      (_E161739161748_)))))
          (_E161738161794_))))
    (define gx#core-expand-extern%
      (lambda (_stx161640_)
        (let* ((_e161641161648_ _stx161640_)
               (_E161643161652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161641161648_)))
               (_E161642161732_
                (lambda ()
                  (if (gx#stx-pair? _e161641161648_)
                      (let ((_e161644161656_ (gx#syntax-e _e161641161648_)))
                        (let ((_hd161645161659_ (##car _e161644161656_))
                              (_tl161646161661_ (##cdr _e161644161656_)))
                          (let ((_body161664_ _tl161646161661_))
                            (if '#t
                                (let _lp161666_ ((_rest161668_ _body161664_)
                                                 (_r161669_ '()))
                                  (let* ((_e161670161684_ _rest161668_)
                                         (_E161682161688_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx161640_)))
                                         (_E161672161692_
                                          (lambda ()
                                            (if (gx#stx-null? _e161670161684_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r161669_))
                                                     (gx#stx-source
                                                      _stx161640_))
                                                    (_E161682161688_))
                                                (_E161682161688_))))
                                         (_E161671161728_
                                          (lambda ()
                                            (if (gx#stx-pair? _e161670161684_)
                                                (let ((_e161673161696_
                                                       (gx#syntax-e
                                                        _e161670161684_)))
                                                  (let ((_hd161674161699_
                                                         (##car _e161673161696_))
                                                        (_tl161675161701_
                                                         (##cdr _e161673161696_)))
                                                    (if (gx#stx-pair?
                                                         _hd161674161699_)
                                                        (let ((_e161676161704_
                                                               (gx#syntax-e
                                                                _hd161674161699_)))
                                                          (let ((_hd161677161707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161676161704_))
                        (_tl161678161709_ (##cdr _e161676161704_)))
                    (let ((_id161712_ _hd161677161707_))
                      (if (gx#stx-pair? _tl161678161709_)
                          (let ((_e161679161714_
                                 (gx#syntax-e _tl161678161709_)))
                            (let ((_hd161680161717_ (##car _e161679161714_))
                                  (_tl161681161719_ (##cdr _e161679161714_)))
                              (let ((_eid161722_ _hd161680161717_))
                                (if (gx#stx-null? _tl161681161719_)
                                    (let ((_rest161724_ _tl161675161701_))
                                      (if (and (gx#identifier? _id161712_)
                                               (gx#identifier? _eid161722_))
                                          (let ((_eid161726_
                                                 (gx#stx-e _eid161722_)))
                                            (gx#core-bind-extern!__0
                                             _id161712_
                                             _eid161726_)
                                            (_lp161666_
                                             _rest161724_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id161712_)
                                                         (cons _eid161726_
                                                               '()))
                                                   _r161669_)))
                                          (_E161672161692_)))
                                    (_E161672161692_)))))
                          (_E161672161692_)))))
                (_E161672161692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E161672161692_)))))
                                    (_E161671161728_)))
                                (_E161643161652_)))))
                      (_E161643161652_)))))
          (_E161642161732_))))
    (define gx#core-expand-define-values%
      (lambda (_stx161586_)
        (let* ((_e161587161600_ _stx161586_)
               (_E161589161604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161587161600_)))
               (_E161588161636_
                (lambda ()
                  (if (gx#stx-pair? _e161587161600_)
                      (let ((_e161590161608_ (gx#syntax-e _e161587161600_)))
                        (let ((_hd161591161611_ (##car _e161590161608_))
                              (_tl161592161613_ (##cdr _e161590161608_)))
                          (if (gx#stx-pair? _tl161592161613_)
                              (let ((_e161593161616_
                                     (gx#syntax-e _tl161592161613_)))
                                (let ((_hd161594161619_
                                       (##car _e161593161616_))
                                      (_tl161595161621_
                                       (##cdr _e161593161616_)))
                                  (let ((_hd161624_ _hd161594161619_))
                                    (if (gx#stx-pair? _tl161595161621_)
                                        (let ((_e161596161626_
                                               (gx#syntax-e _tl161595161621_)))
                                          (let ((_hd161597161629_
                                                 (##car _e161596161626_))
                                                (_tl161598161631_
                                                 (##cdr _e161596161626_)))
                                            (let ((_expr161634_
                                                   _hd161597161629_))
                                              (if (gx#stx-null?
                                                   _tl161598161631_)
                                                  (if (gx#core-bind-values?
                                                       _hd161624_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd161624_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd161624_)
                             (cons (gx#core-expand-expression _expr161634_)
                                   '())))
                 (gx#stx-source _stx161586_)))
              (_E161589161604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161589161604_)))))
                                        (_E161589161604_)))))
                              (_E161589161604_))))
                      (_E161589161604_)))))
          (_E161588161636_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx161530_)
        (let* ((_e161531161544_ _stx161530_)
               (_E161533161548_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161531161544_)))
               (_E161532161582_
                (lambda ()
                  (if (gx#stx-pair? _e161531161544_)
                      (let ((_e161534161552_ (gx#syntax-e _e161531161544_)))
                        (let ((_hd161535161555_ (##car _e161534161552_))
                              (_tl161536161557_ (##cdr _e161534161552_)))
                          (if (gx#stx-pair? _tl161536161557_)
                              (let ((_e161537161560_
                                     (gx#syntax-e _tl161536161557_)))
                                (let ((_hd161538161563_
                                       (##car _e161537161560_))
                                      (_tl161539161565_
                                       (##cdr _e161537161560_)))
                                  (let ((_id161568_ _hd161538161563_))
                                    (if (gx#stx-pair? _tl161539161565_)
                                        (let ((_e161540161570_
                                               (gx#syntax-e _tl161539161565_)))
                                          (let ((_hd161541161573_
                                                 (##car _e161540161570_))
                                                (_tl161542161575_
                                                 (##cdr _e161540161570_)))
                                            (let ((_binding-id161578_
                                                   _hd161541161573_))
                                              (if (gx#stx-null?
                                                   _tl161542161575_)
                                                  (if (and (gx#identifier?
                                                            _id161568_)
                                                           (gx#identifier?
                                                            _binding-id161578_))
                                                      (let ((_eid161580_
                                                             (gx#stx-e
                                                              _binding-id161578_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id161568_
                                                         _eid161580_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id161568_)
                             (cons _eid161580_ '())))))
              (_E161533161548_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161533161548_)))))
                                        (_E161533161548_)))))
                              (_E161533161548_))))
                      (_E161533161548_)))))
          (_E161532161582_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx161473_)
        (let* ((_e161474161487_ _stx161473_)
               (_E161476161491_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161474161487_)))
               (_E161475161526_
                (lambda ()
                  (if (gx#stx-pair? _e161474161487_)
                      (let ((_e161477161495_ (gx#syntax-e _e161474161487_)))
                        (let ((_hd161478161498_ (##car _e161477161495_))
                              (_tl161479161500_ (##cdr _e161477161495_)))
                          (if (gx#stx-pair? _tl161479161500_)
                              (let ((_e161480161503_
                                     (gx#syntax-e _tl161479161500_)))
                                (let ((_hd161481161506_
                                       (##car _e161480161503_))
                                      (_tl161482161508_
                                       (##cdr _e161480161503_)))
                                  (let ((_id161511_ _hd161481161506_))
                                    (if (gx#stx-pair? _tl161482161508_)
                                        (let ((_e161483161513_
                                               (gx#syntax-e _tl161482161508_)))
                                          (let ((_hd161484161516_
                                                 (##car _e161483161513_))
                                                (_tl161485161518_
                                                 (##cdr _e161483161513_)))
                                            (let ((_expr161521_
                                                   _hd161484161516_))
                                              (if (gx#stx-null?
                                                   _tl161485161518_)
                                                  (if (gx#identifier?
                                                       _id161511_)
                                                      (let ((_g167000_
                                                             (gx#core-expand-expression+1
                                                              _expr161521_)))
                                                        (begin
                                                          (let ((_g167001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g167000_)
                             (##vector-length _g167000_)
                             1)))
                    (if (not (##fx= _g167001_ 2))
                        (error "Context expects 2 values" _g167001_)))
                  (let ((_e-stx161523_ (##vector-ref _g167000_ 0))
                        (_e161524_ (##vector-ref _g167000_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id161511_ _e161524_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id161511_)
                                   (cons _e-stx161523_ '())))
                       (gx#stx-source _stx161473_))))))
              (_E161476161491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161476161491_)))))
                                        (_E161476161491_)))))
                              (_E161476161491_))))
                      (_E161476161491_)))))
          (_E161475161526_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx161417_)
        (let* ((_e161418161431_ _stx161417_)
               (_E161420161435_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161418161431_)))
               (_E161419161469_
                (lambda ()
                  (if (gx#stx-pair? _e161418161431_)
                      (let ((_e161421161439_ (gx#syntax-e _e161418161431_)))
                        (let ((_hd161422161442_ (##car _e161421161439_))
                              (_tl161423161444_ (##cdr _e161421161439_)))
                          (if (gx#stx-pair? _tl161423161444_)
                              (let ((_e161424161447_
                                     (gx#syntax-e _tl161423161444_)))
                                (let ((_hd161425161450_
                                       (##car _e161424161447_))
                                      (_tl161426161452_
                                       (##cdr _e161424161447_)))
                                  (let ((_id161455_ _hd161425161450_))
                                    (if (gx#stx-pair? _tl161426161452_)
                                        (let ((_e161427161457_
                                               (gx#syntax-e _tl161426161452_)))
                                          (let ((_hd161428161460_
                                                 (##car _e161427161457_))
                                                (_tl161429161462_
                                                 (##cdr _e161427161457_)))
                                            (let ((_alias-id161465_
                                                   _hd161428161460_))
                                              (if (gx#stx-null?
                                                   _tl161429161462_)
                                                  (if (and (gx#identifier?
                                                            _id161455_)
                                                           (gx#identifier?
                                                            _alias-id161465_))
                                                      (let ((_alias-id161467_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id161465_)))
                                                        (gx#core-bind-alias!__0
                                                         _id161455_
                                                         _alias-id161467_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id161455_)
                             (cons _alias-id161467_ '())))))
              (_E161420161435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161420161435_)))))
                                        (_E161420161435_)))))
                              (_E161420161435_))))
                      (_E161420161435_)))))
          (_E161419161469_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx161360_ _wrap?161361_)
        (let* ((_e161362161372_ _stx161360_)
               (_E161364161376_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161362161372_)))
               (_E161363161403_
                (lambda ()
                  (if (gx#stx-pair? _e161362161372_)
                      (let ((_e161365161380_ (gx#syntax-e _e161362161372_)))
                        (let ((_hd161366161383_ (##car _e161365161380_))
                              (_tl161367161385_ (##cdr _e161365161380_)))
                          (if (gx#stx-pair? _tl161367161385_)
                              (let ((_e161368161388_
                                     (gx#syntax-e _tl161367161385_)))
                                (let ((_hd161369161391_
                                       (##car _e161368161388_))
                                      (_tl161370161393_
                                       (##cdr _e161368161388_)))
                                  (let* ((_hd161396_ _hd161369161391_)
                                         (_body161398_ _tl161370161393_))
                                    (if (gx#core-bind-values? _hd161396_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd161396_)
                                           (let ((_body161401_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd161396_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx161360_
                                                               _body161398_)
                                                              '()))))
                                             (if _wrap?161361_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body161401_)
                                                  (gx#stx-source _stx161360_))
                                                 _body161401_)))
                                         gx#current-expander-context
                                         (let ((__obj166993
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj166993)
                                           __obj166993))
                                        (_E161364161376_)))))
                              (_E161364161376_))))
                      (_E161364161376_)))))
          (_E161363161403_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx161410_)
        (let ((_wrap?161412_ '#t))
          (gx#core-expand-lambda%__% _stx161410_ _wrap?161412_))))
    (define gx#core-expand-lambda%
      (lambda _g167003_
        (let ((_g167002_ (##length _g167003_)))
          (cond ((##fx= _g167002_ 1)
                 (apply (lambda (_stx161410_)
                          (gx#core-expand-lambda%__0 _stx161410_))
                        _g167003_))
                ((##fx= _g167002_ 2)
                 (apply (lambda (_stx161414_ _wrap?161415_)
                          (gx#core-expand-lambda%__%
                           _stx161414_
                           _wrap?161415_))
                        _g167003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g167003_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx161324_)
        (let* ((_e161325161332_ _stx161324_)
               (_E161327161336_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161325161332_)))
               (_E161326161355_
                (lambda ()
                  (if (gx#stx-pair? _e161325161332_)
                      (let ((_e161328161340_ (gx#syntax-e _e161325161332_)))
                        (let ((_hd161329161343_ (##car _e161328161340_))
                              (_tl161330161345_ (##cdr _e161328161340_)))
                          (let ((_clauses161348_ _tl161330161345_))
                            (if (gx#stx-list? _clauses161348_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause161350_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause161350_)
                                       (let ((_$e161352_
                                              (gx#stx-source _clause161350_)))
                                         (if _$e161352_
                                             _$e161352_
                                             (gx#stx-source _stx161324_))))
                                      '#f))
                                   _clauses161348_))
                                 (gx#stx-source _stx161324_))
                                (_E161327161336_)))))
                      (_E161327161336_)))))
          (_E161326161355_))))
    (define gx#core-expand-let-values%
      (lambda (_stx161278_)
        (let* ((_e161279161289_ _stx161278_)
               (_E161281161293_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161279161289_)))
               (_E161280161320_
                (lambda ()
                  (if (gx#stx-pair? _e161279161289_)
                      (let ((_e161282161297_ (gx#syntax-e _e161279161289_)))
                        (let ((_hd161283161300_ (##car _e161282161297_))
                              (_tl161284161302_ (##cdr _e161282161297_)))
                          (if (gx#stx-pair? _tl161284161302_)
                              (let ((_e161285161305_
                                     (gx#syntax-e _tl161284161302_)))
                                (let ((_hd161286161308_
                                       (##car _e161285161305_))
                                      (_tl161287161310_
                                       (##cdr _e161285161305_)))
                                  (let* ((_hd161313_ _hd161286161308_)
                                         (_body161315_ _tl161287161310_))
                                    (if (gx#core-expand-let-bind? _hd161313_)
                                        (let ((_expressions161317_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd161313_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd161313_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd161313_
                                                           _expressions161317_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx161278_
                         _body161315_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx161278_)))
                                           gx#current-expander-context
                                           (let ((__obj166994
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj166994)
                                             __obj166994)))
                                        (_E161281161293_)))))
                              (_E161281161293_))))
                      (_E161281161293_)))))
          (_E161280161320_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx161223_ _form161224_)
        (let* ((_e161225161235_ _stx161223_)
               (_E161227161239_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161225161235_)))
               (_E161226161264_
                (lambda ()
                  (if (gx#stx-pair? _e161225161235_)
                      (let ((_e161228161243_ (gx#syntax-e _e161225161235_)))
                        (let ((_hd161229161246_ (##car _e161228161243_))
                              (_tl161230161248_ (##cdr _e161228161243_)))
                          (if (gx#stx-pair? _tl161230161248_)
                              (let ((_e161231161251_
                                     (gx#syntax-e _tl161230161248_)))
                                (let ((_hd161232161254_
                                       (##car _e161231161251_))
                                      (_tl161233161256_
                                       (##cdr _e161231161251_)))
                                  (let* ((_hd161259_ _hd161232161254_)
                                         (_body161261_ _tl161233161256_))
                                    (if (gx#core-expand-let-bind? _hd161259_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd161259_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form161224_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd161259_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd161259_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx161223_
                                                               _body161261_)
                                                              '())))
                                            (gx#stx-source _stx161223_)))
                                         gx#current-expander-context
                                         (let ((__obj166995
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj166995)
                                           __obj166995))
                                        (_E161227161239_)))))
                              (_E161227161239_))))
                      (_E161227161239_)))))
          (_E161226161264_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx161271_)
        (let ((_form161273_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx161271_ _form161273_))))
    (define gx#core-expand-letrec-values%
      (lambda _g167005_
        (let ((_g167004_ (##length _g167005_)))
          (cond ((##fx= _g167004_ 1)
                 (apply (lambda (_stx161271_)
                          (gx#core-expand-letrec-values%__0 _stx161271_))
                        _g167005_))
                ((##fx= _g167004_ 2)
                 (apply (lambda (_stx161275_ _form161276_)
                          (gx#core-expand-letrec-values%__%
                           _stx161275_
                           _form161276_))
                        _g167005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g167005_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx161220_)
        (gx#core-expand-letrec-values%__% _stx161220_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx161177_)
        (if (gx#stx-list? _stx161177_)
            (gx#stx-andmap
             (lambda (_bind161179_)
               (let* ((_e161180161190_ _bind161179_)
                      (_E161182161194_ (lambda () '#f))
                      (_E161181161216_
                       (lambda ()
                         (if (gx#stx-pair? _e161180161190_)
                             (let ((_e161183161198_
                                    (gx#syntax-e _e161180161190_)))
                               (let ((_hd161184161201_ (##car _e161183161198_))
                                     (_tl161185161203_
                                      (##cdr _e161183161198_)))
                                 (let ((_hd161206_ _hd161184161201_))
                                   (if (gx#stx-pair? _tl161185161203_)
                                       (let ((_e161186161208_
                                              (gx#syntax-e _tl161185161203_)))
                                         (let ((_hd161187161211_
                                                (##car _e161186161208_))
                                               (_tl161188161213_
                                                (##cdr _e161186161208_)))
                                           (if (gx#stx-null? _tl161188161213_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd161206_)
                                                   (_E161182161194_))
                                               (_E161182161194_))))
                                       (_E161182161194_)))))
                             (_E161182161194_)))))
                 (_E161181161216_)))
             _stx161177_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind161136_)
        (let* ((_e161137161147_ _bind161136_)
               (_E161139161151_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161137161147_)))
               (_E161138161173_
                (lambda ()
                  (if (gx#stx-pair? _e161137161147_)
                      (let ((_e161140161155_ (gx#syntax-e _e161137161147_)))
                        (let ((_hd161141161158_ (##car _e161140161155_))
                              (_tl161142161160_ (##cdr _e161140161155_)))
                          (if (gx#stx-pair? _tl161142161160_)
                              (let ((_e161143161163_
                                     (gx#syntax-e _tl161142161160_)))
                                (let ((_hd161144161166_
                                       (##car _e161143161163_))
                                      (_tl161145161168_
                                       (##cdr _e161143161163_)))
                                  (let ((_expr161171_ _hd161144161166_))
                                    (if (gx#stx-null? _tl161145161168_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr161171_)
                                            (_E161139161151_))
                                        (_E161139161151_)))))
                              (_E161139161151_))))
                      (_E161139161151_)))))
          (_E161138161173_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind161095_)
        (let* ((_e161096161106_ _bind161095_)
               (_E161098161110_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161096161106_)))
               (_E161097161132_
                (lambda ()
                  (if (gx#stx-pair? _e161096161106_)
                      (let ((_e161099161114_ (gx#syntax-e _e161096161106_)))
                        (let ((_hd161100161117_ (##car _e161099161114_))
                              (_tl161101161119_ (##cdr _e161099161114_)))
                          (let ((_hd161122_ _hd161100161117_))
                            (if (gx#stx-pair? _tl161101161119_)
                                (let ((_e161102161124_
                                       (gx#syntax-e _tl161101161119_)))
                                  (let ((_hd161103161127_
                                         (##car _e161102161124_))
                                        (_tl161104161129_
                                         (##cdr _e161102161124_)))
                                    (if (gx#stx-null? _tl161104161129_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd161122_)
                                            (_E161098161110_))
                                        (_E161098161110_))))
                                (_E161098161110_)))))
                      (_E161098161110_)))))
          (_E161097161132_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind161053_ _expr161054_)
        (let* ((_e161055161065_ _bind161053_)
               (_E161057161069_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161055161065_)))
               (_E161056161091_
                (lambda ()
                  (if (gx#stx-pair? _e161055161065_)
                      (let ((_e161058161073_ (gx#syntax-e _e161055161065_)))
                        (let ((_hd161059161076_ (##car _e161058161073_))
                              (_tl161060161078_ (##cdr _e161058161073_)))
                          (let ((_hd161081_ _hd161059161076_))
                            (if (gx#stx-pair? _tl161060161078_)
                                (let ((_e161061161083_
                                       (gx#syntax-e _tl161060161078_)))
                                  (let ((_hd161062161086_
                                         (##car _e161061161083_))
                                        (_tl161063161088_
                                         (##cdr _e161061161083_)))
                                    (if (gx#stx-null? _tl161063161088_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd161081_)
                                                  (cons _expr161054_ '()))
                                            (_E161057161069_))
                                        (_E161057161069_))))
                                (_E161057161069_)))))
                      (_E161057161069_)))))
          (_E161056161091_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx161007_)
        (let* ((_e161008161018_ _stx161007_)
               (_E161010161022_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161008161018_)))
               (_E161009161049_
                (lambda ()
                  (if (gx#stx-pair? _e161008161018_)
                      (let ((_e161011161026_ (gx#syntax-e _e161008161018_)))
                        (let ((_hd161012161029_ (##car _e161011161026_))
                              (_tl161013161031_ (##cdr _e161011161026_)))
                          (if (gx#stx-pair? _tl161013161031_)
                              (let ((_e161014161034_
                                     (gx#syntax-e _tl161013161031_)))
                                (let ((_hd161015161037_
                                       (##car _e161014161034_))
                                      (_tl161016161039_
                                       (##cdr _e161014161034_)))
                                  (let* ((_hd161042_ _hd161015161037_)
                                         (_body161044_ _tl161016161039_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd161042_)
                                        (let ((_expanders161046_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd161042_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd161042_
                                              _expanders161046_)
                                             (gx#core-expand-local-block
                                              _stx161007_
                                              _body161044_))
                                           gx#current-expander-context
                                           (let ((__obj166996
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj166996)
                                             __obj166996)))
                                        (_E161010161022_)))))
                              (_E161010161022_))))
                      (_E161010161022_)))))
          (_E161009161049_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx160956_)
        (let* ((_e160957160967_ _stx160956_)
               (_E160959160971_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160957160967_)))
               (_E160958161003_
                (lambda ()
                  (if (gx#stx-pair? _e160957160967_)
                      (let ((_e160960160975_ (gx#syntax-e _e160957160967_)))
                        (let ((_hd160961160978_ (##car _e160960160975_))
                              (_tl160962160980_ (##cdr _e160960160975_)))
                          (if (gx#stx-pair? _tl160962160980_)
                              (let ((_e160963160983_
                                     (gx#syntax-e _tl160962160980_)))
                                (let ((_hd160964160986_
                                       (##car _e160963160983_))
                                      (_tl160965160988_
                                       (##cdr _e160963160983_)))
                                  (let* ((_hd160991_ _hd160964160986_)
                                         (_body160993_ _tl160965160988_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd160991_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd160991_
                                            (make-list
                                             (gx#stx-length _hd160991_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g160995160998_
                                                     _g160996161000_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g160995160998_
                                               _g160996161000_
                                               '#t))
                                            _hd160991_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd160991_))
                                           (gx#core-expand-local-block
                                            _stx160956_
                                            _body160993_))
                                         gx#current-expander-context
                                         (let ((__obj166997
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj166997)
                                           __obj166997))
                                        (_E160959160971_)))))
                              (_E160959160971_))))
                      (_E160959160971_)))))
          (_E160958161003_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx160913_)
        (if (gx#stx-list? _stx160913_)
            (gx#stx-andmap
             (lambda (_bind160915_)
               (let* ((_e160916160926_ _bind160915_)
                      (_E160918160930_ (lambda () '#f))
                      (_E160917160952_
                       (lambda ()
                         (if (gx#stx-pair? _e160916160926_)
                             (let ((_e160919160934_
                                    (gx#syntax-e _e160916160926_)))
                               (let ((_hd160920160937_ (##car _e160919160934_))
                                     (_tl160921160939_
                                      (##cdr _e160919160934_)))
                                 (let ((_hd160942_ _hd160920160937_))
                                   (if (gx#stx-pair? _tl160921160939_)
                                       (let ((_e160922160944_
                                              (gx#syntax-e _tl160921160939_)))
                                         (let ((_hd160923160947_
                                                (##car _e160922160944_))
                                               (_tl160924160949_
                                                (##cdr _e160922160944_)))
                                           (if (gx#stx-null? _tl160924160949_)
                                               (if '#t
                                                   (gx#identifier? _hd160942_)
                                                   (_E160918160930_))
                                               (_E160918160930_))))
                                       (_E160918160930_)))))
                             (_E160918160930_)))))
                 (_E160917160952_)))
             _stx160913_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind160870_)
        (let* ((_e160871160881_ _bind160870_)
               (_E160873160885_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160871160881_)))
               (_E160872160909_
                (lambda ()
                  (if (gx#stx-pair? _e160871160881_)
                      (let ((_e160874160889_ (gx#syntax-e _e160871160881_)))
                        (let ((_hd160875160892_ (##car _e160874160889_))
                              (_tl160876160894_ (##cdr _e160874160889_)))
                          (if (gx#stx-pair? _tl160876160894_)
                              (let ((_e160877160897_
                                     (gx#syntax-e _tl160876160894_)))
                                (let ((_hd160878160900_
                                       (##car _e160877160897_))
                                      (_tl160879160902_
                                       (##cdr _e160877160897_)))
                                  (let ((_expr160905_ _hd160878160900_))
                                    (if (gx#stx-null? _tl160879160902_)
                                        (if '#t
                                            (let ((_g167006_
                                                   (gx#core-expand-expression+1
                                                    _expr160905_)))
                                              (begin
                                                (let ((_g167007_
                                                       (if (##values?
                                                            _g167006_)
                                                           (##vector-length
                                                            _g167006_)
                                                           1)))
                                                  (if (not (##fx= _g167007_ 2))
                                                      (error "Context expects 2 values"
                                                             _g167007_)))
                                                (let ((_e160907_
                                                       (##vector-ref
                                                        _g167006_
                                                        1)))
                                                  _e160907_)))
                                            (_E160873160885_))
                                        (_E160873160885_)))))
                              (_E160873160885_))))
                      (_E160873160885_)))))
          (_E160872160909_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind160815_ _e160816_ _rebind?160817_)
        (let* ((_e160818160828_ _bind160815_)
               (_E160820160832_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160818160828_)))
               (_E160819160854_
                (lambda ()
                  (if (gx#stx-pair? _e160818160828_)
                      (let ((_e160821160836_ (gx#syntax-e _e160818160828_)))
                        (let ((_hd160822160839_ (##car _e160821160836_))
                              (_tl160823160841_ (##cdr _e160821160836_)))
                          (let ((_id160844_ _hd160822160839_))
                            (if (gx#stx-pair? _tl160823160841_)
                                (let ((_e160824160846_
                                       (gx#syntax-e _tl160823160841_)))
                                  (let ((_hd160825160849_
                                         (##car _e160824160846_))
                                        (_tl160826160851_
                                         (##cdr _e160824160846_)))
                                    (if (gx#stx-null? _tl160826160851_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id160844_
                                             _e160816_
                                             _rebind?160817_)
                                            (_E160820160832_))
                                        (_E160820160832_))))
                                (_E160820160832_)))))
                      (_E160820160832_)))))
          (_E160819160854_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind160861_ _e160862_)
        (let ((_rebind?160864_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind160861_
           _e160862_
           _rebind?160864_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g167009_
        (let ((_g167008_ (##length _g167009_)))
          (cond ((##fx= _g167008_ 2)
                 (apply (lambda (_bind160861_ _e160862_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind160861_
                           _e160862_))
                        _g167009_))
                ((##fx= _g167008_ 3)
                 (apply (lambda (_bind160866_ _e160867_ _rebind?160868_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind160866_
                           _e160867_
                           _rebind?160868_))
                        _g167009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g167009_))))))
    (define gx#core-expand-expression%
      (lambda (_stx160773_)
        (let* ((_e160774160784_ _stx160773_)
               (_E160776160788_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160774160784_)))
               (_E160775160810_
                (lambda ()
                  (if (gx#stx-pair? _e160774160784_)
                      (let ((_e160777160792_ (gx#syntax-e _e160774160784_)))
                        (let ((_hd160778160795_ (##car _e160777160792_))
                              (_tl160779160797_ (##cdr _e160777160792_)))
                          (if (gx#stx-pair? _tl160779160797_)
                              (let ((_e160780160800_
                                     (gx#syntax-e _tl160779160797_)))
                                (let ((_hd160781160803_
                                       (##car _e160780160800_))
                                      (_tl160782160805_
                                       (##cdr _e160780160800_)))
                                  (let ((_expr160808_ _hd160781160803_))
                                    (if (gx#stx-null? _tl160782160805_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr160808_)
                                            (_E160776160788_))
                                        (_E160776160788_)))))
                              (_E160776160788_))))
                      (_E160776160788_)))))
          (_E160775160810_))))
    (define gx#core-expand-quote%
      (lambda (_stx160732_)
        (let* ((_e160733160743_ _stx160732_)
               (_E160735160747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160733160743_)))
               (_E160734160769_
                (lambda ()
                  (if (gx#stx-pair? _e160733160743_)
                      (let ((_e160736160751_ (gx#syntax-e _e160733160743_)))
                        (let ((_hd160737160754_ (##car _e160736160751_))
                              (_tl160738160756_ (##cdr _e160736160751_)))
                          (if (gx#stx-pair? _tl160738160756_)
                              (let ((_e160739160759_
                                     (gx#syntax-e _tl160738160756_)))
                                (let ((_hd160740160762_
                                       (##car _e160739160759_))
                                      (_tl160741160764_
                                       (##cdr _e160739160759_)))
                                  (let ((_e160767_ _hd160740160762_))
                                    (if (gx#stx-null? _tl160741160764_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e160767_)
                                                         '()))
                                             (gx#stx-source _stx160732_))
                                            (_E160735160747_))
                                        (_E160735160747_)))))
                              (_E160735160747_))))
                      (_E160735160747_)))))
          (_E160734160769_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx160691_)
        (let* ((_e160692160702_ _stx160691_)
               (_E160694160706_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160692160702_)))
               (_E160693160728_
                (lambda ()
                  (if (gx#stx-pair? _e160692160702_)
                      (let ((_e160695160710_ (gx#syntax-e _e160692160702_)))
                        (let ((_hd160696160713_ (##car _e160695160710_))
                              (_tl160697160715_ (##cdr _e160695160710_)))
                          (if (gx#stx-pair? _tl160697160715_)
                              (let ((_e160698160718_
                                     (gx#syntax-e _tl160697160715_)))
                                (let ((_hd160699160721_
                                       (##car _e160698160718_))
                                      (_tl160700160723_
                                       (##cdr _e160698160718_)))
                                  (let ((_e160726_ _hd160699160721_))
                                    (if (gx#stx-null? _tl160700160723_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e160726_)
                                                         '()))
                                             (gx#stx-source _stx160691_))
                                            (_E160694160706_))
                                        (_E160694160706_)))))
                              (_E160694160706_))))
                      (_E160694160706_)))))
          (_E160693160728_))))
    (define gx#core-expand-call%
      (lambda (_stx160648_)
        (let* ((_e160649160659_ _stx160648_)
               (_E160651160663_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160649160659_)))
               (_E160650160687_
                (lambda ()
                  (if (gx#stx-pair? _e160649160659_)
                      (let ((_e160652160667_ (gx#syntax-e _e160649160659_)))
                        (let ((_hd160653160670_ (##car _e160652160667_))
                              (_tl160654160672_ (##cdr _e160652160667_)))
                          (if (gx#stx-pair? _tl160654160672_)
                              (let ((_e160655160675_
                                     (gx#syntax-e _tl160654160672_)))
                                (let ((_hd160656160678_
                                       (##car _e160655160675_))
                                      (_tl160657160680_
                                       (##cdr _e160655160675_)))
                                  (let* ((_rator160683_ _hd160656160678_)
                                         (_args160685_ _tl160657160680_))
                                    (if (gx#stx-list? _args160685_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator160683_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args160685_))
                                         (gx#stx-source _stx160648_))
                                        (_E160651160663_)))))
                              (_E160651160663_))))
                      (_E160651160663_)))))
          (_E160650160687_))))
    (define gx#core-expand-if%
      (lambda (_stx160581_)
        (let* ((_e160582160598_ _stx160581_)
               (_E160584160602_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160582160598_)))
               (_E160583160644_
                (lambda ()
                  (if (gx#stx-pair? _e160582160598_)
                      (let ((_e160585160606_ (gx#syntax-e _e160582160598_)))
                        (let ((_hd160586160609_ (##car _e160585160606_))
                              (_tl160587160611_ (##cdr _e160585160606_)))
                          (if (gx#stx-pair? _tl160587160611_)
                              (let ((_e160588160614_
                                     (gx#syntax-e _tl160587160611_)))
                                (let ((_hd160589160617_
                                       (##car _e160588160614_))
                                      (_tl160590160619_
                                       (##cdr _e160588160614_)))
                                  (let ((_test160622_ _hd160589160617_))
                                    (if (gx#stx-pair? _tl160590160619_)
                                        (let ((_e160591160624_
                                               (gx#syntax-e _tl160590160619_)))
                                          (let ((_hd160592160627_
                                                 (##car _e160591160624_))
                                                (_tl160593160629_
                                                 (##cdr _e160591160624_)))
                                            (let ((_K160632_ _hd160592160627_))
                                              (if (gx#stx-pair?
                                                   _tl160593160629_)
                                                  (let ((_e160594160634_
                                                         (gx#syntax-e
                                                          _tl160593160629_)))
                                                    (let ((_hd160595160637_
                                                           (##car _e160594160634_))
                                                          (_tl160596160639_
                                                           (##cdr _e160594160634_)))
                                                      (let ((_E160642_
                                                             _hd160595160637_))
                                                        (if (gx#stx-null?
                                                             _tl160596160639_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test160622_)
                                     (cons (gx#core-expand-expression
                                            _K160632_)
                                           (cons (gx#core-expand-expression
                                                  _E160642_)
                                                 '()))))
                         (gx#stx-source _stx160581_))
                        (_E160584160602_))
                    (_E160584160602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160584160602_)))))
                                        (_E160584160602_)))))
                              (_E160584160602_))))
                      (_E160584160602_)))))
          (_E160583160644_))))
    (define gx#core-expand-ref%
      (lambda (_stx160540_)
        (let* ((_e160541160551_ _stx160540_)
               (_E160543160555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160541160551_)))
               (_E160542160577_
                (lambda ()
                  (if (gx#stx-pair? _e160541160551_)
                      (let ((_e160544160559_ (gx#syntax-e _e160541160551_)))
                        (let ((_hd160545160562_ (##car _e160544160559_))
                              (_tl160546160564_ (##cdr _e160544160559_)))
                          (if (gx#stx-pair? _tl160546160564_)
                              (let ((_e160547160567_
                                     (gx#syntax-e _tl160546160564_)))
                                (let ((_hd160548160570_
                                       (##car _e160547160567_))
                                      (_tl160549160572_
                                       (##cdr _e160547160567_)))
                                  (let ((_id160575_ _hd160548160570_))
                                    (if (gx#stx-null? _tl160549160572_)
                                        (if (gx#identifier? _id160575_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id160575_
                                                          _stx160540_)
                                                         '()))
                                             (gx#stx-source _stx160540_))
                                            (_E160543160555_))
                                        (_E160543160555_)))))
                              (_E160543160555_))))
                      (_E160543160555_)))))
          (_E160542160577_))))
    (define gx#core-expand-setq%
      (lambda (_stx160486_)
        (let* ((_e160487160500_ _stx160486_)
               (_E160489160504_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160487160500_)))
               (_E160488160536_
                (lambda ()
                  (if (gx#stx-pair? _e160487160500_)
                      (let ((_e160490160508_ (gx#syntax-e _e160487160500_)))
                        (let ((_hd160491160511_ (##car _e160490160508_))
                              (_tl160492160513_ (##cdr _e160490160508_)))
                          (if (gx#stx-pair? _tl160492160513_)
                              (let ((_e160493160516_
                                     (gx#syntax-e _tl160492160513_)))
                                (let ((_hd160494160519_
                                       (##car _e160493160516_))
                                      (_tl160495160521_
                                       (##cdr _e160493160516_)))
                                  (let ((_id160524_ _hd160494160519_))
                                    (if (gx#stx-pair? _tl160495160521_)
                                        (let ((_e160496160526_
                                               (gx#syntax-e _tl160495160521_)))
                                          (let ((_hd160497160529_
                                                 (##car _e160496160526_))
                                                (_tl160498160531_
                                                 (##cdr _e160496160526_)))
                                            (let ((_expr160534_
                                                   _hd160497160529_))
                                              (if (gx#stx-null?
                                                   _tl160498160531_)
                                                  (if (gx#identifier?
                                                       _id160524_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id160524_
                            _stx160486_)
                           (cons (gx#core-expand-expression _expr160534_)
                                 '())))
               (gx#stx-source _stx160486_))
              (_E160489160504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160489160504_)))))
                                        (_E160489160504_)))))
                              (_E160489160504_))))
                      (_E160489160504_)))))
          (_E160488160536_))))
    (define gx#macro-expand-extern
      (lambda (_stx160334_)
        (letrec ((_generate160336_
                  (lambda (_body160366_)
                    (let _lp160368_ ((_rest160370_ _body160366_)
                                     (_ns160371_
                                      (gx#core-context-namespace__0))
                                     (_r160372_ '()))
                      (let* ((_e160373160388_ _rest160370_)
                             (_E160386160392_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e160373160388_)))
                             (_E160382160396_
                              (lambda ()
                                (if (gx#stx-null? _e160373160388_)
                                    (if '#t
                                        (reverse _r160372_)
                                        (_E160386160392_))
                                    (_E160386160392_))))
                             (_E160375160453_
                              (lambda ()
                                (if (gx#stx-pair? _e160373160388_)
                                    (let ((_e160383160400_
                                           (gx#syntax-e _e160373160388_)))
                                      (let ((_hd160384160403_
                                             (##car _e160383160400_))
                                            (_tl160385160405_
                                             (##cdr _e160383160400_)))
                                        (let* ((_hd160408_ _hd160384160403_)
                                               (_rest160410_ _tl160385160405_))
                                          (if '#t
                                              (if (gx#identifier? _hd160408_)
                                                  (_lp160368_
                                                   _rest160410_
                                                   _ns160371_
                                                   (cons (cons _hd160408_
                                                               (cons (if _ns160371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd160408_
                                  _ns160371_
                                  '"#"
                                  _hd160408_)
                                 _hd160408_)
                             '()))
                 _r160372_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e160411160421_
                                                          _hd160408_)
                                                         (_E160413160425_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e160411160421_)))
                                                         (_E160412160449_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e160411160421_)
                        (let ((_e160414160429_ (gx#syntax-e _e160411160421_)))
                          (let ((_hd160415160432_ (##car _e160414160429_))
                                (_tl160416160434_ (##cdr _e160414160429_)))
                            (let ((_id160437_ _hd160415160432_))
                              (if (gx#stx-pair? _tl160416160434_)
                                  (let ((_e160417160439_
                                         (gx#syntax-e _tl160416160434_)))
                                    (let ((_hd160418160442_
                                           (##car _e160417160439_))
                                          (_tl160419160444_
                                           (##cdr _e160417160439_)))
                                      (let ((_eid160447_ _hd160418160442_))
                                        (if (gx#stx-null? _tl160419160444_)
                                            (if (and (gx#identifier?
                                                      _id160437_)
                                                     (gx#identifier?
                                                      _eid160447_))
                                                (_lp160368_
                                                 _rest160410_
                                                 _ns160371_
                                                 (cons (cons _id160437_
                                                             (cons _eid160447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r160372_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E160413160425_))
                                            (_E160413160425_)))))
                                  (_E160413160425_)))))
                        (_E160413160425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E160412160449_)))
                                              (_E160382160396_)))))
                                    (_E160382160396_))))
                             (_E160374160482_
                              (lambda ()
                                (if (gx#stx-pair? _e160373160388_)
                                    (let ((_e160376160457_
                                           (gx#syntax-e _e160373160388_)))
                                      (let ((_hd160377160460_
                                             (##car _e160376160457_))
                                            (_tl160378160462_
                                             (##cdr _e160376160457_)))
                                        (if (eq? (gx#stx-e _hd160377160460_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl160378160462_)
                                                (let ((_e160379160465_
                                                       (gx#syntax-e
                                                        _tl160378160462_)))
                                                  (let ((_hd160380160468_
                                                         (##car _e160379160465_))
                                                        (_tl160381160470_
                                                         (##cdr _e160379160465_)))
                                                    (let* ((_ns160473_
                                                            _hd160380160468_)
                                                           (_rest160475_
                                                            _tl160381160470_))
                                                      (if '#t
                                                          (let ((_ns160480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns160473_)
                             (symbol->string (gx#stx-e _ns160473_))
                             (if (or (gx#stx-string? _ns160473_)
                                     (gx#stx-false? _ns160473_))
                                 (gx#stx-e _ns160473_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx160334_
                                  _ns160473_)))))
                    (_lp160368_ _rest160475_ _ns160480_ _r160372_))
                  (_E160375160453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E160375160453_))
                                            (_E160375160453_))))
                                    (_E160375160453_)))))
                        (_E160374160482_))))))
          (let* ((_e160337160344_ _stx160334_)
                 (_E160339160348_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160337160344_)))
                 (_E160338160362_
                  (lambda ()
                    (if (gx#stx-pair? _e160337160344_)
                        (let ((_e160340160352_ (gx#syntax-e _e160337160344_)))
                          (let ((_hd160341160355_ (##car _e160340160352_))
                                (_tl160342160357_ (##cdr _e160340160352_)))
                            (let ((_body160360_ _tl160342160357_))
                              (if (gx#stx-list? _body160360_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate160336_ _body160360_))
                                  (_E160339160348_)))))
                        (_E160339160348_)))))
            (_E160338160362_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx160280_)
        (let* ((_e160281160294_ _stx160280_)
               (_E160283160298_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160281160294_)))
               (_E160282160330_
                (lambda ()
                  (if (gx#stx-pair? _e160281160294_)
                      (let ((_e160284160302_ (gx#syntax-e _e160281160294_)))
                        (let ((_hd160285160305_ (##car _e160284160302_))
                              (_tl160286160307_ (##cdr _e160284160302_)))
                          (if (gx#stx-pair? _tl160286160307_)
                              (let ((_e160287160310_
                                     (gx#syntax-e _tl160286160307_)))
                                (let ((_hd160288160313_
                                       (##car _e160287160310_))
                                      (_tl160289160315_
                                       (##cdr _e160287160310_)))
                                  (let ((_hd160318_ _hd160288160313_))
                                    (if (gx#stx-pair? _tl160289160315_)
                                        (let ((_e160290160320_
                                               (gx#syntax-e _tl160289160315_)))
                                          (let ((_hd160291160323_
                                                 (##car _e160290160320_))
                                                (_tl160292160325_
                                                 (##cdr _e160290160320_)))
                                            (let ((_expr160328_
                                                   _hd160291160323_))
                                              (if (gx#stx-null?
                                                   _tl160292160325_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd160318_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd160318_)
                          (cons _expr160328_ '())))
              (_E160283160298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160283160298_)))))
                                        (_E160283160298_)))))
                              (_E160283160298_))))
                      (_E160283160298_)))))
          (_E160282160330_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx160226_)
        (let* ((_e160227160240_ _stx160226_)
               (_E160229160244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160227160240_)))
               (_E160228160276_
                (lambda ()
                  (if (gx#stx-pair? _e160227160240_)
                      (let ((_e160230160248_ (gx#syntax-e _e160227160240_)))
                        (let ((_hd160231160251_ (##car _e160230160248_))
                              (_tl160232160253_ (##cdr _e160230160248_)))
                          (if (gx#stx-pair? _tl160232160253_)
                              (let ((_e160233160256_
                                     (gx#syntax-e _tl160232160253_)))
                                (let ((_hd160234160259_
                                       (##car _e160233160256_))
                                      (_tl160235160261_
                                       (##cdr _e160233160256_)))
                                  (let ((_hd160264_ _hd160234160259_))
                                    (if (gx#stx-pair? _tl160235160261_)
                                        (let ((_e160236160266_
                                               (gx#syntax-e _tl160235160261_)))
                                          (let ((_hd160237160269_
                                                 (##car _e160236160266_))
                                                (_tl160238160271_
                                                 (##cdr _e160236160266_)))
                                            (let ((_expr160274_
                                                   _hd160237160269_))
                                              (if (gx#stx-null?
                                                   _tl160238160271_)
                                                  (if (gx#identifier?
                                                       _hd160264_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd160264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr160274_ '())))
              (_E160229160244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160229160244_)))))
                                        (_E160229160244_)))))
                              (_E160229160244_))))
                      (_E160229160244_)))))
          (_E160228160276_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx160172_)
        (let* ((_e160173160186_ _stx160172_)
               (_E160175160190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160173160186_)))
               (_E160174160222_
                (lambda ()
                  (if (gx#stx-pair? _e160173160186_)
                      (let ((_e160176160194_ (gx#syntax-e _e160173160186_)))
                        (let ((_hd160177160197_ (##car _e160176160194_))
                              (_tl160178160199_ (##cdr _e160176160194_)))
                          (if (gx#stx-pair? _tl160178160199_)
                              (let ((_e160179160202_
                                     (gx#syntax-e _tl160178160199_)))
                                (let ((_hd160180160205_
                                       (##car _e160179160202_))
                                      (_tl160181160207_
                                       (##cdr _e160179160202_)))
                                  (let ((_id160210_ _hd160180160205_))
                                    (if (gx#stx-pair? _tl160181160207_)
                                        (let ((_e160182160212_
                                               (gx#syntax-e _tl160181160207_)))
                                          (let ((_hd160183160215_
                                                 (##car _e160182160212_))
                                                (_tl160184160217_
                                                 (##cdr _e160182160212_)))
                                            (let ((_alias-id160220_
                                                   _hd160183160215_))
                                              (if (gx#stx-null?
                                                   _tl160184160217_)
                                                  (if (and (gx#identifier?
                                                            _id160210_)
                                                           (gx#identifier?
                                                            _alias-id160220_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id160210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id160220_ '())))
              (_E160175160190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160175160190_)))))
                                        (_E160175160190_)))))
                              (_E160175160190_))))
                      (_E160175160190_)))))
          (_E160174160222_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx160129_)
        (let* ((_e160130160140_ _stx160129_)
               (_E160132160144_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160130160140_)))
               (_E160131160168_
                (lambda ()
                  (if (gx#stx-pair? _e160130160140_)
                      (let ((_e160133160148_ (gx#syntax-e _e160130160140_)))
                        (let ((_hd160134160151_ (##car _e160133160148_))
                              (_tl160135160153_ (##cdr _e160133160148_)))
                          (if (gx#stx-pair? _tl160135160153_)
                              (let ((_e160136160156_
                                     (gx#syntax-e _tl160135160153_)))
                                (let ((_hd160137160159_
                                       (##car _e160136160156_))
                                      (_tl160138160161_
                                       (##cdr _e160136160156_)))
                                  (let* ((_hd160164_ _hd160137160159_)
                                         (_body160166_ _tl160138160161_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd160164_)
                                             (gx#stx-list? _body160166_)
                                             (not (gx#stx-null? _body160166_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd160164_)
                                         _body160166_)
                                        (_E160132160144_)))))
                              (_E160132160144_))))
                      (_E160132160144_)))))
          (_E160131160168_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx160065_)
        (letrec ((_generate160067_
                  (lambda (_clause160097_)
                    (let* ((_e160098160105_ _clause160097_)
                           (_E160100160109_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx160065_
                               _clause160097_)))
                           (_E160099160125_
                            (lambda ()
                              (if (gx#stx-pair? _e160098160105_)
                                  (let ((_e160101160113_
                                         (gx#syntax-e _e160098160105_)))
                                    (let ((_hd160102160116_
                                           (##car _e160101160113_))
                                          (_tl160103160118_
                                           (##cdr _e160101160113_)))
                                      (let* ((_hd160121_ _hd160102160116_)
                                             (_body160123_ _tl160103160118_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd160121_)
                                                 (gx#stx-list? _body160123_)
                                                 (not (gx#stx-null?
                                                       _body160123_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd160121_)
                                                   _body160123_)
                                             (gx#stx-source _clause160097_))
                                            (_E160100160109_)))))
                                  (_E160100160109_)))))
                      (_E160099160125_)))))
          (let* ((_e160068160075_ _stx160065_)
                 (_E160070160079_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160068160075_)))
                 (_E160069160093_
                  (lambda ()
                    (if (gx#stx-pair? _e160068160075_)
                        (let ((_e160071160083_ (gx#syntax-e _e160068160075_)))
                          (let ((_hd160072160086_ (##car _e160071160083_))
                                (_tl160073160088_ (##cdr _e160071160083_)))
                            (let ((_clauses160091_ _tl160073160088_))
                              (if (gx#stx-list? _clauses160091_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate160067_
                                    _clauses160091_))
                                  (_E160070160079_)))))
                        (_E160070160079_)))))
            (_E160069160093_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx159966_ _form159967_)
        (letrec ((_generate159969_
                  (lambda (_bind160012_)
                    (let* ((_e160013160023_ _bind160012_)
                           (_E160015160027_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx159966_
                               _bind160012_)))
                           (_E160014160051_
                            (lambda ()
                              (if (gx#stx-pair? _e160013160023_)
                                  (let ((_e160016160031_
                                         (gx#syntax-e _e160013160023_)))
                                    (let ((_hd160017160034_
                                           (##car _e160016160031_))
                                          (_tl160018160036_
                                           (##cdr _e160016160031_)))
                                      (let ((_ids160039_ _hd160017160034_))
                                        (if (gx#stx-pair? _tl160018160036_)
                                            (let ((_e160019160041_
                                                   (gx#syntax-e
                                                    _tl160018160036_)))
                                              (let ((_hd160020160044_
                                                     (##car _e160019160041_))
                                                    (_tl160021160046_
                                                     (##cdr _e160019160041_)))
                                                (let ((_expr160049_
                                                       _hd160020160044_))
                                                  (if (gx#stx-null?
                                                       _tl160021160046_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids160039_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids160039_)
                        (cons _expr160049_ '()))
                  (_E160015160027_))
              (_E160015160027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E160015160027_)))))
                                  (_E160015160027_)))))
                      (_E160014160051_)))))
          (let* ((_e159970159980_ _stx159966_)
                 (_E159972159984_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159970159980_)))
                 (_E159971160008_
                  (lambda ()
                    (if (gx#stx-pair? _e159970159980_)
                        (let ((_e159973159988_ (gx#syntax-e _e159970159980_)))
                          (let ((_hd159974159991_ (##car _e159973159988_))
                                (_tl159975159993_ (##cdr _e159973159988_)))
                            (if (gx#stx-pair? _tl159975159993_)
                                (let ((_e159976159996_
                                       (gx#syntax-e _tl159975159993_)))
                                  (let ((_hd159977159999_
                                         (##car _e159976159996_))
                                        (_tl159978160001_
                                         (##cdr _e159976159996_)))
                                    (let* ((_hd160004_ _hd159977159999_)
                                           (_body160006_ _tl159978160001_))
                                      (if (and (gx#stx-list? _hd160004_)
                                               (gx#stx-list? _body160006_)
                                               (not (gx#stx-null?
                                                     _body160006_)))
                                          (gx#core-cons*
                                           _form159967_
                                           (gx#stx-map1
                                            _generate159969_
                                            _hd160004_)
                                           _body160006_)
                                          (_E159972159984_)))))
                                (_E159972159984_))))
                        (_E159972159984_)))))
            (_E159971160008_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx160058_)
        (let ((_form160060_ '%#let-values))
          (gx#macro-expand-let-values__% _stx160058_ _form160060_))))
    (define gx#macro-expand-let-values
      (lambda _g167011_
        (let ((_g167010_ (##length _g167011_)))
          (cond ((##fx= _g167010_ 1)
                 (apply (lambda (_stx160058_)
                          (gx#macro-expand-let-values__0 _stx160058_))
                        _g167011_))
                ((##fx= _g167010_ 2)
                 (apply (lambda (_stx160062_ _form160063_)
                          (gx#macro-expand-let-values__%
                           _stx160062_
                           _form160063_))
                        _g167011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g167011_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx159963_)
        (gx#macro-expand-let-values__% _stx159963_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx159961_)
        (gx#macro-expand-let-values__% _stx159961_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx159852_)
        (let* ((_e159853159879_ _stx159852_)
               (_E159865159883_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159853159879_)))
               (_E159855159925_
                (lambda ()
                  (if (gx#stx-pair? _e159853159879_)
                      (let ((_e159866159887_ (gx#syntax-e _e159853159879_)))
                        (let ((_hd159867159890_ (##car _e159866159887_))
                              (_tl159868159892_ (##cdr _e159866159887_)))
                          (if (gx#stx-pair? _tl159868159892_)
                              (let ((_e159869159895_
                                     (gx#syntax-e _tl159868159892_)))
                                (let ((_hd159870159898_
                                       (##car _e159869159895_))
                                      (_tl159871159900_
                                       (##cdr _e159869159895_)))
                                  (let ((_test159903_ _hd159870159898_))
                                    (if (gx#stx-pair? _tl159871159900_)
                                        (let ((_e159872159905_
                                               (gx#syntax-e _tl159871159900_)))
                                          (let ((_hd159873159908_
                                                 (##car _e159872159905_))
                                                (_tl159874159910_
                                                 (##cdr _e159872159905_)))
                                            (let ((_K159913_ _hd159873159908_))
                                              (if (gx#stx-pair?
                                                   _tl159874159910_)
                                                  (let ((_e159875159915_
                                                         (gx#syntax-e
                                                          _tl159874159910_)))
                                                    (let ((_hd159876159918_
                                                           (##car _e159875159915_))
                                                          (_tl159877159920_
                                                           (##cdr _e159875159915_)))
                                                      (let ((_E159923_
                                                             _hd159876159918_))
                                                        (if (gx#stx-null?
                                                             _tl159877159920_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test159903_
                         _K159913_
                         _E159923_)
                        (_E159865159883_))
                    (_E159865159883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159865159883_)))))
                                        (_E159865159883_)))))
                              (_E159865159883_))))
                      (_E159865159883_))))
               (_E159854159957_
                (lambda ()
                  (if (gx#stx-pair? _e159853159879_)
                      (let ((_e159856159929_ (gx#syntax-e _e159853159879_)))
                        (let ((_hd159857159932_ (##car _e159856159929_))
                              (_tl159858159934_ (##cdr _e159856159929_)))
                          (if (gx#stx-pair? _tl159858159934_)
                              (let ((_e159859159937_
                                     (gx#syntax-e _tl159858159934_)))
                                (let ((_hd159860159940_
                                       (##car _e159859159937_))
                                      (_tl159861159942_
                                       (##cdr _e159859159937_)))
                                  (let ((_test159945_ _hd159860159940_))
                                    (if (gx#stx-pair? _tl159861159942_)
                                        (let ((_e159862159947_
                                               (gx#syntax-e _tl159861159942_)))
                                          (let ((_hd159863159950_
                                                 (##car _e159862159947_))
                                                (_tl159864159952_
                                                 (##cdr _e159862159947_)))
                                            (let ((_K159955_ _hd159863159950_))
                                              (if (gx#stx-null?
                                                   _tl159864159952_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test159945_
                                                       _K159955_
                                                       '#!void)
                                                      (_E159855159925_))
                                                  (_E159855159925_)))))
                                        (_E159855159925_)))))
                              (_E159855159925_))))
                      (_E159855159925_)))))
          (_E159854159957_))))
    (define gx#free-identifier=?
      (lambda (_xid159840_ _yid159841_)
        (let ((_xe159843_ (gx#resolve-identifier__0 _xid159840_))
              (_ye159844_ (gx#resolve-identifier__0 _yid159841_)))
          (if (and _xe159843_ _ye159844_)
              (let ((_$e159846_ (eq? _xe159843_ _ye159844_)))
                (if _$e159846_
                    _$e159846_
                    (if (##structure-instance-of? _xe159843_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye159844_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe159843_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye159844_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe159843_ _ye159844_)
                  '#f
                  (gx#stx-eq? _xid159840_ _yid159841_))))))
    (define gx#bound-identifier=?
      (lambda (_xid159824_ _yid159825_)
        (letrec ((_context159827_
                  (lambda (_e159838_)
                    (if (##structure-direct-instance-of?
                         _e159838_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e159838_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks159828_
                  (lambda (_e159836_)
                    (if (symbol? _e159836_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e159836_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e159836_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e159836_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap159829_
                  (lambda (_e159834_)
                    (if (symbol? _e159834_)
                        _e159834_
                        (gx#syntax-local-unwrap _e159834_)))))
          (let ((_x159831_ (_unwrap159829_ _xid159824_))
                (_y159832_ (_unwrap159829_ _yid159825_)))
            (if (gx#stx-eq? _x159831_ _y159832_)
                (if (eq? (_context159827_ _x159831_)
                         (_context159827_ _y159832_))
                    (equal? (_marks159828_ _x159831_)
                            (_marks159828_ _y159832_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx159822_)
        (if (gx#identifier? _stx159822_)
            (gx#core-identifier=? _stx159822_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx159820_)
        (if (gx#identifier? _stx159820_)
            (gx#core-identifier=? _stx159820_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x159818_)
        (if (gx#identifier? _x159818_)
            (if (not (gx#underscore? _x159818_)) _x159818_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx159764_ _where159765_)
        (let _lp159767_ ((_rest159769_ (gx#syntax->list _stx159764_)))
          (let* ((_rest159770159778_ _rest159769_)
                 (_else159772159786_ (lambda () '#t))
                 (_K159774159796_
                  (lambda (_rest159789_ _hd159790_)
                    (if (not (gx#identifier? _hd159790_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where159765_
                         _hd159790_)
                        (if (find (lambda (_g159791159793_)
                                    (gx#bound-identifier=?
                                     _g159791159793_
                                     _hd159790_))
                                  _rest159789_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where159765_
                             _hd159790_)
                            (_lp159767_ _rest159789_))))))
            (if (##pair? _rest159770159778_)
                (let ((_hd159775159799_ (##car _rest159770159778_))
                      (_tl159776159801_ (##cdr _rest159770159778_)))
                  (let* ((_hd159804_ _hd159775159799_)
                         (_rest159806_ _tl159776159801_))
                    (_K159774159796_ _rest159806_ _hd159804_)))
                (_else159772159786_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx159811_)
        (let ((_where159813_ _stx159811_))
          (gx#check-duplicate-identifiers__% _stx159811_ _where159813_))))
    (define gx#check-duplicate-identifiers
      (lambda _g167013_
        (let ((_g167012_ (##length _g167013_)))
          (cond ((##fx= _g167012_ 1)
                 (apply (lambda (_stx159811_)
                          (gx#check-duplicate-identifiers__0 _stx159811_))
                        _g167013_))
                ((##fx= _g167012_ 2)
                 (apply (lambda (_stx159815_ _where159816_)
                          (gx#check-duplicate-identifiers__%
                           _stx159815_
                           _where159816_))
                        _g167013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g167013_))))))
    (define gx#core-bind-values?
      (lambda (_stx159756_)
        (gx#stx-andmap
         (lambda (_x159758_)
           (let ((_$e159760_ (gx#identifier? _x159758_)))
             (if _$e159760_ _$e159760_ (gx#stx-false? _x159758_))))
         _stx159756_)))
    (define gx#core-bind-values!__%
      (lambda (_stx159720_ _rebind?159721_ _phi159722_ _ctx159723_)
        (gx#stx-for-each1
         (lambda (_id159725_)
           (if (gx#identifier? _id159725_)
               (gx#core-bind-runtime!__%
                _id159725_
                _rebind?159721_
                _phi159722_
                _ctx159723_)
               '#!void))
         _stx159720_)))
    (define gx#core-bind-values!__0
      (lambda (_stx159730_)
        (let* ((_rebind?159732_ '#f)
               (_phi159734_ (gx#current-expander-phi))
               (_ctx159736_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx159730_
           _rebind?159732_
           _phi159734_
           _ctx159736_))))
    (define gx#core-bind-values!__1
      (lambda (_stx159738_ _rebind?159739_)
        (let* ((_phi159741_ (gx#current-expander-phi))
               (_ctx159743_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx159738_
           _rebind?159739_
           _phi159741_
           _ctx159743_))))
    (define gx#core-bind-values!__2
      (lambda (_stx159745_ _rebind?159746_ _phi159747_)
        (let ((_ctx159749_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx159745_
           _rebind?159746_
           _phi159747_
           _ctx159749_))))
    (define gx#core-bind-values!
      (lambda _g167015_
        (let ((_g167014_ (##length _g167015_)))
          (cond ((##fx= _g167014_ 1)
                 (apply (lambda (_stx159730_)
                          (gx#core-bind-values!__0 _stx159730_))
                        _g167015_))
                ((##fx= _g167014_ 2)
                 (apply (lambda (_stx159738_ _rebind?159739_)
                          (gx#core-bind-values!__1
                           _stx159738_
                           _rebind?159739_))
                        _g167015_))
                ((##fx= _g167014_ 3)
                 (apply (lambda (_stx159745_ _rebind?159746_ _phi159747_)
                          (gx#core-bind-values!__2
                           _stx159745_
                           _rebind?159746_
                           _phi159747_))
                        _g167015_))
                ((##fx= _g167014_ 4)
                 (apply (lambda (_stx159751_
                                 _rebind?159752_
                                 _phi159753_
                                 _ctx159754_)
                          (gx#core-bind-values!__%
                           _stx159751_
                           _rebind?159752_
                           _phi159753_
                           _ctx159754_))
                        _g167015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g167015_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx159715_)
        (gx#stx-map1
         (lambda (_x159717_)
           (if (gx#identifier? _x159717_)
               (gx#core-quote-syntax__0 _x159717_)
               '#f))
         _stx159715_)))
    (define gx#core-runtime-ref?
      (lambda (_stx159708_)
        (if (gx#identifier? _stx159708_)
            (let* ((_bind159710_ (gx#resolve-identifier__0 _stx159708_))
                   (_$e159712_ (not _bind159710_)))
              (if _$e159712_
                  _$e159712_
                  (##structure-instance-of?
                   _bind159710_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id159700_ _form159701_)
        (let ((_bind159703_ (gx#resolve-identifier__0 _id159700_)))
          (if (##structure-instance-of? _bind159703_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id159700_)
              (if (not _bind159703_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id159700_)))
                      (gx#core-quote-syntax__0 _id159700_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form159701_
                       _id159700_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form159701_
                   _id159700_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id159659_ _rebind?159660_ _phi159661_ _ctx159662_)
        (let* ((_key159664_ (gx#core-identifier-key _id159659_))
               (_eid159666_
                (gx#make-binding-id__%
                 _key159664_
                 '#f
                 _phi159661_
                 _ctx159662_))
               (_bind159668_
                (if (##structure-instance-of?
                     _ctx159662_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid159666_
                     _key159664_
                     _phi159661_
                     _ctx159662_)
                    (if (##structure-instance-of?
                         _ctx159662_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid159666_
                         _key159664_
                         _phi159661_)
                        (if (##structure-instance-of?
                             _ctx159662_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid159666_
                             _key159664_
                             _phi159661_)
                            (##structure
                             gx#runtime-binding::t
                             _eid159666_
                             _key159664_
                             _phi159661_))))))
          (gx#bind-identifier!__%
           _id159659_
           _bind159668_
           _rebind?159660_
           _phi159661_
           _ctx159662_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id159674_)
        (let* ((_rebind?159676_ '#f)
               (_phi159678_ (gx#current-expander-phi))
               (_ctx159680_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id159674_
           _rebind?159676_
           _phi159678_
           _ctx159680_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id159682_ _rebind?159683_)
        (let* ((_phi159685_ (gx#current-expander-phi))
               (_ctx159687_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id159682_
           _rebind?159683_
           _phi159685_
           _ctx159687_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id159689_ _rebind?159690_ _phi159691_)
        (let ((_ctx159693_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id159689_
           _rebind?159690_
           _phi159691_
           _ctx159693_))))
    (define gx#core-bind-runtime!
      (lambda _g167017_
        (let ((_g167016_ (##length _g167017_)))
          (cond ((##fx= _g167016_ 1)
                 (apply (lambda (_id159674_)
                          (gx#core-bind-runtime!__0 _id159674_))
                        _g167017_))
                ((##fx= _g167016_ 2)
                 (apply (lambda (_id159682_ _rebind?159683_)
                          (gx#core-bind-runtime!__1
                           _id159682_
                           _rebind?159683_))
                        _g167017_))
                ((##fx= _g167016_ 3)
                 (apply (lambda (_id159689_ _rebind?159690_ _phi159691_)
                          (gx#core-bind-runtime!__2
                           _id159689_
                           _rebind?159690_
                           _phi159691_))
                        _g167017_))
                ((##fx= _g167016_ 4)
                 (apply (lambda (_id159695_
                                 _rebind?159696_
                                 _phi159697_
                                 _ctx159698_)
                          (gx#core-bind-runtime!__%
                           _id159695_
                           _rebind?159696_
                           _phi159697_
                           _ctx159698_))
                        _g167017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g167017_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id159614_ _eid159615_ _rebind?159616_ _phi159617_ _ctx159618_)
        (let* ((_key159620_ (gx#core-identifier-key _id159614_))
               (_bind159622_
                (if (##structure-instance-of?
                     _ctx159618_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid159615_
                     _key159620_
                     _phi159617_
                     _ctx159618_)
                    (if (##structure-instance-of?
                         _ctx159618_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid159615_
                         _key159620_
                         _phi159617_)
                        (##structure
                         gx#runtime-binding::t
                         _eid159615_
                         _key159620_
                         _phi159617_)))))
          (gx#bind-identifier!__%
           _id159614_
           _bind159622_
           _rebind?159616_
           _phi159617_
           _ctx159618_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id159628_ _eid159629_)
        (let* ((_rebind?159631_ '#f)
               (_phi159633_ (gx#current-expander-phi))
               (_ctx159635_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id159628_
           _eid159629_
           _rebind?159631_
           _phi159633_
           _ctx159635_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id159637_ _eid159638_ _rebind?159639_)
        (let* ((_phi159641_ (gx#current-expander-phi))
               (_ctx159643_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id159637_
           _eid159638_
           _rebind?159639_
           _phi159641_
           _ctx159643_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id159645_ _eid159646_ _rebind?159647_ _phi159648_)
        (let ((_ctx159650_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id159645_
           _eid159646_
           _rebind?159647_
           _phi159648_
           _ctx159650_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g167019_
        (let ((_g167018_ (##length _g167019_)))
          (cond ((##fx= _g167018_ 2)
                 (apply (lambda (_id159628_ _eid159629_)
                          (gx#core-bind-runtime-reference!__0
                           _id159628_
                           _eid159629_))
                        _g167019_))
                ((##fx= _g167018_ 3)
                 (apply (lambda (_id159637_ _eid159638_ _rebind?159639_)
                          (gx#core-bind-runtime-reference!__1
                           _id159637_
                           _eid159638_
                           _rebind?159639_))
                        _g167019_))
                ((##fx= _g167018_ 4)
                 (apply (lambda (_id159645_
                                 _eid159646_
                                 _rebind?159647_
                                 _phi159648_)
                          (gx#core-bind-runtime-reference!__2
                           _id159645_
                           _eid159646_
                           _rebind?159647_
                           _phi159648_))
                        _g167019_))
                ((##fx= _g167018_ 5)
                 (apply (lambda (_id159652_
                                 _eid159653_
                                 _rebind?159654_
                                 _phi159655_
                                 _ctx159656_)
                          (gx#core-bind-runtime-reference!__%
                           _id159652_
                           _eid159653_
                           _rebind?159654_
                           _phi159655_
                           _ctx159656_))
                        _g167019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g167019_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id159574_ _eid159575_ _rebind?159576_ _phi159577_ _ctx159578_)
        (gx#bind-identifier!__%
         _id159574_
         (##structure
          gx#extern-binding::t
          _eid159575_
          (gx#core-identifier-key _id159574_)
          _phi159577_)
         _rebind?159576_
         _phi159577_
         _ctx159578_)))
    (define gx#core-bind-extern!__0
      (lambda (_id159583_ _eid159584_)
        (let* ((_rebind?159586_ '#f)
               (_phi159588_ (gx#current-expander-phi))
               (_ctx159590_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id159583_
           _eid159584_
           _rebind?159586_
           _phi159588_
           _ctx159590_))))
    (define gx#core-bind-extern!__1
      (lambda (_id159592_ _eid159593_ _rebind?159594_)
        (let* ((_phi159596_ (gx#current-expander-phi))
               (_ctx159598_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id159592_
           _eid159593_
           _rebind?159594_
           _phi159596_
           _ctx159598_))))
    (define gx#core-bind-extern!__2
      (lambda (_id159600_ _eid159601_ _rebind?159602_ _phi159603_)
        (let ((_ctx159605_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id159600_
           _eid159601_
           _rebind?159602_
           _phi159603_
           _ctx159605_))))
    (define gx#core-bind-extern!
      (lambda _g167021_
        (let ((_g167020_ (##length _g167021_)))
          (cond ((##fx= _g167020_ 2)
                 (apply (lambda (_id159583_ _eid159584_)
                          (gx#core-bind-extern!__0 _id159583_ _eid159584_))
                        _g167021_))
                ((##fx= _g167020_ 3)
                 (apply (lambda (_id159592_ _eid159593_ _rebind?159594_)
                          (gx#core-bind-extern!__1
                           _id159592_
                           _eid159593_
                           _rebind?159594_))
                        _g167021_))
                ((##fx= _g167020_ 4)
                 (apply (lambda (_id159600_
                                 _eid159601_
                                 _rebind?159602_
                                 _phi159603_)
                          (gx#core-bind-extern!__2
                           _id159600_
                           _eid159601_
                           _rebind?159602_
                           _phi159603_))
                        _g167021_))
                ((##fx= _g167020_ 5)
                 (apply (lambda (_id159607_
                                 _eid159608_
                                 _rebind?159609_
                                 _phi159610_
                                 _ctx159611_)
                          (gx#core-bind-extern!__%
                           _id159607_
                           _eid159608_
                           _rebind?159609_
                           _phi159610_
                           _ctx159611_))
                        _g167021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g167021_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id159528_ _e159529_ _rebind?159530_ _phi159531_ _ctx159532_)
        (gx#bind-identifier!__%
         _id159528_
         (let ((_key159537_ (gx#core-identifier-key _id159528_))
               (_e159538_
                (if (or (##structure-instance-of? _e159529_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e159529_
                         'gx#expander-context::t))
                    _e159529_
                    (##structure
                     gx#user-expander::t
                     _e159529_
                     _ctx159532_
                     _phi159531_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key159537_ '#t _phi159531_ _ctx159532_)
            _key159537_
            _phi159531_
            _e159538_))
         _rebind?159530_
         _phi159531_
         _ctx159532_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id159543_ _e159544_)
        (let* ((_rebind?159546_ '#f)
               (_phi159548_ (gx#current-expander-phi))
               (_ctx159550_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id159543_
           _e159544_
           _rebind?159546_
           _phi159548_
           _ctx159550_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id159552_ _e159553_ _rebind?159554_)
        (let* ((_phi159556_ (gx#current-expander-phi))
               (_ctx159558_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id159552_
           _e159553_
           _rebind?159554_
           _phi159556_
           _ctx159558_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id159560_ _e159561_ _rebind?159562_ _phi159563_)
        (let ((_ctx159565_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id159560_
           _e159561_
           _rebind?159562_
           _phi159563_
           _ctx159565_))))
    (define gx#core-bind-syntax!
      (lambda _g167023_
        (let ((_g167022_ (##length _g167023_)))
          (cond ((##fx= _g167022_ 2)
                 (apply (lambda (_id159543_ _e159544_)
                          (gx#core-bind-syntax!__0 _id159543_ _e159544_))
                        _g167023_))
                ((##fx= _g167022_ 3)
                 (apply (lambda (_id159552_ _e159553_ _rebind?159554_)
                          (gx#core-bind-syntax!__1
                           _id159552_
                           _e159553_
                           _rebind?159554_))
                        _g167023_))
                ((##fx= _g167022_ 4)
                 (apply (lambda (_id159560_
                                 _e159561_
                                 _rebind?159562_
                                 _phi159563_)
                          (gx#core-bind-syntax!__2
                           _id159560_
                           _e159561_
                           _rebind?159562_
                           _phi159563_))
                        _g167023_))
                ((##fx= _g167022_ 5)
                 (apply (lambda (_id159567_
                                 _e159568_
                                 _rebind?159569_
                                 _phi159570_
                                 _ctx159571_)
                          (gx#core-bind-syntax!__%
                           _id159567_
                           _e159568_
                           _rebind?159569_
                           _phi159570_
                           _ctx159571_))
                        _g167023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g167023_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id159511_ _e159512_ _rebind?159513_)
        (gx#core-bind-syntax!__%
         _id159511_
         _e159512_
         _rebind?159513_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id159518_ _e159519_)
        (let ((_rebind?159521_ '#f))
          (gx#core-bind-root-syntax!__%
           _id159518_
           _e159519_
           _rebind?159521_))))
    (define gx#core-bind-root-syntax!
      (lambda _g167025_
        (let ((_g167024_ (##length _g167025_)))
          (cond ((##fx= _g167024_ 2)
                 (apply (lambda (_id159518_ _e159519_)
                          (gx#core-bind-root-syntax!__0 _id159518_ _e159519_))
                        _g167025_))
                ((##fx= _g167024_ 3)
                 (apply (lambda (_id159523_ _e159524_ _rebind?159525_)
                          (gx#core-bind-root-syntax!__%
                           _id159523_
                           _e159524_
                           _rebind?159525_))
                        _g167025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g167025_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id159469_
               _alias-id159470_
               _rebind?159471_
               _phi159472_
               _ctx159473_)
        (gx#bind-identifier!__%
         _id159469_
         (let ((_key159475_ (gx#core-identifier-key _id159469_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key159475_ '#t _phi159472_ _ctx159473_)
            _key159475_
            _phi159472_
            _alias-id159470_))
         _rebind?159471_
         _phi159472_
         _ctx159473_)))
    (define gx#core-bind-alias!__0
      (lambda (_id159480_ _alias-id159481_)
        (let* ((_rebind?159483_ '#f)
               (_phi159485_ (gx#current-expander-phi))
               (_ctx159487_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id159480_
           _alias-id159481_
           _rebind?159483_
           _phi159485_
           _ctx159487_))))
    (define gx#core-bind-alias!__1
      (lambda (_id159489_ _alias-id159490_ _rebind?159491_)
        (let* ((_phi159493_ (gx#current-expander-phi))
               (_ctx159495_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id159489_
           _alias-id159490_
           _rebind?159491_
           _phi159493_
           _ctx159495_))))
    (define gx#core-bind-alias!__2
      (lambda (_id159497_ _alias-id159498_ _rebind?159499_ _phi159500_)
        (let ((_ctx159502_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id159497_
           _alias-id159498_
           _rebind?159499_
           _phi159500_
           _ctx159502_))))
    (define gx#core-bind-alias!
      (lambda _g167027_
        (let ((_g167026_ (##length _g167027_)))
          (cond ((##fx= _g167026_ 2)
                 (apply (lambda (_id159480_ _alias-id159481_)
                          (gx#core-bind-alias!__0 _id159480_ _alias-id159481_))
                        _g167027_))
                ((##fx= _g167026_ 3)
                 (apply (lambda (_id159489_ _alias-id159490_ _rebind?159491_)
                          (gx#core-bind-alias!__1
                           _id159489_
                           _alias-id159490_
                           _rebind?159491_))
                        _g167027_))
                ((##fx= _g167026_ 4)
                 (apply (lambda (_id159497_
                                 _alias-id159498_
                                 _rebind?159499_
                                 _phi159500_)
                          (gx#core-bind-alias!__2
                           _id159497_
                           _alias-id159498_
                           _rebind?159499_
                           _phi159500_))
                        _g167027_))
                ((##fx= _g167026_ 5)
                 (apply (lambda (_id159504_
                                 _alias-id159505_
                                 _rebind?159506_
                                 _phi159507_
                                 _ctx159508_)
                          (gx#core-bind-alias!__%
                           _id159504_
                           _alias-id159505_
                           _rebind?159506_
                           _phi159507_
                           _ctx159508_))
                        _g167027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g167027_))))))
    (define gx#make-binding-id__%
      (lambda (_key159426_ _syntax?159427_ _phi159428_ _ctx159429_)
        (if (uninterned-symbol? _key159426_)
            (gensym 'L)
            (if (pair? _key159426_)
                (gensym (car _key159426_))
                (if (##structure-instance-of? _ctx159429_ 'gx#top-context::t)
                    (let ((_ns159431_
                           (gx#core-context-namespace__% _ctx159429_)))
                      (if (and (fxzero? _phi159428_) (not _syntax?159427_))
                          (if _ns159431_
                              (make-symbol__1 _ns159431_ '"#" _key159426_)
                              _key159426_)
                          (if _syntax?159427_
                              (make-symbol__1
                               (let ((_$e159433_ _ns159431_))
                                 (if _$e159433_ _$e159433_ '""))
                               '"[:"
                               (number->string _phi159428_)
                               '":]#"
                               _key159426_)
                              (make-symbol__1
                               (let ((_$e159436_ _ns159431_))
                                 (if _$e159436_ _$e159436_ '""))
                               '"["
                               (number->string _phi159428_)
                               '"]#"
                               _key159426_))))
                    (gensym _key159426_))))))
    (define gx#make-binding-id__0
      (lambda (_key159442_)
        (let* ((_syntax?159444_ '#f)
               (_phi159446_ (gx#current-expander-phi))
               (_ctx159448_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key159442_
           _syntax?159444_
           _phi159446_
           _ctx159448_))))
    (define gx#make-binding-id__1
      (lambda (_key159450_ _syntax?159451_)
        (let* ((_phi159453_ (gx#current-expander-phi))
               (_ctx159455_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key159450_
           _syntax?159451_
           _phi159453_
           _ctx159455_))))
    (define gx#make-binding-id__2
      (lambda (_key159457_ _syntax?159458_ _phi159459_)
        (let ((_ctx159461_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key159457_
           _syntax?159458_
           _phi159459_
           _ctx159461_))))
    (define gx#make-binding-id
      (lambda _g167029_
        (let ((_g167028_ (##length _g167029_)))
          (cond ((##fx= _g167028_ 1)
                 (apply (lambda (_key159442_)
                          (gx#make-binding-id__0 _key159442_))
                        _g167029_))
                ((##fx= _g167028_ 2)
                 (apply (lambda (_key159450_ _syntax?159451_)
                          (gx#make-binding-id__1 _key159450_ _syntax?159451_))
                        _g167029_))
                ((##fx= _g167028_ 3)
                 (apply (lambda (_key159457_ _syntax?159458_ _phi159459_)
                          (gx#make-binding-id__2
                           _key159457_
                           _syntax?159458_
                           _phi159459_))
                        _g167029_))
                ((##fx= _g167028_ 4)
                 (apply (lambda (_key159463_
                                 _syntax?159464_
                                 _phi159465_
                                 _ctx159466_)
                          (gx#make-binding-id__%
                           _key159463_
                           _syntax?159464_
                           _phi159465_
                           _ctx159466_))
                        _g167029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g167029_))))))))
