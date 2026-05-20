(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1779274768)
  (begin
    (define CastError::t
      (let ((__tmp145904 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp145904
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args145818%_
        (apply make-instance CastError::t _%$args145818%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where145692%_ _%message145693%_ . _%irritants145694%_)
        (let ((__tmp145905
               (let ((__obj145899
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj145899
                    _%message145693%_
                    'where:
                    _%where145692%_
                    'irritants:
                    _%irritants145694%_))
                 __obj145899)))
          (declare (not safe))
          (raise __tmp145905))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp145907 (list))
            (__tmp145906 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-instance::t
         'interface-instance
         __tmp145907
         '(object)
         __tmp145906
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args145689%_
        (apply make-instance interface-instance::t _%$args145689%_)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t 'object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t 'object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-instance::t 'object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t 'object)))
    (define interface-descriptor::t
      (let ((__tmp145909 (list))
            (__tmp145908
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp145909
         '(type methods index)
         __tmp145908
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args145686%_
        (apply make-instance interface-descriptor::t _%$args145686%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'index)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'index)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'index)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'index)))
    (define __next-interface-index '0)
    (define __next-interface-index-lock (vector '0 '#f))
    (define __get-next-interface-index
      (lambda ()
        (let ()
          (declare (not interrupts-enabled))
          (let _%again145664%_ ((_%spin145667%_ '0))
            (if (let ((__tmp145910
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp145910 '0))
                (let ((__tmp145911 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp145911))
                (if (let () (declare (not safe)) (##fx< _%spin145667%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again145664%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin145667%_ '1))))
                    (let ((_%owner145673%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner145673%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner145673%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again145664%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r145681%_
               (let ((_%index145679%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index145679%_ '1)))
                 _%index145679%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r145681%_)))
    (define interface-descriptor:::init!
      (lambda (_%self145645%_ _%type145646%_ _%methods145647%_)
        (let ((_%self145650%_ _%self145645%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145650%_
             _%type145646%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145650%_
             _%methods145647%_
             '2
             '#f
             '#f))
          (let ((__tmp145912 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145650%_
             __tmp145912
             '3
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       interface-descriptor::t
       ':init!
       interface-descriptor:::init!
       '#f))
    (define prototype-table::t
      (let ((__tmp145914 (list))
            (__tmp145913
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#prototype-table::t
         'prototype-table
         __tmp145914
         '(lock table)
         __tmp145913
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args145520%_
        (apply make-instance prototype-table::t _%$args145520%_)))
    (define prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'lock)))
    (define prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'table)))
    (define prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'lock)))
    (define prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'table)))
    (define &prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'lock)))
    (define &prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'table)))
    (define &prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'lock)))
    (define &prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'table)))
    (define prototype-table:::init!
      (lambda (_%self145506%_)
        (let ((_%self145509%_ _%self145506%_))
          (let ((__tmp145915 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self145509%_ __tmp145915 '1 '#f '#f))
          (let ((__tmp145916
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145509%_
             __tmp145916
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       prototype-table::t
       ':init!
       prototype-table:::init!
       '#f))
    (define ____prototype-table-get
      (lambda (_%prototable145359%_ _%descriptor145360%_)
        (let* ((_%prototable145363%_ _%prototable145359%_)
               (_%descriptor145371%_ _%descriptor145360%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab145381%_
                 (##unchecked-structure-ref _%prototable145363%_ '2 '#f '#f))
                (_%index145382%_
                 (##unchecked-structure-ref _%descriptor145371%_ '3 '#f '#f)))
            (if (##fx< _%index145382%_ (vector-length _%tab145381%_))
                (vector-ref _%tab145381%_ _%index145382%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable143307%_ _%descriptor143308%_)
        (let* ((_%prototable143311%_ _%prototable143307%_)
               (_%descriptor143319%_ _%descriptor143308%_))
          (____prototype-table-get
           _%prototable143311%_
           _%descriptor143319%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable145305%_ _%descriptor145306%_ _%prototype145307%_)
        (let* ((_%prototable145310%_ _%prototable145305%_)
               (_%descriptor145318%_ _%descriptor145306%_))
          (declare (not safe))
          (let ((_%lock145328%_
                 (##unchecked-structure-ref _%prototable145310%_ '1 '#f '#f))
                (_%index145329%_
                 (##unchecked-structure-ref _%descriptor145318%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again145333%_ ((_%spin145336%_ '0))
                (if (##fx= (##vector-cas! _%lock145328%_ '0 '1 '0) '0)
                    (##vector-set! _%lock145328%_ '1 (current-thread))
                    (if (##fx< _%spin145336%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again145333%_ (##fx+ _%spin145336%_ '1)))
                        (let ((_%owner145342%_
                               (##vector-ref _%lock145328%_ '1)))
                          (if (eq? _%owner145342%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner145342%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again145333%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r145354%_
                   (let ((_%tab145348%_
                          (##unchecked-structure-ref
                           _%prototable145310%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index145329%_ (vector-length _%tab145348%_))
                         (vector-set!
                          _%tab145348%_
                          _%index145329%_
                          _%prototype145307%_)
                         (let ((_%new-size145350%_ __next-interface-index))
                           (if (##fx< _%index145329%_ _%new-size145350%_)
                               (let ((_%new-tab145352%_
                                      (##make-vector _%new-size145350%_ '#f)))
                                 (subvector-move!
                                  _%tab145348%_
                                  '0
                                  (vector-length _%tab145348%_)
                                  _%new-tab145352%_
                                  '0)
                                 (vector-set!
                                  _%new-tab145352%_
                                  _%index145329%_
                                  _%prototype145307%_)
                                 (##unchecked-structure-set!
                                  _%prototable145310%_
                                  _%new-tab145352%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor145318%_
                                      'index:
                                      _%index145329%_
                                      'max-index:
                                      _%new-size145350%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock145328%_ '1 '#f)
                  (##vector-cas! _%lock145328%_ '0 '0 '1)))
              _%$r145354%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable143448%_ _%descriptor143449%_ _%prototype143450%_)
        (let* ((_%prototable143453%_ _%prototable143448%_)
               (_%descriptor143461%_ _%descriptor143449%_))
          (____prototype-table-set!
           _%prototable143453%_
           _%descriptor143461%_
           _%prototype143450%_))))
    (define interface-subclass?
      (lambda (_%klass145298%_)
        (let ((_%super145299145301%_
               (let () (declare (not safe)) (##type-super _%klass145298%_))))
          (if _%super145299145301%_
              (let ((_%super145303%_ _%super145299145301%_))
                (eq? (let () (declare (not safe)) (##type-id _%super145303%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass145290%_)
        (let ((_%$e145292%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass145290%_ '13 '#f '#f))))
          (if _%$e145292%_
              _%$e145292%_
              (let ((_%tab145296%_
                     (let ((__obj145903
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj145903)
                       __obj145903)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass145290%_
                   _%tab145296%_
                   '13
                   '#f
                   '#f))
                _%tab145296%_)))))
    (define create-prototype
      (lambda (_%descriptor144973%_ _%klass144974%_ _%obj-klass144975%_)
        (let ((_%method-table144993%_
               (let ((_%klass144977%_ _%obj-klass144975%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144977%_ 'class))
                     (let ((_%klass144982%_ _%klass144977%_))
                       (declare (not safe))
                       (__specialize-class _%klass144982%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144977%_)
                       '#!void)))))
          (let _%loop144996%_ ((_%rest144999%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144973%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145001%_ '0)
                               (_%methods145003%_ '()))
            (let* ((_%rest145005145013%_ _%rest144999%_)
                   (_%else145007145140%_
                    (lambda ()
                      (let ((_%prototype145056%_
                             (let* ((_%klass145021%_ _%klass144974%_)
                                    (_%k145024%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145001%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145021%_
                                      'class))
                                   (let* ((_%klass145029%_ _%klass145021%_)
                                          (_%k145046%_ _%k145024%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145029%_
                                      _%k145046%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145021%_)
                                     '#!void)))))
                        (let _%loop145059%_ ((_%rest145061%_ _%methods145003%_)
                                             (_%off145062%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145001%_ '1))))
                          (let* ((_%rest145064145072%_ _%rest145061%_)
                                 (_%else145066145121%_
                                  (lambda ()
                                    (let ((_%tab145080%_
                                           (class-type-interface-table
                                            _%obj-klass144975%_)))
                                      (let* ((_%prototable145083%_
                                              _%tab145080%_)
                                             (_%descriptor145086%_
                                              _%descriptor144973%_)
                                             (_%prototype145089%_
                                              _%prototype145056%_)
                                             (_%prototable145093%_
                                              _%prototable145083%_)
                                             (_%descriptor145110%_
                                              _%descriptor145086%_))
                                        (____prototype-table-set!
                                         _%prototable145093%_
                                         _%descriptor145110%_
                                         _%prototype145089%_))
                                      ((lambda (_%prototype145119%_)
                                         _%prototype145119%_)
                                       _%prototype145056%_))))
                                 (_%K145068145128%_
                                  (lambda (_%rest145124%_ _%method145125%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145056%_
                                       _%method145125%_
                                       _%off145062%_
                                       _%klass144974%_
                                       '#f))
                                    (_%loop145059%_
                                     _%rest145124%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145062%_ '1))))))
                            (if (pair? _%rest145064145072%_)
                                (let ((_%hd145069145131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest145064145072%_)))
                                      (_%tl145070145133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest145064145072%_))))
                                  (let* ((_%method145136%_ _%hd145069145131%_)
                                         (_%rest145138%_ _%tl145070145133%_))
                                    (_%K145068145128%_
                                     _%rest145138%_
                                     _%method145136%_)))
                                (_%else145066145121%_)))))))
                   (_%K145009145278%_
                    (lambda (_%rest145143%_ _%method-spec145144%_)
                      (if (pair? _%method-spec145144%_)
                          (let _%loop-inner145148%_ ((_%methods-rest145151%_
                                                      _%method-spec145144%_))
                            (let* ((_%methods-rest145153145161%_
                                    _%methods-rest145151%_)
                                   (_%else145155145211%_
                                    (lambda ()
                                      (let ((_%tab145169%_
                                             (class-type-interface-table
                                              _%obj-klass144975%_)))
                                        (let* ((_%prototable145171%_
                                                _%tab145169%_)
                                               (_%descriptor145174%_
                                                _%descriptor144973%_)
                                               (_%prototype145177%_ '#!void)
                                               (_%prototable145181%_
                                                _%prototable145171%_)
                                               (_%descriptor145200%_
                                                _%descriptor145174%_))
                                          (____prototype-table-set!
                                           _%prototable145181%_
                                           _%descriptor145200%_
                                           _%prototype145177%_))
                                        ((lambda (_%method145209%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor144973%_
                                            'class:
                                            _%obj-klass144975%_
                                            'method:
                                            _%method145209%_)
                                           '#!void)
                                         _%method-spec145144%_))))
                                   (_%K145157145224%_
                                    (lambda (_%methods-rest145214%_
                                             _%method-name145215%_)
                                      (let ((_%$e145218%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144993%_
                                                _%method-name145215%_
                                                '#f))))
                                        (if _%$e145218%_
                                            ((lambda (_%method145221%_)
                                               (_%loop144996%_
                                                _%rest145143%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count145001%_ '1))
                                                (cons _%method145221%_
                                                      _%methods145003%_)))
                                             _%$e145218%_)
                                            (_%loop-inner145148%_
                                             _%methods-rest145214%_))))))
                              (if (pair? _%methods-rest145153145161%_)
                                  (let ((_%hd145158145227%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest145153145161%_)))
                                        (_%tl145159145229%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest145153145161%_))))
                                    (let* ((_%method-name145232%_
                                            _%hd145158145227%_)
                                           (_%methods-rest145234%_
                                            _%tl145159145229%_))
                                      (_%K145157145224%_
                                       _%methods-rest145234%_
                                       _%method-name145232%_)))
                                  (_%else145155145211%_))))
                          (let ((_%$e145236%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144993%_
                                    _%method-spec145144%_
                                    '#f))))
                            (if _%$e145236%_
                                ((lambda (_%method145239%_)
                                   (_%loop144996%_
                                    _%rest145143%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count145001%_ '1))
                                    (cons _%method145239%_ _%methods145003%_)))
                                 _%$e145236%_)
                                (let ((_%tab145242%_
                                       (class-type-interface-table
                                        _%obj-klass144975%_)))
                                  (let* ((_%prototable145244%_ _%tab145242%_)
                                         (_%descriptor145247%_
                                          _%descriptor144973%_)
                                         (_%prototype145250%_ '#!void)
                                         (_%prototable145254%_
                                          _%prototable145244%_)
                                         (_%descriptor145267%_
                                          _%descriptor145247%_))
                                    (____prototype-table-set!
                                     _%prototable145254%_
                                     _%descriptor145267%_
                                     _%prototype145250%_))
                                  ((lambda (_%method145276%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor144973%_
                                      'class:
                                      _%obj-klass144975%_
                                      'method:
                                      _%method145276%_)
                                     '#!void)
                                   _%method-spec145144%_))))))))
              (if (pair? _%rest145005145013%_)
                  (let ((_%hd145010145281%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest145005145013%_)))
                        (_%tl145011145283%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest145005145013%_))))
                    (let* ((_%method-spec145286%_ _%hd145010145281%_)
                           (_%rest145288%_ _%tl145011145283%_))
                      (_%K145009145278%_
                       _%rest145288%_
                       _%method-spec145286%_)))
                  (_%else145007145140%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor144656%_ _%klass144657%_ _%obj-klass144658%_)
        (let ((_%method-table144676%_
               (let ((_%klass144660%_ _%obj-klass144658%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144660%_ 'class))
                     (let ((_%klass144665%_ _%klass144660%_))
                       (declare (not safe))
                       (__specialize-class _%klass144665%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144660%_)
                       '#!void)))))
          (let _%loop144679%_ ((_%rest144682%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144656%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144684%_ '0)
                               (_%methods144686%_ '()))
            (let* ((_%rest144688144696%_ _%rest144682%_)
                   (_%else144690144823%_
                    (lambda ()
                      (let ((_%prototype144739%_
                             (let* ((_%klass144704%_ _%klass144657%_)
                                    (_%k144707%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144684%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144704%_
                                      'class))
                                   (let* ((_%klass144712%_ _%klass144704%_)
                                          (_%k144729%_ _%k144707%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144712%_
                                      _%k144729%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144704%_)
                                     '#!void)))))
                        (let _%loop144742%_ ((_%rest144744%_ _%methods144686%_)
                                             (_%off144745%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144684%_ '1))))
                          (let* ((_%rest144747144755%_ _%rest144744%_)
                                 (_%else144749144804%_
                                  (lambda ()
                                    (let ((_%tab144763%_
                                           (class-type-interface-table
                                            _%obj-klass144658%_)))
                                      (let* ((_%prototable144766%_
                                              _%tab144763%_)
                                             (_%descriptor144769%_
                                              _%descriptor144656%_)
                                             (_%prototype144772%_
                                              _%prototype144739%_)
                                             (_%prototable144776%_
                                              _%prototable144766%_)
                                             (_%descriptor144793%_
                                              _%descriptor144769%_))
                                        (____prototype-table-set!
                                         _%prototable144776%_
                                         _%descriptor144793%_
                                         _%prototype144772%_))
                                      ((lambda (_%prototype144802%_)
                                         _%prototype144802%_)
                                       _%prototype144739%_))))
                                 (_%K144751144811%_
                                  (lambda (_%rest144807%_ _%method144808%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144739%_
                                       _%method144808%_
                                       _%off144745%_
                                       _%klass144657%_
                                       '#f))
                                    (_%loop144742%_
                                     _%rest144807%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144745%_ '1))))))
                            (if (pair? _%rest144747144755%_)
                                (let ((_%hd144752144814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144747144755%_)))
                                      (_%tl144753144816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144747144755%_))))
                                  (let* ((_%method144819%_ _%hd144752144814%_)
                                         (_%rest144821%_ _%tl144753144816%_))
                                    (_%K144751144811%_
                                     _%rest144821%_
                                     _%method144819%_)))
                                (_%else144749144804%_)))))))
                   (_%K144692144961%_
                    (lambda (_%rest144826%_ _%method-spec144827%_)
                      (if (pair? _%method-spec144827%_)
                          (let _%loop-inner144831%_ ((_%methods-rest144834%_
                                                      _%method-spec144827%_))
                            (let* ((_%methods-rest144836144844%_
                                    _%methods-rest144834%_)
                                   (_%else144838144894%_
                                    (lambda ()
                                      (let ((_%tab144852%_
                                             (class-type-interface-table
                                              _%obj-klass144658%_)))
                                        (let* ((_%prototable144854%_
                                                _%tab144852%_)
                                               (_%descriptor144857%_
                                                _%descriptor144656%_)
                                               (_%prototype144860%_ '#!void)
                                               (_%prototable144864%_
                                                _%prototable144854%_)
                                               (_%descriptor144883%_
                                                _%descriptor144857%_))
                                          (____prototype-table-set!
                                           _%prototable144864%_
                                           _%descriptor144883%_
                                           _%prototype144860%_))
                                        ((lambda (_%method144892%_) '#f)
                                         _%method-spec144827%_))))
                                   (_%K144840144907%_
                                    (lambda (_%methods-rest144897%_
                                             _%method-name144898%_)
                                      (let ((_%$e144901%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144676%_
                                                _%method-name144898%_
                                                '#f))))
                                        (if _%$e144901%_
                                            ((lambda (_%method144904%_)
                                               (_%loop144679%_
                                                _%rest144826%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144684%_ '1))
                                                (cons _%method144904%_
                                                      _%methods144686%_)))
                                             _%$e144901%_)
                                            (_%loop-inner144831%_
                                             _%methods-rest144897%_))))))
                              (if (pair? _%methods-rest144836144844%_)
                                  (let ((_%hd144841144910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144836144844%_)))
                                        (_%tl144842144912%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144836144844%_))))
                                    (let* ((_%method-name144915%_
                                            _%hd144841144910%_)
                                           (_%methods-rest144917%_
                                            _%tl144842144912%_))
                                      (_%K144840144907%_
                                       _%methods-rest144917%_
                                       _%method-name144915%_)))
                                  (_%else144838144894%_))))
                          (let ((_%$e144919%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144676%_
                                    _%method-spec144827%_
                                    '#f))))
                            (if _%$e144919%_
                                ((lambda (_%method144922%_)
                                   (_%loop144679%_
                                    _%rest144826%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144684%_ '1))
                                    (cons _%method144922%_ _%methods144686%_)))
                                 _%$e144919%_)
                                (let ((_%tab144925%_
                                       (class-type-interface-table
                                        _%obj-klass144658%_)))
                                  (let* ((_%prototable144927%_ _%tab144925%_)
                                         (_%descriptor144930%_
                                          _%descriptor144656%_)
                                         (_%prototype144933%_ '#!void)
                                         (_%prototable144937%_
                                          _%prototable144927%_)
                                         (_%descriptor144950%_
                                          _%descriptor144930%_))
                                    (____prototype-table-set!
                                     _%prototable144937%_
                                     _%descriptor144950%_
                                     _%prototype144933%_))
                                  ((lambda (_%method144959%_) '#f)
                                   _%method-spec144827%_))))))))
              (if (pair? _%rest144688144696%_)
                  (let ((_%hd144693144964%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144688144696%_)))
                        (_%tl144694144966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144688144696%_))))
                    (let* ((_%method-spec144969%_ _%hd144693144964%_)
                           (_%rest144971%_ _%tl144694144966%_))
                      (_%K144692144961%_
                       _%rest144971%_
                       _%method-spec144969%_)))
                  (_%else144690144823%_)))))))
    (define cast
      (lambda (_%descriptor144490%_ _%obj144492%_)
        (let* ((_%klass144495%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144490%_ '1 '#f '#f)))
               (_%klass-id144498%_
                (let () (declare (not safe)) (##type-id _%klass144495%_))))
          (let _%loop144502%_ ((_%obj144505%_ _%obj144492%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144508%_
                    (let () (declare (not safe)) (class-of _%obj144505%_)))
                   (_%obj-klass-id144511%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144508%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144498%_ _%obj-klass-id144511%_))
                  ((lambda (_%obj144516%_) _%obj144516%_) _%obj144505%_)
                  (if (interface-subclass? _%obj-klass144508%_)
                      (let _%loop-interface144519%_ ((_%iface-klass144522%_
                                                      _%obj-klass144508%_))
                        (if _%iface-klass144522%_
                            (let* ((_%tab144525%_
                                    (class-type-interface-table
                                     _%iface-klass144522%_))
                                   (_%$e144567%_
                                    (let* ((_%prototable144528%_ _%tab144525%_)
                                           (_%descriptor144531%_
                                            _%descriptor144490%_)
                                           (_%prototable144535%_
                                            _%prototable144528%_)
                                           (_%descriptor144558%_
                                            _%descriptor144531%_))
                                      (____prototype-table-get
                                       _%prototable144535%_
                                       _%descriptor144558%_))))
                              (if _%$e144567%_
                                  ((lambda (_%prototype144570%_)
                                     (if (eq? _%prototype144570%_ '#!void)
                                         (_%loop-interface144519%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass144522%_)))
                                         ((lambda (_%descriptor144573%_
                                                   _%prototype144574%_
                                                   _%obj144575%_)
                                            (if _%prototype144574%_
                                                (let ((_%instance144577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##structure-copy
                                                          _%prototype144574%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-set!
                                                     _%instance144577%_
                                                     _%obj144575%_
                                                     '1
                                                     '#f
                                                     'cast))
                                                  _%instance144577%_)
                                                (begin
                                                  (raise-cast-error
                                                   'cast
                                                   '"cannot create interface prototype"
                                                   'interface:
                                                   _%descriptor144573%_
                                                   'class:
                                                   (let ()
                                                     (declare (not safe))
                                                     (class-of _%obj144575%_)))
                                                  '#!void)))
                                          _%descriptor144490%_
                                          _%prototype144570%_
                                          _%obj144505%_)))
                                   _%$e144567%_)
                                  (let ((_%$e144579%_
                                         (try-create-prototype
                                          _%descriptor144490%_
                                          _%klass144495%_
                                          _%iface-klass144522%_)))
                                    (if _%$e144579%_
                                        ((lambda (_%prototype144582%_)
                                           ((lambda (_%descriptor144584%_
                                                     _%prototype144585%_
                                                     _%obj144586%_)
                                              (if _%prototype144585%_
                                                  (let ((_%instance144588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-copy
                                                            _%prototype144585%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       _%instance144588%_
                                                       _%obj144586%_
                                                       '1
                                                       '#f
                                                       'cast))
                                                    _%instance144588%_)
                                                  (begin
                                                    (raise-cast-error
                                                     'cast
                                                     '"cannot create interface prototype"
                                                     'interface:
                                                     _%descriptor144584%_
                                                     'class:
                                                     (let ()
                                                       (declare (not safe))
                                                       (class-of
                                                        _%obj144586%_)))
                                                    '#!void)))
                                            _%descriptor144490%_
                                            _%prototype144582%_
                                            _%obj144505%_))
                                         _%$e144579%_)
                                        (_%loop-interface144519%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144522%_)))))))
                            (_%loop144502%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144505%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144592%_
                              (class-type-interface-table _%obj-klass144508%_))
                             (_%$e144621%_
                              (let* ((_%prototable144594%_ _%tab144592%_)
                                     (_%descriptor144597%_
                                      _%descriptor144490%_)
                                     (_%prototable144601%_
                                      _%prototable144594%_)
                                     (_%descriptor144612%_
                                      _%descriptor144597%_))
                                (____prototype-table-get
                                 _%prototable144601%_
                                 _%descriptor144612%_))))
                        (if _%$e144621%_
                            ((lambda (_%prototype144624%_)
                               (if (eq? _%prototype144624%_ '#!void)
                                   ((lambda (_%descriptor144626%_
                                             _%prototype144627%_
                                             _%obj144628%_)
                                      (if _%prototype144627%_
                                          (let ((_%instance144630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144627%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144630%_
                                               _%obj144628%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144630%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144626%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144628%_)))
                                            '#!void)))
                                    _%descriptor144490%_
                                    '#f
                                    _%obj144505%_)
                                   ((lambda (_%descriptor144632%_
                                             _%prototype144633%_
                                             _%obj144634%_)
                                      (if _%prototype144633%_
                                          (let ((_%instance144636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144633%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144636%_
                                               _%obj144634%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144636%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144632%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144634%_)))
                                            '#!void)))
                                    _%descriptor144490%_
                                    _%prototype144624%_
                                    _%obj144505%_)))
                             _%$e144621%_)
                            (let ((_%$e144638%_
                                   (create-prototype
                                    _%descriptor144490%_
                                    _%klass144495%_
                                    _%obj-klass144508%_)))
                              (if _%$e144638%_
                                  ((lambda (_%prototype144641%_)
                                     ((lambda (_%descriptor144643%_
                                               _%prototype144644%_
                                               _%obj144645%_)
                                        (if _%prototype144644%_
                                            (let ((_%instance144647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144644%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144647%_
                                                 _%obj144645%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144647%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor144643%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj144645%_)))
                                              '#!void)))
                                      _%descriptor144490%_
                                      _%prototype144641%_
                                      _%obj144505%_))
                                   _%$e144638%_)
                                  ((lambda (_%descriptor144650%_
                                            _%prototype144651%_
                                            _%obj144652%_)
                                     (if _%prototype144651%_
                                         (let ((_%instance144654%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype144651%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance144654%_
                                              _%obj144652%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance144654%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor144650%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj144652%_)))
                                           '#!void)))
                                   _%descriptor144490%_
                                   '#f
                                   _%obj144505%_))))))))))))
    (define try-cast
      (lambda (_%descriptor144324%_ _%obj144326%_)
        (let* ((_%klass144329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144324%_ '1 '#f '#f)))
               (_%klass-id144332%_
                (let () (declare (not safe)) (##type-id _%klass144329%_))))
          (let _%loop144336%_ ((_%obj144339%_ _%obj144326%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144342%_
                    (let () (declare (not safe)) (class-of _%obj144339%_)))
                   (_%obj-klass-id144345%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144342%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144332%_ _%obj-klass-id144345%_))
                  ((lambda (_%obj144350%_) _%obj144350%_) _%obj144339%_)
                  (if (interface-subclass? _%obj-klass144342%_)
                      (let _%loop-interface144353%_ ((_%iface-klass144356%_
                                                      _%obj-klass144342%_))
                        (if _%iface-klass144356%_
                            (let* ((_%tab144359%_
                                    (class-type-interface-table
                                     _%iface-klass144356%_))
                                   (_%$e144401%_
                                    (let* ((_%prototable144362%_ _%tab144359%_)
                                           (_%descriptor144365%_
                                            _%descriptor144324%_)
                                           (_%prototable144369%_
                                            _%prototable144362%_)
                                           (_%descriptor144392%_
                                            _%descriptor144365%_))
                                      (____prototype-table-get
                                       _%prototable144369%_
                                       _%descriptor144392%_))))
                              (if _%$e144401%_
                                  ((lambda (_%prototype144404%_)
                                     (if (eq? _%prototype144404%_ '#!void)
                                         (_%loop-interface144353%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass144356%_)))
                                         ((lambda (_%descriptor144407%_
                                                   _%prototype144408%_
                                                   _%obj144409%_)
                                            (if _%prototype144408%_
                                                (let ((_%instance144411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##structure-copy
                                                          _%prototype144408%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-set!
                                                     _%instance144411%_
                                                     _%obj144409%_
                                                     '1
                                                     '#f
                                                     'cast))
                                                  _%instance144411%_)
                                                '#f))
                                          _%descriptor144324%_
                                          _%prototype144404%_
                                          _%obj144339%_)))
                                   _%$e144401%_)
                                  (let ((_%$e144413%_
                                         (try-create-prototype
                                          _%descriptor144324%_
                                          _%klass144329%_
                                          _%iface-klass144356%_)))
                                    (if _%$e144413%_
                                        ((lambda (_%prototype144416%_)
                                           ((lambda (_%descriptor144418%_
                                                     _%prototype144419%_
                                                     _%obj144420%_)
                                              (if _%prototype144419%_
                                                  (let ((_%instance144422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-copy
                                                            _%prototype144419%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       _%instance144422%_
                                                       _%obj144420%_
                                                       '1
                                                       '#f
                                                       'cast))
                                                    _%instance144422%_)
                                                  '#f))
                                            _%descriptor144324%_
                                            _%prototype144416%_
                                            _%obj144339%_))
                                         _%$e144413%_)
                                        (_%loop-interface144353%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144356%_)))))))
                            (_%loop144336%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144339%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144426%_
                              (class-type-interface-table _%obj-klass144342%_))
                             (_%$e144455%_
                              (let* ((_%prototable144428%_ _%tab144426%_)
                                     (_%descriptor144431%_
                                      _%descriptor144324%_)
                                     (_%prototable144435%_
                                      _%prototable144428%_)
                                     (_%descriptor144446%_
                                      _%descriptor144431%_))
                                (____prototype-table-get
                                 _%prototable144435%_
                                 _%descriptor144446%_))))
                        (if _%$e144455%_
                            ((lambda (_%prototype144458%_)
                               (if (eq? _%prototype144458%_ '#!void)
                                   ((lambda (_%descriptor144460%_
                                             _%prototype144461%_
                                             _%obj144462%_)
                                      (if _%prototype144461%_
                                          (let ((_%instance144464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144461%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144464%_
                                               _%obj144462%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144464%_)
                                          '#f))
                                    _%descriptor144324%_
                                    '#f
                                    _%obj144339%_)
                                   ((lambda (_%descriptor144466%_
                                             _%prototype144467%_
                                             _%obj144468%_)
                                      (if _%prototype144467%_
                                          (let ((_%instance144470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144467%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144470%_
                                               _%obj144468%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144470%_)
                                          '#f))
                                    _%descriptor144324%_
                                    _%prototype144458%_
                                    _%obj144339%_)))
                             _%$e144455%_)
                            (let ((_%$e144472%_
                                   (try-create-prototype
                                    _%descriptor144324%_
                                    _%klass144329%_
                                    _%obj-klass144342%_)))
                              (if _%$e144472%_
                                  ((lambda (_%prototype144475%_)
                                     ((lambda (_%descriptor144477%_
                                               _%prototype144478%_
                                               _%obj144479%_)
                                        (if _%prototype144478%_
                                            (let ((_%instance144481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144478%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144481%_
                                                 _%obj144479%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144481%_)
                                            '#f))
                                      _%descriptor144324%_
                                      _%prototype144475%_
                                      _%obj144339%_))
                                   _%$e144472%_)
                                  ((lambda (_%descriptor144484%_
                                            _%prototype144485%_
                                            _%obj144486%_)
                                     (if _%prototype144485%_
                                         (let ((_%instance144488%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype144485%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance144488%_
                                              _%obj144486%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance144488%_)
                                         '#f))
                                   _%descriptor144324%_
                                   '#f
                                   _%obj144339%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor144170%_ _%obj144172%_)
        (let* ((_%klass144175%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144170%_ '1 '#f '#f)))
               (_%klass-id144178%_
                (let () (declare (not safe)) (##type-id _%klass144175%_))))
          (let _%loop144182%_ ((_%obj144185%_ _%obj144172%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144188%_
                    (let () (declare (not safe)) (class-of _%obj144185%_)))
                   (_%obj-klass-id144191%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144188%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144178%_ _%obj-klass-id144191%_))
                  ((lambda (_%obj144196%_) '#t) _%obj144185%_)
                  (if (interface-subclass? _%obj-klass144188%_)
                      (let _%loop-interface144199%_ ((_%iface-klass144202%_
                                                      _%obj-klass144188%_))
                        (if _%iface-klass144202%_
                            (let* ((_%tab144205%_
                                    (class-type-interface-table
                                     _%iface-klass144202%_))
                                   (_%$e144247%_
                                    (let* ((_%prototable144208%_ _%tab144205%_)
                                           (_%descriptor144211%_
                                            _%descriptor144170%_)
                                           (_%prototable144215%_
                                            _%prototable144208%_)
                                           (_%descriptor144238%_
                                            _%descriptor144211%_))
                                      (____prototype-table-get
                                       _%prototable144215%_
                                       _%descriptor144238%_))))
                              (if _%$e144247%_
                                  ((lambda (_%prototype144250%_)
                                     (if (eq? _%prototype144250%_ '#!void)
                                         (_%loop-interface144199%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass144202%_)))
                                         ((lambda (_%descriptor144253%_
                                                   _%prototype144254%_
                                                   _%obj144255%_)
                                            (if _%prototype144254%_ '#t '#f))
                                          _%descriptor144170%_
                                          _%prototype144250%_
                                          _%obj144185%_)))
                                   _%$e144247%_)
                                  (let ((_%$e144257%_
                                         (try-create-prototype
                                          _%descriptor144170%_
                                          _%klass144175%_
                                          _%iface-klass144202%_)))
                                    (if _%$e144257%_
                                        ((lambda (_%prototype144260%_)
                                           ((lambda (_%descriptor144262%_
                                                     _%prototype144263%_
                                                     _%obj144264%_)
                                              (if _%prototype144263%_ '#t '#f))
                                            _%descriptor144170%_
                                            _%prototype144260%_
                                            _%obj144185%_))
                                         _%$e144257%_)
                                        (_%loop-interface144199%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144202%_)))))))
                            (_%loop144182%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144185%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144268%_
                              (class-type-interface-table _%obj-klass144188%_))
                             (_%$e144297%_
                              (let* ((_%prototable144270%_ _%tab144268%_)
                                     (_%descriptor144273%_
                                      _%descriptor144170%_)
                                     (_%prototable144277%_
                                      _%prototable144270%_)
                                     (_%descriptor144288%_
                                      _%descriptor144273%_))
                                (____prototype-table-get
                                 _%prototable144277%_
                                 _%descriptor144288%_))))
                        (if _%$e144297%_
                            ((lambda (_%prototype144300%_)
                               (if (eq? _%prototype144300%_ '#!void)
                                   ((lambda (_%descriptor144302%_
                                             _%prototype144303%_
                                             _%obj144304%_)
                                      (if _%prototype144303%_ '#t '#f))
                                    _%descriptor144170%_
                                    '#f
                                    _%obj144185%_)
                                   ((lambda (_%descriptor144306%_
                                             _%prototype144307%_
                                             _%obj144308%_)
                                      (if _%prototype144307%_ '#t '#f))
                                    _%descriptor144170%_
                                    _%prototype144300%_
                                    _%obj144185%_)))
                             _%$e144297%_)
                            (let ((_%$e144310%_
                                   (try-create-prototype
                                    _%descriptor144170%_
                                    _%klass144175%_
                                    _%obj-klass144188%_)))
                              (if _%$e144310%_
                                  ((lambda (_%prototype144313%_)
                                     ((lambda (_%descriptor144315%_
                                               _%prototype144316%_
                                               _%obj144317%_)
                                        (if _%prototype144316%_ '#t '#f))
                                      _%descriptor144170%_
                                      _%prototype144313%_
                                      _%obj144185%_))
                                   _%$e144310%_)
                                  ((lambda (_%descriptor144320%_
                                            _%prototype144321%_
                                            _%obj144322%_)
                                     (if _%prototype144321%_ '#t '#f))
                                   _%descriptor144170%_
                                   '#f
                                   _%obj144185%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor144014%_
               _%obj144015%_
               _%with-prototype+receiver144016%_
               _%with-receiver144017%_)
        (let* ((_%descriptor144020%_ _%descriptor144014%_)
               (_%with-prototype+receiver144028%_
                _%with-prototype+receiver144016%_)
               (_%with-receiver144036%_ _%with-receiver144017%_)
               (_%klass144045%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144020%_ '1 '#f '#f)))
               (_%klass-id144048%_
                (let () (declare (not safe)) (##type-id _%klass144045%_))))
          (let _%loop144052%_ ((_%obj144055%_ _%obj144015%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144058%_
                    (let () (declare (not safe)) (class-of _%obj144055%_)))
                   (_%obj-klass-id144061%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144058%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144048%_ _%obj-klass-id144061%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver144036%_ _%obj144055%_))
                  (if (interface-subclass? _%obj-klass144058%_)
                      (let _%loop-interface144067%_ ((_%iface-klass144070%_
                                                      _%obj-klass144058%_))
                        (if _%iface-klass144070%_
                            (let* ((_%tab144073%_
                                    (class-type-interface-table
                                     _%iface-klass144070%_))
                                   (_%$e144117%_
                                    (let* ((_%prototable144076%_ _%tab144073%_)
                                           (_%descriptor144079%_
                                            _%descriptor144020%_)
                                           (_%prototable144083%_
                                            _%prototable144076%_)
                                           (_%descriptor144108%_
                                            _%descriptor144079%_))
                                      (____prototype-table-get
                                       _%prototable144083%_
                                       _%descriptor144108%_))))
                              (if _%$e144117%_
                                  ((lambda (_%prototype144120%_)
                                     (if (eq? _%prototype144120%_ '#!void)
                                         (_%loop-interface144067%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass144070%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%with-prototype+receiver144028%_
                                            _%descriptor144020%_
                                            _%prototype144120%_
                                            _%obj144055%_))))
                                   _%$e144117%_)
                                  (let ((_%$e144123%_
                                         (try-create-prototype
                                          _%descriptor144020%_
                                          _%klass144045%_
                                          _%iface-klass144070%_)))
                                    (if _%$e144123%_
                                        ((lambda (_%prototype144126%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%with-prototype+receiver144028%_
                                              _%descriptor144020%_
                                              _%prototype144126%_
                                              _%obj144055%_)))
                                         _%$e144123%_)
                                        (_%loop-interface144067%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144070%_)))))))
                            (_%loop144052%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144055%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144130%_
                              (class-type-interface-table _%obj-klass144058%_))
                             (_%$e144159%_
                              (let* ((_%prototable144132%_ _%tab144130%_)
                                     (_%descriptor144135%_
                                      _%descriptor144020%_)
                                     (_%prototable144139%_
                                      _%prototable144132%_)
                                     (_%descriptor144150%_
                                      _%descriptor144135%_))
                                (____prototype-table-get
                                 _%prototable144139%_
                                 _%descriptor144150%_))))
                        (if _%$e144159%_
                            ((lambda (_%prototype144162%_)
                               (if (eq? _%prototype144162%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver144028%_
                                      _%descriptor144020%_
                                      '#f
                                      _%obj144055%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver144028%_
                                      _%descriptor144020%_
                                      _%prototype144162%_
                                      _%obj144055%_))))
                             _%$e144159%_)
                            (let ((_%$e144164%_
                                   (create-prototype
                                    _%descriptor144020%_
                                    _%klass144045%_
                                    _%obj-klass144058%_)))
                              (if _%$e144164%_
                                  ((lambda (_%prototype144167%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver144028%_
                                        _%descriptor144020%_
                                        _%prototype144167%_
                                        _%obj144055%_)))
                                   _%$e144164%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144028%_
                                     _%descriptor144020%_
                                     '#f
                                     _%obj144055%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor143977%_
               _%obj143978%_
               _%with-prototype+receiver143979%_
               _%with-receiver143980%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor143977%_
               'gerbil/runtime/interface#interface-descriptor::t))
            (let ((_%descriptor143984%_ _%descriptor143977%_))
              (if (procedure? _%with-prototype+receiver143979%_)
                  (let ((_%with-prototype+receiver143994%_
                         _%with-prototype+receiver143979%_))
                    (if (procedure? _%with-receiver143980%_)
                        (let ((_%with-receiver144004%_
                               _%with-receiver143980%_))
                          (__with-prototype
                           _%descriptor143984%_
                           _%obj143978%_
                           _%with-prototype+receiver143994%_
                           _%with-receiver144004%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver143980%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver143979%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor143977%_)
              '#!void))))))
