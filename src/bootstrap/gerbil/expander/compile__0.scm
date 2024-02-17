(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708194425)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166085_)
        (let* ((_e166086166093_ _stx166085_)
               (_E166088166097_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166086166093_)))
               (_E166087166111_
                (lambda ()
                  (if (gx#stx-pair? _e166086166093_)
                      (let ((_e166089166101_ (gx#syntax-e _e166086166093_)))
                        (let ((_hd166090166104_ (##car _e166089166101_))
                              (_tl166091166106_ (##cdr _e166089166101_)))
                          (let ((_form166109_ _hd166090166104_))
                            (if '#t
                                (let* ((__self170181
                                        (gx#syntax-local-e__0 _form166109_))
                                       (__method170182
                                        (method-ref
                                         __self170181
                                         'compile-top-syntax)))
                                  (if __method170182
                                      (__method170182 __self170181 _stx166085_)
                                      (error '"Missing method"
                                             __self170181
                                             'compile-top-syntax)))
                                (_E166088166097_)))))
                      (_E166088166097_)))))
          (_E166087166111_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166045_ _stx166046_)
        (let* ((_self166047166055_ _self166045_)
               (_E166049166059_
                (lambda () (error '"No clause matching" _self166047166055_)))
               (_K166050166071_
                (lambda (_K166062_)
                  (let ((_$e166064_ (gx#stx-source _stx166046_)))
                    (if _$e166064_
                        ((lambda (_g166066166068_)
                           (gx#stx-wrap-source
                            (_K166062_ _stx166046_)
                            _g166066166068_))
                         _$e166064_)
                        (_K166062_ _stx166046_))))))
          (if (##structure-instance-of?
               _self166047166055_
               'gx#core-expander::t)
              (let* ((_e166051166074_
                      (##unchecked-structure-ref
                       _self166047166055_
                       '1
                       gx#expander::t
                       '#f))
                     (_e166052166077_
                      (##unchecked-structure-ref
                       _self166047166055_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e166053166080_
                      (##unchecked-structure-ref
                       _self166047166055_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K166083_ _e166053166080_))
                (_K166050166071_ _K166083_))
              (_E166049166059_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx165919_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx165919_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx165889_)
        (let* ((_e165890165897_ _stx165889_)
               (_E165892165901_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165890165897_)))
               (_E165891165915_
                (lambda ()
                  (if (gx#stx-pair? _e165890165897_)
                      (let ((_e165893165905_ (gx#syntax-e _e165890165897_)))
                        (let ((_hd165894165908_ (##car _e165893165905_))
                              (_tl165895165910_ (##cdr _e165893165905_)))
                          (let ((_body165913_ _tl165895165910_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body165913_))
                                (_E165892165901_)))))
                      (_E165892165901_)))))
          (_E165891165915_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx165858_)
        (let* ((_e165859165866_ _stx165858_)
               (_E165861165870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165859165866_)))
               (_E165860165885_
                (lambda ()
                  (if (gx#stx-pair? _e165859165866_)
                      (let ((_e165862165874_ (gx#syntax-e _e165859165866_)))
                        (let ((_hd165863165877_ (##car _e165862165874_))
                              (_tl165864165879_ (##cdr _e165862165874_)))
                          (let ((_body165882_ _tl165864165879_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body165882_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E165861165870_)))))
                      (_E165861165870_)))))
          (_E165860165885_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx165828_)
        (let* ((_e165829165836_ _stx165828_)
               (_E165831165840_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165829165836_)))
               (_E165830165854_
                (lambda ()
                  (if (gx#stx-pair? _e165829165836_)
                      (let ((_e165832165844_ (gx#syntax-e _e165829165836_)))
                        (let ((_hd165833165847_ (##car _e165832165844_))
                              (_tl165834165849_ (##cdr _e165832165844_)))
                          (let ((_body165852_ _tl165834165849_))
                            (if '#t
                                (cons '%#begin-foreign _body165852_)
                                (_E165831165840_)))))
                      (_E165831165840_)))))
          (_E165830165854_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx165774_)
        (let* ((_e165775165788_ _stx165774_)
               (_E165777165792_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165775165788_)))
               (_E165776165824_
                (lambda ()
                  (if (gx#stx-pair? _e165775165788_)
                      (let ((_e165778165796_ (gx#syntax-e _e165775165788_)))
                        (let ((_hd165779165799_ (##car _e165778165796_))
                              (_tl165780165801_ (##cdr _e165778165796_)))
                          (if (gx#stx-pair? _tl165780165801_)
                              (let ((_e165781165804_
                                     (gx#syntax-e _tl165780165801_)))
                                (let ((_hd165782165807_
                                       (##car _e165781165804_))
                                      (_tl165783165809_
                                       (##cdr _e165781165804_)))
                                  (let ((_ann165812_ _hd165782165807_))
                                    (if (gx#stx-pair? _tl165783165809_)
                                        (let ((_e165784165814_
                                               (gx#syntax-e _tl165783165809_)))
                                          (let ((_hd165785165817_
                                                 (##car _e165784165814_))
                                                (_tl165786165819_
                                                 (##cdr _e165784165814_)))
                                            (let ((_expr165822_
                                                   _hd165785165817_))
                                              (if (gx#stx-null?
                                                   _tl165786165819_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr165822_)
                                                      (_E165777165792_))
                                                  (_E165777165792_)))))
                                        (_E165777165792_)))))
                              (_E165777165792_))))
                      (_E165777165792_)))))
          (_E165776165824_))))
    (define gx#core-compile-top-import%
      (lambda (_stx165744_)
        (let* ((_e165745165752_ _stx165744_)
               (_E165747165756_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165745165752_)))
               (_E165746165770_
                (lambda ()
                  (if (gx#stx-pair? _e165745165752_)
                      (let ((_e165748165760_ (gx#syntax-e _e165745165752_)))
                        (let ((_hd165749165763_ (##car _e165748165760_))
                              (_tl165750165765_ (##cdr _e165748165760_)))
                          (let ((_body165768_ _tl165750165765_))
                            (if '#t
                                (cons '%#import _body165768_)
                                (_E165747165756_)))))
                      (_E165747165756_)))))
          (_E165746165770_))))
    (define gx#core-compile-top-module%
      (lambda (_stx165701_)
        (let* ((_e165702165712_ _stx165701_)
               (_E165704165716_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165702165712_)))
               (_E165703165740_
                (lambda ()
                  (if (gx#stx-pair? _e165702165712_)
                      (let ((_e165705165720_ (gx#syntax-e _e165702165712_)))
                        (let ((_hd165706165723_ (##car _e165705165720_))
                              (_tl165707165725_ (##cdr _e165705165720_)))
                          (if (gx#stx-pair? _tl165707165725_)
                              (let ((_e165708165728_
                                     (gx#syntax-e _tl165707165725_)))
                                (let ((_hd165709165731_
                                       (##car _e165708165728_))
                                      (_tl165710165733_
                                       (##cdr _e165708165728_)))
                                  (let* ((_hd165736_ _hd165709165731_)
                                         (_body165738_ _tl165710165733_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd165736_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body165738_)))
                                        (_E165704165716_)))))
                              (_E165704165716_))))
                      (_E165704165716_)))))
          (_E165703165740_))))
    (define gx#core-compile-top-export%
      (lambda (_stx165671_)
        (let* ((_e165672165679_ _stx165671_)
               (_E165674165683_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165672165679_)))
               (_E165673165697_
                (lambda ()
                  (if (gx#stx-pair? _e165672165679_)
                      (let ((_e165675165687_ (gx#syntax-e _e165672165679_)))
                        (let ((_hd165676165690_ (##car _e165675165687_))
                              (_tl165677165692_ (##cdr _e165675165687_)))
                          (let ((_body165695_ _tl165677165692_))
                            (if '#t
                                (cons '%#export _body165695_)
                                (_E165674165683_)))))
                      (_E165674165683_)))))
          (_E165673165697_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx165641_)
        (let* ((_e165642165649_ _stx165641_)
               (_E165644165653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165642165649_)))
               (_E165643165667_
                (lambda ()
                  (if (gx#stx-pair? _e165642165649_)
                      (let ((_e165645165657_ (gx#syntax-e _e165642165649_)))
                        (let ((_hd165646165660_ (##car _e165645165657_))
                              (_tl165647165662_ (##cdr _e165645165657_)))
                          (let ((_body165665_ _tl165647165662_))
                            (if '#t
                                (cons '%#provide _body165665_)
                                (_E165644165653_)))))
                      (_E165644165653_)))))
          (_E165643165667_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx165611_)
        (let* ((_e165612165619_ _stx165611_)
               (_E165614165623_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165612165619_)))
               (_E165613165637_
                (lambda ()
                  (if (gx#stx-pair? _e165612165619_)
                      (let ((_e165615165627_ (gx#syntax-e _e165612165619_)))
                        (let ((_hd165616165630_ (##car _e165615165627_))
                              (_tl165617165632_ (##cdr _e165615165627_)))
                          (let ((_body165635_ _tl165617165632_))
                            (if '#t
                                (cons '%#extern _body165635_)
                                (_E165614165623_)))))
                      (_E165614165623_)))))
          (_E165613165637_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx165557_)
        (let* ((_e165558165571_ _stx165557_)
               (_E165560165575_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165558165571_)))
               (_E165559165607_
                (lambda ()
                  (if (gx#stx-pair? _e165558165571_)
                      (let ((_e165561165579_ (gx#syntax-e _e165558165571_)))
                        (let ((_hd165562165582_ (##car _e165561165579_))
                              (_tl165563165584_ (##cdr _e165561165579_)))
                          (if (gx#stx-pair? _tl165563165584_)
                              (let ((_e165564165587_
                                     (gx#syntax-e _tl165563165584_)))
                                (let ((_hd165565165590_
                                       (##car _e165564165587_))
                                      (_tl165566165592_
                                       (##cdr _e165564165587_)))
                                  (let ((_hd165595_ _hd165565165590_))
                                    (if (gx#stx-pair? _tl165566165592_)
                                        (let ((_e165567165597_
                                               (gx#syntax-e _tl165566165592_)))
                                          (let ((_hd165568165600_
                                                 (##car _e165567165597_))
                                                (_tl165569165602_
                                                 (##cdr _e165567165597_)))
                                            (let ((_expr165605_
                                                   _hd165568165600_))
                                              (if (gx#stx-null?
                                                   _tl165569165602_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd165595_)
                          (cons (gx#core-compile-top-syntax _expr165605_)
                                '())))
              (_E165560165575_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165560165575_)))))
                                        (_E165560165575_)))))
                              (_E165560165575_))))
                      (_E165560165575_)))))
          (_E165559165607_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx165502_)
        (let* ((_e165503165516_ _stx165502_)
               (_E165505165520_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165503165516_)))
               (_E165504165553_
                (lambda ()
                  (if (gx#stx-pair? _e165503165516_)
                      (let ((_e165506165524_ (gx#syntax-e _e165503165516_)))
                        (let ((_hd165507165527_ (##car _e165506165524_))
                              (_tl165508165529_ (##cdr _e165506165524_)))
                          (if (gx#stx-pair? _tl165508165529_)
                              (let ((_e165509165532_
                                     (gx#syntax-e _tl165508165529_)))
                                (let ((_hd165510165535_
                                       (##car _e165509165532_))
                                      (_tl165511165537_
                                       (##cdr _e165509165532_)))
                                  (let ((_hd165540_ _hd165510165535_))
                                    (if (gx#stx-pair? _tl165511165537_)
                                        (let ((_e165512165542_
                                               (gx#syntax-e _tl165511165537_)))
                                          (let ((_hd165513165545_
                                                 (##car _e165512165542_))
                                                (_tl165514165547_
                                                 (##cdr _e165512165542_)))
                                            (let ((_expr165550_
                                                   _hd165513165545_))
                                              (if (gx#stx-null?
                                                   _tl165514165547_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd165540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr165550_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E165505165520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165505165520_)))))
                                        (_E165505165520_)))))
                              (_E165505165520_))))
                      (_E165505165520_)))))
          (_E165504165553_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx165472_)
        (let* ((_e165473165480_ _stx165472_)
               (_E165475165484_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165473165480_)))
               (_E165474165498_
                (lambda ()
                  (if (gx#stx-pair? _e165473165480_)
                      (let ((_e165476165488_ (gx#syntax-e _e165473165480_)))
                        (let ((_hd165477165491_ (##car _e165476165488_))
                              (_tl165478165493_ (##cdr _e165476165488_)))
                          (let ((_body165496_ _tl165478165493_))
                            (if '#t
                                (cons '%#define-alias _body165496_)
                                (_E165475165484_)))))
                      (_E165475165484_)))))
          (_E165474165498_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx165442_)
        (let* ((_e165443165450_ _stx165442_)
               (_E165445165454_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165443165450_)))
               (_E165444165468_
                (lambda ()
                  (if (gx#stx-pair? _e165443165450_)
                      (let ((_e165446165458_ (gx#syntax-e _e165443165450_)))
                        (let ((_hd165447165461_ (##car _e165446165458_))
                              (_tl165448165463_ (##cdr _e165446165458_)))
                          (let ((_body165466_ _tl165448165463_))
                            (if '#t
                                (cons '%#define-runtime _body165466_)
                                (_E165445165454_)))))
                      (_E165445165454_)))))
          (_E165444165468_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx165412_)
        (let* ((_e165413165420_ _stx165412_)
               (_E165415165424_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165413165420_)))
               (_E165414165438_
                (lambda ()
                  (if (gx#stx-pair? _e165413165420_)
                      (let ((_e165416165428_ (gx#syntax-e _e165413165420_)))
                        (let ((_hd165417165431_ (##car _e165416165428_))
                              (_tl165418165433_ (##cdr _e165416165428_)))
                          (let ((_decls165436_ _tl165418165433_))
                            (if '#t
                                (cons '%#declare _decls165436_)
                                (_E165415165424_)))))
                      (_E165415165424_)))))
          (_E165414165438_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx165382_)
        (let* ((_e165383165390_ _stx165382_)
               (_E165385165394_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165383165390_)))
               (_E165384165408_
                (lambda ()
                  (if (gx#stx-pair? _e165383165390_)
                      (let ((_e165386165398_ (gx#syntax-e _e165383165390_)))
                        (let ((_hd165387165401_ (##car _e165386165398_))
                              (_tl165388165403_ (##cdr _e165386165398_)))
                          (let ((_clause165406_ _tl165388165403_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause165406_))
                                (_E165385165394_)))))
                      (_E165385165394_)))))
          (_E165384165408_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx165339_)
        (let* ((_e165340165350_ _stx165339_)
               (_E165342165354_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165340165350_)))
               (_E165341165378_
                (lambda ()
                  (if (gx#stx-pair? _e165340165350_)
                      (let ((_e165343165358_ (gx#syntax-e _e165340165350_)))
                        (let ((_hd165344165361_ (##car _e165343165358_))
                              (_tl165345165363_ (##cdr _e165343165358_)))
                          (let ((_hd165366_ _hd165344165361_))
                            (if (gx#stx-pair? _tl165345165363_)
                                (let ((_e165346165368_
                                       (gx#syntax-e _tl165345165363_)))
                                  (let ((_hd165347165371_
                                         (##car _e165346165368_))
                                        (_tl165348165373_
                                         (##cdr _e165346165368_)))
                                    (let ((_body165376_ _hd165347165371_))
                                      (if (gx#stx-null? _tl165348165373_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd165366_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body165376_)
                                                          '()))
                                              (_E165342165354_))
                                          (_E165342165354_)))))
                                (_E165342165354_)))))
                      (_E165342165354_)))))
          (_E165341165378_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx165309_)
        (let* ((_e165310165317_ _stx165309_)
               (_E165312165321_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165310165317_)))
               (_E165311165335_
                (lambda ()
                  (if (gx#stx-pair? _e165310165317_)
                      (let ((_e165313165325_ (gx#syntax-e _e165310165317_)))
                        (let ((_hd165314165328_ (##car _e165313165325_))
                              (_tl165315165330_ (##cdr _e165313165325_)))
                          (let ((_clauses165333_ _tl165315165330_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses165333_))
                                (_E165312165321_)))))
                      (_E165312165321_)))))
          (_E165311165335_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165244_ _form165245_)
        (let* ((_e165246165259_ _stx165244_)
               (_E165248165263_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165246165259_)))
               (_E165247165295_
                (lambda ()
                  (if (gx#stx-pair? _e165246165259_)
                      (let ((_e165249165267_ (gx#syntax-e _e165246165259_)))
                        (let ((_hd165250165270_ (##car _e165249165267_))
                              (_tl165251165272_ (##cdr _e165249165267_)))
                          (if (gx#stx-pair? _tl165251165272_)
                              (let ((_e165252165275_
                                     (gx#syntax-e _tl165251165272_)))
                                (let ((_hd165253165278_
                                       (##car _e165252165275_))
                                      (_tl165254165280_
                                       (##cdr _e165252165275_)))
                                  (let ((_hd165283_ _hd165253165278_))
                                    (if (gx#stx-pair? _tl165254165280_)
                                        (let ((_e165255165285_
                                               (gx#syntax-e _tl165254165280_)))
                                          (let ((_hd165256165288_
                                                 (##car _e165255165285_))
                                                (_tl165257165290_
                                                 (##cdr _e165255165285_)))
                                            (let ((_body165293_
                                                   _hd165256165288_))
                                              (if (gx#stx-null?
                                                   _tl165257165290_)
                                                  (if '#t
                                                      (cons _form165245_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd165283_)
                          (cons (gx#core-compile-top-syntax _body165293_)
                                '())))
              (_E165248165263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165248165263_)))))
                                        (_E165248165263_)))))
                              (_E165248165263_))))
                      (_E165248165263_)))))
          (_E165247165295_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx165302_)
        (let ((_form165304_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx165302_ _form165304_))))
    (define gx#core-compile-top-let-values%
      (lambda _g170184_
        (let ((_g170183_ (##length _g170184_)))
          (cond ((##fx= _g170183_ 1)
                 (apply (lambda (_stx165302_)
                          (gx#core-compile-top-let-values%__0 _stx165302_))
                        _g170184_))
                ((##fx= _g170183_ 2)
                 (apply (lambda (_stx165306_ _form165307_)
                          (gx#core-compile-top-let-values%__%
                           _stx165306_
                           _form165307_))
                        _g170184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g170184_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165241_)
        (gx#core-compile-top-let-values%__% _stx165241_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165239_)
        (gx#core-compile-top-let-values%__% _stx165239_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165198_)
        (let* ((_e165199165209_ _stx165198_)
               (_E165201165213_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165199165209_)))
               (_E165200165235_
                (lambda ()
                  (if (gx#stx-pair? _e165199165209_)
                      (let ((_e165202165217_ (gx#syntax-e _e165199165209_)))
                        (let ((_hd165203165220_ (##car _e165202165217_))
                              (_tl165204165222_ (##cdr _e165202165217_)))
                          (if (gx#stx-pair? _tl165204165222_)
                              (let ((_e165205165225_
                                     (gx#syntax-e _tl165204165222_)))
                                (let ((_hd165206165228_
                                       (##car _e165205165225_))
                                      (_tl165207165230_
                                       (##cdr _e165205165225_)))
                                  (let ((_e165233_ _hd165206165228_))
                                    (if (gx#stx-null? _tl165207165230_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165233_)
                                                        '()))
                                            (_E165201165213_))
                                        (_E165201165213_)))))
                              (_E165201165213_))))
                      (_E165201165213_)))))
          (_E165200165235_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165157_)
        (let* ((_e165158165168_ _stx165157_)
               (_E165160165172_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165158165168_)))
               (_E165159165194_
                (lambda ()
                  (if (gx#stx-pair? _e165158165168_)
                      (let ((_e165161165176_ (gx#syntax-e _e165158165168_)))
                        (let ((_hd165162165179_ (##car _e165161165176_))
                              (_tl165163165181_ (##cdr _e165161165176_)))
                          (if (gx#stx-pair? _tl165163165181_)
                              (let ((_e165164165184_
                                     (gx#syntax-e _tl165163165181_)))
                                (let ((_hd165165165187_
                                       (##car _e165164165184_))
                                      (_tl165166165189_
                                       (##cdr _e165164165184_)))
                                  (let ((_e165192_ _hd165165165187_))
                                    (if (gx#stx-null? _tl165166165189_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165192_)
                                                        '()))
                                            (_E165160165172_))
                                        (_E165160165172_)))))
                              (_E165160165172_))))
                      (_E165160165172_)))))
          (_E165159165194_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165114_)
        (let* ((_e165115165125_ _stx165114_)
               (_E165117165129_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165115165125_)))
               (_E165116165153_
                (lambda ()
                  (if (gx#stx-pair? _e165115165125_)
                      (let ((_e165118165133_ (gx#syntax-e _e165115165125_)))
                        (let ((_hd165119165136_ (##car _e165118165133_))
                              (_tl165120165138_ (##cdr _e165118165133_)))
                          (if (gx#stx-pair? _tl165120165138_)
                              (let ((_e165121165141_
                                     (gx#syntax-e _tl165120165138_)))
                                (let ((_hd165122165144_
                                       (##car _e165121165141_))
                                      (_tl165123165146_
                                       (##cdr _e165121165141_)))
                                  (let* ((_rator165149_ _hd165122165144_)
                                         (_args165151_ _tl165123165146_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165149_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165151_)))
                                        (_E165117165129_)))))
                              (_E165117165129_))))
                      (_E165117165129_)))))
          (_E165116165153_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165047_)
        (let* ((_e165048165064_ _stx165047_)
               (_E165050165068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165048165064_)))
               (_E165049165110_
                (lambda ()
                  (if (gx#stx-pair? _e165048165064_)
                      (let ((_e165051165072_ (gx#syntax-e _e165048165064_)))
                        (let ((_hd165052165075_ (##car _e165051165072_))
                              (_tl165053165077_ (##cdr _e165051165072_)))
                          (if (gx#stx-pair? _tl165053165077_)
                              (let ((_e165054165080_
                                     (gx#syntax-e _tl165053165077_)))
                                (let ((_hd165055165083_
                                       (##car _e165054165080_))
                                      (_tl165056165085_
                                       (##cdr _e165054165080_)))
                                  (let ((_test165088_ _hd165055165083_))
                                    (if (gx#stx-pair? _tl165056165085_)
                                        (let ((_e165057165090_
                                               (gx#syntax-e _tl165056165085_)))
                                          (let ((_hd165058165093_
                                                 (##car _e165057165090_))
                                                (_tl165059165095_
                                                 (##cdr _e165057165090_)))
                                            (let ((_K165098_ _hd165058165093_))
                                              (if (gx#stx-pair?
                                                   _tl165059165095_)
                                                  (let ((_e165060165100_
                                                         (gx#syntax-e
                                                          _tl165059165095_)))
                                                    (let ((_hd165061165103_
                                                           (##car _e165060165100_))
                                                          (_tl165062165105_
                                                           (##cdr _e165060165100_)))
                                                      (let ((_E165108_
                                                             _hd165061165103_))
                                                        (if (gx#stx-null?
                                                             _tl165062165105_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165088_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165098_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165108_)
                                                '()))))
                        (_E165050165068_))
                    (_E165050165068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165050165068_)))))
                                        (_E165050165068_)))))
                              (_E165050165068_))))
                      (_E165050165068_)))))
          (_E165049165110_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165006_)
        (let* ((_e165007165017_ _stx165006_)
               (_E165009165021_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165007165017_)))
               (_E165008165043_
                (lambda ()
                  (if (gx#stx-pair? _e165007165017_)
                      (let ((_e165010165025_ (gx#syntax-e _e165007165017_)))
                        (let ((_hd165011165028_ (##car _e165010165025_))
                              (_tl165012165030_ (##cdr _e165010165025_)))
                          (if (gx#stx-pair? _tl165012165030_)
                              (let ((_e165013165033_
                                     (gx#syntax-e _tl165012165030_)))
                                (let ((_hd165014165036_
                                       (##car _e165013165033_))
                                      (_tl165015165038_
                                       (##cdr _e165013165033_)))
                                  (let ((_id165041_ _hd165014165036_))
                                    (if (gx#stx-null? _tl165015165038_)
                                        (if (gx#identifier? _id165041_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165041_)
                                                        '()))
                                            (_E165009165021_))
                                        (_E165009165021_)))))
                              (_E165009165021_))))
                      (_E165009165021_)))))
          (_E165008165043_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx164952_)
        (let* ((_e164953164966_ _stx164952_)
               (_E164955164970_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164953164966_)))
               (_E164954165002_
                (lambda ()
                  (if (gx#stx-pair? _e164953164966_)
                      (let ((_e164956164974_ (gx#syntax-e _e164953164966_)))
                        (let ((_hd164957164977_ (##car _e164956164974_))
                              (_tl164958164979_ (##cdr _e164956164974_)))
                          (if (gx#stx-pair? _tl164958164979_)
                              (let ((_e164959164982_
                                     (gx#syntax-e _tl164958164979_)))
                                (let ((_hd164960164985_
                                       (##car _e164959164982_))
                                      (_tl164961164987_
                                       (##cdr _e164959164982_)))
                                  (let ((_id164990_ _hd164960164985_))
                                    (if (gx#stx-pair? _tl164961164987_)
                                        (let ((_e164962164992_
                                               (gx#syntax-e _tl164961164987_)))
                                          (let ((_hd164963164995_
                                                 (##car _e164962164992_))
                                                (_tl164964164997_
                                                 (##cdr _e164962164992_)))
                                            (let ((_expr165000_
                                                   _hd164963164995_))
                                              (if (gx#stx-null?
                                                   _tl164964164997_)
                                                  (if (gx#identifier?
                                                       _id164990_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id164990_)
                          (cons (gx#core-compile-top-syntax _expr165000_)
                                '())))
              (_E164955164970_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164955164970_)))))
                                        (_E164955164970_)))))
                              (_E164955164970_))))
                      (_E164955164970_)))))
          (_E164954165002_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id164947_)
        (let ((_$e164949_ (gx#resolve-identifier__0 _id164947_)))
          (if _$e164949_
              (##unchecked-structure-ref _$e164949_ '1 gx#binding::t '#f)
              _id164947_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd164945_)
        (if (gx#identifier? _hd164945_)
            (gx#core-compile-top-runtime-ref _hd164945_)
            '#f)))))
