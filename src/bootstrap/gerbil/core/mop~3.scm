(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g24202_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx21750%_)
        (letrec ((_%body-opt?21753%_
                  (lambda (_%key21756%_)
                    (memq (gx#stx-e _%key21756%_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:
                            acyclic:)))))
          (gx#stx-plist? _%stx21750%_ _%body-opt?21753%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx19529%_
               _%id19531%_
               _%super-ref19532%_
               _%slots19533%_
               _%body19534%_)
        (letrec ((_%wrap19536%_
                  (lambda (_%e-stx21747%_)
                    (gx#stx-wrap-source
                     _%e-stx21747%_
                     (gx#stx-source _%stx19529%_))))
                 (_%make-id19538%_
                  (lambda _%args21744%_
                    (apply gx#stx-identifier _%id19531%_ _%args21744%_)))
                 (_%get-mixin-slots19539%_
                  (lambda (_%super21714%_ _%slots21716%_)
                    (letrec* ((_%tab21718%_ (make-hash-table-eq))
                              (_%dedup21720%_
                               (lambda (_%mixins21731%_)
                                 (let _%lp21734%_ ((_%rest21737%_
                                                    _%mixins21731%_)
                                                   (_%r21739%_ '()))
                                   (if (pair? _%rest21737%_)
                                       (let ((_%slot21741%_
                                              (car _%rest21737%_)))
                                         (if (hash-get
                                              _%tab21718%_
                                              _%slot21741%_)
                                             (_%lp21734%_
                                              (cdr _%rest21737%_)
                                              _%r21739%_)
                                             (begin
                                               (hash-put!
                                                _%tab21718%_
                                                _%slot21741%_
                                                '#t)
                                               (_%lp21734%_
                                                (cdr _%rest21737%_)
                                                (cons _%slot21741%_
                                                      _%r21739%_)))))
                                       (reverse _%r21739%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot21722%_)
                         (hash-put! _%tab21718%_ (gx#stx-e _%slot21722%_) '#t))
                       _%slots21716%_)
                      (if (not _%super21714%_)
                          '()
                          (if (gx#identifier? _%super21714%_)
                              (_%dedup21720%_
                               (_%get-mixin-slots-r19540%_ _%super21714%_))
                              (_%dedup21720%_
                               (concatenate
                                (map _%get-mixin-slots-r19540%_
                                     _%super21714%_))))))))
                 (_%get-mixin-slots-r19540%_
                  (lambda (_%type-id21708%_)
                    (let ((_%info21711%_
                           (gx#syntax-local-value _%type-id21708%_)))
                      (append (gerbil/core/mop~MOP-2#!class-type-slots
                               _%info21711%_)
                              (concatenate
                               (map _%get-mixin-slots-r19540%_
                                    (gerbil/core/mop~MOP-2#!class-type-super
                                     _%info21711%_))))))))
          (gx#check-duplicate-identifiers _%slots19533%_ _%stx19529%_)
          (let* ((_%name19542%_ (symbol->string (gx#stx-e _%id19531%_)))
                 (_%super19545%_
                  (map gx#syntax-local-value _%super-ref19532%_))
                 (_%struct?19548%_ (gx#stx-getq 'struct: _%body19534%_))
                 (_%$%g1955119559%_
                  (lambda (_%$%g1955219555%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1955219555%_)))
                 (_%$%g1955021704%_
                  (lambda (_%$%g1955219563%_)
                    ((lambda (_%$%g1955319566%_)
                       (let* ((_%$%g1958219590%_
                               (lambda (_%$%g1958319586%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g1958319586%_)))
                              (_%$%g1958121700%_
                               (lambda (_%$%g1958319594%_)
                                 ((lambda (_%$%g1958419597%_)
                                    (let* ((_%$%g1961019618%_
                                            (lambda (_%$%g1961119614%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g1961119614%_)))
                                           (_%$%g1960921696%_
                                            (lambda (_%$%g1961119622%_)
                                              ((lambda (_%$%g1961219625%_)
                                                 (let* ((_%$%g1963819646%_
                                                         (lambda (_%$%g1963919642%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g1963919642%_)))
                                                        (_%$%g1963721692%_
                                                         (lambda (_%$%g1963919650%_)
                                                           ((lambda (_%$%g1964019653%_)
                                                              (let* ((_%$%g1966619674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g1966719670%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g1966719670%_)))
                             (_%$%g1966521688%_
                              (lambda (_%$%g1966719678%_)
                                ((lambda (_%$%g1966819681%_)
                                   (let* ((_%$%g1969419711%_
                                           (lambda (_%$%g1969519707%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g1969519707%_)))
                                          (_%$%g1969321684%_
                                           (lambda (_%$%g1969519715%_)
                                             (if (gx#stx-pair/null?
                                                  _%$%g1969519715%_)
                                                 (let ((_g24178_
                                                        (gx#syntax-split-splice
                                                         _%$%g1969519715%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g24179_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g24178_)
                          (##values-length _g24178_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g24179_ 2)))
                   (error "Context expects 2 values" _g24179_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target1969719718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g24178_
                                                               0)))
                                                           (_%$%tl1969919721%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g24178_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%$%tl1969919721%_)
                                                           (letrec ((_%$%loop1970019724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd1969819728%_ _%$%slot1970419731%_)
                               (if (gx#stx-pair? _%$%hd1969819728%_)
                                   (let ((_%$%e1970119733%_
                                          (gx#syntax-e _%$%hd1969819728%_)))
                                     (let ((_%$%lp-hd1970219737%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e1970119733%_)))
                                           (_%$%lp-tl1970319740%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e1970119733%_))))
                                       (_%$%loop1970019724%_
                                        _%$%lp-tl1970319740%_
                                        (cons _%$%lp-hd1970219737%_
                                              _%$%slot1970419731%_))))
                                   (let ((_%$%slot1970519743%_
                                          (reverse _%$%slot1970419731%_)))
                                     ((lambda (_%$%g1969619746%_)
                                        (let* ((_%$%g1976319780%_
                                                (lambda (_%$%g1976419776%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g1976419776%_)))
                                               (_%$%g1976221675%_
                                                (lambda (_%$%g1976419784%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%g1976419784%_)
                                                      (let ((_g24180_
                                                             (gx#syntax-split-splice
                                                              _%$%g1976419784%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g24181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g24180_)
                               (##values-length _g24180_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g24181_ 2)))
                        (error "Context expects 2 values" _g24181_)))
                  (let ((_%$%target1976619787%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g24180_ 0)))
                        (_%$%tl1976819790%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g24180_ 1))))
                    (if (gx#stx-null? _%$%tl1976819790%_)
                        (letrec ((_%$%loop1976919793%_
                                  (lambda (_%$%hd1976719797%_
                                           _%$%getf1977319800%_)
                                    (if (gx#stx-pair? _%$%hd1976719797%_)
                                        (let ((_%$%e1977019802%_
                                               (gx#syntax-e
                                                _%$%hd1976719797%_)))
                                          (let ((_%$%lp-hd1977119806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1977019802%_)))
                                                (_%$%lp-tl1977219809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1977019802%_))))
                                            (_%$%loop1976919793%_
                                             _%$%lp-tl1977219809%_
                                             (cons _%$%lp-hd1977119806%_
                                                   _%$%getf1977319800%_))))
                                        (let ((_%$%getf1977419812%_
                                               (reverse _%$%getf1977319800%_)))
                                          ((lambda (_%$%g1976519815%_)
                                             (let* ((_%$%g1983219849%_
                                                     (lambda (_%$%g1983319845%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g1983319845%_)))
                                                    (_%$%g1983121666%_
                                                     (lambda (_%$%g1983319853%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%g1983319853%_)
                                                           (let ((_g24182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%g1983319853%_ '0)))
                     (begin
                       (let ((_g24183_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g24182_)
                                    (##values-length _g24182_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g24183_ 2)))
                             (error "Context expects 2 values" _g24183_)))
                       (let ((_%$%target1983519856%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g24182_ 0)))
                             (_%$%tl1983719859%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g24182_ 1))))
                         (if (gx#stx-null? _%$%tl1983719859%_)
                             (letrec ((_%$%loop1983819862%_
                                       (lambda (_%$%hd1983619866%_
                                                _%$%setf1984219869%_)
                                         (if (gx#stx-pair? _%$%hd1983619866%_)
                                             (let ((_%$%e1983919871%_
                                                    (gx#syntax-e
                                                     _%$%hd1983619866%_)))
                                               (let ((_%$%lp-hd1984019875%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e1983919871%_)))
                                                     (_%$%lp-tl1984119878%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e1983919871%_))))
                                                 (_%$%loop1983819862%_
                                                  _%$%lp-tl1984119878%_
                                                  (cons _%$%lp-hd1984019875%_
                                                        _%$%setf1984219869%_))))
                                             (let ((_%$%setf1984319881%_
                                                    (reverse _%$%setf1984219869%_)))
                                               ((lambda (_%$%g1983419884%_)
                                                  (let* ((_%mixin-slots19901%_
                                                          (_%get-mixin-slots19539%_
                                                           _%super-ref19532%_
                                                           _%slots19533%_))
                                                         (_%$%g1990419921%_
                                                          (lambda (_%$%g1990519917%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g1990519917%_)))
                                                         (_%$%g1990321662%_
                                                          (lambda (_%$%g1990519925%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1990519925%_)
                        (let ((_g24184_
                               (gx#syntax-split-splice _%$%g1990519925%_ '0)))
                          (begin
                            (let ((_g24185_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g24184_)
                                         (##values-length _g24184_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g24185_ 2)))
                                  (error "Context expects 2 values" _g24185_)))
                            (let ((_%$%target1990719928%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g24184_ 0)))
                                  (_%$%tl1990919931%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g24184_ 1))))
                              (if (gx#stx-null? _%$%tl1990919931%_)
                                  (letrec ((_%$%loop1991019934%_
                                            (lambda (_%$%hd1990819938%_
                                                     _%$%mixin-slot1991419941%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd1990819938%_)
                                                  (let ((_%$%e1991119943%_
                                                         (gx#syntax-e
                                                          _%$%hd1990819938%_)))
                                                    (let ((_%$%lp-hd1991219947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1991119943%_)))
                                                          (_%$%lp-tl1991319950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1991119943%_))))
                                                      (_%$%loop1991019934%_
                                                       _%$%lp-tl1991319950%_
                                                       (cons _%$%lp-hd1991219947%_
                                                             _%$%mixin-slot1991419941%_))))
                                                  (let ((_%$%mixin-slot1991519953%_
                                                         (reverse _%$%mixin-slot1991419941%_)))
                                                    ((lambda (_%$%g1990619956%_)
                                                       (let* ((_%$%g1997419991%_
                                                               (lambda (_%$%g1997519987%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g1997519987%_)))
                      (_%$%g1997321653%_
                       (lambda (_%$%g1997519995%_)
                         (if (gx#stx-pair/null? _%$%g1997519995%_)
                             (let ((_g24186_
                                    (gx#syntax-split-splice
                                     _%$%g1997519995%_
                                     '0)))
                               (begin
                                 (let ((_g24187_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g24186_)
                                              (##values-length _g24186_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g24187_ 2)))
                                       (error "Context expects 2 values"
                                              _g24187_)))
                                 (let ((_%$%target1997719998%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g24186_ 0)))
                                       (_%$%tl1997920001%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g24186_ 1))))
                                   (if (gx#stx-null? _%$%tl1997920001%_)
                                       (letrec ((_%$%loop1998020004%_
                                                 (lambda (_%$%hd1997820008%_
                                                          _%$%mixin-getf1998420011%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd1997820008%_)
                                                       (let ((_%$%e1998120013%_
                                                              (gx#syntax-e
                                                               _%$%hd1997820008%_)))
                                                         (let ((_%$%lp-hd1998220017%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e1998120013%_)))
                       (_%$%lp-tl1998320020%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e1998120013%_))))
                   (_%$%loop1998020004%_
                    _%$%lp-tl1998320020%_
                    (cons _%$%lp-hd1998220017%_ _%$%mixin-getf1998420011%_))))
               (let ((_%$%mixin-getf1998520023%_
                      (reverse _%$%mixin-getf1998420011%_)))
                 ((lambda (_%$%g1997620026%_)
                    (let* ((_%$%g2004320060%_
                            (lambda (_%$%g2004420056%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2004420056%_)))
                           (_%$%g2004221644%_
                            (lambda (_%$%g2004420064%_)
                              (if (gx#stx-pair/null? _%$%g2004420064%_)
                                  (let ((_g24188_
                                         (gx#syntax-split-splice
                                          _%$%g2004420064%_
                                          '0)))
                                    (begin
                                      (let ((_g24189_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g24188_)
                                                   (##values-length _g24188_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g24189_ 2)))
                                            (error "Context expects 2 values"
                                                   _g24189_)))
                                      (let ((_%$%target2004620067%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g24188_ 0)))
                                            (_%$%tl2004820070%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g24188_ 1))))
                                        (if (gx#stx-null? _%$%tl2004820070%_)
                                            (letrec ((_%$%loop2004920073%_
                                                      (lambda (_%$%hd2004720077%_
                                                               _%$%mixin-setf2005320080%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2004720077%_)
                                                            (let ((_%$%e2005020082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2004720077%_)))
                      (let ((_%$%lp-hd2005120086%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2005020082%_)))
                            (_%$%lp-tl2005220089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2005020082%_))))
                        (_%$%loop2004920073%_
                         _%$%lp-tl2005220089%_
                         (cons _%$%lp-hd2005120086%_
                               _%$%mixin-setf2005320080%_))))
                    (let ((_%$%mixin-setf2005420092%_
                           (reverse _%$%mixin-setf2005320080%_)))
                      ((lambda (_%$%g2004520095%_)
                         (let* ((_%$%g2011220129%_
                                 (lambda (_%$%g2011320125%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g2011320125%_)))
                                (_%$%g2011121627%_
                                 (lambda (_%$%g2011320133%_)
                                   (if (gx#stx-pair/null? _%$%g2011320133%_)
                                       (let ((_g24190_
                                              (gx#syntax-split-splice
                                               _%$%g2011320133%_
                                               '0)))
                                         (begin
                                           (let ((_g24191_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g24190_)
                                                        (##values-length
                                                         _g24190_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g24191_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g24191_)))
                                           (let ((_%$%target2011520136%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g24190_ 0)))
                                                 (_%$%tl2011720139%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g24190_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl2011720139%_)
                                                 (letrec ((_%$%loop2011820142%_
                                                           (lambda (_%$%hd2011620146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%ugetf2012220149%_)
                     (if (gx#stx-pair? _%$%hd2011620146%_)
                         (let ((_%$%e2011920151%_
                                (gx#syntax-e _%$%hd2011620146%_)))
                           (let ((_%$%lp-hd2012020155%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2011920151%_)))
                                 (_%$%lp-tl2012120158%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2011920151%_))))
                             (_%$%loop2011820142%_
                              _%$%lp-tl2012120158%_
                              (cons _%$%lp-hd2012020155%_
                                    _%$%ugetf2012220149%_))))
                         (let ((_%$%ugetf2012320161%_
                                (reverse _%$%ugetf2012220149%_)))
                           ((lambda (_%$%g2011420164%_)
                              (let* ((_%$%g2018120198%_
                                      (lambda (_%$%g2018220194%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2018220194%_)))
                                     (_%$%g2018021610%_
                                      (lambda (_%$%g2018220202%_)
                                        (if (gx#stx-pair/null?
                                             _%$%g2018220202%_)
                                            (let ((_g24192_
                                                   (gx#syntax-split-splice
                                                    _%$%g2018220202%_
                                                    '0)))
                                              (begin
                                                (let ((_g24193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g24192_)
                                                             (##values-length
                                                              _g24192_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g24193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g24193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2018420205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24192_
                                                          0)))
                                                      (_%$%tl2018620208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24192_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2018620208%_)
                                                      (letrec ((_%$%loop2018720211%_
                                                                (lambda (_%$%hd2018520215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%usetf2019120218%_)
                          (if (gx#stx-pair? _%$%hd2018520215%_)
                              (let ((_%$%e2018820220%_
                                     (gx#syntax-e _%$%hd2018520215%_)))
                                (let ((_%$%lp-hd2018920224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2018820220%_)))
                                      (_%$%lp-tl2019020227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2018820220%_))))
                                  (_%$%loop2018720211%_
                                   _%$%lp-tl2019020227%_
                                   (cons _%$%lp-hd2018920224%_
                                         _%$%usetf2019120218%_))))
                              (let ((_%$%usetf2019220230%_
                                     (reverse _%$%usetf2019120218%_)))
                                ((lambda (_%$%g2018320233%_)
                                   (let* ((_%$%g2025020267%_
                                           (lambda (_%$%g2025120263%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g2025120263%_)))
                                          (_%$%g2024921593%_
                                           (lambda (_%$%g2025120271%_)
                                             (if (gx#stx-pair/null?
                                                  _%$%g2025120271%_)
                                                 (let ((_g24194_
                                                        (gx#syntax-split-splice
                                                         _%$%g2025120271%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g24195_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g24194_)
                          (##values-length _g24194_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g24195_ 2)))
                   (error "Context expects 2 values" _g24195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target2025320274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g24194_
                                                               0)))
                                                           (_%$%tl2025520277%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g24194_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%$%tl2025520277%_)
                                                           (letrec ((_%$%loop2025620280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd2025420284%_
                                      _%$%mixin-ugetf2026020287%_)
                               (if (gx#stx-pair? _%$%hd2025420284%_)
                                   (let ((_%$%e2025720289%_
                                          (gx#syntax-e _%$%hd2025420284%_)))
                                     (let ((_%$%lp-hd2025820293%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2025720289%_)))
                                           (_%$%lp-tl2025920296%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2025720289%_))))
                                       (_%$%loop2025620280%_
                                        _%$%lp-tl2025920296%_
                                        (cons _%$%lp-hd2025820293%_
                                              _%$%mixin-ugetf2026020287%_))))
                                   (let ((_%$%mixin-ugetf2026120299%_
                                          (reverse _%$%mixin-ugetf2026020287%_)))
                                     ((lambda (_%$%g2025220302%_)
                                        (let* ((_%$%g2031920336%_
                                                (lambda (_%$%g2032020332%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2032020332%_)))
                                               (_%$%g2031821576%_
                                                (lambda (_%$%g2032020340%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%g2032020340%_)
                                                      (let ((_g24196_
                                                             (gx#syntax-split-splice
                                                              _%$%g2032020340%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g24197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g24196_)
                               (##values-length _g24196_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g24197_ 2)))
                        (error "Context expects 2 values" _g24197_)))
                  (let ((_%$%target2032220343%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g24196_ 0)))
                        (_%$%tl2032420346%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g24196_ 1))))
                    (if (gx#stx-null? _%$%tl2032420346%_)
                        (letrec ((_%$%loop2032520349%_
                                  (lambda (_%$%hd2032320353%_
                                           _%$%mixin-usetf2032920356%_)
                                    (if (gx#stx-pair? _%$%hd2032320353%_)
                                        (let ((_%$%e2032620358%_
                                               (gx#syntax-e
                                                _%$%hd2032320353%_)))
                                          (let ((_%$%lp-hd2032720362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2032620358%_)))
                                                (_%$%lp-tl2032820365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2032620358%_))))
                                            (_%$%loop2032520349%_
                                             _%$%lp-tl2032820365%_
                                             (cons _%$%lp-hd2032720362%_
                                                   _%$%mixin-usetf2032920356%_))))
                                        (let ((_%$%mixin-usetf2033020368%_
                                               (reverse _%$%mixin-usetf2032920356%_)))
                                          ((lambda (_%$%g2032120371%_)
                                             (let* ((_%type-slots20406%_
                                                     (if (gx#stx-null?
                                                          _%slots19533%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%$%g1983419884%_
                                _%$%g1976519815%_
                                _%$%g1969619746%_)
                               (foldr (lambda (_%$%g2039120396%_
                                               _%$%g2039220399%_
                                               _%$%g2039320401%_
                                               _%$%g2039420403%_)
                                        (cons (cons _%$%g2039320401%_
                                                    (cons _%$%g2039220399%_
                                                          (cons _%$%g2039120396%_
                                                                '())))
                                              _%$%g2039420403%_))
                                      '()
                                      _%$%g1983419884%_
                                      _%$%g1976519815%_
                                      _%$%g1969619746%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots20427%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots19901%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%$%g2004520095%_
                                _%$%g1997620026%_
                                _%$%g1990619956%_)
                               (foldr (lambda (_%$%g2041220417%_
                                               _%$%g2041320420%_
                                               _%$%g2041420422%_
                                               _%$%g2041520424%_)
                                        (cons (cons _%$%g2041420422%_
                                                    (cons _%$%g2041320420%_
                                                          (cons _%$%g2041220417%_
                                                                '())))
                                              _%$%g2041520424%_))
                                      '()
                                      _%$%g2004520095%_
                                      _%$%g1997620026%_
                                      _%$%g1990619956%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name20434%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e20430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body19534%_)))
                           (if _%$e20430%_ _%$e20430%_ _%id19531%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id20441%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e20437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body19534%_)))
                           (if _%$e20437%_
                               _%$e20437%_
                               (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                _%$%g1955319566%_)))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor20455%_
                                                     (let ((_%$e20451%_
                                                            (let ((_%$%e2044320445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body19534%_)))
                      (if _%$%e2044320445%_
                          (let ((_%e20448%_ _%$%e2044320445%_))
                            (cons 'constructor: (cons _%e20448%_ '())))
                          '#f))))
               (if _%$e20451%_ _%$e20451%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties20505%_
                                                     (let* ((_%properties20467%_
                                                             (let ((_%$e20458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'transparent: _%body19534%_)))
                       (if _%$e20458%_
                           ((lambda (_%ts20462%_)
                              (cons (cons 'transparent: (gx#stx-e _%ts20462%_))
                                    '()))
                            _%$e20458%_)
                           '())))
                    (_%properties20482%_
                     (let ((_%$e20470%_
                            (gx#stx-e (gx#stx-getq 'print: _%body19534%_))))
                       (if _%$e20470%_
                           ((lambda (_%print20474%_)
                              (let ((_%print20477%_
                                     (if (eq? _%print20474%_ '#t)
                                         _%slots19533%_
                                         _%print20474%_)))
                                (cons (cons 'print: _%print20477%_)
                                      _%properties20467%_)))
                            _%$e20470%_)
                           _%properties20467%_)))
                    (_%properties20497%_
                     (let ((_%$e20485%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body19534%_))))
                       (if _%$e20485%_
                           ((lambda (_%equal20489%_)
                              (let ((_%equal20492%_
                                     (if (eq? _%equal20489%_ '#t)
                                         _%slots19533%_
                                         _%equal20489%_)))
                                (cons (cons 'equal: _%equal20492%_)
                                      _%properties20482%_)))
                            _%$e20485%_)
                           _%properties20482%_)))
                    (_%properties20500%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body19534%_))
                         (cons (cons 'acyclic: '#t) _%properties20497%_)
                         _%properties20497%_)))
               _%properties20500%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties20546%_
                                                     (if (null? _%properties20505%_)
                                                         '()
                                                         (let* ((_%$%g2050820516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g2050920512%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g2050920512%_)))
                        (_%$%g2050720542%_
                         (lambda (_%$%g2050920520%_)
                           ((lambda (_%$%g2051020523%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%$%g2051020523%_ '()))
                                          '())))
                            _%$%g2050920520%_))))
                   (_%$%g2050720542%_ _%properties20505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass20558%_
                                                     (let ((_%$e20549%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body19534%_)))
                                                       (if _%$e20549%_
                                                           ((lambda (_%metaclass20553%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass20553%_)
                          _%metaclass20553%_
                          '#f))
                    _%$e20549%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass20561%_
                                                     (if _%metaclass20558%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass20558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?20564%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body19534%_)))
                                                    (_%type-struct20567%_
                                                     (cons 'struct:
                                                           (cons _%struct?19548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final20570%_
                                                     (cons 'final:
                                                           (cons _%final?20564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2057320590%_
                                                     (lambda (_%$%g2057420586%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g2057420586%_)))
                                                    (_%$%g2057221572%_
                                                     (lambda (_%$%g2057420594%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%g2057420594%_)
                                                           (let ((_g24198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%g2057420594%_ '0)))
                     (begin
                       (let ((_g24199_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g24198_)
                                    (##values-length _g24198_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g24199_ 2)))
                             (error "Context expects 2 values" _g24199_)))
                       (let ((_%$%target2057620597%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g24198_ 0)))
                             (_%$%tl2057820600%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g24198_ 1))))
                         (if (gx#stx-null? _%$%tl2057820600%_)
                             (letrec ((_%$%loop2057920603%_
                                       (lambda (_%$%hd2057720607%_
                                                _%$%type-body2058320610%_)
                                         (if (gx#stx-pair? _%$%hd2057720607%_)
                                             (let ((_%$%e2058020612%_
                                                    (gx#syntax-e
                                                     _%$%hd2057720607%_)))
                                               (let ((_%$%lp-hd2058120616%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e2058020612%_)))
                                                     (_%$%lp-tl2058220619%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e2058020612%_))))
                                                 (_%$%loop2057920603%_
                                                  _%$%lp-tl2058220619%_
                                                  (cons _%$%lp-hd2058120616%_
                                                        _%$%type-body2058320610%_))))
                                             (let ((_%$%type-body2058420622%_
                                                    (reverse _%$%type-body2058320610%_)))
                                               ((lambda (_%$%g2057520625%_)
                                                  (let* ((_%$%g2064620654%_
                                                          (lambda (_%$%g2064720650%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2064720650%_)))
                                                         (_%$%g2064521560%_
                                                          (lambda (_%$%g2064720658%_)
                                                            ((lambda (_%$%g2064820661%_)
                                                               (let* ((_%$%g2067420682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g2067520678%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g2067520678%_)))
                              (_%$%g2067321489%_
                               (lambda (_%$%g2067520686%_)
                                 ((lambda (_%$%g2067620689%_)
                                    (let* ((_%$%g2070220710%_
                                            (lambda (_%$%g2070320706%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g2070320706%_)))
                                           (_%$%g2070121454%_
                                            (lambda (_%$%g2070320714%_)
                                              ((lambda (_%$%g2070420717%_)
                                                 (let* ((_%$%g2073020738%_
                                                         (lambda (_%$%g2073120734%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g2073120734%_)))
                                                        (_%$%g2072921370%_
                                                         (lambda (_%$%g2073120742%_)
                                                           ((lambda (_%$%g2073220745%_)
                                                              (let* ((_%$%g2075820766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g2075920762%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2075920762%_)))
                             (_%$%g2075721358%_
                              (lambda (_%$%g2075920770%_)
                                ((lambda (_%$%g2076020773%_)
                                   (let* ((_%$%g2078620794%_
                                           (lambda (_%$%g2078720790%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g2078720790%_)))
                                          (_%$%g2078521354%_
                                           (lambda (_%$%g2078720798%_)
                                             ((lambda (_%$%g2078820801%_)
                                                (let* ((_%$%g2081420822%_
                                                        (lambda (_%$%g2081520818%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g2081520818%_)))
                                                       (_%$%g2081321350%_
                                                        (lambda (_%$%g2081520826%_)
                                                          ((lambda (_%$%g2081620829%_)
                                                             (let* ((_%$%g2084220850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g2084320846%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2084320846%_)))
                            (_%$%g2084121315%_
                             (lambda (_%$%g2084320854%_)
                               ((lambda (_%$%g2084420857%_)
                                  (let* ((_%$%g2087020878%_
                                          (lambda (_%$%g2087120874%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g2087120874%_)))
                                         (_%$%g2086921244%_
                                          (lambda (_%$%g2087120882%_)
                                            ((lambda (_%$%g2087220885%_)
                                               (let* ((_%$%g2089820906%_
                                                       (lambda (_%$%g2089920902%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g2089920902%_)))
                                                      (_%$%g2089721240%_
                                                       (lambda (_%$%g2089920910%_)
                                                         ((lambda (_%$%g2090020913%_)
                                                            (let* ((_%$%g2092620934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2092720930%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2092720930%_)))
                           (_%$%g2092521236%_
                            (lambda (_%$%g2092720938%_)
                              ((lambda (_%$%g2092820941%_)
                                 (let* ((_%$%g2095420962%_
                                         (lambda (_%$%g2095520958%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2095520958%_)))
                                        (_%$%g2095321232%_
                                         (lambda (_%$%g2095520966%_)
                                           ((lambda (_%$%g2095620969%_)
                                              (let* ((_%$%g2098220990%_
                                                      (lambda (_%$%g2098320986%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g2098320986%_)))
                                                     (_%$%g2098121206%_
                                                      (lambda (_%$%g2098320994%_)
                                                        ((lambda (_%$%g2098420997%_)
                                                           (let* ((_%$%g2101021018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g2101121014%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g2101121014%_)))
                          (_%$%g2100921180%_
                           (lambda (_%$%g2101121022%_)
                             ((lambda (_%$%g2101221025%_)
                                (let* ((_%$%g2103821046%_
                                        (lambda (_%$%g2103921042%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2103921042%_)))
                                       (_%$%g2103721154%_
                                        (lambda (_%$%g2103921050%_)
                                          ((lambda (_%$%g2104021053%_)
                                             (let* ((_%$%g2106621074%_
                                                     (lambda (_%$%g2106721070%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g2106721070%_)))
                                                    (_%$%g2106521128%_
                                                     (lambda (_%$%g2106721078%_)
                                                       ((lambda (_%$%g2106821081%_)
                                                          (let* ((_%$%g2109421102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g2109521098%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g2109521098%_)))
                         (_%$%g2109321124%_
                          (lambda (_%$%g2109521106%_)
                            ((lambda (_%$%g2109621109%_)
                               (_%wrap19536%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%$%g2064820661%_
                                            (cons _%$%g2109621109%_ '())))))
                             _%$%g2109521106%_))))
                    (_%$%g2109321124%_
                     (_%wrap19536%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%$%g1955319566%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%$%g2067620689%_
                                                          (cons 'name:
                                                                (cons _%$%g2070420717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%$%g2076020773%_
                                          (cons 'super:
                                                (cons _%$%g2073220745%_
                                                      (cons 'struct?:
                                                            (cons _%$%g2078820801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%$%g2081620829%_
                                      (cons 'metaclass:
                                            (cons _%$%g2084420857%_
                                                  (cons 'constructor-method:
                                                        (cons _%$%g2087220885%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%g2090020913%_
                                  (cons 'constructor:
                                        (cons _%$%g2092820941%_
                                              (cons 'predicate:
                                                    (cons _%$%g2095620969%_
                                                          (cons 'accessors:
                                                                (cons _%$%g2098420997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%$%g2101221025%_
                                          (cons 'unchecked-accessors:
                                                (cons _%$%g2104021053%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%$%g2106821081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%$%g2106721078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2106521128%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%$%g2018320233%_
                                                         _%$%g1969619746%_)
                                                        (foldr (lambda (_%$%g2113121138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g2113221141%_
                                _%$%g2113321143%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g2113221141%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%$%g2113121138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%$%g2113321143%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%$%g2032120371%_
                          _%$%g1990619956%_)
                         (foldr (lambda (_%$%g2113421146%_
                                         _%$%g2113521149%_
                                         _%$%g2113621151%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g2113521149%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%$%g2113421146%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$%g2113621151%_))
                                '()
                                _%$%g2032120371%_
                                _%$%g1990619956%_))
                       _%$%g2018320233%_
                       _%$%g1969619746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%g2103921050%_))))
                                  (_%$%g2103721154%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%$%g2011420164%_
                                            _%$%g1969619746%_)
                                           (foldr (lambda (_%$%g2115721164%_
                                                           _%$%g2115821167%_
                                                           _%$%g2115921169%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%$%g2115821167%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%$%g2115721164%_ '()))
                                          '()))))
                  _%$%g2115921169%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%$%g2025220302%_
                                                     _%$%g1990619956%_)
                                                    (foldr (lambda (_%$%g2116021172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g2116121175%_
                            _%$%g2116221177%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g2116121175%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%$%g2116021172%_
                                                               '()))
                                                   '()))))
                           _%$%g2116221177%_))
                   '()
                   _%$%g2025220302%_
                   _%$%g1990619956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%g2011420164%_
                                                  _%$%g1969619746%_))))))
                              _%$%g2101121022%_))))
                     (_%$%g2100921180%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%$%g1983419884%_
                               _%$%g1969619746%_)
                              (foldr (lambda (_%$%g2118321190%_
                                              _%$%g2118421193%_
                                              _%$%g2118521195%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g2118421193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%g2118321190%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g2118521195%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%$%g2004520095%_
                                        _%$%g1990619956%_)
                                       (foldr (lambda (_%$%g2118621198%_
                                                       _%$%g2118721201%_
                                                       _%$%g2118821203%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%$%g2118721201%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%$%g2118621198%_ '()))
                                      '()))))
              _%$%g2118821203%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%$%g2004520095%_
                                              _%$%g1990619956%_))
                                     _%$%g1983419884%_
                                     _%$%g1969619746%_))))))
                 _%$%g2098320994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2098121206%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%$%g1976519815%_
                                                          _%$%g1969619746%_)
                                                         (foldr (lambda (_%$%g2120921216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2121021219%_
                                 _%$%g2121121221%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g2121021219%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%$%g2120921216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%$%g2121121221%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%$%g1997620026%_
                           _%$%g1990619956%_)
                          (foldr (lambda (_%$%g2121221224%_
                                          _%$%g2121321227%_
                                          _%$%g2121421229%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g2121321227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%$%g2121221224%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g2121421229%_))
                                 '()
                                 _%$%g1997620026%_
                                 _%$%g1990619956%_))
                        _%$%g1976519815%_
                        _%$%g1969619746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g2095520966%_))))
                                   (_%$%g2095321232%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%$%g1964019653%_ '())))))
                               _%$%g2092720938%_))))
                      (_%$%g2092521236%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%$%g1961219625%_ '())))))
                  _%$%g2089920910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2089721240%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%$%g1958419597%_
                                                              '())))))
                                             _%$%g2087120882%_))))
                                    (_%$%g2086921244%_
                                     (if (null? _%type-constructor20455%_)
                                         '#f
                                         (let* ((_%$%g2124821263%_
                                                 (lambda (_%$%g2124921259%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g2124921259%_)))
                                                (_%$%g2124721311%_
                                                 (lambda (_%$%g2124921267%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g2124921267%_)
                                                       (let ((_%$%e2125121270%_
                                                              (gx#syntax-e
                                                               _%$%g2124921267%_)))
                                                         (let ((_%$%hd2125221274%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e2125121270%_)))
                       (_%$%tl2125321277%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e2125121270%_))))
                   (if (gx#stx-datum? _%$%hd2125221274%_)
                       (let ((_%$%e2125421280%_ (gx#stx-e _%$%hd2125221274%_)))
                         (if (equal? _%$%e2125421280%_ 'constructor:)
                             (if (gx#stx-pair? _%$%tl2125321277%_)
                                 (let ((_%$%e2125521284%_
                                        (gx#syntax-e _%$%tl2125321277%_)))
                                   (let ((_%$%hd2125621288%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2125521284%_)))
                                         (_%$%tl2125721291%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2125521284%_))))
                                     (if (gx#stx-null? _%$%tl2125721291%_)
                                         ((lambda (_%$%g2125021294%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g2125021294%_
                                                        '())))
                                          _%$%hd2125621288%_)
                                         (_%$%g2124821263%_
                                          _%$%g2124921267%_))))
                                 (_%$%g2124821263%_ _%$%g2124921267%_))
                             (_%$%g2124821263%_ _%$%g2124921267%_)))
                       (_%$%g2124821263%_ _%$%g2124921267%_))))
               (_%$%g2124821263%_ _%$%g2124921267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g2124721311%_
                                            _%type-constructor20455%_))))))
                                _%$%g2084320854%_))))
                       (_%$%g2084121315%_
                        (if _%metaclass20558%_
                            (let* ((_%$%g2131921327%_
                                    (lambda (_%$%g2132021323%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g2132021323%_)))
                                   (_%$%g2131821346%_
                                    (lambda (_%$%g2132021331%_)
                                      ((lambda (_%$%g2132121334%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%$%g2132121334%_ '())))
                                       _%$%g2132021331%_))))
                              (_%$%g2131821346%_ _%metaclass20558%_))
                            '#f))))
                   _%$%g2081520826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2081321350%_
                                                   _%final?20564%_)))
                                              _%$%g2078720798%_))))
                                     (_%$%g2078521354%_ _%struct?19548%_)))
                                 _%$%g2075920770%_))))
                        (_%$%g2075721358%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%$%g2136121364%_
                                                     _%$%g2136221367%_)
                                              (cons _%$%g2136121364%_
                                                    _%$%g2136221367%_))
                                            '()
                                            _%$%g1969619746%_)
                                     '())))))
                    _%$%g2073120742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2072921370%_
                                                    (let* ((_%$%g2137421391%_
                                                            (lambda (_%$%g2137521387%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g2137521387%_)))
                                                           (_%$%g2137321450%_
                                                            (lambda (_%$%g2137521395%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g2137521395%_)
                          (let ((_g24200_
                                 (gx#syntax-split-splice
                                  _%$%g2137521395%_
                                  '0)))
                            (begin
                              (let ((_g24201_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g24200_)
                                           (##values-length _g24200_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g24201_ 2)))
                                    (error "Context expects 2 values"
                                           _g24201_)))
                              (let ((_%$%target2137721398%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g24200_ 0)))
                                    (_%$%tl2137921401%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g24200_ 1))))
                                (if (gx#stx-null? _%$%tl2137921401%_)
                                    (letrec ((_%$%loop2138021404%_
                                              (lambda (_%$%hd2137821408%_
                                                       _%$%super-id2138421411%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd2137821408%_)
                                                    (let ((_%$%e2138121413%_
                                                           (gx#syntax-e
                                                            _%$%hd2137821408%_)))
                                                      (let ((_%$%lp-hd2138221417%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2138121413%_)))
                    (_%$%lp-tl2138321420%_
                     (let () (declare (not safe)) (##cdr _%$%e2138121413%_))))
                (_%$%loop2138021404%_
                 _%$%lp-tl2138321420%_
                 (cons _%$%lp-hd2138221417%_ _%$%super-id2138421411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%super-id2138521423%_
                                                           (reverse _%$%super-id2138421411%_)))
                                                      ((lambda (_%$%g2137621426%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%$%g2144121444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%$%g2144221447%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%$%g2144121444%_ '()))
                                      _%$%g2144221447%_))
                              '()
                              _%$%g2137621426%_)))
               _%$%super-id2138521423%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop2138021404%_
                                       _%$%target2137721398%_
                                       '()))
                                    (_%$%g2137421391%_ _%$%g2137521395%_)))))
                          (_%$%g2137421391%_ _%$%g2137521395%_)))))
              (_%$%g2137321450%_ _%super-ref19532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%g2070320714%_))))
                                      (_%$%g2070121454%_
                                       (let* ((_%$%g2145821466%_
                                               (lambda (_%$%g2145921462%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g2145921462%_)))
                                              (_%$%g2145721485%_
                                               (lambda (_%$%g2145921470%_)
                                                 ((lambda (_%$%g2146021473%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g2146021473%_
                                                                '())))
                                                  _%$%g2145921470%_))))
                                         (_%$%g2145721485%_
                                          (cadr _%type-name20434%_))))))
                                  _%$%g2067520686%_))))
                         (_%$%g2067321489%_
                          (let* ((_%$%g2149321508%_
                                  (lambda (_%$%g2149421504%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g2149421504%_)))
                                 (_%$%g2149221556%_
                                  (lambda (_%$%g2149421512%_)
                                    (if (gx#stx-pair? _%$%g2149421512%_)
                                        (let ((_%$%e2149621515%_
                                               (gx#syntax-e
                                                _%$%g2149421512%_)))
                                          (let ((_%$%hd2149721519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2149621515%_)))
                                                (_%$%tl2149821522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2149621515%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd2149721519%_)
                                                (let ((_%$%e2149921525%_
                                                       (gx#stx-e
                                                        _%$%hd2149721519%_)))
                                                  (if (equal? _%$%e2149921525%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl2149821522%_)
                                                          (let ((_%$%e2150021529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl2149821522%_)))
                    (let ((_%$%hd2150121533%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2150021529%_)))
                          (_%$%tl2150221536%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2150021529%_))))
                      (if (gx#stx-null? _%$%tl2150221536%_)
                          ((lambda (_%$%g2149521539%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%$%g2149521539%_ '())))
                           _%$%hd2150121533%_)
                          (_%$%g2149321508%_ _%$%g2149421512%_))))
                  (_%$%g2149321508%_ _%$%g2149421512%_))
              (_%$%g2149321508%_ _%$%g2149421512%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2149321508%_
                                                 _%$%g2149421512%_))))
                                        (_%$%g2149321508%_
                                         _%$%g2149421512%_)))))
                            (_%$%g2149221556%_ _%type-id20441%_)))))
                     _%$%g2064720658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2064521560%_
                                                     (_%wrap19536%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%$%g1958419597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g1966819681%_
                                (cons _%$%g1961219625%_
                                      (cons _%$%g1964019653%_
                                            (foldr (lambda (_%$%g2156321566%_
                                                            _%$%g2156421569%_)
                                                     (cons _%$%g2156321566%_
                                                           _%$%g2156421569%_))
                                                   '()
                                                   _%$%g2057520625%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%type-body2058420622%_))))))
                               (_%$%loop2057920603%_
                                _%$%target2057620597%_
                                '()))
                             (_%$%g2057320590%_ _%$%g2057420594%_)))))
                   (_%$%g2057320590%_ _%$%g2057420594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2057221572%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots20427%_
                                                                _%type-slots20406%_)
                                                         _%type-properties20546%_)
                                                  _%type-metaclass20561%_)
                                           _%type-final20570%_)
                                    _%type-struct20567%_)
                             _%type-constructor20455%_)
                      _%type-name20434%_)
               _%type-id20441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%mixin-usetf2033020368%_))))))
                          (_%$%loop2032520349%_ _%$%target2032220343%_ '()))
                        (_%$%g2031920336%_ _%$%g2032020340%_)))))
              (_%$%g2031920336%_ _%$%g2032020340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2031821576%_
                                           (gx#stx-map
                                            (lambda (_%$%g2157921581%_)
                                              (_%make-id19538%_
                                               '"&"
                                               _%$%g2157921581%_))
                                            (foldr (lambda (_%$%g2158421587%_
                                                            _%$%g2158521590%_)
                                                     (cons _%$%g2158421587%_
                                                           _%$%g2158521590%_))
                                                   '()
                                                   _%$%g2004520095%_)))))
                                      _%$%mixin-ugetf2026120299%_))))))
                     (_%$%loop2025620280%_ _%$%target2025320274%_ '()))
                   (_%$%g2025020267%_ _%$%g2025120271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2025020267%_
                                                  _%$%g2025120271%_)))))
                                     (_%$%g2024921593%_
                                      (gx#stx-map
                                       (lambda (_%$%g2159621598%_)
                                         (_%make-id19538%_
                                          '"&"
                                          _%$%g2159621598%_))
                                       (foldr (lambda (_%$%g2160121604%_
                                                       _%$%g2160221607%_)
                                                (cons _%$%g2160121604%_
                                                      _%$%g2160221607%_))
                                              '()
                                              _%$%g1997620026%_)))))
                                 _%$%usetf2019220230%_))))))
                (_%$%loop2018720211%_ _%$%target2018420205%_ '()))
              (_%$%g2018120198%_ _%$%g2018220202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2018120198%_
                                             _%$%g2018220202%_)))))
                                (_%$%g2018021610%_
                                 (gx#stx-map
                                  (lambda (_%$%g2161321615%_)
                                    (_%make-id19538%_ '"&" _%$%g2161321615%_))
                                  (foldr (lambda (_%$%g2161821621%_
                                                  _%$%g2161921624%_)
                                           (cons _%$%g2161821621%_
                                                 _%$%g2161921624%_))
                                         '()
                                         _%$%g1983419884%_)))))
                            _%$%ugetf2012320161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop2011820142%_
                                                    _%$%target2011520136%_
                                                    '()))
                                                 (_%$%g2011220129%_
                                                  _%$%g2011320133%_)))))
                                       (_%$%g2011220129%_
                                        _%$%g2011320133%_)))))
                           (_%$%g2011121627%_
                            (gx#stx-map
                             (lambda (_%$%g2163021632%_)
                               (_%make-id19538%_ '"&" _%$%g2163021632%_))
                             (foldr (lambda (_%$%g2163521638%_
                                             _%$%g2163621641%_)
                                      (cons _%$%g2163521638%_
                                            _%$%g2163621641%_))
                                    '()
                                    _%$%g1976519815%_)))))
                       _%$%mixin-setf2005420092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2004920073%_
                                               _%$%target2004620067%_
                                               '()))
                                            (_%$%g2004320060%_
                                             _%$%g2004420064%_)))))
                                  (_%$%g2004320060%_ _%$%g2004420064%_)))))
                      (_%$%g2004221644%_
                       (gx#stx-map
                        (lambda (_%$%g2164721649%_)
                          (_%make-id19538%_
                           _%name19542%_
                           '"-"
                           _%$%g2164721649%_
                           '"-set!"))
                        _%mixin-slots19901%_))))
                  _%$%mixin-getf1998520023%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop1998020004%_
                                          _%$%target1997719998%_
                                          '()))
                                       (_%$%g1997419991%_
                                        _%$%g1997519995%_)))))
                             (_%$%g1997419991%_ _%$%g1997519995%_)))))
                 (_%$%g1997321653%_
                  (gx#stx-map
                   (lambda (_%$%g2165621658%_)
                     (_%make-id19538%_ _%name19542%_ '"-" _%$%g2165621658%_))
                   _%mixin-slots19901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%mixin-slot1991519953%_))))))
                                    (_%$%loop1991019934%_
                                     _%$%target1990719928%_
                                     '()))
                                  (_%$%g1990419921%_ _%$%g1990519925%_)))))
                        (_%$%g1990419921%_ _%$%g1990519925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1990321662%_
                                                     _%mixin-slots19901%_)))
                                                _%$%setf1984319881%_))))))
                               (_%$%loop1983819862%_
                                _%$%target1983519856%_
                                '()))
                             (_%$%g1983219849%_ _%$%g1983319853%_)))))
                   (_%$%g1983219849%_ _%$%g1983319853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g1983121666%_
                                                (gx#stx-map
                                                 (lambda (_%$%g2166921671%_)
                                                   (_%make-id19538%_
                                                    _%name19542%_
                                                    '"-"
                                                    _%$%g2166921671%_
                                                    '"-set!"))
                                                 _%slots19533%_))))
                                           _%$%getf1977419812%_))))))
                          (_%$%loop1976919793%_ _%$%target1976619787%_ '()))
                        (_%$%g1976319780%_ _%$%g1976419784%_)))))
              (_%$%g1976319780%_ _%$%g1976419784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g1976221675%_
                                           (gx#stx-map
                                            (lambda (_%$%g2167821680%_)
                                              (_%make-id19538%_
                                               _%name19542%_
                                               '"-"
                                               _%$%g2167821680%_))
                                            _%slots19533%_))))
                                      _%$%slot1970519743%_))))))
                     (_%$%loop1970019724%_ _%$%target1969719718%_ '()))
                   (_%$%g1969419711%_ _%$%g1969519715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g1969419711%_
                                                  _%$%g1969519715%_)))))
                                     (_%$%g1969321684%_ _%slots19533%_)))
                                 _%$%g1966719678%_))))
                        (_%$%g1966521688%_
                         (map gerbil/core/mop~MOP-2#!class-type-descriptor
                              _%super19545%_))))
                    _%$%g1963919650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g1963721692%_
                                                    (_%make-id19538%_
                                                     _%name19542%_
                                                     '"?"))))
                                               _%$%g1961119622%_))))
                                      (_%$%g1960921696%_
                                       (_%make-id19538%_
                                        '"make-"
                                        _%name19542%_))))
                                  _%$%g1958319594%_))))
                         (_%$%g1958121700%_
                          (_%make-id19538%_ _%name19542%_ '"::t"))))
                     _%$%g1955219563%_))))
            (_%$%g1955021704%_ _%id19531%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx21771%_)
        (let* ((_%$%g2177521794%_
                (lambda (_%$%g2177621790%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2177621790%_)))
               (_%$%g2177421851%_
                (lambda (_%$%g2177621798%_)
                  (if (gx#stx-pair? _%$%g2177621798%_)
                      (let ((_%$%e2178021801%_
                             (gx#syntax-e _%$%g2177621798%_)))
                        (let ((_%$%hd2178121805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2178021801%_)))
                              (_%$%tl2178221808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2178021801%_))))
                          (if (gx#stx-pair? _%$%tl2178221808%_)
                              (let ((_%$%e2178321811%_
                                     (gx#syntax-e _%$%tl2178221808%_)))
                                (let ((_%$%hd2178421815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2178321811%_)))
                                      (_%$%tl2178521818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2178321811%_))))
                                  (if (gx#stx-pair? _%$%tl2178521818%_)
                                      (let ((_%$%e2178621821%_
                                             (gx#syntax-e _%$%tl2178521818%_)))
                                        (let ((_%$%hd2178721825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2178621821%_)))
                                              (_%$%tl2178821828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2178621821%_))))
                                          ((lambda (_%$%g2177721831%_
                                                    _%$%g2177821833%_
                                                    _%$%g2177921834%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%$%g2177921834%_
                                                         (cons _%$%g2177821833%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%$%g2177721831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%tl2178821828%_
                                           _%$%hd2178721825%_
                                           _%$%hd2178421815%_)))
                                      (_%$%g2177521794%_ _%$%g2177621798%_))))
                              (_%$%g2177521794%_ _%$%g2177621798%_))))
                      (_%$%g2177521794%_ _%$%g2177621798%_)))))
          (_%$%g2177421851%_ _%$stx21771%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx21855%_)
        (letrec ((_%generate21858%_
                  (lambda (_%hd21942%_ _%slots21944%_ _%body21945%_)
                    (let* ((_%$%g2194821960%_
                            (lambda (_%$%g2194921956%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2194921956%_)))
                           (_%$%g2194721971%_
                            (lambda (_%$%g2194921964%_)
                              ((lambda ()
                                 (if (gx#identifier? _%hd21942%_)
                                     (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                      _%stx21855%_
                                      _%hd21942%_
                                      '()
                                      _%slots21944%_
                                      _%body21945%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; head should be class name or list of class names"
                                      _%stx21855%_
                                      _%hd21942%_))))))
                           (_%$%g2194622003%_
                            (lambda (_%$%g2194921975%_)
                              (if (gx#stx-pair? _%$%g2194921975%_)
                                  (let ((_%$%e2195221978%_
                                         (gx#syntax-e _%$%g2194921975%_)))
                                    (let ((_%$%hd2195321982%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2195221978%_)))
                                          (_%$%tl2195421985%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2195221978%_))))
                                      ((lambda (_%$%g2195021988%_
                                                _%$%g2195121990%_)
                                         (if (and (gx#stx-list?
                                                   _%$%g2195021988%_)
                                                  (gx#stx-andmap
                                                   gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                                   _%$%g2195021988%_))
                                             (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                              _%stx21855%_
                                              _%$%g2195121990%_
                                              (gx#syntax->list
                                               _%$%g2195021988%_)
                                              _%slots21944%_
                                              _%body21945%_)
                                             (_%$%g2194721971%_
                                              _%$%g2194921975%_)))
                                       _%$%tl2195421985%_
                                       _%$%hd2195321982%_)))
                                  (_%$%g2194721971%_ _%$%g2194921975%_)))))
                      (_%$%g2194622003%_ _%hd21942%_)))))
          (let* ((_%$%g2186121880%_
                  (lambda (_%$%g2186221876%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2186221876%_)))
                 (_%$%g2186021938%_
                  (lambda (_%$%g2186221884%_)
                    (if (gx#stx-pair? _%$%g2186221884%_)
                        (let ((_%$%e2186621887%_
                               (gx#syntax-e _%$%g2186221884%_)))
                          (let ((_%$%hd2186721891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2186621887%_)))
                                (_%$%tl2186821894%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2186621887%_))))
                            (if (gx#stx-pair? _%$%tl2186821894%_)
                                (let ((_%$%e2186921897%_
                                       (gx#syntax-e _%$%tl2186821894%_)))
                                  (let ((_%$%hd2187021901%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2186921897%_)))
                                        (_%$%tl2187121904%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2186921897%_))))
                                    (if (gx#stx-pair? _%$%tl2187121904%_)
                                        (let ((_%$%e2187221907%_
                                               (gx#syntax-e
                                                _%$%tl2187121904%_)))
                                          (let ((_%$%hd2187321911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2187221907%_)))
                                                (_%$%tl2187421914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2187221907%_))))
                                            ((lambda (_%$%g2186321917%_
                                                      _%$%g2186421919%_
                                                      _%$%g2186521920%_)
                                               (if (and (gx#identifier-list?
                                                         _%$%g2186421919%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%$%g2186321917%_))
                                                   (_%generate21858%_
                                                    _%$%g2186521920%_
                                                    _%$%g2186421919%_
                                                    _%$%g2186321917%_)
                                                   (_%$%g2186121880%_
                                                    _%$%g2186221884%_)))
                                             _%$%tl2187421914%_
                                             _%$%hd2187321911%_
                                             _%$%hd2187021901%_)))
                                        (_%$%g2186121880%_
                                         _%$%g2186221884%_))))
                                (_%$%g2186121880%_ _%$%g2186221884%_))))
                        (_%$%g2186121880%_ _%$%g2186221884%_)))))
            (_%$%g2186021938%_ _%stx21855%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx22007%_)
        (letrec ((_%wrap22010%_
                  (lambda (_%e-stx22356%_)
                    (gx#stx-wrap-source
                     _%e-stx22356%_
                     (gx#stx-source _%stx22007%_))))
                 (_%method-opt?22012%_
                  (lambda (_%x22353%_)
                    (memq (gx#stx-e _%x22353%_) '(rebind:)))))
          (let* ((_%$%g2201422043%_
                  (lambda (_%$%g2201522039%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2201522039%_)))
                 (_%$%g2201322349%_
                  (lambda (_%$%g2201522047%_)
                    (if (gx#stx-pair? _%$%g2201522047%_)
                        (let ((_%$%e2202022050%_
                               (gx#syntax-e _%$%g2201522047%_)))
                          (let ((_%$%hd2202122054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2202022050%_)))
                                (_%$%tl2202222057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2202022050%_))))
                            (if (gx#stx-pair? _%$%tl2202222057%_)
                                (let ((_%$%e2202322060%_
                                       (gx#syntax-e _%$%tl2202222057%_)))
                                  (let ((_%$%hd2202422064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2202322060%_)))
                                        (_%$%tl2202522067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2202322060%_))))
                                    (if (gx#stx-pair? _%$%hd2202422064%_)
                                        (let ((_%$%e2202622070%_
                                               (gx#syntax-e
                                                _%$%hd2202422064%_)))
                                          (let ((_%$%hd2202722074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2202622070%_)))
                                                (_%$%tl2202822077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2202622070%_))))
                                            (if (gx#identifier?
                                                 _%$%hd2202722074%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g24202_|
                                                     _%$%hd2202722074%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl2202822077%_)
                                                        (let ((_%$%e2202922080%_
                                                               (gx#syntax-e
                                                                _%$%tl2202822077%_)))
                                                          (let ((_%$%hd2203022084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e2202922080%_)))
                        (_%$%tl2203122087%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e2202922080%_))))
                    (if (gx#stx-pair? _%$%tl2203122087%_)
                        (let ((_%$%e2203222090%_
                               (gx#syntax-e _%$%tl2203122087%_)))
                          (let ((_%$%hd2203322094%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2203222090%_)))
                                (_%$%tl2203422097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2203222090%_))))
                            (if (gx#stx-null? _%$%tl2203422097%_)
                                (if (gx#stx-pair? _%$%tl2202522067%_)
                                    (let ((_%$%e2203522100%_
                                           (gx#syntax-e _%$%tl2202522067%_)))
                                      (let ((_%$%hd2203622104%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2203522100%_)))
                                            (_%$%tl2203722107%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2203522100%_))))
                                        ((lambda (_%$%g2201622110%_
                                                  _%$%g2201722112%_
                                                  _%$%g2201822113%_
                                                  _%$%g2201922114%_)
                                           (if (and (gx#identifier?
                                                     _%$%g2201922114%_)
                                                    (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
                                                     _%$%g2201822113%_)
                                                    (gx#stx-plist?
                                                     _%$%g2201622110%_
                                                     _%method-opt?22012%_))
                                               (let* ((_%klass22141%_
                                                       (gx#syntax-local-value
                                                        _%$%g2201822113%_))
                                                      (_%rebind?22144%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%$%g2201622110%_)))
                                                      (_%$%g2214722155%_
                                                       (lambda (_%$%g2214822151%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g2214822151%_)))
                                                      (_%$%g2214622339%_
                                                       (lambda (_%$%g2214822159%_)
                                                         ((lambda (_%$%g2214922162%_)
                                                            (let* ((_%$%g2217722185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2217822181%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2217822181%_)))
                           (_%$%g2217622335%_
                            (lambda (_%$%g2217822189%_)
                              ((lambda (_%$%g2217922192%_)
                                 (let* ((_%$%g2220522213%_
                                         (lambda (_%$%g2220622209%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2220622209%_)))
                                        (_%$%g2220422331%_
                                         (lambda (_%$%g2220622217%_)
                                           ((lambda (_%$%g2220722220%_)
                                              (let* ((_%$%g2223322241%_
                                                      (lambda (_%$%g2223422237%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g2223422237%_)))
                                                     (_%$%g2223222327%_
                                                      (lambda (_%$%g2223422245%_)
                                                        ((lambda (_%$%g2223522248%_)
                                                           (let* ((_%$%g2226122269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g2226222265%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g2226222265%_)))
                          (_%$%g2226022323%_
                           (lambda (_%$%g2226222273%_)
                             ((lambda (_%$%g2226322276%_)
                                (let* ((_%$%g2228922297%_
                                        (lambda (_%$%g2229022293%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2229022293%_)))
                                       (_%$%g2228822319%_
                                        (lambda (_%$%g2229022301%_)
                                          ((lambda (_%$%g2229122304%_)
                                             (_%wrap22010%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%$%g2223522248%_
                                                          (cons _%$%g2229122304%_
                                                                '())))))
                                           _%$%g2229022301%_))))
                                  (_%$%g2228822319%_
                                   (_%wrap22010%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%$%g2214922162%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%g2201922114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%g2217922192%_ (cons _%$%g2226322276%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%$%g2226222273%_))))
                     (_%$%g2226022323%_ _%rebind?22144%_)))
                 _%$%g2223422245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2223222327%_
                                                 (_%wrap22010%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%$%g2217922192%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%$%g2220722220%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax-rules)
                        (cons '()
                              (cons (cons (cons (gx#datum->syntax '#f '_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'arg)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '...)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'call-next-method)
                                                      (cons _%$%g2214922162%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%g2201922114%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%$%g2201722112%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g2220622217%_))))
                                   (_%$%g2220422331%_
                                    (gx#stx-identifier
                                     _%$%g2201822113%_
                                     '@next-method))))
                               _%$%g2217822189%_))))
                      (_%$%g2217622335%_
                       (gx#stx-identifier
                        _%$%g2201822113%_
                        _%$%g2201822113%_
                        '"::"
                        _%$%g2201922114%_))))
                  _%$%g2214822159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2214622339%_
                                                  (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                                   _%klass22141%_)))
                                               (if (not (gx#identifier?
                                                         _%$%g2201922114%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx22007%_
                                                    _%$%g2201922114%_)
                                                   (if (not (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
                                                             _%$%g2201822113%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx22007%_
                                                        _%$%g2201822113%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx22007%_)))))
                                         _%$%tl2203722107%_
                                         _%$%hd2203622104%_
                                         _%$%hd2203322094%_
                                         _%$%hd2203022084%_)))
                                    (_%$%g2201422043%_ _%$%g2201522047%_))
                                (_%$%g2201422043%_ _%$%g2201522047%_))))
                        (_%$%g2201422043%_ _%$%g2201522047%_))))
                (_%$%g2201422043%_ _%$%g2201522047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2201422043%_
                                                     _%$%g2201522047%_))
                                                (_%$%g2201422043%_
                                                 _%$%g2201522047%_))))
                                        (_%$%g2201422043%_
                                         _%$%g2201522047%_))))
                                (_%$%g2201422043%_ _%$%g2201522047%_))))
                        (_%$%g2201422043%_ _%$%g2201522047%_)))))
            (_%$%g2201322349%_ _%stx22007%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx22359%_)
        (letrec ((_%dotted-identifier?22362%_
                  (lambda (_%id22987%_)
                    (if (gx#identifier? _%id22987%_)
                        (let ((_%id-str22990%_
                               (symbol->string (gx#stx-e _%id22987%_))))
                          (if (string-index _%id-str22990%_ '#\.)
                              (let ((_%split22993%_
                                     (string-split _%id-str22990%_ '#\.)))
                                (fx= (length _%split22993%_) '2))
                              '#f))
                        '#f)))
                 (_%split-dotted22364%_
                  (lambda (_%id22976%_)
                    (let* ((_%id-str22979%_
                            (symbol->string (gx#stx-e _%id22976%_)))
                           (_%split22982%_
                            (string-split _%id-str22979%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id22976%_
                             (car _%split22982%_))
                            (cons (gx#stx-identifier
                                   _%id22976%_
                                   (cadr _%split22982%_))
                                  '()))))))
          (let* ((_%$%g2236922456%_
                  (lambda (_%$%g2237022452%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2237022452%_)))
                 (_%$%g2236822554%_
                  (lambda (_%$%g2237022460%_)
                    (if (gx#stx-pair? _%$%g2237022460%_)
                        (let ((_%$%e2243322463%_
                               (gx#syntax-e _%$%g2237022460%_)))
                          (let ((_%$%hd2243422467%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2243322463%_)))
                                (_%$%tl2243522470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2243322463%_))))
                            (if (gx#stx-pair? _%$%tl2243522470%_)
                                (let ((_%$%e2243622473%_
                                       (gx#syntax-e _%$%tl2243522470%_)))
                                  (let ((_%$%hd2243722477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2243622473%_)))
                                        (_%$%tl2243822480%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2243622473%_))))
                                    (if (gx#stx-pair? _%$%tl2243822480%_)
                                        (let ((_%$%e2243922483%_
                                               (gx#syntax-e
                                                _%$%tl2243822480%_)))
                                          (let ((_%$%hd2244022487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2243922483%_)))
                                                (_%$%tl2244122490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2243922483%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl2244122490%_)
                                                (let ((_g24203_
                                                       (gx#syntax-split-splice
                                                        _%$%tl2244122490%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24203_)
                         (##values-length _g24203_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24204_ 2)))
                  (error "Context expects 2 values" _g24204_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target2244222493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g24203_
                                                              0)))
                                                          (_%$%tl2244422496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g24203_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl2244422496%_)
                                                          (letrec ((_%$%loop2244522499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd2244322503%_ _%$%arg2244922506%_)
                              (if (gx#stx-pair? _%$%hd2244322503%_)
                                  (let ((_%$%e2244622508%_
                                         (gx#syntax-e _%$%hd2244322503%_)))
                                    (let ((_%$%lp-hd2244722512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2244622508%_)))
                                          (_%$%lp-tl2244822515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2244622508%_))))
                                      (_%$%loop2244522499%_
                                       _%$%lp-tl2244822515%_
                                       (cons _%$%lp-hd2244722512%_
                                             _%$%arg2244922506%_))))
                                  (let ((_%$%arg2245022518%_
                                         (reverse _%$%arg2244922506%_)))
                                    ((lambda (_%$%g2243022521%_
                                              _%$%g2243122523%_
                                              _%$%g2243222524%_)
                                       (if (gx#identifier? _%$%g2243222524%_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'call-method)
                                                 (cons _%$%g2243122523%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g2243222524%_ '()))
                     (foldr (lambda (_%$%g2254522548%_ _%$%g2254622551%_)
                              (cons _%$%g2254522548%_ _%$%g2254622551%_))
                            '()
                            _%$%g2243022521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g2236922456%_
                                            _%$%g2237022460%_)))
                                     _%$%arg2245022518%_
                                     _%$%hd2244022487%_
                                     _%$%hd2243722477%_))))))
                    (_%$%loop2244522499%_ _%$%target2244222493%_ '()))
                  (_%$%g2236922456%_ _%$%g2237022460%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2236922456%_
                                                 _%$%g2237022460%_))))
                                        (_%$%g2236922456%_
                                         _%$%g2237022460%_))))
                                (_%$%g2236922456%_ _%$%g2237022460%_))))
                        (_%$%g2236922456%_ _%$%g2237022460%_))))
                 (_%$%g2236722658%_
                  (lambda (_%$%g2237022558%_)
                    (if (gx#stx-pair? _%$%g2237022558%_)
                        (let ((_%$%e2241222561%_
                               (gx#syntax-e _%$%g2237022558%_)))
                          (let ((_%$%hd2241322565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2241222561%_)))
                                (_%$%tl2241422568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2241222561%_))))
                            (if (gx#stx-pair? _%$%tl2241422568%_)
                                (let ((_%$%e2241522571%_
                                       (gx#syntax-e _%$%tl2241422568%_)))
                                  (let ((_%$%hd2241622575%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2241522571%_)))
                                        (_%$%tl2241722578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2241522571%_))))
                                    (if (gx#stx-pair? _%$%tl2241722578%_)
                                        (let ((_%$%e2241822581%_
                                               (gx#syntax-e
                                                _%$%tl2241722578%_)))
                                          (let ((_%$%hd2241922585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2241822581%_)))
                                                (_%$%tl2242022588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2241822581%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl2242022588%_)
                                                (let ((_g24205_
                                                       (gx#syntax-split-splice
                                                        _%$%tl2242022588%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24205_)
                         (##values-length _g24205_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24206_ 2)))
                  (error "Context expects 2 values" _g24206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target2242122591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g24205_
                                                              0)))
                                                          (_%$%tl2242322594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g24205_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl2242322594%_)
                                                          (letrec ((_%$%loop2242422597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd2242222601%_ _%$%arg2242822604%_)
                              (if (gx#stx-pair? _%$%hd2242222601%_)
                                  (let ((_%$%e2242522606%_
                                         (gx#syntax-e _%$%hd2242222601%_)))
                                    (let ((_%$%lp-hd2242622610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2242522606%_)))
                                          (_%$%lp-tl2242722613%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2242522606%_))))
                                      (_%$%loop2242422597%_
                                       _%$%lp-tl2242722613%_
                                       (cons _%$%lp-hd2242622610%_
                                             _%$%arg2242822604%_))))
                                  (let ((_%$%arg2242922616%_
                                         (reverse _%$%arg2242822604%_)))
                                    ((lambda (_%$%g2240922619%_
                                              _%$%g2241022621%_
                                              _%$%g2241122622%_)
                                       (if (and (gx#identifier?
                                                 _%$%g2241122622%_)
                                                (gx#stx-ormap
                                                 gx#ellipsis?
                                                 (foldr (lambda (_%$%g2264122644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2264222647%_)
                  (cons _%$%g2264122644%_ _%$%g2264222647%_))
                '()
                _%$%g2240922619%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f 'apply)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'call-method)
                                                       (cons _%$%g2241022621%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g2241122622%_ '()))
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (foldr (lambda (_%$%g2264922652%_
                                                       _%$%g2265022655%_)
                                                (cons _%$%g2264922652%_
                                                      _%$%g2265022655%_))
                                              '()
                                              _%$%g2240922619%_))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g2236822554%_
                                            _%$%g2237022558%_)))
                                     _%$%arg2242922616%_
                                     _%$%hd2241922585%_
                                     _%$%hd2241622575%_))))))
                    (_%$%loop2242422597%_ _%$%target2242122591%_ '()))
                  (_%$%g2236822554%_ _%$%g2237022558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2236822554%_
                                                 _%$%g2237022558%_))))
                                        (_%$%g2236822554%_
                                         _%$%g2237022558%_))))
                                (_%$%g2236822554%_ _%$%g2237022558%_))))
                        (_%$%g2236822554%_ _%$%g2237022558%_))))
                 (_%$%g2236622804%_
                  (lambda (_%$%g2237022662%_)
                    (if (gx#stx-pair? _%$%g2237022662%_)
                        (let ((_%$%e2239422665%_
                               (gx#syntax-e _%$%g2237022662%_)))
                          (let ((_%$%hd2239522669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2239422665%_)))
                                (_%$%tl2239622672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2239422665%_))))
                            (if (gx#stx-pair? _%$%tl2239622672%_)
                                (let ((_%$%e2239722675%_
                                       (gx#syntax-e _%$%tl2239622672%_)))
                                  (let ((_%$%hd2239822679%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2239722675%_)))
                                        (_%$%tl2239922682%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2239722675%_))))
                                    (if (gx#stx-pair/null? _%$%tl2239922682%_)
                                        (let ((_g24207_
                                               (gx#syntax-split-splice
                                                _%$%tl2239922682%_
                                                '0)))
                                          (begin
                                            (let ((_g24208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g24207_)
                                                         (##values-length
                                                          _g24207_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g24208_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g24208_)))
                                            (let ((_%$%target2240022685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g24207_
                                                      0)))
                                                  (_%$%tl2240222688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g24207_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl2240222688%_)
                                                  (letrec ((_%$%loop2240322691%_
                                                            (lambda (_%$%hd2240122695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%arg2240722698%_)
                      (if (gx#stx-pair? _%$%hd2240122695%_)
                          (let ((_%$%e2240422700%_
                                 (gx#syntax-e _%$%hd2240122695%_)))
                            (let ((_%$%lp-hd2240522704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2240422700%_)))
                                  (_%$%lp-tl2240622707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2240422700%_))))
                              (_%$%loop2240322691%_
                               _%$%lp-tl2240622707%_
                               (cons _%$%lp-hd2240522704%_
                                     _%$%arg2240722698%_))))
                          (let ((_%$%arg2240822710%_
                                 (reverse _%$%arg2240722698%_)))
                            ((lambda (_%$%g2239222713%_ _%$%g2239322715%_)
                               (if (_%dotted-identifier?22362%_
                                    _%$%g2239322715%_)
                                   (let* ((_%$%g2273222747%_
                                           (lambda (_%$%g2273322743%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g2273322743%_)))
                                          (_%$%g2273122800%_
                                           (lambda (_%$%g2273322751%_)
                                             (if (gx#stx-pair?
                                                  _%$%g2273322751%_)
                                                 (let ((_%$%e2273622754%_
                                                        (gx#syntax-e
                                                         _%$%g2273322751%_)))
                                                   (let ((_%$%hd2273722758%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e2273622754%_)))
                                                         (_%$%tl2273822761%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e2273622754%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl2273822761%_)
                                                         (let ((_%$%e2273922764%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl2273822761%_)))
                   (let ((_%$%hd2274022768%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e2273922764%_)))
                         (_%$%tl2274122771%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e2273922764%_))))
                     (if (gx#stx-null? _%$%tl2274122771%_)
                         ((lambda (_%$%g2273422774%_ _%$%g2273522776%_)
                            (cons (gx#datum->syntax '#f 'call-method)
                                  (cons _%$%g2273522776%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%g2273422774%_
                                                          '()))
                                              (foldr (lambda (_%$%g2279122794%_
                                                              _%$%g2279222797%_)
                                                       (cons _%$%g2279122794%_
                                                             _%$%g2279222797%_))
                                                     '()
                                                     _%$%g2239222713%_)))))
                          _%$%hd2274022768%_
                          _%$%hd2273722758%_)
                         (_%$%g2273222747%_ _%$%g2273322751%_))))
                 (_%$%g2273222747%_ _%$%g2273322751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2273222747%_
                                                  _%$%g2273322751%_)))))
                                     (_%$%g2273122800%_
                                      (_%split-dotted22364%_
                                       _%$%g2239322715%_)))
                                   (_%$%g2236722658%_ _%$%g2237022662%_)))
                             _%$%arg2240822710%_
                             _%$%hd2239822679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop2240322691%_
                                                     _%$%target2240022685%_
                                                     '()))
                                                  (_%$%g2236722658%_
                                                   _%$%g2237022662%_)))))
                                        (_%$%g2236722658%_
                                         _%$%g2237022662%_))))
                                (_%$%g2236722658%_ _%$%g2237022662%_))))
                        (_%$%g2236722658%_ _%$%g2237022662%_))))
                 (_%$%g2236522972%_
                  (lambda (_%$%g2237022808%_)
                    (if (gx#stx-pair? _%$%g2237022808%_)
                        (let ((_%$%e2237422811%_
                               (gx#syntax-e _%$%g2237022808%_)))
                          (let ((_%$%hd2237522815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2237422811%_)))
                                (_%$%tl2237622818%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2237422811%_))))
                            (if (gx#stx-pair? _%$%tl2237622818%_)
                                (let ((_%$%e2237722821%_
                                       (gx#syntax-e _%$%tl2237622818%_)))
                                  (let ((_%$%hd2237822825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2237722821%_)))
                                        (_%$%tl2237922828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2237722821%_))))
                                    (if (gx#stx-pair/null? _%$%tl2237922828%_)
                                        (if (fx>= (gx#stx-length
                                                   _%$%tl2237922828%_)
                                                  '1)
                                            (let ((_g24209_
                                                   (gx#syntax-split-splice
                                                    _%$%tl2237922828%_
                                                    '1)))
                                              (begin
                                                (let ((_g24210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g24209_)
                                                             (##values-length
                                                              _g24209_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g24210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g24210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2238022831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24209_
                                                          0)))
                                                      (_%$%tl2238222834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24209_
                                                          1))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl2238222834%_)
                                                      (let ((_%$%e2238922837%_
                                                             (gx#syntax-e
                                                              _%$%tl2238222834%_)))
                                                        (let ((_%$%hd2239022841%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e2238922837%_)))
                      (_%$%tl2239122844%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e2238922837%_))))
                  (if (gx#stx-null? _%$%tl2239122844%_)
                      (letrec ((_%$%loop2238322847%_
                                (lambda (_%$%hd2238122851%_
                                         _%$%arg2238722854%_)
                                  (if (gx#stx-pair? _%$%hd2238122851%_)
                                      (let ((_%$%e2238422856%_
                                             (gx#syntax-e _%$%hd2238122851%_)))
                                        (let ((_%$%lp-hd2238522860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2238422856%_)))
                                              (_%$%lp-tl2238622863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2238422856%_))))
                                          (_%$%loop2238322847%_
                                           _%$%lp-tl2238622863%_
                                           (cons _%$%lp-hd2238522860%_
                                                 _%$%arg2238722854%_))))
                                      (let ((_%$%arg2238822866%_
                                             (reverse _%$%arg2238722854%_)))
                                        ((lambda (_%$%g2237122869%_
                                                  _%$%g2237222871%_
                                                  _%$%g2237322872%_)
                                           (if (and (_%dotted-identifier?22362%_
                                                     _%$%g2237322872%_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (foldr (lambda (_%$%g2289122894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g2289222897%_)
                      (cons _%$%g2289122894%_ _%$%g2289222897%_))
                    '()
                    _%$%g2237222871%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%$%g2290022915%_
                                                       (lambda (_%$%g2290122911%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g2290122911%_)))
                                                      (_%$%g2289922968%_
                                                       (lambda (_%$%g2290122919%_)
                                                         (if (gx#stx-pair?
                                                              _%$%g2290122919%_)
                                                             (let ((_%$%e2290422922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%g2290122919%_)))
                       (let ((_%$%hd2290522926%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e2290422922%_)))
                             (_%$%tl2290622929%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e2290422922%_))))
                         (if (gx#stx-pair? _%$%tl2290622929%_)
                             (let ((_%$%e2290722932%_
                                    (gx#syntax-e _%$%tl2290622929%_)))
                               (let ((_%$%hd2290822936%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e2290722932%_)))
                                     (_%$%tl2290922939%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e2290722932%_))))
                                 (if (gx#stx-null? _%$%tl2290922939%_)
                                     ((lambda (_%$%g2290222942%_
                                               _%$%g2290322944%_)
                                        (cons (gx#datum->syntax '#f 'apply)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _%$%g2290322944%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%$%g2290222942%_ '()))
                        (cons (cons (gx#datum->syntax '#f '@list)
                                    (foldr (lambda (_%$%g2295922962%_
                                                    _%$%g2296022965%_)
                                             (cons _%$%g2295922962%_
                                                   _%$%g2296022965%_))
                                           '()
                                           _%$%g2237222871%_))
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%$%hd2290822936%_
                                      _%$%hd2290522926%_)
                                     (_%$%g2290022915%_ _%$%g2290122919%_))))
                             (_%$%g2290022915%_ _%$%g2290122919%_))))
                     (_%$%g2290022915%_ _%$%g2290122919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2289922968%_
                                                  (_%split-dotted22364%_
                                                   _%$%g2237322872%_)))
                                               (_%$%g2236622804%_
                                                _%$%g2237022808%_)))
                                         _%$%hd2239022841%_
                                         _%$%arg2238822866%_
                                         _%$%hd2237822825%_))))))
                        (_%$%loop2238322847%_ _%$%target2238022831%_ '()))
                      (_%$%g2236622804%_ _%$%g2237022808%_))))
              (_%$%g2236622804%_ _%$%g2237022808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2236622804%_
                                             _%$%g2237022808%_))
                                        (_%$%g2236622804%_
                                         _%$%g2237022808%_))))
                                (_%$%g2236622804%_ _%$%g2237022808%_))))
                        (_%$%g2236622804%_ _%$%g2237022808%_)))))
            (_%$%g2236522972%_ _%stx22359%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx23000%_)
        (let* ((_%$%g2300523045%_
                (lambda (_%$%g2300623041%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2300623041%_)))
               (_%$%g2300423144%_
                (lambda (_%$%g2300623049%_)
                  (if (gx#stx-pair? _%$%g2300623049%_)
                      (let ((_%$%e2302223052%_
                             (gx#syntax-e _%$%g2300623049%_)))
                        (let ((_%$%hd2302323056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2302223052%_)))
                              (_%$%tl2302423059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2302223052%_))))
                          (if (gx#stx-pair? _%$%tl2302423059%_)
                              (let ((_%$%e2302523062%_
                                     (gx#syntax-e _%$%tl2302423059%_)))
                                (let ((_%$%hd2302623066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2302523062%_)))
                                      (_%$%tl2302723069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2302523062%_))))
                                  (if (gx#stx-pair? _%$%tl2302723069%_)
                                      (let ((_%$%e2302823072%_
                                             (gx#syntax-e _%$%tl2302723069%_)))
                                        (let ((_%$%hd2302923076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2302823072%_)))
                                              (_%$%tl2303023079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2302823072%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl2303023079%_)
                                              (let ((_g24211_
                                                     (gx#syntax-split-splice
                                                      _%$%tl2303023079%_
                                                      '0)))
                                                (begin
                                                  (let ((_g24212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g24211_)
                                                               (##values-length
                                                                _g24211_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g24212_ 2)))
                (error "Context expects 2 values" _g24212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target2303123082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g24211_
                                                            0)))
                                                        (_%$%tl2303323085%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g24211_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2303323085%_)
                                                        (letrec ((_%$%loop2303423088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd2303223092%_ _%$%rest2303823095%_)
                            (if (gx#stx-pair? _%$%hd2303223092%_)
                                (let ((_%$%e2303523097%_
                                       (gx#syntax-e _%$%hd2303223092%_)))
                                  (let ((_%$%lp-hd2303623101%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2303523097%_)))
                                        (_%$%lp-tl2303723104%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2303523097%_))))
                                    (_%$%loop2303423088%_
                                     _%$%lp-tl2303723104%_
                                     (cons _%$%lp-hd2303623101%_
                                           _%$%rest2303823095%_))))
                                (let ((_%$%rest2303923107%_
                                       (reverse _%$%rest2303823095%_)))
                                  ((lambda (_%$%g2301823110%_
                                            _%$%g2301923112%_
                                            _%$%g2302023113%_
                                            _%$%g2302123114%_)
                                     (cons _%$%g2302123114%_
                                           (cons (cons _%$%g2302123114%_
                                                       (cons _%$%g2302023113%_
                                                             (cons _%$%g2301923112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g2313523138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2313623141%_)
                  (cons _%$%g2313523138%_ _%$%g2313623141%_))
                '()
                _%$%g2301823110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%rest2303923107%_
                                   _%$%hd2302923076%_
                                   _%$%hd2302623066%_
                                   _%$%hd2302323056%_))))))
                  (_%$%loop2303423088%_ _%$%target2303123082%_ '()))
                (_%$%g2300523045%_ _%$%g2300623049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2300523045%_
                                               _%$%g2300623049%_))))
                                      (_%$%g2300523045%_ _%$%g2300623049%_))))
                              (_%$%g2300523045%_ _%$%g2300623049%_))))
                      (_%$%g2300523045%_ _%$%g2300623049%_))))
               (_%$%g2300323198%_
                (lambda (_%$%g2300623148%_)
                  (if (gx#stx-pair? _%$%g2300623148%_)
                      (let ((_%$%e2300923151%_
                             (gx#syntax-e _%$%g2300623148%_)))
                        (let ((_%$%hd2301023155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2300923151%_)))
                              (_%$%tl2301123158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2300923151%_))))
                          (if (gx#stx-pair? _%$%tl2301123158%_)
                              (let ((_%$%e2301223161%_
                                     (gx#syntax-e _%$%tl2301123158%_)))
                                (let ((_%$%hd2301323165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2301223161%_)))
                                      (_%$%tl2301423168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2301223161%_))))
                                  (if (gx#stx-pair? _%$%tl2301423168%_)
                                      (let ((_%$%e2301523171%_
                                             (gx#syntax-e _%$%tl2301423168%_)))
                                        (let ((_%$%hd2301623175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2301523171%_)))
                                              (_%$%tl2301723178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2301523171%_))))
                                          (if (gx#stx-null? _%$%tl2301723178%_)
                                              ((lambda (_%$%g2300723181%_
                                                        _%$%g2300823183%_)
                                                 (if (gx#identifier?
                                                      _%$%g2300723181%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _%$%g2300823183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g2300723181%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g2300423144%_
                                                      _%$%g2300623148%_)))
                                               _%$%hd2301623175%_
                                               _%$%hd2301323165%_)
                                              (_%$%g2300423144%_
                                               _%$%g2300623148%_))))
                                      (_%$%g2300423144%_ _%$%g2300623148%_))))
                              (_%$%g2300423144%_ _%$%g2300623148%_))))
                      (_%$%g2300423144%_ _%$%g2300623148%_)))))
          (_%$%g2300323198%_ _%$stx23000%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx23203%_)
        (let* ((_%$%g2320823260%_
                (lambda (_%$%g2320923256%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2320923256%_)))
               (_%$%g2320723387%_
                (lambda (_%$%g2320923264%_)
                  (if (gx#stx-pair? _%$%g2320923264%_)
                      (let ((_%$%e2323123267%_
                             (gx#syntax-e _%$%g2320923264%_)))
                        (let ((_%$%hd2323223271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2323123267%_)))
                              (_%$%tl2323323274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2323123267%_))))
                          (if (gx#stx-pair? _%$%tl2323323274%_)
                              (let ((_%$%e2323423277%_
                                     (gx#syntax-e _%$%tl2323323274%_)))
                                (let ((_%$%hd2323523281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2323423277%_)))
                                      (_%$%tl2323623284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2323423277%_))))
                                  (if (gx#stx-pair? _%$%tl2323623284%_)
                                      (let ((_%$%e2323723287%_
                                             (gx#syntax-e _%$%tl2323623284%_)))
                                        (let ((_%$%hd2323823291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2323723287%_)))
                                              (_%$%tl2323923294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2323723287%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl2323923294%_)
                                              (if (fx>= (gx#stx-length
                                                         _%$%tl2323923294%_)
                                                        '2)
                                                  (let ((_g24213_
                                                         (gx#syntax-split-splice
                                                          _%$%tl2323923294%_
                                                          '2)))
                                                    (begin
                                                      (let ((_g24214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g24213_)
                           (##values-length _g24213_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g24214_ 2)))
                    (error "Context expects 2 values" _g24214_)))
              (let ((_%$%target2324023297%_
                     (let () (declare (not safe)) (##values-ref _g24213_ 0)))
                    (_%$%tl2324223300%_
                     (let () (declare (not safe)) (##values-ref _g24213_ 1))))
                (if (gx#stx-pair? _%$%tl2324223300%_)
                    (let ((_%$%e2324923303%_ (gx#syntax-e _%$%tl2324223300%_)))
                      (let ((_%$%hd2325023307%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2324923303%_)))
                            (_%$%tl2325123310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2324923303%_))))
                        (if (gx#stx-pair? _%$%tl2325123310%_)
                            (let ((_%$%e2325223313%_
                                   (gx#syntax-e _%$%tl2325123310%_)))
                              (let ((_%$%hd2325323317%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2325223313%_)))
                                    (_%$%tl2325423320%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2325223313%_))))
                                (if (gx#stx-null? _%$%tl2325423320%_)
                                    (letrec ((_%$%loop2324323323%_
                                              (lambda (_%$%hd2324123327%_
                                                       _%$%path2324723330%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd2324123327%_)
                                                    (let ((_%$%e2324423332%_
                                                           (gx#syntax-e
                                                            _%$%hd2324123327%_)))
                                                      (let ((_%$%lp-hd2324523336%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2324423332%_)))
                    (_%$%lp-tl2324623339%_
                     (let () (declare (not safe)) (##cdr _%$%e2324423332%_))))
                (_%$%loop2324323323%_
                 _%$%lp-tl2324623339%_
                 (cons _%$%lp-hd2324523336%_ _%$%path2324723330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%path2324823342%_
                                                           (reverse _%$%path2324723330%_)))
                                                      ((lambda (_%$%g2322523345%_
                                                                _%$%g2322623347%_
                                                                _%$%g2322723348%_
                                                                _%$%g2322823349%_
                                                                _%$%g2322923350%_
                                                                _%$%g2323023351%_)
                                                         (cons _%$%g2323023351%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _%$%g2322923350%_
                                         (cons _%$%g2322823349%_
                                               (foldr (lambda (_%$%g2337823381%_
                                                               _%$%g2337923384%_)
                                                        (cons _%$%g2337823381%_
                                                              _%$%g2337923384%_))
                                                      '()
                                                      _%$%g2322723348%_))))
                             (cons _%$%g2322623347%_
                                   (cons _%$%g2322523345%_ '())))))
               _%$%hd2325323317%_
               _%$%hd2325023307%_
               _%$%path2324823342%_
               _%$%hd2323823291%_
               _%$%hd2323523281%_
               _%$%hd2323223271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop2324323323%_
                                       _%$%target2324023297%_
                                       '()))
                                    (_%$%g2320823260%_ _%$%g2320923264%_))))
                            (_%$%g2320823260%_ _%$%g2320923264%_))))
                    (_%$%g2320823260%_ _%$%g2320923264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2320823260%_
                                                   _%$%g2320923264%_))
                                              (_%$%g2320823260%_
                                               _%$%g2320923264%_))))
                                      (_%$%g2320823260%_ _%$%g2320923264%_))))
                              (_%$%g2320823260%_ _%$%g2320923264%_))))
                      (_%$%g2320823260%_ _%$%g2320923264%_))))
               (_%$%g2320623455%_
                (lambda (_%$%g2320923391%_)
                  (if (gx#stx-pair? _%$%g2320923391%_)
                      (let ((_%$%e2321323394%_
                             (gx#syntax-e _%$%g2320923391%_)))
                        (let ((_%$%hd2321423398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2321323394%_)))
                              (_%$%tl2321523401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2321323394%_))))
                          (if (gx#stx-pair? _%$%tl2321523401%_)
                              (let ((_%$%e2321623404%_
                                     (gx#syntax-e _%$%tl2321523401%_)))
                                (let ((_%$%hd2321723408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2321623404%_)))
                                      (_%$%tl2321823411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2321623404%_))))
                                  (if (gx#stx-pair? _%$%tl2321823411%_)
                                      (let ((_%$%e2321923414%_
                                             (gx#syntax-e _%$%tl2321823411%_)))
                                        (let ((_%$%hd2322023418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2321923414%_)))
                                              (_%$%tl2322123421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2321923414%_))))
                                          (if (gx#stx-pair? _%$%tl2322123421%_)
                                              (let ((_%$%e2322223424%_
                                                     (gx#syntax-e
                                                      _%$%tl2322123421%_)))
                                                (let ((_%$%hd2322323428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e2322223424%_)))
                                                      (_%$%tl2322423431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e2322223424%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2322423431%_)
                                                      ((lambda (_%$%g2321023434%_
                                                                _%$%g2321123436%_
                                                                _%$%g2321223437%_)
                                                         (if (gx#identifier?
                                                              _%$%g2321123436%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _%$%g2321223437%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g2321123436%_ '()))
                                       (cons _%$%g2321023434%_ '()))))
                     (_%$%g2320723387%_ _%$%g2320923391%_)))
               _%$%hd2322323428%_
               _%$%hd2322023418%_
               _%$%hd2321723408%_)
              (_%$%g2320723387%_ _%$%g2320923391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2320723387%_
                                               _%$%g2320923391%_))))
                                      (_%$%g2320723387%_ _%$%g2320923391%_))))
                              (_%$%g2320723387%_ _%$%g2320923391%_))))
                      (_%$%g2320723387%_ _%$%g2320923391%_)))))
          (_%$%g2320623455%_ _%$stx23203%_))))))
