(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1755903071)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g88309_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g88310_
      (##structure
       gx#syntax-quote::t
       'immediate-instance-of?
       #f
       (gx#current-expander-context)
       '()))
    (begin
      (define gerbil/core/contract~InterfaceInfo#interface-info::t
        (make-class-type
         'gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-info
         (list)
         '(name namespace
                interface-mixin
                interface-methods
                interface-precedence-list
                interface-descriptor
                instance-type
                instance-constructor
                instance-try-constructor
                instance-predicate
                instance-satisfies-predicate
                implementation-methods
                unchecked-implementation-methods)
         '()
         '#f))
      (define gerbil/core/contract~InterfaceInfo#interface-info?
        (make-class-predicate
         gerbil/core/contract~InterfaceInfo#interface-info::t))
      (define gerbil/core/contract~InterfaceInfo#make-interface-info
        (lambda _%$args48125%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args48125%_)))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-namespace
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-type
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-namespace-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-type-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-namespace
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-precedence-list
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-type
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-namespace-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-precedence-list-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-type-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
        (let* ((_%g4791447928%_
                (lambda (_%g4791547925%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4791547925%_)))
               (_%g4791348122%_
                (lambda (_%g4791547931%_)
                  (if (gx#stx-pair? _%g4791547931%_)
                      (let ((_%e4791847933%_ (gx#syntax-e _%g4791547931%_)))
                        (let ((_%hd4791947936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4791847933%_)))
                              (_%tl4792047938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4791847933%_))))
                          (if (gx#stx-pair? _%tl4792047938%_)
                              (let ((_%e4792147941%_
                                     (gx#syntax-e _%tl4792047938%_)))
                                (let ((_%hd4792247944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4792147941%_)))
                                      (_%tl4792347946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4792147941%_))))
                                  (if (gx#stx-null? _%tl4792347946%_)
                                      ((lambda (_%L47949%_ _%L47950%_)
                                         (lambda (_%self47964%_ _%stx47965%_)
                                           (let* ((_%__stx8265082651%_
                                                   _%stx47965%_)
                                                  (_%g4796847981%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx8265082651%_))))
                                             (let ((_%__kont8265282653%_
                                                    (lambda (_%L48039%_)
                                                      (let* ((_%g4805048068%_
                                                              (lambda (_%g4805148065%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4805148065%_)))
                     (_%g4804948116%_
                      (lambda (_%g4805148071%_)
                        (if (gx#stx-pair? _%g4805148071%_)
                            (let ((_%e4805548073%_
                                   (gx#syntax-e _%g4805148071%_)))
                              (let ((_%hd4805648076%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4805548073%_)))
                                    (_%tl4805748078%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4805548073%_))))
                                (if (gx#stx-pair? _%tl4805748078%_)
                                    (let ((_%e4805848081%_
                                           (gx#syntax-e _%tl4805748078%_)))
                                      (let ((_%hd4805948084%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4805848081%_)))
                                            (_%tl4806048086%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4805848081%_))))
                                        (if (gx#stx-pair? _%tl4806048086%_)
                                            (let ((_%e4806148089%_
                                                   (gx#syntax-e
                                                    _%tl4806048086%_)))
                                              (let ((_%hd4806248092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4806148089%_)))
                                                    (_%tl4806348094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4806148089%_))))
                                                (if (gx#stx-null?
                                                     _%tl4806348094%_)
                                                    ((lambda (_%L48097%_
                                                              _%L48098%_
                                                              _%L48099%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L48039%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L48097%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L47949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L48099%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L47950%_
                                         (cons _%L48098%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4806248092%_
                                                     _%hd4805948084%_
                                                     _%hd4805648076%_)
                                                    (_%g4805048068%_
                                                     _%g4805148071%_))))
                                            (_%g4805048068%_
                                             _%g4805148071%_))))
                                    (_%g4805048068%_ _%g4805148071%_))))
                            (_%g4805048068%_ _%g4805148071%_)))))
                (_%g4804948116%_
                 (list (let ((__obj88228 _%self47964%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj88228
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj88228
                                '7
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj88228
                              'instance-type)))
                       (let ((__obj88229 _%self47964%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj88229
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj88229
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj88229
                              'interface-descriptor)))
                       (let ((__obj88230 _%self47964%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj88230
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj88230
                                '7
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj88230
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont8265482655%_
                                                    (lambda ()
                                                      (let* ((_%g4798847995%_
                                                              (lambda (_%g4798947992%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4798947992%_)))
                     (_%g4798748015%_
                      (lambda (_%g4798947998%_)
                        ((lambda (_%L48000%_) _%L48000%_) _%g4798947998%_))))
                (_%g4798748015%_
                 (let ((__obj88231 _%self47964%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj88231
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj88231 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj88231
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4796748018%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx47965%_)
                                                            (_%__kont8265482655%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4796847981%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx8265082651%_)
                                                     (let ((_%e4797148023%_
                                                            (gx#syntax-e
                                                             _%__stx8265082651%_)))
                                                       (let ((_%tl4797348028%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4797148023%_)))
                     (_%hd4797248026%_
                      (let () (declare (not safe)) (##car _%e4797148023%_))))
                 (if (gx#stx-pair? _%tl4797348028%_)
                     (let ((_%e4797448031%_ (gx#syntax-e _%tl4797348028%_)))
                       (let ((_%tl4797648036%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4797448031%_)))
                             (_%hd4797548034%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4797448031%_))))
                         (if (gx#stx-null? _%tl4797648036%_)
                             (_%__kont8265282653%_ _%hd4797548034%_)
                             (let () (declare (not safe)) (_%g4796748018%_)))))
                     (let () (declare (not safe)) (_%g4796748018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4796748018%_))))))))
                                       _%hd4792247944%_
                                       _%hd4791947936%_)
                                      (_%g4791447928%_ _%g4791547931%_))))
                              (_%g4791447928%_ _%g4791547931%_))))
                      (_%g4791447928%_ _%g4791547931%_)))))
          (_%g4791348122%_
           (list gerbil/core/contract~InterfaceInfo#_g88309_
                 gerbil/core/contract~InterfaceInfo#_g88310_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id47789%_)
          (cons _%id47789%_
                (let ((__obj88232 (gx#syntax-local-value _%id47789%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj88232
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj88232 '5 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj88232
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst47784%_)
          (let ((_g88311_
                 (c4-linearize
                  '()
                  _%lst47784%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g88312_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g88311_)
                           (##values-length _g88311_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g88312_ 2)))
                    (error "Context expects 2 values" _g88312_)))
              (let ((_%linearized47786%_
                     (let () (declare (not safe)) (##values-ref _g88311_ 0)))
                    (_%_47787%_
                     (let () (declare (not safe)) (##values-ref _g88311_ 1))))
                _%linearized47786%_)))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx47765%_ _%is?47766%_)
          (if (gx#identifier? _%stx47765%_)
              (let ((_%e4776747769%_
                     (gx#syntax-local-value _%stx47765%_ false)))
                (if _%e4776747769%_
                    (let ((_%e47772%_ _%e4776747769%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e47772%_))
                          (_%is?47766%_ _%e47772%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx47777%_)
          (let ((_%is?47779%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx47777%_
             _%is?47779%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g88313_
          (let ((_g88314_ (let () (declare (not safe)) (##length _g88313_))))
            (cond ((let () (declare (not safe)) (##fx= _g88314_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g88313_))
                  ((let () (declare (not safe)) (##fx= _g88314_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g88313_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g88313_)))))))))
