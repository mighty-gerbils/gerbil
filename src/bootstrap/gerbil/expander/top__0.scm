(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707773927)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx154555_)
        (letrec ((_expand-special154557_
                  (lambda (_hd154559_ _K154560_ _rest154561_ _r154562_)
                    (_K154560_
                     _rest154561_
                     (cons (gx#core-expand-top _hd154559_) _r154562_)))))
          (gx#core-expand-block__0 _stx154555_ _expand-special154557_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154308_)
        (letrec ((_expand-special154310_
                  (lambda (_hd154430_ _K154431_ _rest154432_ _r154433_)
                    (let* ((_K154437_
                            (lambda (_e154435_)
                              (_K154431_
                               _rest154432_
                               (cons _e154435_ _r154433_))))
                           (_e154438154467_ _hd154430_)
                           (_E154462154471_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154438154467_)))
                           (_E154458154483_
                            (lambda ()
                              (if (gx#stx-pair? _e154438154467_)
                                  (let ((_e154463154475_
                                         (gx#syntax-e _e154438154467_)))
                                    (let ((_hd154464154478_
                                           (##car _e154463154475_))
                                          (_tl154465154480_
                                           (##cdr _e154463154475_)))
                                      (if (and (gx#identifier?
                                                _hd154464154478_)
                                               (gx#core-identifier=?
                                                _hd154464154478_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154437_
                                               (gx#core-expand-define-runtime%
                                                _hd154430_))
                                              (_E154462154471_))
                                          (_E154462154471_))))
                                  (_E154462154471_))))
                           (_E154454154495_
                            (lambda ()
                              (if (gx#stx-pair? _e154438154467_)
                                  (let ((_e154459154487_
                                         (gx#syntax-e _e154438154467_)))
                                    (let ((_hd154460154490_
                                           (##car _e154459154487_))
                                          (_tl154461154492_
                                           (##cdr _e154459154487_)))
                                      (if (and (gx#identifier?
                                                _hd154460154490_)
                                               (gx#core-identifier=?
                                                _hd154460154490_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154437_
                                               (gx#core-expand-define-alias%
                                                _hd154430_))
                                              (_E154458154483_))
                                          (_E154458154483_))))
                                  (_E154458154483_))))
                           (_E154444154507_
                            (lambda ()
                              (if (gx#stx-pair? _e154438154467_)
                                  (let ((_e154455154499_
                                         (gx#syntax-e _e154438154467_)))
                                    (let ((_hd154456154502_
                                           (##car _e154455154499_))
                                          (_tl154457154504_
                                           (##cdr _e154455154499_)))
                                      (if (and (gx#identifier?
                                                _hd154456154502_)
                                               (gx#core-identifier=?
                                                _hd154456154502_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154437_
                                               (gx#core-expand-define-syntax%
                                                _hd154430_))
                                              (_E154454154495_))
                                          (_E154454154495_))))
                                  (_E154454154495_))))
                           (_E154440154539_
                            (lambda ()
                              (if (gx#stx-pair? _e154438154467_)
                                  (let ((_e154445154511_
                                         (gx#syntax-e _e154438154467_)))
                                    (let ((_hd154446154514_
                                           (##car _e154445154511_))
                                          (_tl154447154516_
                                           (##cdr _e154445154511_)))
                                      (if (and (gx#identifier?
                                                _hd154446154514_)
                                               (gx#core-identifier=?
                                                _hd154446154514_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154447154516_)
                                              (let ((_e154448154519_
                                                     (gx#syntax-e
                                                      _tl154447154516_)))
                                                (let ((_hd154449154522_
                                                       (##car _e154448154519_))
                                                      (_tl154450154524_
                                                       (##cdr _e154448154519_)))
                                                  (let ((_hd-bind154527_
                                                         _hd154449154522_))
                                                    (if (gx#stx-pair?
                                                         _tl154450154524_)
                                                        (let ((_e154451154529_
                                                               (gx#syntax-e
                                                                _tl154450154524_)))
                                                          (let ((_hd154452154532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154451154529_))
                        (_tl154453154534_ (##cdr _e154451154529_)))
                    (let ((_expr154537_ _hd154452154532_))
                      (if (gx#stx-null? _tl154453154534_)
                          (if (gx#core-bind-values? _hd-bind154527_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154527_)
                                (_K154437_ _hd154430_))
                              (_E154444154507_))
                          (_E154444154507_)))))
                (_E154444154507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154444154507_))
                                          (_E154444154507_))))
                                  (_E154444154507_))))
                           (_E154439154551_
                            (lambda ()
                              (if (gx#stx-pair? _e154438154467_)
                                  (let ((_e154441154543_
                                         (gx#syntax-e _e154438154467_)))
                                    (let ((_hd154442154546_
                                           (##car _e154441154543_))
                                          (_tl154443154548_
                                           (##cdr _e154441154543_)))
                                      (if (and (gx#identifier?
                                                _hd154442154546_)
                                               (gx#core-identifier=?
                                                _hd154442154546_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154437_
                                               (gx#core-expand-begin-syntax%
                                                _hd154430_))
                                              (_E154440154539_))
                                          (_E154440154539_))))
                                  (_E154440154539_)))))
                      (_E154439154551_))))
                 (_eval-body154311_
                  (lambda (_rbody154319_)
                    (let _lp154321_ ((_rest154323_ _rbody154319_)
                                     (_body154324_ '())
                                     (_ebody154325_ '()))
                      (let* ((_rest154326154334_ _rest154323_)
                             (_else154328154342_
                              (lambda ()
                                (values _body154324_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154325_)
                                          (gx#stx-source _stx154308_))))))
                             (_K154330154418_
                              (lambda (_rest154345_ _hd154346_)
                                (let* ((_e154347154364_ _hd154346_)
                                       (_E154359154368_
                                        (lambda ()
                                          (_lp154321_
                                           _rest154345_
                                           (cons _hd154346_ _body154324_)
                                           (cons _hd154346_ _ebody154325_))))
                                       (_E154349154380_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154347154364_)
                                              (let ((_e154360154372_
                                                     (gx#syntax-e
                                                      _e154347154364_)))
                                                (let ((_hd154361154375_
                                                       (##car _e154360154372_))
                                                      (_tl154362154377_
                                                       (##cdr _e154360154372_)))
                                                  (if (and (gx#identifier?
                                                            _hd154361154375_)
                                                           (gx#core-identifier=?
                                                            _hd154361154375_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154321_
                                                           _rest154345_
                                                           (cons _hd154346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154324_)
                   _ebody154325_)
                  (_E154359154368_))
              (_E154359154368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154359154368_))))
                                       (_E154348154414_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154347154364_)
                                              (let ((_e154350154384_
                                                     (gx#syntax-e
                                                      _e154347154364_)))
                                                (let ((_hd154351154387_
                                                       (##car _e154350154384_))
                                                      (_tl154352154389_
                                                       (##cdr _e154350154384_)))
                                                  (if (and (gx#identifier?
                                                            _hd154351154387_)
                                                           (gx#core-identifier=?
                                                            _hd154351154387_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154352154389_)
                                                          (let ((_e154353154392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154352154389_)))
                    (let ((_hd154354154395_ (##car _e154353154392_))
                          (_tl154355154397_ (##cdr _e154353154392_)))
                      (let ((_hd-bind154400_ _hd154354154395_))
                        (if (gx#stx-pair? _tl154355154397_)
                            (let ((_e154356154402_
                                   (gx#syntax-e _tl154355154397_)))
                              (let ((_hd154357154405_ (##car _e154356154402_))
                                    (_tl154358154407_ (##cdr _e154356154402_)))
                                (let ((_expr154410_ _hd154357154405_))
                                  (if (gx#stx-null? _tl154358154407_)
                                      (if '#t
                                          (let ((_ehd154412_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154400_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154410_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154346_))))
                                            (_lp154321_
                                             _rest154345_
                                             (cons _ehd154412_ _body154324_)
                                             (cons _ehd154412_ _ebody154325_)))
                                          (_E154349154380_))
                                      (_E154349154380_)))))
                            (_E154349154380_)))))
                  (_E154349154380_))
              (_E154349154380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154349154380_)))))
                                  (_E154348154414_)))))
                        (if (##pair? _rest154326154334_)
                            (let ((_hd154331154421_ (##car _rest154326154334_))
                                  (_tl154332154423_
                                   (##cdr _rest154326154334_)))
                              (let* ((_hd154426_ _hd154331154421_)
                                     (_rest154428_ _tl154332154423_))
                                (_K154330154418_ _rest154428_ _hd154426_)))
                            (_else154328154342_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154314_
                     (gx#core-expand-block__1
                      _stx154308_
                      _expand-special154310_
                      '#f))
                    (_g159146_ (_eval-body154311_ _rbody154314_)))
               (begin
                 (let ((_g159147_
                        (if (##values? _g159146_)
                            (##vector-length _g159146_)
                            1)))
                   (if (not (##fx= _g159147_ 2))
                       (error "Context expects 2 values" _g159147_)))
                 (let ((_expanded-body154316_ (##vector-ref _g159146_ 0))
                       (_value154317_ (##vector-ref _g159146_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154316_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154317_ '())))
                    (gx#stx-source _stx154308_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154278_)
        (let* ((_e154279154286_ _stx154278_)
               (_E154281154290_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154279154286_)))
               (_E154280154304_
                (lambda ()
                  (if (gx#stx-pair? _e154279154286_)
                      (let ((_e154282154294_ (gx#syntax-e _e154279154286_)))
                        (let ((_hd154283154297_ (##car _e154282154294_))
                              (_tl154284154299_ (##cdr _e154282154294_)))
                          (let ((_body154302_ _tl154284154299_))
                            (if (gx#stx-list? _body154302_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154302_)
                                 (gx#stx-source _stx154278_))
                                (_E154281154290_)))))
                      (_E154281154290_)))))
          (_E154280154304_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154276_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154276_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx154222_)
        (let* ((_e154223154236_ _stx154222_)
               (_E154225154240_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154223154236_)))
               (_E154224154272_
                (lambda ()
                  (if (gx#stx-pair? _e154223154236_)
                      (let ((_e154226154244_ (gx#syntax-e _e154223154236_)))
                        (let ((_hd154227154247_ (##car _e154226154244_))
                              (_tl154228154249_ (##cdr _e154226154244_)))
                          (if (gx#stx-pair? _tl154228154249_)
                              (let ((_e154229154252_
                                     (gx#syntax-e _tl154228154249_)))
                                (let ((_hd154230154255_
                                       (##car _e154229154252_))
                                      (_tl154231154257_
                                       (##cdr _e154229154252_)))
                                  (let ((_ann154260_ _hd154230154255_))
                                    (if (gx#stx-pair? _tl154231154257_)
                                        (let ((_e154232154262_
                                               (gx#syntax-e _tl154231154257_)))
                                          (let ((_hd154233154265_
                                                 (##car _e154232154262_))
                                                (_tl154234154267_
                                                 (##cdr _e154232154262_)))
                                            (let ((_expr154270_
                                                   _hd154233154265_))
                                              (if (gx#stx-null?
                                                   _tl154234154267_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154270_)
                                 '())))
               (gx#stx-source _stx154222_))
              (_E154225154240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154225154240_)))))
                                        (_E154225154240_)))))
                              (_E154225154240_))))
                      (_E154225154240_)))))
          (_E154224154272_))))
    (define gx#core-expand-local-block
      (lambda (_stx153946_ _body153947_)
        (letrec ((_expand-special153949_
                  (lambda (_hd154217_ _K154218_ _rest154219_ _r154220_)
                    (_K154218_
                     '()
                     (cons (_expand-internal153950_ _hd154217_ _rest154219_)
                           _r154220_))))
                 (_expand-internal153950_
                  (lambda (_hd154213_ _rest154214_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal153952_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd154213_ _rest154214_))
                          (gx#stx-source _stx153946_))
                         _expand-internal-special153951_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj159140
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj159140)
                       __obj159140))))
                 (_expand-internal-special153951_
                  (lambda (_hd154108_ _K154109_ _rest154110_ _r154111_)
                    (let* ((_e154112154137_ _hd154108_)
                           (_E154132154141_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154112154137_)))
                           (_E154128154153_
                            (lambda ()
                              (if (gx#stx-pair? _e154112154137_)
                                  (let ((_e154133154145_
                                         (gx#syntax-e _e154112154137_)))
                                    (let ((_hd154134154148_
                                           (##car _e154133154145_))
                                          (_tl154135154150_
                                           (##cdr _e154133154145_)))
                                      (if (and (gx#identifier?
                                                _hd154134154148_)
                                               (gx#core-identifier=?
                                                _hd154134154148_
                                                '%#declare))
                                          (if '#t
                                              (_K154109_
                                               _rest154110_
                                               (cons (gx#core-expand-declare%
                                                      _hd154108_)
                                                     _r154111_))
                                              (_E154132154141_))
                                          (_E154132154141_))))
                                  (_E154132154141_))))
                           (_E154124154165_
                            (lambda ()
                              (if (gx#stx-pair? _e154112154137_)
                                  (let ((_e154129154157_
                                         (gx#syntax-e _e154112154137_)))
                                    (let ((_hd154130154160_
                                           (##car _e154129154157_))
                                          (_tl154131154162_
                                           (##cdr _e154129154157_)))
                                      (if (and (gx#identifier?
                                                _hd154130154160_)
                                               (gx#core-identifier=?
                                                _hd154130154160_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd154108_)
                                                (_K154109_
                                                 _rest154110_
                                                 _r154111_))
                                              (_E154128154153_))
                                          (_E154128154153_))))
                                  (_E154128154153_))))
                           (_E154114154177_
                            (lambda ()
                              (if (gx#stx-pair? _e154112154137_)
                                  (let ((_e154125154169_
                                         (gx#syntax-e _e154112154137_)))
                                    (let ((_hd154126154172_
                                           (##car _e154125154169_))
                                          (_tl154127154174_
                                           (##cdr _e154125154169_)))
                                      (if (and (gx#identifier?
                                                _hd154126154172_)
                                               (gx#core-identifier=?
                                                _hd154126154172_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd154108_)
                                                (_K154109_
                                                 _rest154110_
                                                 _r154111_))
                                              (_E154124154165_))
                                          (_E154124154165_))))
                                  (_E154124154165_))))
                           (_E154113154209_
                            (lambda ()
                              (if (gx#stx-pair? _e154112154137_)
                                  (let ((_e154115154181_
                                         (gx#syntax-e _e154112154137_)))
                                    (let ((_hd154116154184_
                                           (##car _e154115154181_))
                                          (_tl154117154186_
                                           (##cdr _e154115154181_)))
                                      (if (and (gx#identifier?
                                                _hd154116154184_)
                                               (gx#core-identifier=?
                                                _hd154116154184_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154117154186_)
                                              (let ((_e154118154189_
                                                     (gx#syntax-e
                                                      _tl154117154186_)))
                                                (let ((_hd154119154192_
                                                       (##car _e154118154189_))
                                                      (_tl154120154194_
                                                       (##cdr _e154118154189_)))
                                                  (let ((_hd-bind154197_
                                                         _hd154119154192_))
                                                    (if (gx#stx-pair?
                                                         _tl154120154194_)
                                                        (let ((_e154121154199_
                                                               (gx#syntax-e
                                                                _tl154120154194_)))
                                                          (let ((_hd154122154202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154121154199_))
                        (_tl154123154204_ (##cdr _e154121154199_)))
                    (let ((_expr154207_ _hd154122154202_))
                      (if (gx#stx-null? _tl154123154204_)
                          (if (gx#core-bind-values? _hd-bind154197_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154197_)
                                (_K154109_
                                 _rest154110_
                                 (cons _hd154108_ _r154111_)))
                              (_E154114154177_))
                          (_E154114154177_)))))
                (_E154114154177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154114154177_))
                                          (_E154114154177_))))
                                  (_E154114154177_)))))
                      (_E154113154209_))))
                 (_wrap-internal153952_
                  (lambda (_rbody153954_)
                    (let _lp153956_ ((_rest153958_ _rbody153954_)
                                     (_decls153959_ '())
                                     (_bind153960_ '())
                                     (_body153961_ '()))
                      (let* ((_e153962153969_ _rest153958_)
                             (_E153964154018_
                              (lambda ()
                                (let* ((_body154013_
                                        (let* ((_body153972153982_
                                                _body153961_)
                                               (_else153975153990_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153961_)
                                                   (gx#stx-source
                                                    _stx153946_)))))
                                          (let ((_K153980154010_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx153946_)))
                                                (_K153977153996_
                                                 (lambda (_expr153994_)
                                                   _expr153994_)))
                                            (let ((_try-match153974154006_
                                                   (lambda ()
                                                     (if (##pair? _body153972153982_)
                                                         (let ((_tl153979154001_
                                                                (##cdr _body153972153982_))
                                                               (_hd153978153999_
                                                                (##car _body153972153982_)))
                                                           (if (##null? _tl153979154001_)
                                                               (let ((_expr154004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153978153999_))
                         (_K153977153996_ _expr154004_))
                       (_else153975153990_)))
                 (_else153975153990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body153972153982_)
                                                  (_K153980154010_)
                                                  (_try-match153974154006_))))))
                                       (_body154015_
                                        (if (null? _bind153960_)
                                            _body154013_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind153960_
                                                         (cons _body154013_
                                                               '())))
                                             (gx#stx-source _stx153946_)))))
                                  (if (null? _decls153959_)
                                      _body154015_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls153959_
                                                   (cons _body154015_ '())))
                                       (gx#stx-source _stx153946_))))))
                             (_E153963154104_
                              (lambda ()
                                (if (gx#stx-pair? _e153962153969_)
                                    (let ((_e153965154022_
                                           (gx#syntax-e _e153962153969_)))
                                      (let ((_hd153966154025_
                                             (##car _e153965154022_))
                                            (_tl153967154027_
                                             (##cdr _e153965154022_)))
                                        (let* ((_hd154030_ _hd153966154025_)
                                               (_rest154032_ _tl153967154027_))
                                          (if '#t
                                              (let* ((_e154033154050_
                                                      _hd154030_)
                                                     (_E154045154054_
                                                      (lambda ()
                                                        (if (null? _bind153960_)
                                                            (_lp153956_
                                                             _rest154032_
                                                             _decls153959_
                                                             _bind153960_
                                                             (cons _hd154030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body153961_))
                    (_lp153956_
                     _rest154032_
                     _decls153959_
                     (cons (cons '#f (cons _hd154030_ '())) _bind153960_)
                     _body153961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E154035154068_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e154033154050_)
                                                            (let ((_e154046154058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e154033154050_)))
                      (let ((_hd154047154061_ (##car _e154046154058_))
                            (_tl154048154063_ (##cdr _e154046154058_)))
                        (if (and (gx#identifier? _hd154047154061_)
                                 (gx#core-identifier=?
                                  _hd154047154061_
                                  '%#declare))
                            (let ((_xdecls154066_ _tl154048154063_))
                              (if '#t
                                  (_lp153956_
                                   _rest154032_
                                   (gx#stx-foldr
                                    cons
                                    _decls153959_
                                    _xdecls154066_)
                                   _bind153960_
                                   _body153961_)
                                  (_E154045154054_)))
                            (_E154045154054_))))
                    (_E154045154054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E154034154100_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e154033154050_)
                                                            (let ((_e154036154072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e154033154050_)))
                      (let ((_hd154037154075_ (##car _e154036154072_))
                            (_tl154038154077_ (##cdr _e154036154072_)))
                        (if (and (gx#identifier? _hd154037154075_)
                                 (gx#core-identifier=?
                                  _hd154037154075_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl154038154077_)
                                (let ((_e154039154080_
                                       (gx#syntax-e _tl154038154077_)))
                                  (let ((_hd154040154083_
                                         (##car _e154039154080_))
                                        (_tl154041154085_
                                         (##cdr _e154039154080_)))
                                    (let ((_hd-bind154088_ _hd154040154083_))
                                      (if (gx#stx-pair? _tl154041154085_)
                                          (let ((_e154042154090_
                                                 (gx#syntax-e
                                                  _tl154041154085_)))
                                            (let ((_hd154043154093_
                                                   (##car _e154042154090_))
                                                  (_tl154044154095_
                                                   (##cdr _e154042154090_)))
                                              (let ((_expr154098_
                                                     _hd154043154093_))
                                                (if (gx#stx-null?
                                                     _tl154044154095_)
                                                    (if '#t
                                                        (_lp153956_
                                                         _rest154032_
                                                         _decls153959_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind154088_)
                             (cons (gx#core-expand-expression _expr154098_)
                                   '()))
                       _bind153960_)
                 _body153961_)
                (_E154035154068_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E154035154068_)))))
                                          (_E154035154068_)))))
                                (_E154035154068_))
                            (_E154035154068_))))
                    (_E154035154068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E154034154100_))
                                              (_E153964154018_)))))
                                    (_E153964154018_)))))
                        (_E153963154104_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body153947_)
            (gx#stx-source _stx153946_))
           _expand-special153949_))))
    (define gx#core-expand-declare%
      (lambda (_stx153884_)
        (let* ((_e153885153892_ _stx153884_)
               (_E153887153896_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153885153892_)))
               (_E153886153942_
                (lambda ()
                  (if (gx#stx-pair? _e153885153892_)
                      (let ((_e153888153900_ (gx#syntax-e _e153885153892_)))
                        (let ((_hd153889153903_ (##car _e153888153900_))
                              (_tl153890153905_ (##cdr _e153888153900_)))
                          (let ((_body153908_ _tl153890153905_))
                            (if (gx#stx-list? _body153908_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl153910_)
                                     (let* ((_e153911153918_ _decl153910_)
                                            (_E153913153922_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e153911153918_)))
                                            (_E153912153938_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e153911153918_)
                                                   (let ((_e153914153926_
                                                          (gx#syntax-e
                                                           _e153911153918_)))
                                                     (let ((_hd153915153929_
                                                            (##car _e153914153926_))
                                                           (_tl153916153931_
                                                            (##cdr _e153914153926_)))
                                                       (let* ((_head153934_
                                                               _hd153915153929_)
                                                              (_args153936_
                                                               _tl153916153931_))
                                                         (if (gx#stx-list?
                                                              _args153936_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl153910_)
                                                             (_E153913153922_)))))
                                                   (_E153913153922_)))))
                                       (_E153912153938_)))
                                   _body153908_))
                                 (gx#stx-source _stx153884_))
                                (_E153887153896_)))))
                      (_E153887153896_)))))
          (_E153886153942_))))
    (define gx#core-expand-extern%
      (lambda (_stx153788_)
        (let* ((_e153789153796_ _stx153788_)
               (_E153791153800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153789153796_)))
               (_E153790153880_
                (lambda ()
                  (if (gx#stx-pair? _e153789153796_)
                      (let ((_e153792153804_ (gx#syntax-e _e153789153796_)))
                        (let ((_hd153793153807_ (##car _e153792153804_))
                              (_tl153794153809_ (##cdr _e153792153804_)))
                          (let ((_body153812_ _tl153794153809_))
                            (if '#t
                                (let _lp153814_ ((_rest153816_ _body153812_)
                                                 (_r153817_ '()))
                                  (let* ((_e153818153832_ _rest153816_)
                                         (_E153830153836_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx153788_)))
                                         (_E153820153840_
                                          (lambda ()
                                            (if (gx#stx-null? _e153818153832_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r153817_))
                                                     (gx#stx-source
                                                      _stx153788_))
                                                    (_E153830153836_))
                                                (_E153830153836_))))
                                         (_E153819153876_
                                          (lambda ()
                                            (if (gx#stx-pair? _e153818153832_)
                                                (let ((_e153821153844_
                                                       (gx#syntax-e
                                                        _e153818153832_)))
                                                  (let ((_hd153822153847_
                                                         (##car _e153821153844_))
                                                        (_tl153823153849_
                                                         (##cdr _e153821153844_)))
                                                    (if (gx#stx-pair?
                                                         _hd153822153847_)
                                                        (let ((_e153824153852_
                                                               (gx#syntax-e
                                                                _hd153822153847_)))
                                                          (let ((_hd153825153855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153824153852_))
                        (_tl153826153857_ (##cdr _e153824153852_)))
                    (let ((_id153860_ _hd153825153855_))
                      (if (gx#stx-pair? _tl153826153857_)
                          (let ((_e153827153862_
                                 (gx#syntax-e _tl153826153857_)))
                            (let ((_hd153828153865_ (##car _e153827153862_))
                                  (_tl153829153867_ (##cdr _e153827153862_)))
                              (let ((_eid153870_ _hd153828153865_))
                                (if (gx#stx-null? _tl153829153867_)
                                    (let ((_rest153872_ _tl153823153849_))
                                      (if (and (gx#identifier? _id153860_)
                                               (gx#identifier? _eid153870_))
                                          (let ((_eid153874_
                                                 (gx#stx-e _eid153870_)))
                                            (gx#core-bind-extern!__0
                                             _id153860_
                                             _eid153874_)
                                            (_lp153814_
                                             _rest153872_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id153860_)
                                                         (cons _eid153874_
                                                               '()))
                                                   _r153817_)))
                                          (_E153820153840_)))
                                    (_E153820153840_)))))
                          (_E153820153840_)))))
                (_E153820153840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153820153840_)))))
                                    (_E153819153876_)))
                                (_E153791153800_)))))
                      (_E153791153800_)))))
          (_E153790153880_))))
    (define gx#core-expand-define-values%
      (lambda (_stx153734_)
        (let* ((_e153735153748_ _stx153734_)
               (_E153737153752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153735153748_)))
               (_E153736153784_
                (lambda ()
                  (if (gx#stx-pair? _e153735153748_)
                      (let ((_e153738153756_ (gx#syntax-e _e153735153748_)))
                        (let ((_hd153739153759_ (##car _e153738153756_))
                              (_tl153740153761_ (##cdr _e153738153756_)))
                          (if (gx#stx-pair? _tl153740153761_)
                              (let ((_e153741153764_
                                     (gx#syntax-e _tl153740153761_)))
                                (let ((_hd153742153767_
                                       (##car _e153741153764_))
                                      (_tl153743153769_
                                       (##cdr _e153741153764_)))
                                  (let ((_hd153772_ _hd153742153767_))
                                    (if (gx#stx-pair? _tl153743153769_)
                                        (let ((_e153744153774_
                                               (gx#syntax-e _tl153743153769_)))
                                          (let ((_hd153745153777_
                                                 (##car _e153744153774_))
                                                (_tl153746153779_
                                                 (##cdr _e153744153774_)))
                                            (let ((_expr153782_
                                                   _hd153745153777_))
                                              (if (gx#stx-null?
                                                   _tl153746153779_)
                                                  (if (gx#core-bind-values?
                                                       _hd153772_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd153772_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153772_)
                             (cons (gx#core-expand-expression _expr153782_)
                                   '())))
                 (gx#stx-source _stx153734_)))
              (_E153737153752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153737153752_)))))
                                        (_E153737153752_)))))
                              (_E153737153752_))))
                      (_E153737153752_)))))
          (_E153736153784_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx153678_)
        (let* ((_e153679153692_ _stx153678_)
               (_E153681153696_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153679153692_)))
               (_E153680153730_
                (lambda ()
                  (if (gx#stx-pair? _e153679153692_)
                      (let ((_e153682153700_ (gx#syntax-e _e153679153692_)))
                        (let ((_hd153683153703_ (##car _e153682153700_))
                              (_tl153684153705_ (##cdr _e153682153700_)))
                          (if (gx#stx-pair? _tl153684153705_)
                              (let ((_e153685153708_
                                     (gx#syntax-e _tl153684153705_)))
                                (let ((_hd153686153711_
                                       (##car _e153685153708_))
                                      (_tl153687153713_
                                       (##cdr _e153685153708_)))
                                  (let ((_id153716_ _hd153686153711_))
                                    (if (gx#stx-pair? _tl153687153713_)
                                        (let ((_e153688153718_
                                               (gx#syntax-e _tl153687153713_)))
                                          (let ((_hd153689153721_
                                                 (##car _e153688153718_))
                                                (_tl153690153723_
                                                 (##cdr _e153688153718_)))
                                            (let ((_binding-id153726_
                                                   _hd153689153721_))
                                              (if (gx#stx-null?
                                                   _tl153690153723_)
                                                  (if (and (gx#identifier?
                                                            _id153716_)
                                                           (gx#identifier?
                                                            _binding-id153726_))
                                                      (let ((_eid153728_
                                                             (gx#stx-e
                                                              _binding-id153726_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id153716_
                                                         _eid153728_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153716_)
                             (cons _eid153728_ '())))))
              (_E153681153696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153681153696_)))))
                                        (_E153681153696_)))))
                              (_E153681153696_))))
                      (_E153681153696_)))))
          (_E153680153730_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx153621_)
        (let* ((_e153622153635_ _stx153621_)
               (_E153624153639_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153622153635_)))
               (_E153623153674_
                (lambda ()
                  (if (gx#stx-pair? _e153622153635_)
                      (let ((_e153625153643_ (gx#syntax-e _e153622153635_)))
                        (let ((_hd153626153646_ (##car _e153625153643_))
                              (_tl153627153648_ (##cdr _e153625153643_)))
                          (if (gx#stx-pair? _tl153627153648_)
                              (let ((_e153628153651_
                                     (gx#syntax-e _tl153627153648_)))
                                (let ((_hd153629153654_
                                       (##car _e153628153651_))
                                      (_tl153630153656_
                                       (##cdr _e153628153651_)))
                                  (let ((_id153659_ _hd153629153654_))
                                    (if (gx#stx-pair? _tl153630153656_)
                                        (let ((_e153631153661_
                                               (gx#syntax-e _tl153630153656_)))
                                          (let ((_hd153632153664_
                                                 (##car _e153631153661_))
                                                (_tl153633153666_
                                                 (##cdr _e153631153661_)))
                                            (let ((_expr153669_
                                                   _hd153632153664_))
                                              (if (gx#stx-null?
                                                   _tl153633153666_)
                                                  (if (gx#identifier?
                                                       _id153659_)
                                                      (let ((_g159148_
                                                             (gx#core-expand-expression+1
                                                              _expr153669_)))
                                                        (begin
                                                          (let ((_g159149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g159148_)
                             (##vector-length _g159148_)
                             1)))
                    (if (not (##fx= _g159149_ 2))
                        (error "Context expects 2 values" _g159149_)))
                  (let ((_e-stx153671_ (##vector-ref _g159148_ 0))
                        (_e153672_ (##vector-ref _g159148_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id153659_ _e153672_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id153659_)
                                   (cons _e-stx153671_ '())))
                       (gx#stx-source _stx153621_))))))
              (_E153624153639_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153624153639_)))))
                                        (_E153624153639_)))))
                              (_E153624153639_))))
                      (_E153624153639_)))))
          (_E153623153674_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx153565_)
        (let* ((_e153566153579_ _stx153565_)
               (_E153568153583_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153566153579_)))
               (_E153567153617_
                (lambda ()
                  (if (gx#stx-pair? _e153566153579_)
                      (let ((_e153569153587_ (gx#syntax-e _e153566153579_)))
                        (let ((_hd153570153590_ (##car _e153569153587_))
                              (_tl153571153592_ (##cdr _e153569153587_)))
                          (if (gx#stx-pair? _tl153571153592_)
                              (let ((_e153572153595_
                                     (gx#syntax-e _tl153571153592_)))
                                (let ((_hd153573153598_
                                       (##car _e153572153595_))
                                      (_tl153574153600_
                                       (##cdr _e153572153595_)))
                                  (let ((_id153603_ _hd153573153598_))
                                    (if (gx#stx-pair? _tl153574153600_)
                                        (let ((_e153575153605_
                                               (gx#syntax-e _tl153574153600_)))
                                          (let ((_hd153576153608_
                                                 (##car _e153575153605_))
                                                (_tl153577153610_
                                                 (##cdr _e153575153605_)))
                                            (let ((_alias-id153613_
                                                   _hd153576153608_))
                                              (if (gx#stx-null?
                                                   _tl153577153610_)
                                                  (if (and (gx#identifier?
                                                            _id153603_)
                                                           (gx#identifier?
                                                            _alias-id153613_))
                                                      (let ((_alias-id153615_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id153613_)))
                                                        (gx#core-bind-alias!__0
                                                         _id153603_
                                                         _alias-id153615_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153603_)
                             (cons _alias-id153615_ '())))))
              (_E153568153583_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153568153583_)))))
                                        (_E153568153583_)))))
                              (_E153568153583_))))
                      (_E153568153583_)))))
          (_E153567153617_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx153508_ _wrap?153509_)
        (let* ((_e153510153520_ _stx153508_)
               (_E153512153524_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153510153520_)))
               (_E153511153551_
                (lambda ()
                  (if (gx#stx-pair? _e153510153520_)
                      (let ((_e153513153528_ (gx#syntax-e _e153510153520_)))
                        (let ((_hd153514153531_ (##car _e153513153528_))
                              (_tl153515153533_ (##cdr _e153513153528_)))
                          (if (gx#stx-pair? _tl153515153533_)
                              (let ((_e153516153536_
                                     (gx#syntax-e _tl153515153533_)))
                                (let ((_hd153517153539_
                                       (##car _e153516153536_))
                                      (_tl153518153541_
                                       (##cdr _e153516153536_)))
                                  (let* ((_hd153544_ _hd153517153539_)
                                         (_body153546_ _tl153518153541_))
                                    (if (gx#core-bind-values? _hd153544_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd153544_)
                                           (let ((_body153549_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd153544_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx153508_
                                                               _body153546_)
                                                              '()))))
                                             (if _wrap?153509_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body153549_)
                                                  (gx#stx-source _stx153508_))
                                                 _body153549_)))
                                         gx#current-expander-context
                                         (let ((__obj159141
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj159141)
                                           __obj159141))
                                        (_E153512153524_)))))
                              (_E153512153524_))))
                      (_E153512153524_)))))
          (_E153511153551_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx153558_)
        (let ((_wrap?153560_ '#t))
          (gx#core-expand-lambda%__% _stx153558_ _wrap?153560_))))
    (define gx#core-expand-lambda%
      (lambda _g159151_
        (let ((_g159150_ (##length _g159151_)))
          (cond ((##fx= _g159150_ 1)
                 (apply (lambda (_stx153558_)
                          (gx#core-expand-lambda%__0 _stx153558_))
                        _g159151_))
                ((##fx= _g159150_ 2)
                 (apply (lambda (_stx153562_ _wrap?153563_)
                          (gx#core-expand-lambda%__%
                           _stx153562_
                           _wrap?153563_))
                        _g159151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g159151_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153472_)
        (let* ((_e153473153480_ _stx153472_)
               (_E153475153484_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153473153480_)))
               (_E153474153503_
                (lambda ()
                  (if (gx#stx-pair? _e153473153480_)
                      (let ((_e153476153488_ (gx#syntax-e _e153473153480_)))
                        (let ((_hd153477153491_ (##car _e153476153488_))
                              (_tl153478153493_ (##cdr _e153476153488_)))
                          (let ((_clauses153496_ _tl153478153493_))
                            (if (gx#stx-list? _clauses153496_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause153498_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause153498_)
                                       (let ((_$e153500_
                                              (gx#stx-source _clause153498_)))
                                         (if _$e153500_
                                             _$e153500_
                                             (gx#stx-source _stx153472_))))
                                      '#f))
                                   _clauses153496_))
                                 (gx#stx-source _stx153472_))
                                (_E153475153484_)))))
                      (_E153475153484_)))))
          (_E153474153503_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153426_)
        (let* ((_e153427153437_ _stx153426_)
               (_E153429153441_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153427153437_)))
               (_E153428153468_
                (lambda ()
                  (if (gx#stx-pair? _e153427153437_)
                      (let ((_e153430153445_ (gx#syntax-e _e153427153437_)))
                        (let ((_hd153431153448_ (##car _e153430153445_))
                              (_tl153432153450_ (##cdr _e153430153445_)))
                          (if (gx#stx-pair? _tl153432153450_)
                              (let ((_e153433153453_
                                     (gx#syntax-e _tl153432153450_)))
                                (let ((_hd153434153456_
                                       (##car _e153433153453_))
                                      (_tl153435153458_
                                       (##cdr _e153433153453_)))
                                  (let* ((_hd153461_ _hd153434153456_)
                                         (_body153463_ _tl153435153458_))
                                    (if (gx#core-expand-let-bind? _hd153461_)
                                        (let ((_expressions153465_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153461_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153461_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153461_
                                                           _expressions153465_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153426_
                         _body153463_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153426_)))
                                           gx#current-expander-context
                                           (let ((__obj159142
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj159142)
                                             __obj159142)))
                                        (_E153429153441_)))))
                              (_E153429153441_))))
                      (_E153429153441_)))))
          (_E153428153468_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153371_ _form153372_)
        (let* ((_e153373153383_ _stx153371_)
               (_E153375153387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153373153383_)))
               (_E153374153412_
                (lambda ()
                  (if (gx#stx-pair? _e153373153383_)
                      (let ((_e153376153391_ (gx#syntax-e _e153373153383_)))
                        (let ((_hd153377153394_ (##car _e153376153391_))
                              (_tl153378153396_ (##cdr _e153376153391_)))
                          (if (gx#stx-pair? _tl153378153396_)
                              (let ((_e153379153399_
                                     (gx#syntax-e _tl153378153396_)))
                                (let ((_hd153380153402_
                                       (##car _e153379153399_))
                                      (_tl153381153404_
                                       (##cdr _e153379153399_)))
                                  (let* ((_hd153407_ _hd153380153402_)
                                         (_body153409_ _tl153381153404_))
                                    (if (gx#core-expand-let-bind? _hd153407_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153407_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153372_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153407_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153407_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153371_
                                                               _body153409_)
                                                              '())))
                                            (gx#stx-source _stx153371_)))
                                         gx#current-expander-context
                                         (let ((__obj159143
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj159143)
                                           __obj159143))
                                        (_E153375153387_)))))
                              (_E153375153387_))))
                      (_E153375153387_)))))
          (_E153374153412_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153419_)
        (let ((_form153421_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153419_ _form153421_))))
    (define gx#core-expand-letrec-values%
      (lambda _g159153_
        (let ((_g159152_ (##length _g159153_)))
          (cond ((##fx= _g159152_ 1)
                 (apply (lambda (_stx153419_)
                          (gx#core-expand-letrec-values%__0 _stx153419_))
                        _g159153_))
                ((##fx= _g159152_ 2)
                 (apply (lambda (_stx153423_ _form153424_)
                          (gx#core-expand-letrec-values%__%
                           _stx153423_
                           _form153424_))
                        _g159153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g159153_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153368_)
        (gx#core-expand-letrec-values%__% _stx153368_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153325_)
        (if (gx#stx-list? _stx153325_)
            (gx#stx-andmap
             (lambda (_bind153327_)
               (let* ((_e153328153338_ _bind153327_)
                      (_E153330153342_ (lambda () '#f))
                      (_E153329153364_
                       (lambda ()
                         (if (gx#stx-pair? _e153328153338_)
                             (let ((_e153331153346_
                                    (gx#syntax-e _e153328153338_)))
                               (let ((_hd153332153349_ (##car _e153331153346_))
                                     (_tl153333153351_
                                      (##cdr _e153331153346_)))
                                 (let ((_hd153354_ _hd153332153349_))
                                   (if (gx#stx-pair? _tl153333153351_)
                                       (let ((_e153334153356_
                                              (gx#syntax-e _tl153333153351_)))
                                         (let ((_hd153335153359_
                                                (##car _e153334153356_))
                                               (_tl153336153361_
                                                (##cdr _e153334153356_)))
                                           (if (gx#stx-null? _tl153336153361_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153354_)
                                                   (_E153330153342_))
                                               (_E153330153342_))))
                                       (_E153330153342_)))))
                             (_E153330153342_)))))
                 (_E153329153364_)))
             _stx153325_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153284_)
        (let* ((_e153285153295_ _bind153284_)
               (_E153287153299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153285153295_)))
               (_E153286153321_
                (lambda ()
                  (if (gx#stx-pair? _e153285153295_)
                      (let ((_e153288153303_ (gx#syntax-e _e153285153295_)))
                        (let ((_hd153289153306_ (##car _e153288153303_))
                              (_tl153290153308_ (##cdr _e153288153303_)))
                          (if (gx#stx-pair? _tl153290153308_)
                              (let ((_e153291153311_
                                     (gx#syntax-e _tl153290153308_)))
                                (let ((_hd153292153314_
                                       (##car _e153291153311_))
                                      (_tl153293153316_
                                       (##cdr _e153291153311_)))
                                  (let ((_expr153319_ _hd153292153314_))
                                    (if (gx#stx-null? _tl153293153316_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153319_)
                                            (_E153287153299_))
                                        (_E153287153299_)))))
                              (_E153287153299_))))
                      (_E153287153299_)))))
          (_E153286153321_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153243_)
        (let* ((_e153244153254_ _bind153243_)
               (_E153246153258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153244153254_)))
               (_E153245153280_
                (lambda ()
                  (if (gx#stx-pair? _e153244153254_)
                      (let ((_e153247153262_ (gx#syntax-e _e153244153254_)))
                        (let ((_hd153248153265_ (##car _e153247153262_))
                              (_tl153249153267_ (##cdr _e153247153262_)))
                          (let ((_hd153270_ _hd153248153265_))
                            (if (gx#stx-pair? _tl153249153267_)
                                (let ((_e153250153272_
                                       (gx#syntax-e _tl153249153267_)))
                                  (let ((_hd153251153275_
                                         (##car _e153250153272_))
                                        (_tl153252153277_
                                         (##cdr _e153250153272_)))
                                    (if (gx#stx-null? _tl153252153277_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153270_)
                                            (_E153246153258_))
                                        (_E153246153258_))))
                                (_E153246153258_)))))
                      (_E153246153258_)))))
          (_E153245153280_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind153201_ _expr153202_)
        (let* ((_e153203153213_ _bind153201_)
               (_E153205153217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153203153213_)))
               (_E153204153239_
                (lambda ()
                  (if (gx#stx-pair? _e153203153213_)
                      (let ((_e153206153221_ (gx#syntax-e _e153203153213_)))
                        (let ((_hd153207153224_ (##car _e153206153221_))
                              (_tl153208153226_ (##cdr _e153206153221_)))
                          (let ((_hd153229_ _hd153207153224_))
                            (if (gx#stx-pair? _tl153208153226_)
                                (let ((_e153209153231_
                                       (gx#syntax-e _tl153208153226_)))
                                  (let ((_hd153210153234_
                                         (##car _e153209153231_))
                                        (_tl153211153236_
                                         (##cdr _e153209153231_)))
                                    (if (gx#stx-null? _tl153211153236_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd153229_)
                                                  (cons _expr153202_ '()))
                                            (_E153205153217_))
                                        (_E153205153217_))))
                                (_E153205153217_)))))
                      (_E153205153217_)))))
          (_E153204153239_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx153155_)
        (let* ((_e153156153166_ _stx153155_)
               (_E153158153170_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153156153166_)))
               (_E153157153197_
                (lambda ()
                  (if (gx#stx-pair? _e153156153166_)
                      (let ((_e153159153174_ (gx#syntax-e _e153156153166_)))
                        (let ((_hd153160153177_ (##car _e153159153174_))
                              (_tl153161153179_ (##cdr _e153159153174_)))
                          (if (gx#stx-pair? _tl153161153179_)
                              (let ((_e153162153182_
                                     (gx#syntax-e _tl153161153179_)))
                                (let ((_hd153163153185_
                                       (##car _e153162153182_))
                                      (_tl153164153187_
                                       (##cdr _e153162153182_)))
                                  (let* ((_hd153190_ _hd153163153185_)
                                         (_body153192_ _tl153164153187_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd153190_)
                                        (let ((_expanders153194_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd153190_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd153190_
                                              _expanders153194_)
                                             (gx#core-expand-local-block
                                              _stx153155_
                                              _body153192_))
                                           gx#current-expander-context
                                           (let ((__obj159144
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj159144)
                                             __obj159144)))
                                        (_E153158153170_)))))
                              (_E153158153170_))))
                      (_E153158153170_)))))
          (_E153157153197_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx153104_)
        (let* ((_e153105153115_ _stx153104_)
               (_E153107153119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153105153115_)))
               (_E153106153151_
                (lambda ()
                  (if (gx#stx-pair? _e153105153115_)
                      (let ((_e153108153123_ (gx#syntax-e _e153105153115_)))
                        (let ((_hd153109153126_ (##car _e153108153123_))
                              (_tl153110153128_ (##cdr _e153108153123_)))
                          (if (gx#stx-pair? _tl153110153128_)
                              (let ((_e153111153131_
                                     (gx#syntax-e _tl153110153128_)))
                                (let ((_hd153112153134_
                                       (##car _e153111153131_))
                                      (_tl153113153136_
                                       (##cdr _e153111153131_)))
                                  (let* ((_hd153139_ _hd153112153134_)
                                         (_body153141_ _tl153113153136_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd153139_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd153139_
                                            (make-list
                                             (gx#stx-length _hd153139_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g153143153146_
                                                     _g153144153148_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g153143153146_
                                               _g153144153148_
                                               '#t))
                                            _hd153139_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd153139_))
                                           (gx#core-expand-local-block
                                            _stx153104_
                                            _body153141_))
                                         gx#current-expander-context
                                         (let ((__obj159145
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj159145)
                                           __obj159145))
                                        (_E153107153119_)))))
                              (_E153107153119_))))
                      (_E153107153119_)))))
          (_E153106153151_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx153061_)
        (if (gx#stx-list? _stx153061_)
            (gx#stx-andmap
             (lambda (_bind153063_)
               (let* ((_e153064153074_ _bind153063_)
                      (_E153066153078_ (lambda () '#f))
                      (_E153065153100_
                       (lambda ()
                         (if (gx#stx-pair? _e153064153074_)
                             (let ((_e153067153082_
                                    (gx#syntax-e _e153064153074_)))
                               (let ((_hd153068153085_ (##car _e153067153082_))
                                     (_tl153069153087_
                                      (##cdr _e153067153082_)))
                                 (let ((_hd153090_ _hd153068153085_))
                                   (if (gx#stx-pair? _tl153069153087_)
                                       (let ((_e153070153092_
                                              (gx#syntax-e _tl153069153087_)))
                                         (let ((_hd153071153095_
                                                (##car _e153070153092_))
                                               (_tl153072153097_
                                                (##cdr _e153070153092_)))
                                           (if (gx#stx-null? _tl153072153097_)
                                               (if '#t
                                                   (gx#identifier? _hd153090_)
                                                   (_E153066153078_))
                                               (_E153066153078_))))
                                       (_E153066153078_)))))
                             (_E153066153078_)))))
                 (_E153065153100_)))
             _stx153061_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind153018_)
        (let* ((_e153019153029_ _bind153018_)
               (_E153021153033_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153019153029_)))
               (_E153020153057_
                (lambda ()
                  (if (gx#stx-pair? _e153019153029_)
                      (let ((_e153022153037_ (gx#syntax-e _e153019153029_)))
                        (let ((_hd153023153040_ (##car _e153022153037_))
                              (_tl153024153042_ (##cdr _e153022153037_)))
                          (if (gx#stx-pair? _tl153024153042_)
                              (let ((_e153025153045_
                                     (gx#syntax-e _tl153024153042_)))
                                (let ((_hd153026153048_
                                       (##car _e153025153045_))
                                      (_tl153027153050_
                                       (##cdr _e153025153045_)))
                                  (let ((_expr153053_ _hd153026153048_))
                                    (if (gx#stx-null? _tl153027153050_)
                                        (if '#t
                                            (let ((_g159154_
                                                   (gx#core-expand-expression+1
                                                    _expr153053_)))
                                              (begin
                                                (let ((_g159155_
                                                       (if (##values?
                                                            _g159154_)
                                                           (##vector-length
                                                            _g159154_)
                                                           1)))
                                                  (if (not (##fx= _g159155_ 2))
                                                      (error "Context expects 2 values"
                                                             _g159155_)))
                                                (let ((_e153055_
                                                       (##vector-ref
                                                        _g159154_
                                                        1)))
                                                  _e153055_)))
                                            (_E153021153033_))
                                        (_E153021153033_)))))
                              (_E153021153033_))))
                      (_E153021153033_)))))
          (_E153020153057_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind152963_ _e152964_ _rebind?152965_)
        (let* ((_e152966152976_ _bind152963_)
               (_E152968152980_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152966152976_)))
               (_E152967153002_
                (lambda ()
                  (if (gx#stx-pair? _e152966152976_)
                      (let ((_e152969152984_ (gx#syntax-e _e152966152976_)))
                        (let ((_hd152970152987_ (##car _e152969152984_))
                              (_tl152971152989_ (##cdr _e152969152984_)))
                          (let ((_id152992_ _hd152970152987_))
                            (if (gx#stx-pair? _tl152971152989_)
                                (let ((_e152972152994_
                                       (gx#syntax-e _tl152971152989_)))
                                  (let ((_hd152973152997_
                                         (##car _e152972152994_))
                                        (_tl152974152999_
                                         (##cdr _e152972152994_)))
                                    (if (gx#stx-null? _tl152974152999_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id152992_
                                             _e152964_
                                             _rebind?152965_)
                                            (_E152968152980_))
                                        (_E152968152980_))))
                                (_E152968152980_)))))
                      (_E152968152980_)))))
          (_E152967153002_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind153009_ _e153010_)
        (let ((_rebind?153012_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind153009_
           _e153010_
           _rebind?153012_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g159157_
        (let ((_g159156_ (##length _g159157_)))
          (cond ((##fx= _g159156_ 2)
                 (apply (lambda (_bind153009_ _e153010_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind153009_
                           _e153010_))
                        _g159157_))
                ((##fx= _g159156_ 3)
                 (apply (lambda (_bind153014_ _e153015_ _rebind?153016_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind153014_
                           _e153015_
                           _rebind?153016_))
                        _g159157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g159157_))))))
    (define gx#core-expand-expression%
      (lambda (_stx152921_)
        (let* ((_e152922152932_ _stx152921_)
               (_E152924152936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152922152932_)))
               (_E152923152958_
                (lambda ()
                  (if (gx#stx-pair? _e152922152932_)
                      (let ((_e152925152940_ (gx#syntax-e _e152922152932_)))
                        (let ((_hd152926152943_ (##car _e152925152940_))
                              (_tl152927152945_ (##cdr _e152925152940_)))
                          (if (gx#stx-pair? _tl152927152945_)
                              (let ((_e152928152948_
                                     (gx#syntax-e _tl152927152945_)))
                                (let ((_hd152929152951_
                                       (##car _e152928152948_))
                                      (_tl152930152953_
                                       (##cdr _e152928152948_)))
                                  (let ((_expr152956_ _hd152929152951_))
                                    (if (gx#stx-null? _tl152930152953_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr152956_)
                                            (_E152924152936_))
                                        (_E152924152936_)))))
                              (_E152924152936_))))
                      (_E152924152936_)))))
          (_E152923152958_))))
    (define gx#core-expand-quote%
      (lambda (_stx152880_)
        (let* ((_e152881152891_ _stx152880_)
               (_E152883152895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152881152891_)))
               (_E152882152917_
                (lambda ()
                  (if (gx#stx-pair? _e152881152891_)
                      (let ((_e152884152899_ (gx#syntax-e _e152881152891_)))
                        (let ((_hd152885152902_ (##car _e152884152899_))
                              (_tl152886152904_ (##cdr _e152884152899_)))
                          (if (gx#stx-pair? _tl152886152904_)
                              (let ((_e152887152907_
                                     (gx#syntax-e _tl152886152904_)))
                                (let ((_hd152888152910_
                                       (##car _e152887152907_))
                                      (_tl152889152912_
                                       (##cdr _e152887152907_)))
                                  (let ((_e152915_ _hd152888152910_))
                                    (if (gx#stx-null? _tl152889152912_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e152915_)
                                                         '()))
                                             (gx#stx-source _stx152880_))
                                            (_E152883152895_))
                                        (_E152883152895_)))))
                              (_E152883152895_))))
                      (_E152883152895_)))))
          (_E152882152917_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx152839_)
        (let* ((_e152840152850_ _stx152839_)
               (_E152842152854_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152840152850_)))
               (_E152841152876_
                (lambda ()
                  (if (gx#stx-pair? _e152840152850_)
                      (let ((_e152843152858_ (gx#syntax-e _e152840152850_)))
                        (let ((_hd152844152861_ (##car _e152843152858_))
                              (_tl152845152863_ (##cdr _e152843152858_)))
                          (if (gx#stx-pair? _tl152845152863_)
                              (let ((_e152846152866_
                                     (gx#syntax-e _tl152845152863_)))
                                (let ((_hd152847152869_
                                       (##car _e152846152866_))
                                      (_tl152848152871_
                                       (##cdr _e152846152866_)))
                                  (let ((_e152874_ _hd152847152869_))
                                    (if (gx#stx-null? _tl152848152871_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e152874_)
                                                         '()))
                                             (gx#stx-source _stx152839_))
                                            (_E152842152854_))
                                        (_E152842152854_)))))
                              (_E152842152854_))))
                      (_E152842152854_)))))
          (_E152841152876_))))
    (define gx#core-expand-call%
      (lambda (_stx152796_)
        (let* ((_e152797152807_ _stx152796_)
               (_E152799152811_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152797152807_)))
               (_E152798152835_
                (lambda ()
                  (if (gx#stx-pair? _e152797152807_)
                      (let ((_e152800152815_ (gx#syntax-e _e152797152807_)))
                        (let ((_hd152801152818_ (##car _e152800152815_))
                              (_tl152802152820_ (##cdr _e152800152815_)))
                          (if (gx#stx-pair? _tl152802152820_)
                              (let ((_e152803152823_
                                     (gx#syntax-e _tl152802152820_)))
                                (let ((_hd152804152826_
                                       (##car _e152803152823_))
                                      (_tl152805152828_
                                       (##cdr _e152803152823_)))
                                  (let* ((_rator152831_ _hd152804152826_)
                                         (_args152833_ _tl152805152828_))
                                    (if (gx#stx-list? _args152833_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator152831_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args152833_))
                                         (gx#stx-source _stx152796_))
                                        (_E152799152811_)))))
                              (_E152799152811_))))
                      (_E152799152811_)))))
          (_E152798152835_))))
    (define gx#core-expand-if%
      (lambda (_stx152729_)
        (let* ((_e152730152746_ _stx152729_)
               (_E152732152750_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152730152746_)))
               (_E152731152792_
                (lambda ()
                  (if (gx#stx-pair? _e152730152746_)
                      (let ((_e152733152754_ (gx#syntax-e _e152730152746_)))
                        (let ((_hd152734152757_ (##car _e152733152754_))
                              (_tl152735152759_ (##cdr _e152733152754_)))
                          (if (gx#stx-pair? _tl152735152759_)
                              (let ((_e152736152762_
                                     (gx#syntax-e _tl152735152759_)))
                                (let ((_hd152737152765_
                                       (##car _e152736152762_))
                                      (_tl152738152767_
                                       (##cdr _e152736152762_)))
                                  (let ((_test152770_ _hd152737152765_))
                                    (if (gx#stx-pair? _tl152738152767_)
                                        (let ((_e152739152772_
                                               (gx#syntax-e _tl152738152767_)))
                                          (let ((_hd152740152775_
                                                 (##car _e152739152772_))
                                                (_tl152741152777_
                                                 (##cdr _e152739152772_)))
                                            (let ((_K152780_ _hd152740152775_))
                                              (if (gx#stx-pair?
                                                   _tl152741152777_)
                                                  (let ((_e152742152782_
                                                         (gx#syntax-e
                                                          _tl152741152777_)))
                                                    (let ((_hd152743152785_
                                                           (##car _e152742152782_))
                                                          (_tl152744152787_
                                                           (##cdr _e152742152782_)))
                                                      (let ((_E152790_
                                                             _hd152743152785_))
                                                        (if (gx#stx-null?
                                                             _tl152744152787_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test152770_)
                                     (cons (gx#core-expand-expression
                                            _K152780_)
                                           (cons (gx#core-expand-expression
                                                  _E152790_)
                                                 '()))))
                         (gx#stx-source _stx152729_))
                        (_E152732152750_))
                    (_E152732152750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152732152750_)))))
                                        (_E152732152750_)))))
                              (_E152732152750_))))
                      (_E152732152750_)))))
          (_E152731152792_))))
    (define gx#core-expand-ref%
      (lambda (_stx152688_)
        (let* ((_e152689152699_ _stx152688_)
               (_E152691152703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152689152699_)))
               (_E152690152725_
                (lambda ()
                  (if (gx#stx-pair? _e152689152699_)
                      (let ((_e152692152707_ (gx#syntax-e _e152689152699_)))
                        (let ((_hd152693152710_ (##car _e152692152707_))
                              (_tl152694152712_ (##cdr _e152692152707_)))
                          (if (gx#stx-pair? _tl152694152712_)
                              (let ((_e152695152715_
                                     (gx#syntax-e _tl152694152712_)))
                                (let ((_hd152696152718_
                                       (##car _e152695152715_))
                                      (_tl152697152720_
                                       (##cdr _e152695152715_)))
                                  (let ((_id152723_ _hd152696152718_))
                                    (if (gx#stx-null? _tl152697152720_)
                                        (if (gx#identifier? _id152723_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id152723_
                                                          _stx152688_)
                                                         '()))
                                             (gx#stx-source _stx152688_))
                                            (_E152691152703_))
                                        (_E152691152703_)))))
                              (_E152691152703_))))
                      (_E152691152703_)))))
          (_E152690152725_))))
    (define gx#core-expand-setq%
      (lambda (_stx152634_)
        (let* ((_e152635152648_ _stx152634_)
               (_E152637152652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152635152648_)))
               (_E152636152684_
                (lambda ()
                  (if (gx#stx-pair? _e152635152648_)
                      (let ((_e152638152656_ (gx#syntax-e _e152635152648_)))
                        (let ((_hd152639152659_ (##car _e152638152656_))
                              (_tl152640152661_ (##cdr _e152638152656_)))
                          (if (gx#stx-pair? _tl152640152661_)
                              (let ((_e152641152664_
                                     (gx#syntax-e _tl152640152661_)))
                                (let ((_hd152642152667_
                                       (##car _e152641152664_))
                                      (_tl152643152669_
                                       (##cdr _e152641152664_)))
                                  (let ((_id152672_ _hd152642152667_))
                                    (if (gx#stx-pair? _tl152643152669_)
                                        (let ((_e152644152674_
                                               (gx#syntax-e _tl152643152669_)))
                                          (let ((_hd152645152677_
                                                 (##car _e152644152674_))
                                                (_tl152646152679_
                                                 (##cdr _e152644152674_)))
                                            (let ((_expr152682_
                                                   _hd152645152677_))
                                              (if (gx#stx-null?
                                                   _tl152646152679_)
                                                  (if (gx#identifier?
                                                       _id152672_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id152672_
                            _stx152634_)
                           (cons (gx#core-expand-expression _expr152682_)
                                 '())))
               (gx#stx-source _stx152634_))
              (_E152637152652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152637152652_)))))
                                        (_E152637152652_)))))
                              (_E152637152652_))))
                      (_E152637152652_)))))
          (_E152636152684_))))
    (define gx#macro-expand-extern
      (lambda (_stx152482_)
        (letrec ((_generate152484_
                  (lambda (_body152514_)
                    (let _lp152516_ ((_rest152518_ _body152514_)
                                     (_ns152519_
                                      (gx#core-context-namespace__0))
                                     (_r152520_ '()))
                      (let* ((_e152521152536_ _rest152518_)
                             (_E152534152540_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e152521152536_)))
                             (_E152530152544_
                              (lambda ()
                                (if (gx#stx-null? _e152521152536_)
                                    (if '#t
                                        (reverse _r152520_)
                                        (_E152534152540_))
                                    (_E152534152540_))))
                             (_E152523152601_
                              (lambda ()
                                (if (gx#stx-pair? _e152521152536_)
                                    (let ((_e152531152548_
                                           (gx#syntax-e _e152521152536_)))
                                      (let ((_hd152532152551_
                                             (##car _e152531152548_))
                                            (_tl152533152553_
                                             (##cdr _e152531152548_)))
                                        (let* ((_hd152556_ _hd152532152551_)
                                               (_rest152558_ _tl152533152553_))
                                          (if '#t
                                              (if (gx#identifier? _hd152556_)
                                                  (_lp152516_
                                                   _rest152558_
                                                   _ns152519_
                                                   (cons (cons _hd152556_
                                                               (cons (if _ns152519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd152556_
                                  _ns152519_
                                  '"#"
                                  _hd152556_)
                                 _hd152556_)
                             '()))
                 _r152520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e152559152569_
                                                          _hd152556_)
                                                         (_E152561152573_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e152559152569_)))
                                                         (_E152560152597_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e152559152569_)
                        (let ((_e152562152577_ (gx#syntax-e _e152559152569_)))
                          (let ((_hd152563152580_ (##car _e152562152577_))
                                (_tl152564152582_ (##cdr _e152562152577_)))
                            (let ((_id152585_ _hd152563152580_))
                              (if (gx#stx-pair? _tl152564152582_)
                                  (let ((_e152565152587_
                                         (gx#syntax-e _tl152564152582_)))
                                    (let ((_hd152566152590_
                                           (##car _e152565152587_))
                                          (_tl152567152592_
                                           (##cdr _e152565152587_)))
                                      (let ((_eid152595_ _hd152566152590_))
                                        (if (gx#stx-null? _tl152567152592_)
                                            (if (and (gx#identifier?
                                                      _id152585_)
                                                     (gx#identifier?
                                                      _eid152595_))
                                                (_lp152516_
                                                 _rest152558_
                                                 _ns152519_
                                                 (cons (cons _id152585_
                                                             (cons _eid152595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r152520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152561152573_))
                                            (_E152561152573_)))))
                                  (_E152561152573_)))))
                        (_E152561152573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152560152597_)))
                                              (_E152530152544_)))))
                                    (_E152530152544_))))
                             (_E152522152630_
                              (lambda ()
                                (if (gx#stx-pair? _e152521152536_)
                                    (let ((_e152524152605_
                                           (gx#syntax-e _e152521152536_)))
                                      (let ((_hd152525152608_
                                             (##car _e152524152605_))
                                            (_tl152526152610_
                                             (##cdr _e152524152605_)))
                                        (if (eq? (gx#stx-e _hd152525152608_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl152526152610_)
                                                (let ((_e152527152613_
                                                       (gx#syntax-e
                                                        _tl152526152610_)))
                                                  (let ((_hd152528152616_
                                                         (##car _e152527152613_))
                                                        (_tl152529152618_
                                                         (##cdr _e152527152613_)))
                                                    (let* ((_ns152621_
                                                            _hd152528152616_)
                                                           (_rest152623_
                                                            _tl152529152618_))
                                                      (if '#t
                                                          (let ((_ns152628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns152621_)
                             (symbol->string (gx#stx-e _ns152621_))
                             (if (or (gx#stx-string? _ns152621_)
                                     (gx#stx-false? _ns152621_))
                                 (gx#stx-e _ns152621_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152482_
                                  _ns152621_)))))
                    (_lp152516_ _rest152623_ _ns152628_ _r152520_))
                  (_E152523152601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152523152601_))
                                            (_E152523152601_))))
                                    (_E152523152601_)))))
                        (_E152522152630_))))))
          (let* ((_e152485152492_ _stx152482_)
                 (_E152487152496_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152485152492_)))
                 (_E152486152510_
                  (lambda ()
                    (if (gx#stx-pair? _e152485152492_)
                        (let ((_e152488152500_ (gx#syntax-e _e152485152492_)))
                          (let ((_hd152489152503_ (##car _e152488152500_))
                                (_tl152490152505_ (##cdr _e152488152500_)))
                            (let ((_body152508_ _tl152490152505_))
                              (if (gx#stx-list? _body152508_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152484_ _body152508_))
                                  (_E152487152496_)))))
                        (_E152487152496_)))))
            (_E152486152510_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152428_)
        (let* ((_e152429152442_ _stx152428_)
               (_E152431152446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152429152442_)))
               (_E152430152478_
                (lambda ()
                  (if (gx#stx-pair? _e152429152442_)
                      (let ((_e152432152450_ (gx#syntax-e _e152429152442_)))
                        (let ((_hd152433152453_ (##car _e152432152450_))
                              (_tl152434152455_ (##cdr _e152432152450_)))
                          (if (gx#stx-pair? _tl152434152455_)
                              (let ((_e152435152458_
                                     (gx#syntax-e _tl152434152455_)))
                                (let ((_hd152436152461_
                                       (##car _e152435152458_))
                                      (_tl152437152463_
                                       (##cdr _e152435152458_)))
                                  (let ((_hd152466_ _hd152436152461_))
                                    (if (gx#stx-pair? _tl152437152463_)
                                        (let ((_e152438152468_
                                               (gx#syntax-e _tl152437152463_)))
                                          (let ((_hd152439152471_
                                                 (##car _e152438152468_))
                                                (_tl152440152473_
                                                 (##cdr _e152438152468_)))
                                            (let ((_expr152476_
                                                   _hd152439152471_))
                                              (if (gx#stx-null?
                                                   _tl152440152473_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152466_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152466_)
                          (cons _expr152476_ '())))
              (_E152431152446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152431152446_)))))
                                        (_E152431152446_)))))
                              (_E152431152446_))))
                      (_E152431152446_)))))
          (_E152430152478_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152374_)
        (let* ((_e152375152388_ _stx152374_)
               (_E152377152392_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152375152388_)))
               (_E152376152424_
                (lambda ()
                  (if (gx#stx-pair? _e152375152388_)
                      (let ((_e152378152396_ (gx#syntax-e _e152375152388_)))
                        (let ((_hd152379152399_ (##car _e152378152396_))
                              (_tl152380152401_ (##cdr _e152378152396_)))
                          (if (gx#stx-pair? _tl152380152401_)
                              (let ((_e152381152404_
                                     (gx#syntax-e _tl152380152401_)))
                                (let ((_hd152382152407_
                                       (##car _e152381152404_))
                                      (_tl152383152409_
                                       (##cdr _e152381152404_)))
                                  (let ((_hd152412_ _hd152382152407_))
                                    (if (gx#stx-pair? _tl152383152409_)
                                        (let ((_e152384152414_
                                               (gx#syntax-e _tl152383152409_)))
                                          (let ((_hd152385152417_
                                                 (##car _e152384152414_))
                                                (_tl152386152419_
                                                 (##cdr _e152384152414_)))
                                            (let ((_expr152422_
                                                   _hd152385152417_))
                                              (if (gx#stx-null?
                                                   _tl152386152419_)
                                                  (if (gx#identifier?
                                                       _hd152412_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152422_ '())))
              (_E152377152392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152377152392_)))))
                                        (_E152377152392_)))))
                              (_E152377152392_))))
                      (_E152377152392_)))))
          (_E152376152424_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152320_)
        (let* ((_e152321152334_ _stx152320_)
               (_E152323152338_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152321152334_)))
               (_E152322152370_
                (lambda ()
                  (if (gx#stx-pair? _e152321152334_)
                      (let ((_e152324152342_ (gx#syntax-e _e152321152334_)))
                        (let ((_hd152325152345_ (##car _e152324152342_))
                              (_tl152326152347_ (##cdr _e152324152342_)))
                          (if (gx#stx-pair? _tl152326152347_)
                              (let ((_e152327152350_
                                     (gx#syntax-e _tl152326152347_)))
                                (let ((_hd152328152353_
                                       (##car _e152327152350_))
                                      (_tl152329152355_
                                       (##cdr _e152327152350_)))
                                  (let ((_id152358_ _hd152328152353_))
                                    (if (gx#stx-pair? _tl152329152355_)
                                        (let ((_e152330152360_
                                               (gx#syntax-e _tl152329152355_)))
                                          (let ((_hd152331152363_
                                                 (##car _e152330152360_))
                                                (_tl152332152365_
                                                 (##cdr _e152330152360_)))
                                            (let ((_alias-id152368_
                                                   _hd152331152363_))
                                              (if (gx#stx-null?
                                                   _tl152332152365_)
                                                  (if (and (gx#identifier?
                                                            _id152358_)
                                                           (gx#identifier?
                                                            _alias-id152368_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152368_ '())))
              (_E152323152338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152323152338_)))))
                                        (_E152323152338_)))))
                              (_E152323152338_))))
                      (_E152323152338_)))))
          (_E152322152370_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152277_)
        (let* ((_e152278152288_ _stx152277_)
               (_E152280152292_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152278152288_)))
               (_E152279152316_
                (lambda ()
                  (if (gx#stx-pair? _e152278152288_)
                      (let ((_e152281152296_ (gx#syntax-e _e152278152288_)))
                        (let ((_hd152282152299_ (##car _e152281152296_))
                              (_tl152283152301_ (##cdr _e152281152296_)))
                          (if (gx#stx-pair? _tl152283152301_)
                              (let ((_e152284152304_
                                     (gx#syntax-e _tl152283152301_)))
                                (let ((_hd152285152307_
                                       (##car _e152284152304_))
                                      (_tl152286152309_
                                       (##cdr _e152284152304_)))
                                  (let* ((_hd152312_ _hd152285152307_)
                                         (_body152314_ _tl152286152309_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152312_)
                                             (gx#stx-list? _body152314_)
                                             (not (gx#stx-null? _body152314_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152312_)
                                         _body152314_)
                                        (_E152280152292_)))))
                              (_E152280152292_))))
                      (_E152280152292_)))))
          (_E152279152316_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx152213_)
        (letrec ((_generate152215_
                  (lambda (_clause152245_)
                    (let* ((_e152246152253_ _clause152245_)
                           (_E152248152257_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx152213_
                               _clause152245_)))
                           (_E152247152273_
                            (lambda ()
                              (if (gx#stx-pair? _e152246152253_)
                                  (let ((_e152249152261_
                                         (gx#syntax-e _e152246152253_)))
                                    (let ((_hd152250152264_
                                           (##car _e152249152261_))
                                          (_tl152251152266_
                                           (##cdr _e152249152261_)))
                                      (let* ((_hd152269_ _hd152250152264_)
                                             (_body152271_ _tl152251152266_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152269_)
                                                 (gx#stx-list? _body152271_)
                                                 (not (gx#stx-null?
                                                       _body152271_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152269_)
                                                   _body152271_)
                                             (gx#stx-source _clause152245_))
                                            (_E152248152257_)))))
                                  (_E152248152257_)))))
                      (_E152247152273_)))))
          (let* ((_e152216152223_ _stx152213_)
                 (_E152218152227_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152216152223_)))
                 (_E152217152241_
                  (lambda ()
                    (if (gx#stx-pair? _e152216152223_)
                        (let ((_e152219152231_ (gx#syntax-e _e152216152223_)))
                          (let ((_hd152220152234_ (##car _e152219152231_))
                                (_tl152221152236_ (##cdr _e152219152231_)))
                            (let ((_clauses152239_ _tl152221152236_))
                              (if (gx#stx-list? _clauses152239_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate152215_
                                    _clauses152239_))
                                  (_E152218152227_)))))
                        (_E152218152227_)))))
            (_E152217152241_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx152114_ _form152115_)
        (letrec ((_generate152117_
                  (lambda (_bind152160_)
                    (let* ((_e152161152171_ _bind152160_)
                           (_E152163152175_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx152114_
                               _bind152160_)))
                           (_E152162152199_
                            (lambda ()
                              (if (gx#stx-pair? _e152161152171_)
                                  (let ((_e152164152179_
                                         (gx#syntax-e _e152161152171_)))
                                    (let ((_hd152165152182_
                                           (##car _e152164152179_))
                                          (_tl152166152184_
                                           (##cdr _e152164152179_)))
                                      (let ((_ids152187_ _hd152165152182_))
                                        (if (gx#stx-pair? _tl152166152184_)
                                            (let ((_e152167152189_
                                                   (gx#syntax-e
                                                    _tl152166152184_)))
                                              (let ((_hd152168152192_
                                                     (##car _e152167152189_))
                                                    (_tl152169152194_
                                                     (##cdr _e152167152189_)))
                                                (let ((_expr152197_
                                                       _hd152168152192_))
                                                  (if (gx#stx-null?
                                                       _tl152169152194_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids152187_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids152187_)
                        (cons _expr152197_ '()))
                  (_E152163152175_))
              (_E152163152175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E152163152175_)))))
                                  (_E152163152175_)))))
                      (_E152162152199_)))))
          (let* ((_e152118152128_ _stx152114_)
                 (_E152120152132_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152118152128_)))
                 (_E152119152156_
                  (lambda ()
                    (if (gx#stx-pair? _e152118152128_)
                        (let ((_e152121152136_ (gx#syntax-e _e152118152128_)))
                          (let ((_hd152122152139_ (##car _e152121152136_))
                                (_tl152123152141_ (##cdr _e152121152136_)))
                            (if (gx#stx-pair? _tl152123152141_)
                                (let ((_e152124152144_
                                       (gx#syntax-e _tl152123152141_)))
                                  (let ((_hd152125152147_
                                         (##car _e152124152144_))
                                        (_tl152126152149_
                                         (##cdr _e152124152144_)))
                                    (let* ((_hd152152_ _hd152125152147_)
                                           (_body152154_ _tl152126152149_))
                                      (if (and (gx#stx-list? _hd152152_)
                                               (gx#stx-list? _body152154_)
                                               (not (gx#stx-null?
                                                     _body152154_)))
                                          (gx#core-cons*
                                           _form152115_
                                           (gx#stx-map1
                                            _generate152117_
                                            _hd152152_)
                                           _body152154_)
                                          (_E152120152132_)))))
                                (_E152120152132_))))
                        (_E152120152132_)))))
            (_E152119152156_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx152206_)
        (let ((_form152208_ '%#let-values))
          (gx#macro-expand-let-values__% _stx152206_ _form152208_))))
    (define gx#macro-expand-let-values
      (lambda _g159159_
        (let ((_g159158_ (##length _g159159_)))
          (cond ((##fx= _g159158_ 1)
                 (apply (lambda (_stx152206_)
                          (gx#macro-expand-let-values__0 _stx152206_))
                        _g159159_))
                ((##fx= _g159158_ 2)
                 (apply (lambda (_stx152210_ _form152211_)
                          (gx#macro-expand-let-values__%
                           _stx152210_
                           _form152211_))
                        _g159159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g159159_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx152111_)
        (gx#macro-expand-let-values__% _stx152111_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx152109_)
        (gx#macro-expand-let-values__% _stx152109_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx152000_)
        (let* ((_e152001152027_ _stx152000_)
               (_E152013152031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152001152027_)))
               (_E152003152073_
                (lambda ()
                  (if (gx#stx-pair? _e152001152027_)
                      (let ((_e152014152035_ (gx#syntax-e _e152001152027_)))
                        (let ((_hd152015152038_ (##car _e152014152035_))
                              (_tl152016152040_ (##cdr _e152014152035_)))
                          (if (gx#stx-pair? _tl152016152040_)
                              (let ((_e152017152043_
                                     (gx#syntax-e _tl152016152040_)))
                                (let ((_hd152018152046_
                                       (##car _e152017152043_))
                                      (_tl152019152048_
                                       (##cdr _e152017152043_)))
                                  (let ((_test152051_ _hd152018152046_))
                                    (if (gx#stx-pair? _tl152019152048_)
                                        (let ((_e152020152053_
                                               (gx#syntax-e _tl152019152048_)))
                                          (let ((_hd152021152056_
                                                 (##car _e152020152053_))
                                                (_tl152022152058_
                                                 (##cdr _e152020152053_)))
                                            (let ((_K152061_ _hd152021152056_))
                                              (if (gx#stx-pair?
                                                   _tl152022152058_)
                                                  (let ((_e152023152063_
                                                         (gx#syntax-e
                                                          _tl152022152058_)))
                                                    (let ((_hd152024152066_
                                                           (##car _e152023152063_))
                                                          (_tl152025152068_
                                                           (##cdr _e152023152063_)))
                                                      (let ((_E152071_
                                                             _hd152024152066_))
                                                        (if (gx#stx-null?
                                                             _tl152025152068_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test152051_
                         _K152061_
                         _E152071_)
                        (_E152013152031_))
                    (_E152013152031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152013152031_)))))
                                        (_E152013152031_)))))
                              (_E152013152031_))))
                      (_E152013152031_))))
               (_E152002152105_
                (lambda ()
                  (if (gx#stx-pair? _e152001152027_)
                      (let ((_e152004152077_ (gx#syntax-e _e152001152027_)))
                        (let ((_hd152005152080_ (##car _e152004152077_))
                              (_tl152006152082_ (##cdr _e152004152077_)))
                          (if (gx#stx-pair? _tl152006152082_)
                              (let ((_e152007152085_
                                     (gx#syntax-e _tl152006152082_)))
                                (let ((_hd152008152088_
                                       (##car _e152007152085_))
                                      (_tl152009152090_
                                       (##cdr _e152007152085_)))
                                  (let ((_test152093_ _hd152008152088_))
                                    (if (gx#stx-pair? _tl152009152090_)
                                        (let ((_e152010152095_
                                               (gx#syntax-e _tl152009152090_)))
                                          (let ((_hd152011152098_
                                                 (##car _e152010152095_))
                                                (_tl152012152100_
                                                 (##cdr _e152010152095_)))
                                            (let ((_K152103_ _hd152011152098_))
                                              (if (gx#stx-null?
                                                   _tl152012152100_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test152093_
                                                       _K152103_
                                                       '#!void)
                                                      (_E152003152073_))
                                                  (_E152003152073_)))))
                                        (_E152003152073_)))))
                              (_E152003152073_))))
                      (_E152003152073_)))))
          (_E152002152105_))))
    (define gx#free-identifier=?
      (lambda (_xid151988_ _yid151989_)
        (let ((_xe151991_ (gx#resolve-identifier__0 _xid151988_))
              (_ye151992_ (gx#resolve-identifier__0 _yid151989_)))
          (if (and _xe151991_ _ye151992_)
              (let ((_$e151994_ (eq? _xe151991_ _ye151992_)))
                (if _$e151994_
                    _$e151994_
                    (if (##structure-instance-of? _xe151991_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye151992_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe151991_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye151992_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe151991_ _ye151992_)
                  '#f
                  (gx#stx-eq? _xid151988_ _yid151989_))))))
    (define gx#bound-identifier=?
      (lambda (_xid151972_ _yid151973_)
        (letrec ((_context151975_
                  (lambda (_e151986_)
                    (if (##structure-direct-instance-of?
                         _e151986_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e151986_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks151976_
                  (lambda (_e151984_)
                    (if (symbol? _e151984_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e151984_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e151984_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e151984_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap151977_
                  (lambda (_e151982_)
                    (if (symbol? _e151982_)
                        _e151982_
                        (gx#syntax-local-unwrap _e151982_)))))
          (let ((_x151979_ (_unwrap151977_ _xid151972_))
                (_y151980_ (_unwrap151977_ _yid151973_)))
            (if (gx#stx-eq? _x151979_ _y151980_)
                (if (eq? (_context151975_ _x151979_)
                         (_context151975_ _y151980_))
                    (equal? (_marks151976_ _x151979_)
                            (_marks151976_ _y151980_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx151970_)
        (if (gx#identifier? _stx151970_)
            (gx#core-identifier=? _stx151970_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx151968_)
        (if (gx#identifier? _stx151968_)
            (gx#core-identifier=? _stx151968_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x151966_)
        (if (gx#identifier? _x151966_)
            (if (not (gx#underscore? _x151966_)) _x151966_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx151912_ _where151913_)
        (let _lp151915_ ((_rest151917_ (gx#syntax->list _stx151912_)))
          (let* ((_rest151918151926_ _rest151917_)
                 (_else151920151934_ (lambda () '#t))
                 (_K151922151944_
                  (lambda (_rest151937_ _hd151938_)
                    (if (not (gx#identifier? _hd151938_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where151913_
                         _hd151938_)
                        (if (find (lambda (_g151939151941_)
                                    (gx#bound-identifier=?
                                     _g151939151941_
                                     _hd151938_))
                                  _rest151937_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where151913_
                             _hd151938_)
                            (_lp151915_ _rest151937_))))))
            (if (##pair? _rest151918151926_)
                (let ((_hd151923151947_ (##car _rest151918151926_))
                      (_tl151924151949_ (##cdr _rest151918151926_)))
                  (let* ((_hd151952_ _hd151923151947_)
                         (_rest151954_ _tl151924151949_))
                    (_K151922151944_ _rest151954_ _hd151952_)))
                (_else151920151934_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx151959_)
        (let ((_where151961_ _stx151959_))
          (gx#check-duplicate-identifiers__% _stx151959_ _where151961_))))
    (define gx#check-duplicate-identifiers
      (lambda _g159161_
        (let ((_g159160_ (##length _g159161_)))
          (cond ((##fx= _g159160_ 1)
                 (apply (lambda (_stx151959_)
                          (gx#check-duplicate-identifiers__0 _stx151959_))
                        _g159161_))
                ((##fx= _g159160_ 2)
                 (apply (lambda (_stx151963_ _where151964_)
                          (gx#check-duplicate-identifiers__%
                           _stx151963_
                           _where151964_))
                        _g159161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g159161_))))))
    (define gx#core-bind-values?
      (lambda (_stx151904_)
        (gx#stx-andmap
         (lambda (_x151906_)
           (let ((_$e151908_ (gx#identifier? _x151906_)))
             (if _$e151908_ _$e151908_ (gx#stx-false? _x151906_))))
         _stx151904_)))
    (define gx#core-bind-values!__%
      (lambda (_stx151868_ _rebind?151869_ _phi151870_ _ctx151871_)
        (gx#stx-for-each1
         (lambda (_id151873_)
           (if (gx#identifier? _id151873_)
               (gx#core-bind-runtime!__%
                _id151873_
                _rebind?151869_
                _phi151870_
                _ctx151871_)
               '#!void))
         _stx151868_)))
    (define gx#core-bind-values!__0
      (lambda (_stx151878_)
        (let* ((_rebind?151880_ '#f)
               (_phi151882_ (gx#current-expander-phi))
               (_ctx151884_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151878_
           _rebind?151880_
           _phi151882_
           _ctx151884_))))
    (define gx#core-bind-values!__1
      (lambda (_stx151886_ _rebind?151887_)
        (let* ((_phi151889_ (gx#current-expander-phi))
               (_ctx151891_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151886_
           _rebind?151887_
           _phi151889_
           _ctx151891_))))
    (define gx#core-bind-values!__2
      (lambda (_stx151893_ _rebind?151894_ _phi151895_)
        (let ((_ctx151897_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151893_
           _rebind?151894_
           _phi151895_
           _ctx151897_))))
    (define gx#core-bind-values!
      (lambda _g159163_
        (let ((_g159162_ (##length _g159163_)))
          (cond ((##fx= _g159162_ 1)
                 (apply (lambda (_stx151878_)
                          (gx#core-bind-values!__0 _stx151878_))
                        _g159163_))
                ((##fx= _g159162_ 2)
                 (apply (lambda (_stx151886_ _rebind?151887_)
                          (gx#core-bind-values!__1
                           _stx151886_
                           _rebind?151887_))
                        _g159163_))
                ((##fx= _g159162_ 3)
                 (apply (lambda (_stx151893_ _rebind?151894_ _phi151895_)
                          (gx#core-bind-values!__2
                           _stx151893_
                           _rebind?151894_
                           _phi151895_))
                        _g159163_))
                ((##fx= _g159162_ 4)
                 (apply (lambda (_stx151899_
                                 _rebind?151900_
                                 _phi151901_
                                 _ctx151902_)
                          (gx#core-bind-values!__%
                           _stx151899_
                           _rebind?151900_
                           _phi151901_
                           _ctx151902_))
                        _g159163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g159163_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx151863_)
        (gx#stx-map1
         (lambda (_x151865_)
           (if (gx#identifier? _x151865_)
               (gx#core-quote-syntax__0 _x151865_)
               '#f))
         _stx151863_)))
    (define gx#core-runtime-ref?
      (lambda (_stx151856_)
        (if (gx#identifier? _stx151856_)
            (let* ((_bind151858_ (gx#resolve-identifier__0 _stx151856_))
                   (_$e151860_ (not _bind151858_)))
              (if _$e151860_
                  _$e151860_
                  (##structure-instance-of?
                   _bind151858_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id151848_ _form151849_)
        (let ((_bind151851_ (gx#resolve-identifier__0 _id151848_)))
          (if (##structure-instance-of? _bind151851_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id151848_)
              (if (not _bind151851_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id151848_)))
                      (gx#core-quote-syntax__0 _id151848_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form151849_
                       _id151848_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form151849_
                   _id151848_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id151807_ _rebind?151808_ _phi151809_ _ctx151810_)
        (let* ((_key151812_ (gx#core-identifier-key _id151807_))
               (_eid151814_
                (gx#make-binding-id__%
                 _key151812_
                 '#f
                 _phi151809_
                 _ctx151810_))
               (_bind151816_
                (if (##structure-instance-of?
                     _ctx151810_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151814_
                     _key151812_
                     _phi151809_
                     _ctx151810_)
                    (if (##structure-instance-of?
                         _ctx151810_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151814_
                         _key151812_
                         _phi151809_)
                        (if (##structure-instance-of?
                             _ctx151810_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid151814_
                             _key151812_
                             _phi151809_)
                            (##structure
                             gx#runtime-binding::t
                             _eid151814_
                             _key151812_
                             _phi151809_))))))
          (gx#bind-identifier!__%
           _id151807_
           _bind151816_
           _rebind?151808_
           _phi151809_
           _ctx151810_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id151822_)
        (let* ((_rebind?151824_ '#f)
               (_phi151826_ (gx#current-expander-phi))
               (_ctx151828_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151822_
           _rebind?151824_
           _phi151826_
           _ctx151828_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id151830_ _rebind?151831_)
        (let* ((_phi151833_ (gx#current-expander-phi))
               (_ctx151835_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151830_
           _rebind?151831_
           _phi151833_
           _ctx151835_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id151837_ _rebind?151838_ _phi151839_)
        (let ((_ctx151841_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151837_
           _rebind?151838_
           _phi151839_
           _ctx151841_))))
    (define gx#core-bind-runtime!
      (lambda _g159165_
        (let ((_g159164_ (##length _g159165_)))
          (cond ((##fx= _g159164_ 1)
                 (apply (lambda (_id151822_)
                          (gx#core-bind-runtime!__0 _id151822_))
                        _g159165_))
                ((##fx= _g159164_ 2)
                 (apply (lambda (_id151830_ _rebind?151831_)
                          (gx#core-bind-runtime!__1
                           _id151830_
                           _rebind?151831_))
                        _g159165_))
                ((##fx= _g159164_ 3)
                 (apply (lambda (_id151837_ _rebind?151838_ _phi151839_)
                          (gx#core-bind-runtime!__2
                           _id151837_
                           _rebind?151838_
                           _phi151839_))
                        _g159165_))
                ((##fx= _g159164_ 4)
                 (apply (lambda (_id151843_
                                 _rebind?151844_
                                 _phi151845_
                                 _ctx151846_)
                          (gx#core-bind-runtime!__%
                           _id151843_
                           _rebind?151844_
                           _phi151845_
                           _ctx151846_))
                        _g159165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g159165_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id151762_ _eid151763_ _rebind?151764_ _phi151765_ _ctx151766_)
        (let* ((_key151768_ (gx#core-identifier-key _id151762_))
               (_bind151770_
                (if (##structure-instance-of?
                     _ctx151766_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151763_
                     _key151768_
                     _phi151765_
                     _ctx151766_)
                    (if (##structure-instance-of?
                         _ctx151766_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151763_
                         _key151768_
                         _phi151765_)
                        (##structure
                         gx#runtime-binding::t
                         _eid151763_
                         _key151768_
                         _phi151765_)))))
          (gx#bind-identifier!__%
           _id151762_
           _bind151770_
           _rebind?151764_
           _phi151765_
           _ctx151766_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id151776_ _eid151777_)
        (let* ((_rebind?151779_ '#f)
               (_phi151781_ (gx#current-expander-phi))
               (_ctx151783_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151776_
           _eid151777_
           _rebind?151779_
           _phi151781_
           _ctx151783_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id151785_ _eid151786_ _rebind?151787_)
        (let* ((_phi151789_ (gx#current-expander-phi))
               (_ctx151791_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151785_
           _eid151786_
           _rebind?151787_
           _phi151789_
           _ctx151791_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id151793_ _eid151794_ _rebind?151795_ _phi151796_)
        (let ((_ctx151798_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151793_
           _eid151794_
           _rebind?151795_
           _phi151796_
           _ctx151798_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g159167_
        (let ((_g159166_ (##length _g159167_)))
          (cond ((##fx= _g159166_ 2)
                 (apply (lambda (_id151776_ _eid151777_)
                          (gx#core-bind-runtime-reference!__0
                           _id151776_
                           _eid151777_))
                        _g159167_))
                ((##fx= _g159166_ 3)
                 (apply (lambda (_id151785_ _eid151786_ _rebind?151787_)
                          (gx#core-bind-runtime-reference!__1
                           _id151785_
                           _eid151786_
                           _rebind?151787_))
                        _g159167_))
                ((##fx= _g159166_ 4)
                 (apply (lambda (_id151793_
                                 _eid151794_
                                 _rebind?151795_
                                 _phi151796_)
                          (gx#core-bind-runtime-reference!__2
                           _id151793_
                           _eid151794_
                           _rebind?151795_
                           _phi151796_))
                        _g159167_))
                ((##fx= _g159166_ 5)
                 (apply (lambda (_id151800_
                                 _eid151801_
                                 _rebind?151802_
                                 _phi151803_
                                 _ctx151804_)
                          (gx#core-bind-runtime-reference!__%
                           _id151800_
                           _eid151801_
                           _rebind?151802_
                           _phi151803_
                           _ctx151804_))
                        _g159167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g159167_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id151722_ _eid151723_ _rebind?151724_ _phi151725_ _ctx151726_)
        (gx#bind-identifier!__%
         _id151722_
         (##structure
          gx#extern-binding::t
          _eid151723_
          (gx#core-identifier-key _id151722_)
          _phi151725_)
         _rebind?151724_
         _phi151725_
         _ctx151726_)))
    (define gx#core-bind-extern!__0
      (lambda (_id151731_ _eid151732_)
        (let* ((_rebind?151734_ '#f)
               (_phi151736_ (gx#current-expander-phi))
               (_ctx151738_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151731_
           _eid151732_
           _rebind?151734_
           _phi151736_
           _ctx151738_))))
    (define gx#core-bind-extern!__1
      (lambda (_id151740_ _eid151741_ _rebind?151742_)
        (let* ((_phi151744_ (gx#current-expander-phi))
               (_ctx151746_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151740_
           _eid151741_
           _rebind?151742_
           _phi151744_
           _ctx151746_))))
    (define gx#core-bind-extern!__2
      (lambda (_id151748_ _eid151749_ _rebind?151750_ _phi151751_)
        (let ((_ctx151753_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151748_
           _eid151749_
           _rebind?151750_
           _phi151751_
           _ctx151753_))))
    (define gx#core-bind-extern!
      (lambda _g159169_
        (let ((_g159168_ (##length _g159169_)))
          (cond ((##fx= _g159168_ 2)
                 (apply (lambda (_id151731_ _eid151732_)
                          (gx#core-bind-extern!__0 _id151731_ _eid151732_))
                        _g159169_))
                ((##fx= _g159168_ 3)
                 (apply (lambda (_id151740_ _eid151741_ _rebind?151742_)
                          (gx#core-bind-extern!__1
                           _id151740_
                           _eid151741_
                           _rebind?151742_))
                        _g159169_))
                ((##fx= _g159168_ 4)
                 (apply (lambda (_id151748_
                                 _eid151749_
                                 _rebind?151750_
                                 _phi151751_)
                          (gx#core-bind-extern!__2
                           _id151748_
                           _eid151749_
                           _rebind?151750_
                           _phi151751_))
                        _g159169_))
                ((##fx= _g159168_ 5)
                 (apply (lambda (_id151755_
                                 _eid151756_
                                 _rebind?151757_
                                 _phi151758_
                                 _ctx151759_)
                          (gx#core-bind-extern!__%
                           _id151755_
                           _eid151756_
                           _rebind?151757_
                           _phi151758_
                           _ctx151759_))
                        _g159169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g159169_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id151676_ _e151677_ _rebind?151678_ _phi151679_ _ctx151680_)
        (gx#bind-identifier!__%
         _id151676_
         (let ((_key151685_ (gx#core-identifier-key _id151676_))
               (_e151686_
                (if (or (##structure-instance-of? _e151677_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e151677_
                         'gx#expander-context::t))
                    _e151677_
                    (##structure
                     gx#user-expander::t
                     _e151677_
                     _ctx151680_
                     _phi151679_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key151685_ '#t _phi151679_ _ctx151680_)
            _key151685_
            _phi151679_
            _e151686_))
         _rebind?151678_
         _phi151679_
         _ctx151680_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id151691_ _e151692_)
        (let* ((_rebind?151694_ '#f)
               (_phi151696_ (gx#current-expander-phi))
               (_ctx151698_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151691_
           _e151692_
           _rebind?151694_
           _phi151696_
           _ctx151698_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id151700_ _e151701_ _rebind?151702_)
        (let* ((_phi151704_ (gx#current-expander-phi))
               (_ctx151706_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151700_
           _e151701_
           _rebind?151702_
           _phi151704_
           _ctx151706_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id151708_ _e151709_ _rebind?151710_ _phi151711_)
        (let ((_ctx151713_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151708_
           _e151709_
           _rebind?151710_
           _phi151711_
           _ctx151713_))))
    (define gx#core-bind-syntax!
      (lambda _g159171_
        (let ((_g159170_ (##length _g159171_)))
          (cond ((##fx= _g159170_ 2)
                 (apply (lambda (_id151691_ _e151692_)
                          (gx#core-bind-syntax!__0 _id151691_ _e151692_))
                        _g159171_))
                ((##fx= _g159170_ 3)
                 (apply (lambda (_id151700_ _e151701_ _rebind?151702_)
                          (gx#core-bind-syntax!__1
                           _id151700_
                           _e151701_
                           _rebind?151702_))
                        _g159171_))
                ((##fx= _g159170_ 4)
                 (apply (lambda (_id151708_
                                 _e151709_
                                 _rebind?151710_
                                 _phi151711_)
                          (gx#core-bind-syntax!__2
                           _id151708_
                           _e151709_
                           _rebind?151710_
                           _phi151711_))
                        _g159171_))
                ((##fx= _g159170_ 5)
                 (apply (lambda (_id151715_
                                 _e151716_
                                 _rebind?151717_
                                 _phi151718_
                                 _ctx151719_)
                          (gx#core-bind-syntax!__%
                           _id151715_
                           _e151716_
                           _rebind?151717_
                           _phi151718_
                           _ctx151719_))
                        _g159171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g159171_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id151659_ _e151660_ _rebind?151661_)
        (gx#core-bind-syntax!__%
         _id151659_
         _e151660_
         _rebind?151661_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id151666_ _e151667_)
        (let ((_rebind?151669_ '#f))
          (gx#core-bind-root-syntax!__%
           _id151666_
           _e151667_
           _rebind?151669_))))
    (define gx#core-bind-root-syntax!
      (lambda _g159173_
        (let ((_g159172_ (##length _g159173_)))
          (cond ((##fx= _g159172_ 2)
                 (apply (lambda (_id151666_ _e151667_)
                          (gx#core-bind-root-syntax!__0 _id151666_ _e151667_))
                        _g159173_))
                ((##fx= _g159172_ 3)
                 (apply (lambda (_id151671_ _e151672_ _rebind?151673_)
                          (gx#core-bind-root-syntax!__%
                           _id151671_
                           _e151672_
                           _rebind?151673_))
                        _g159173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g159173_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id151617_
               _alias-id151618_
               _rebind?151619_
               _phi151620_
               _ctx151621_)
        (gx#bind-identifier!__%
         _id151617_
         (let ((_key151623_ (gx#core-identifier-key _id151617_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key151623_ '#t _phi151620_ _ctx151621_)
            _key151623_
            _phi151620_
            _alias-id151618_))
         _rebind?151619_
         _phi151620_
         _ctx151621_)))
    (define gx#core-bind-alias!__0
      (lambda (_id151628_ _alias-id151629_)
        (let* ((_rebind?151631_ '#f)
               (_phi151633_ (gx#current-expander-phi))
               (_ctx151635_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151628_
           _alias-id151629_
           _rebind?151631_
           _phi151633_
           _ctx151635_))))
    (define gx#core-bind-alias!__1
      (lambda (_id151637_ _alias-id151638_ _rebind?151639_)
        (let* ((_phi151641_ (gx#current-expander-phi))
               (_ctx151643_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151637_
           _alias-id151638_
           _rebind?151639_
           _phi151641_
           _ctx151643_))))
    (define gx#core-bind-alias!__2
      (lambda (_id151645_ _alias-id151646_ _rebind?151647_ _phi151648_)
        (let ((_ctx151650_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151645_
           _alias-id151646_
           _rebind?151647_
           _phi151648_
           _ctx151650_))))
    (define gx#core-bind-alias!
      (lambda _g159175_
        (let ((_g159174_ (##length _g159175_)))
          (cond ((##fx= _g159174_ 2)
                 (apply (lambda (_id151628_ _alias-id151629_)
                          (gx#core-bind-alias!__0 _id151628_ _alias-id151629_))
                        _g159175_))
                ((##fx= _g159174_ 3)
                 (apply (lambda (_id151637_ _alias-id151638_ _rebind?151639_)
                          (gx#core-bind-alias!__1
                           _id151637_
                           _alias-id151638_
                           _rebind?151639_))
                        _g159175_))
                ((##fx= _g159174_ 4)
                 (apply (lambda (_id151645_
                                 _alias-id151646_
                                 _rebind?151647_
                                 _phi151648_)
                          (gx#core-bind-alias!__2
                           _id151645_
                           _alias-id151646_
                           _rebind?151647_
                           _phi151648_))
                        _g159175_))
                ((##fx= _g159174_ 5)
                 (apply (lambda (_id151652_
                                 _alias-id151653_
                                 _rebind?151654_
                                 _phi151655_
                                 _ctx151656_)
                          (gx#core-bind-alias!__%
                           _id151652_
                           _alias-id151653_
                           _rebind?151654_
                           _phi151655_
                           _ctx151656_))
                        _g159175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g159175_))))))
    (define gx#make-binding-id__%
      (lambda (_key151574_ _syntax?151575_ _phi151576_ _ctx151577_)
        (if (uninterned-symbol? _key151574_)
            (gensym 'L)
            (if (pair? _key151574_)
                (gensym (car _key151574_))
                (if (##structure-instance-of? _ctx151577_ 'gx#top-context::t)
                    (let ((_ns151579_
                           (gx#core-context-namespace__% _ctx151577_)))
                      (if (and (fxzero? _phi151576_) (not _syntax?151575_))
                          (if _ns151579_
                              (make-symbol__1 _ns151579_ '"#" _key151574_)
                              _key151574_)
                          (if _syntax?151575_
                              (make-symbol__1
                               (let ((_$e151581_ _ns151579_))
                                 (if _$e151581_ _$e151581_ '""))
                               '"[:"
                               (number->string _phi151576_)
                               '":]#"
                               _key151574_)
                              (make-symbol__1
                               (let ((_$e151584_ _ns151579_))
                                 (if _$e151584_ _$e151584_ '""))
                               '"["
                               (number->string _phi151576_)
                               '"]#"
                               _key151574_))))
                    (gensym _key151574_))))))
    (define gx#make-binding-id__0
      (lambda (_key151590_)
        (let* ((_syntax?151592_ '#f)
               (_phi151594_ (gx#current-expander-phi))
               (_ctx151596_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151590_
           _syntax?151592_
           _phi151594_
           _ctx151596_))))
    (define gx#make-binding-id__1
      (lambda (_key151598_ _syntax?151599_)
        (let* ((_phi151601_ (gx#current-expander-phi))
               (_ctx151603_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151598_
           _syntax?151599_
           _phi151601_
           _ctx151603_))))
    (define gx#make-binding-id__2
      (lambda (_key151605_ _syntax?151606_ _phi151607_)
        (let ((_ctx151609_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151605_
           _syntax?151606_
           _phi151607_
           _ctx151609_))))
    (define gx#make-binding-id
      (lambda _g159177_
        (let ((_g159176_ (##length _g159177_)))
          (cond ((##fx= _g159176_ 1)
                 (apply (lambda (_key151590_)
                          (gx#make-binding-id__0 _key151590_))
                        _g159177_))
                ((##fx= _g159176_ 2)
                 (apply (lambda (_key151598_ _syntax?151599_)
                          (gx#make-binding-id__1 _key151598_ _syntax?151599_))
                        _g159177_))
                ((##fx= _g159176_ 3)
                 (apply (lambda (_key151605_ _syntax?151606_ _phi151607_)
                          (gx#make-binding-id__2
                           _key151605_
                           _syntax?151606_
                           _phi151607_))
                        _g159177_))
                ((##fx= _g159176_ 4)
                 (apply (lambda (_key151611_
                                 _syntax?151612_
                                 _phi151613_
                                 _ctx151614_)
                          (gx#make-binding-id__%
                           _key151611_
                           _syntax?151612_
                           _phi151613_
                           _ctx151614_))
                        _g159177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g159177_))))))))
