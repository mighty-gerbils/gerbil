(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1695292397)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx18006_)
        (let* ((_e1800718014_ _stx18006_)
               (_E1800918018_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1800718014_)))
               (_E1800818032_
                (lambda ()
                  (if (gx#stx-pair? _e1800718014_)
                      (let ((_e1801018022_ (gx#syntax-e _e1800718014_)))
                        (let ((_hd1801118025_ (##car _e1801018022_))
                              (_tl1801218027_ (##cdr _e1801018022_)))
                          (let ((_form18030_ _hd1801118025_))
                            (if '#t
                                (let* ((__self18035
                                        (gx#syntax-local-e__0 _form18030_))
                                       (__method18036
                                        (method-ref
                                         __self18035
                                         'compile-top-syntax)))
                                  (if __method18036
                                      (__method18036 __self18035 _stx18006_)
                                      (error '"Missing method"
                                             __self18035
                                             'compile-top-syntax)))
                                (_E1800918018_)))))
                      (_E1800918018_)))))
          (_E1800818032_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self17966_ _stx17967_)
        (let* ((_self1796817976_ _self17966_)
               (_E1797017980_
                (lambda () (error '"No clause matching" _self1796817976_)))
               (_K1797117992_
                (lambda (_K17983_)
                  (let ((_$e17985_ (gx#stx-source _stx17967_)))
                    (if _$e17985_
                        ((lambda (_g1798717989_)
                           (gx#stx-wrap-source
                            (_K17983_ _stx17967_)
                            _g1798717989_))
                         _$e17985_)
                        (_K17983_ _stx17967_))))))
          (if (##structure-instance-of? _self1796817976_ 'gx#core-expander::t)
              (let* ((_e1797217995_ (##vector-ref _self1796817976_ '1))
                     (_e1797317998_ (##vector-ref _self1796817976_ '2))
                     (_e1797418001_ (##vector-ref _self1796817976_ '3))
                     (_K18004_ _e1797418001_))
                (_K1797117992_ _K18004_))
              (_E1797017980_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx17840_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17840_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx17810_)
        (let* ((_e1781117818_ _stx17810_)
               (_E1781317822_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1781117818_)))
               (_E1781217836_
                (lambda ()
                  (if (gx#stx-pair? _e1781117818_)
                      (let ((_e1781417826_ (gx#syntax-e _e1781117818_)))
                        (let ((_hd1781517829_ (##car _e1781417826_))
                              (_tl1781617831_ (##cdr _e1781417826_)))
                          (let ((_body17834_ _tl1781617831_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body17834_))
                                (_E1781317822_)))))
                      (_E1781317822_)))))
          (_E1781217836_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx17779_)
        (let* ((_e1778017787_ _stx17779_)
               (_E1778217791_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1778017787_)))
               (_E1778117806_
                (lambda ()
                  (if (gx#stx-pair? _e1778017787_)
                      (let ((_e1778317795_ (gx#syntax-e _e1778017787_)))
                        (let ((_hd1778417798_ (##car _e1778317795_))
                              (_tl1778517800_ (##cdr _e1778317795_)))
                          (let ((_body17803_ _tl1778517800_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body17803_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E1778217791_)))))
                      (_E1778217791_)))))
          (_E1778117806_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx17749_)
        (let* ((_e1775017757_ _stx17749_)
               (_E1775217761_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1775017757_)))
               (_E1775117775_
                (lambda ()
                  (if (gx#stx-pair? _e1775017757_)
                      (let ((_e1775317765_ (gx#syntax-e _e1775017757_)))
                        (let ((_hd1775417768_ (##car _e1775317765_))
                              (_tl1775517770_ (##cdr _e1775317765_)))
                          (let ((_body17773_ _tl1775517770_))
                            (if '#t
                                (cons '%#begin-foreign _body17773_)
                                (_E1775217761_)))))
                      (_E1775217761_)))))
          (_E1775117775_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx17695_)
        (let* ((_e1769617709_ _stx17695_)
               (_E1769817713_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1769617709_)))
               (_E1769717745_
                (lambda ()
                  (if (gx#stx-pair? _e1769617709_)
                      (let ((_e1769917717_ (gx#syntax-e _e1769617709_)))
                        (let ((_hd1770017720_ (##car _e1769917717_))
                              (_tl1770117722_ (##cdr _e1769917717_)))
                          (if (gx#stx-pair? _tl1770117722_)
                              (let ((_e1770217725_
                                     (gx#syntax-e _tl1770117722_)))
                                (let ((_hd1770317728_ (##car _e1770217725_))
                                      (_tl1770417730_ (##cdr _e1770217725_)))
                                  (let ((_ann17733_ _hd1770317728_))
                                    (if (gx#stx-pair? _tl1770417730_)
                                        (let ((_e1770517735_
                                               (gx#syntax-e _tl1770417730_)))
                                          (let ((_hd1770617738_
                                                 (##car _e1770517735_))
                                                (_tl1770717740_
                                                 (##cdr _e1770517735_)))
                                            (let ((_expr17743_ _hd1770617738_))
                                              (if (gx#stx-null? _tl1770717740_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr17743_)
                                                      (_E1769817713_))
                                                  (_E1769817713_)))))
                                        (_E1769817713_)))))
                              (_E1769817713_))))
                      (_E1769817713_)))))
          (_E1769717745_))))
    (define gx#core-compile-top-import%
      (lambda (_stx17665_)
        (let* ((_e1766617673_ _stx17665_)
               (_E1766817677_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1766617673_)))
               (_E1766717691_
                (lambda ()
                  (if (gx#stx-pair? _e1766617673_)
                      (let ((_e1766917681_ (gx#syntax-e _e1766617673_)))
                        (let ((_hd1767017684_ (##car _e1766917681_))
                              (_tl1767117686_ (##cdr _e1766917681_)))
                          (let ((_body17689_ _tl1767117686_))
                            (if '#t
                                (cons '%#import _body17689_)
                                (_E1766817677_)))))
                      (_E1766817677_)))))
          (_E1766717691_))))
    (define gx#core-compile-top-module%
      (lambda (_stx17622_)
        (let* ((_e1762317633_ _stx17622_)
               (_E1762517637_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1762317633_)))
               (_E1762417661_
                (lambda ()
                  (if (gx#stx-pair? _e1762317633_)
                      (let ((_e1762617641_ (gx#syntax-e _e1762317633_)))
                        (let ((_hd1762717644_ (##car _e1762617641_))
                              (_tl1762817646_ (##cdr _e1762617641_)))
                          (if (gx#stx-pair? _tl1762817646_)
                              (let ((_e1762917649_
                                     (gx#syntax-e _tl1762817646_)))
                                (let ((_hd1763017652_ (##car _e1762917649_))
                                      (_tl1763117654_ (##cdr _e1762917649_)))
                                  (let* ((_hd17657_ _hd1763017652_)
                                         (_body17659_ _tl1763117654_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd17657_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body17659_)))
                                        (_E1762517637_)))))
                              (_E1762517637_))))
                      (_E1762517637_)))))
          (_E1762417661_))))
    (define gx#core-compile-top-export%
      (lambda (_stx17592_)
        (let* ((_e1759317600_ _stx17592_)
               (_E1759517604_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1759317600_)))
               (_E1759417618_
                (lambda ()
                  (if (gx#stx-pair? _e1759317600_)
                      (let ((_e1759617608_ (gx#syntax-e _e1759317600_)))
                        (let ((_hd1759717611_ (##car _e1759617608_))
                              (_tl1759817613_ (##cdr _e1759617608_)))
                          (let ((_body17616_ _tl1759817613_))
                            (if '#t
                                (cons '%#export _body17616_)
                                (_E1759517604_)))))
                      (_E1759517604_)))))
          (_E1759417618_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx17562_)
        (let* ((_e1756317570_ _stx17562_)
               (_E1756517574_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1756317570_)))
               (_E1756417588_
                (lambda ()
                  (if (gx#stx-pair? _e1756317570_)
                      (let ((_e1756617578_ (gx#syntax-e _e1756317570_)))
                        (let ((_hd1756717581_ (##car _e1756617578_))
                              (_tl1756817583_ (##cdr _e1756617578_)))
                          (let ((_body17586_ _tl1756817583_))
                            (if '#t
                                (cons '%#provide _body17586_)
                                (_E1756517574_)))))
                      (_E1756517574_)))))
          (_E1756417588_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx17532_)
        (let* ((_e1753317540_ _stx17532_)
               (_E1753517544_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1753317540_)))
               (_E1753417558_
                (lambda ()
                  (if (gx#stx-pair? _e1753317540_)
                      (let ((_e1753617548_ (gx#syntax-e _e1753317540_)))
                        (let ((_hd1753717551_ (##car _e1753617548_))
                              (_tl1753817553_ (##cdr _e1753617548_)))
                          (let ((_body17556_ _tl1753817553_))
                            (if '#t
                                (cons '%#extern _body17556_)
                                (_E1753517544_)))))
                      (_E1753517544_)))))
          (_E1753417558_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx17478_)
        (let* ((_e1747917492_ _stx17478_)
               (_E1748117496_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1747917492_)))
               (_E1748017528_
                (lambda ()
                  (if (gx#stx-pair? _e1747917492_)
                      (let ((_e1748217500_ (gx#syntax-e _e1747917492_)))
                        (let ((_hd1748317503_ (##car _e1748217500_))
                              (_tl1748417505_ (##cdr _e1748217500_)))
                          (if (gx#stx-pair? _tl1748417505_)
                              (let ((_e1748517508_
                                     (gx#syntax-e _tl1748417505_)))
                                (let ((_hd1748617511_ (##car _e1748517508_))
                                      (_tl1748717513_ (##cdr _e1748517508_)))
                                  (let ((_hd17516_ _hd1748617511_))
                                    (if (gx#stx-pair? _tl1748717513_)
                                        (let ((_e1748817518_
                                               (gx#syntax-e _tl1748717513_)))
                                          (let ((_hd1748917521_
                                                 (##car _e1748817518_))
                                                (_tl1749017523_
                                                 (##cdr _e1748817518_)))
                                            (let ((_expr17526_ _hd1748917521_))
                                              (if (gx#stx-null? _tl1749017523_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd17516_)
                          (cons (gx#core-compile-top-syntax _expr17526_) '())))
              (_E1748117496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1748117496_)))))
                                        (_E1748117496_)))))
                              (_E1748117496_))))
                      (_E1748117496_)))))
          (_E1748017528_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx17423_)
        (let* ((_e1742417437_ _stx17423_)
               (_E1742617441_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1742417437_)))
               (_E1742517474_
                (lambda ()
                  (if (gx#stx-pair? _e1742417437_)
                      (let ((_e1742717445_ (gx#syntax-e _e1742417437_)))
                        (let ((_hd1742817448_ (##car _e1742717445_))
                              (_tl1742917450_ (##cdr _e1742717445_)))
                          (if (gx#stx-pair? _tl1742917450_)
                              (let ((_e1743017453_
                                     (gx#syntax-e _tl1742917450_)))
                                (let ((_hd1743117456_ (##car _e1743017453_))
                                      (_tl1743217458_ (##cdr _e1743017453_)))
                                  (let ((_hd17461_ _hd1743117456_))
                                    (if (gx#stx-pair? _tl1743217458_)
                                        (let ((_e1743317463_
                                               (gx#syntax-e _tl1743217458_)))
                                          (let ((_hd1743417466_
                                                 (##car _e1743317463_))
                                                (_tl1743517468_
                                                 (##cdr _e1743317463_)))
                                            (let ((_expr17471_ _hd1743417466_))
                                              (if (gx#stx-null? _tl1743517468_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd17461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr17471_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E1742617441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1742617441_)))))
                                        (_E1742617441_)))))
                              (_E1742617441_))))
                      (_E1742617441_)))))
          (_E1742517474_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx17393_)
        (let* ((_e1739417401_ _stx17393_)
               (_E1739617405_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1739417401_)))
               (_E1739517419_
                (lambda ()
                  (if (gx#stx-pair? _e1739417401_)
                      (let ((_e1739717409_ (gx#syntax-e _e1739417401_)))
                        (let ((_hd1739817412_ (##car _e1739717409_))
                              (_tl1739917414_ (##cdr _e1739717409_)))
                          (let ((_body17417_ _tl1739917414_))
                            (if '#t
                                (cons '%#define-alias _body17417_)
                                (_E1739617405_)))))
                      (_E1739617405_)))))
          (_E1739517419_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx17363_)
        (let* ((_e1736417371_ _stx17363_)
               (_E1736617375_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1736417371_)))
               (_E1736517389_
                (lambda ()
                  (if (gx#stx-pair? _e1736417371_)
                      (let ((_e1736717379_ (gx#syntax-e _e1736417371_)))
                        (let ((_hd1736817382_ (##car _e1736717379_))
                              (_tl1736917384_ (##cdr _e1736717379_)))
                          (let ((_body17387_ _tl1736917384_))
                            (if '#t
                                (cons '%#define-runtime _body17387_)
                                (_E1736617375_)))))
                      (_E1736617375_)))))
          (_E1736517389_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx17333_)
        (let* ((_e1733417341_ _stx17333_)
               (_E1733617345_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1733417341_)))
               (_E1733517359_
                (lambda ()
                  (if (gx#stx-pair? _e1733417341_)
                      (let ((_e1733717349_ (gx#syntax-e _e1733417341_)))
                        (let ((_hd1733817352_ (##car _e1733717349_))
                              (_tl1733917354_ (##cdr _e1733717349_)))
                          (let ((_decls17357_ _tl1733917354_))
                            (if '#t
                                (cons '%#declare _decls17357_)
                                (_E1733617345_)))))
                      (_E1733617345_)))))
          (_E1733517359_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx17303_)
        (let* ((_e1730417311_ _stx17303_)
               (_E1730617315_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1730417311_)))
               (_E1730517329_
                (lambda ()
                  (if (gx#stx-pair? _e1730417311_)
                      (let ((_e1730717319_ (gx#syntax-e _e1730417311_)))
                        (let ((_hd1730817322_ (##car _e1730717319_))
                              (_tl1730917324_ (##cdr _e1730717319_)))
                          (let ((_clause17327_ _tl1730917324_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause17327_))
                                (_E1730617315_)))))
                      (_E1730617315_)))))
          (_E1730517329_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx17260_)
        (let* ((_e1726117271_ _stx17260_)
               (_E1726317275_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1726117271_)))
               (_E1726217299_
                (lambda ()
                  (if (gx#stx-pair? _e1726117271_)
                      (let ((_e1726417279_ (gx#syntax-e _e1726117271_)))
                        (let ((_hd1726517282_ (##car _e1726417279_))
                              (_tl1726617284_ (##cdr _e1726417279_)))
                          (let ((_hd17287_ _hd1726517282_))
                            (if (gx#stx-pair? _tl1726617284_)
                                (let ((_e1726717289_
                                       (gx#syntax-e _tl1726617284_)))
                                  (let ((_hd1726817292_ (##car _e1726717289_))
                                        (_tl1726917294_ (##cdr _e1726717289_)))
                                    (let ((_body17297_ _hd1726817292_))
                                      (if (gx#stx-null? _tl1726917294_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd17287_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body17297_)
                                                          '()))
                                              (_E1726317275_))
                                          (_E1726317275_)))))
                                (_E1726317275_)))))
                      (_E1726317275_)))))
          (_E1726217299_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx17230_)
        (let* ((_e1723117238_ _stx17230_)
               (_E1723317242_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1723117238_)))
               (_E1723217256_
                (lambda ()
                  (if (gx#stx-pair? _e1723117238_)
                      (let ((_e1723417246_ (gx#syntax-e _e1723117238_)))
                        (let ((_hd1723517249_ (##car _e1723417246_))
                              (_tl1723617251_ (##cdr _e1723417246_)))
                          (let ((_clauses17254_ _tl1723617251_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses17254_))
                                (_E1723317242_)))))
                      (_E1723317242_)))))
          (_E1723217256_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx17165_ _form17166_)
        (let* ((_e1716717180_ _stx17165_)
               (_E1716917184_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1716717180_)))
               (_E1716817216_
                (lambda ()
                  (if (gx#stx-pair? _e1716717180_)
                      (let ((_e1717017188_ (gx#syntax-e _e1716717180_)))
                        (let ((_hd1717117191_ (##car _e1717017188_))
                              (_tl1717217193_ (##cdr _e1717017188_)))
                          (if (gx#stx-pair? _tl1717217193_)
                              (let ((_e1717317196_
                                     (gx#syntax-e _tl1717217193_)))
                                (let ((_hd1717417199_ (##car _e1717317196_))
                                      (_tl1717517201_ (##cdr _e1717317196_)))
                                  (let ((_hd17204_ _hd1717417199_))
                                    (if (gx#stx-pair? _tl1717517201_)
                                        (let ((_e1717617206_
                                               (gx#syntax-e _tl1717517201_)))
                                          (let ((_hd1717717209_
                                                 (##car _e1717617206_))
                                                (_tl1717817211_
                                                 (##cdr _e1717617206_)))
                                            (let ((_body17214_ _hd1717717209_))
                                              (if (gx#stx-null? _tl1717817211_)
                                                  (if '#t
                                                      (cons _form17166_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd17204_)
                          (cons (gx#core-compile-top-syntax _body17214_) '())))
              (_E1716917184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1716917184_)))))
                                        (_E1716917184_)))))
                              (_E1716917184_))))
                      (_E1716917184_)))))
          (_E1716817216_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx17223_)
        (let ((_form17225_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx17223_ _form17225_))))
    (define gx#core-compile-top-let-values%
      (lambda _g18038_
        (let ((_g18037_ (##length _g18038_)))
          (cond ((##fx= _g18037_ 1)
                 (apply (lambda (_stx17223_)
                          (gx#core-compile-top-let-values%__0 _stx17223_))
                        _g18038_))
                ((##fx= _g18037_ 2)
                 (apply (lambda (_stx17227_ _form17228_)
                          (gx#core-compile-top-let-values%__%
                           _stx17227_
                           _form17228_))
                        _g18038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g18038_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx17162_)
        (gx#core-compile-top-let-values%__% _stx17162_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx17160_)
        (gx#core-compile-top-let-values%__% _stx17160_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx17119_)
        (let* ((_e1712017130_ _stx17119_)
               (_E1712217134_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1712017130_)))
               (_E1712117156_
                (lambda ()
                  (if (gx#stx-pair? _e1712017130_)
                      (let ((_e1712317138_ (gx#syntax-e _e1712017130_)))
                        (let ((_hd1712417141_ (##car _e1712317138_))
                              (_tl1712517143_ (##cdr _e1712317138_)))
                          (if (gx#stx-pair? _tl1712517143_)
                              (let ((_e1712617146_
                                     (gx#syntax-e _tl1712517143_)))
                                (let ((_hd1712717149_ (##car _e1712617146_))
                                      (_tl1712817151_ (##cdr _e1712617146_)))
                                  (let ((_e17154_ _hd1712717149_))
                                    (if (gx#stx-null? _tl1712817151_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e17154_)
                                                        '()))
                                            (_E1712217134_))
                                        (_E1712217134_)))))
                              (_E1712217134_))))
                      (_E1712217134_)))))
          (_E1712117156_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx17078_)
        (let* ((_e1707917089_ _stx17078_)
               (_E1708117093_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1707917089_)))
               (_E1708017115_
                (lambda ()
                  (if (gx#stx-pair? _e1707917089_)
                      (let ((_e1708217097_ (gx#syntax-e _e1707917089_)))
                        (let ((_hd1708317100_ (##car _e1708217097_))
                              (_tl1708417102_ (##cdr _e1708217097_)))
                          (if (gx#stx-pair? _tl1708417102_)
                              (let ((_e1708517105_
                                     (gx#syntax-e _tl1708417102_)))
                                (let ((_hd1708617108_ (##car _e1708517105_))
                                      (_tl1708717110_ (##cdr _e1708517105_)))
                                  (let ((_e17113_ _hd1708617108_))
                                    (if (gx#stx-null? _tl1708717110_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e17113_)
                                                        '()))
                                            (_E1708117093_))
                                        (_E1708117093_)))))
                              (_E1708117093_))))
                      (_E1708117093_)))))
          (_E1708017115_))))
    (define gx#core-compile-top-call%
      (lambda (_stx17035_)
        (let* ((_e1703617046_ _stx17035_)
               (_E1703817050_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1703617046_)))
               (_E1703717074_
                (lambda ()
                  (if (gx#stx-pair? _e1703617046_)
                      (let ((_e1703917054_ (gx#syntax-e _e1703617046_)))
                        (let ((_hd1704017057_ (##car _e1703917054_))
                              (_tl1704117059_ (##cdr _e1703917054_)))
                          (if (gx#stx-pair? _tl1704117059_)
                              (let ((_e1704217062_
                                     (gx#syntax-e _tl1704117059_)))
                                (let ((_hd1704317065_ (##car _e1704217062_))
                                      (_tl1704417067_ (##cdr _e1704217062_)))
                                  (let* ((_rator17070_ _hd1704317065_)
                                         (_args17072_ _tl1704417067_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator17070_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args17072_)))
                                        (_E1703817050_)))))
                              (_E1703817050_))))
                      (_E1703817050_)))))
          (_E1703717074_))))
    (define gx#core-compile-top-if%
      (lambda (_stx16968_)
        (let* ((_e1696916985_ _stx16968_)
               (_E1697116989_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1696916985_)))
               (_E1697017031_
                (lambda ()
                  (if (gx#stx-pair? _e1696916985_)
                      (let ((_e1697216993_ (gx#syntax-e _e1696916985_)))
                        (let ((_hd1697316996_ (##car _e1697216993_))
                              (_tl1697416998_ (##cdr _e1697216993_)))
                          (if (gx#stx-pair? _tl1697416998_)
                              (let ((_e1697517001_
                                     (gx#syntax-e _tl1697416998_)))
                                (let ((_hd1697617004_ (##car _e1697517001_))
                                      (_tl1697717006_ (##cdr _e1697517001_)))
                                  (let ((_test17009_ _hd1697617004_))
                                    (if (gx#stx-pair? _tl1697717006_)
                                        (let ((_e1697817011_
                                               (gx#syntax-e _tl1697717006_)))
                                          (let ((_hd1697917014_
                                                 (##car _e1697817011_))
                                                (_tl1698017016_
                                                 (##cdr _e1697817011_)))
                                            (let ((_K17019_ _hd1697917014_))
                                              (if (gx#stx-pair? _tl1698017016_)
                                                  (let ((_e1698117021_
                                                         (gx#syntax-e
                                                          _tl1698017016_)))
                                                    (let ((_hd1698217024_
                                                           (##car _e1698117021_))
                                                          (_tl1698317026_
                                                           (##cdr _e1698117021_)))
                                                      (let ((_E17029_
                                                             _hd1698217024_))
                                                        (if (gx#stx-null?
                                                             _tl1698317026_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test17009_)
                                    (cons (gx#core-compile-top-syntax _K17019_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E17029_)
                                                '()))))
                        (_E1697116989_))
                    (_E1697116989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1697116989_)))))
                                        (_E1697116989_)))))
                              (_E1697116989_))))
                      (_E1697116989_)))))
          (_E1697017031_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx16927_)
        (let* ((_e1692816938_ _stx16927_)
               (_E1693016942_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1692816938_)))
               (_E1692916964_
                (lambda ()
                  (if (gx#stx-pair? _e1692816938_)
                      (let ((_e1693116946_ (gx#syntax-e _e1692816938_)))
                        (let ((_hd1693216949_ (##car _e1693116946_))
                              (_tl1693316951_ (##cdr _e1693116946_)))
                          (if (gx#stx-pair? _tl1693316951_)
                              (let ((_e1693416954_
                                     (gx#syntax-e _tl1693316951_)))
                                (let ((_hd1693516957_ (##car _e1693416954_))
                                      (_tl1693616959_ (##cdr _e1693416954_)))
                                  (let ((_id16962_ _hd1693516957_))
                                    (if (gx#stx-null? _tl1693616959_)
                                        (if (gx#identifier? _id16962_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id16962_)
                                                        '()))
                                            (_E1693016942_))
                                        (_E1693016942_)))))
                              (_E1693016942_))))
                      (_E1693016942_)))))
          (_E1692916964_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx16873_)
        (let* ((_e1687416887_ _stx16873_)
               (_E1687616891_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1687416887_)))
               (_E1687516923_
                (lambda ()
                  (if (gx#stx-pair? _e1687416887_)
                      (let ((_e1687716895_ (gx#syntax-e _e1687416887_)))
                        (let ((_hd1687816898_ (##car _e1687716895_))
                              (_tl1687916900_ (##cdr _e1687716895_)))
                          (if (gx#stx-pair? _tl1687916900_)
                              (let ((_e1688016903_
                                     (gx#syntax-e _tl1687916900_)))
                                (let ((_hd1688116906_ (##car _e1688016903_))
                                      (_tl1688216908_ (##cdr _e1688016903_)))
                                  (let ((_id16911_ _hd1688116906_))
                                    (if (gx#stx-pair? _tl1688216908_)
                                        (let ((_e1688316913_
                                               (gx#syntax-e _tl1688216908_)))
                                          (let ((_hd1688416916_
                                                 (##car _e1688316913_))
                                                (_tl1688516918_
                                                 (##cdr _e1688316913_)))
                                            (let ((_expr16921_ _hd1688416916_))
                                              (if (gx#stx-null? _tl1688516918_)
                                                  (if (gx#identifier?
                                                       _id16911_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id16911_)
                          (cons (gx#core-compile-top-syntax _expr16921_) '())))
              (_E1687616891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1687616891_)))))
                                        (_E1687616891_)))))
                              (_E1687616891_))))
                      (_E1687616891_)))))
          (_E1687516923_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id16868_)
        (let ((_$e16870_ (gx#resolve-identifier__0 _id16868_)))
          (if _$e16870_
              (##unchecked-structure-ref _$e16870_ '1 gx#binding::t '#f)
              _id16868_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd16866_)
        (if (gx#identifier? _hd16866_)
            (gx#core-compile-top-runtime-ref _hd16866_)
            '#f)))))
