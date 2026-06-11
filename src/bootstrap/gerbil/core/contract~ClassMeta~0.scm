(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1781138337)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass58928%_)
        (let ((_%$e58930%_
               (let ((__obj101258 _%klass58928%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101258
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101258 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101258
                      'precedence-list)))))
          (if _%$e58930%_
              _%$e58930%_
              (let ((_g101318_
                     (c4-linearize
                      '()
                      (let ((__obj101259 _%klass58928%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101259
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj101259
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj101259
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id58934%_)
                        (cons _%klass-id58934%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id58934%_))))
                      'struct:
                      (lambda (_%klass-id58936%_)
                        (let ((__obj101260
                               (gx#syntax-local-value _%klass-id58936%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101260
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101260
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj101260
                               'struct?))))
                      'eq:
                      gx#free-identifier=?)))
                (begin
                  (let ((_g101319_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g101318_)
                               (##values-length _g101318_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g101319_ 2)))
                        (error "Context expects 2 values" _g101319_)))
                  (let ((_%precedence-list58938%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g101318_ 0)))
                        (_%base-struct58939%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g101318_ 1))))
                    (let ((_%precedence-list58983%_
                           (if (let ((__tmp101320
                                      (let ((__obj101261 _%klass58928%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101261
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101261
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj101261
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp101320 '(t object class)))
                               _%precedence-list58938%_
                               (if (member ':object
                                           _%precedence-list58938%_
                                           gx#free-identifier=?)
                                   _%precedence-list58938%_
                                   (if (let ((__obj101262 _%klass58928%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj101262
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj101262
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj101262
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list58938%_
                                                   gx#free-identifier=?)
                                           _%precedence-list58938%_
                                           (let ((__tmp101321
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list58938%_
                                              __tmp101321)))
                                       (let _%loop58945%_ ((_%tail58947%_
                                                            _%precedence-list58938%_)
                                                           (_%head58948%_ '()))
                                         (let* ((_%$%tail5894958957%_
                                                 _%tail58947%_)
                                                (_%$%else5895158965%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head58948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K5895358971%_
                                                 (lambda (_%rest58968%_
                                                          _%hd58969%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd58969%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail58947%_)
                      _%head58948%_)
               (_%loop58945%_
                _%rest58968%_
                (cons _%hd58969%_ _%head58948%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail5894958957%_)
                                               (let ((_%$%hd5895458974%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail5894958957%_)))
                                                     (_%$%tl5895558976%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail5894958957%_))))
                                                 (let* ((_%hd58979%_
                                                         _%$%hd5895458974%_)
                                                        (_%rest58981%_
                                                         _%$%tl5895558976%_))
                                                   (_%$%K5895358971%_
                                                    _%rest58981%_
                                                    _%hd58979%_)))
                                               (_%$%else5895158965%_)))))))))
                      (let ((__obj101263 _%klass58928%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101263
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj101263
                               _%precedence-list58983%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj101263
                             'precedence-list
                             _%precedence-list58983%_)))
                      _%precedence-list58983%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta58798%_ _%method58799%_)
        (let ((_%$%tab5880058802%_
               (let ((__obj101266 _%meta58798%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101266
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101266 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj101266
                      'methods)))))
          (if _%$%tab5880058802%_
              (let ((_%tab58804%_ _%$%tab5880058802%_))
                (hash-get _%tab58804%_ _%method58799%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta58792%_ _%method58793%_)
        (let ((_%$e58795%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta58792%_
                _%method58793%_)))
          (if _%$e58795%_
              _%$e58795%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta58792%_
               _%method58793%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta58741%_ _%method58742%_)
        (let ((_%$e58744%_ (method-ref _%meta58741%_ 'precedence-list)))
          (if _%$e58744%_
              (let _%loop58749%_ ((_%rest58751%_ (_%$e58744%_ _%meta58741%_)))
                (let* ((_%$%rest5875258760%_ _%rest58751%_)
                       (_%$%else5875458768%_ (lambda () '#f))
                       (_%$%K5875658779%_
                        (lambda (_%rest58771%_ _%klass58772%_)
                          (let* ((_%meta58774%_
                                  (gx#syntax-local-value _%klass58772%_))
                                 (_%$e58776%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta58774%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta58774%_
                                       _%method58742%_)
                                      '#f)))
                            (if _%$e58776%_
                                _%$e58776%_
                                (_%loop58749%_ _%rest58771%_))))))
                  (if (pair? _%$%rest5875258760%_)
                      (let ((_%$%hd5875758782%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest5875258760%_)))
                            (_%$%tl5875858784%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest5875258760%_))))
                        (let* ((_%klass58787%_ _%$%hd5875758782%_)
                               (_%rest58789%_ _%$%tl5875858784%_))
                          (_%$%K5875658779%_ _%rest58789%_ _%klass58787%_)))
                      (_%$%else5875458768%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta58731%_ _%method58732%_ . _%args58733%_)
        (let ((_%$e58735%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta58731%_
                _%method58732%_)))
          (if _%$e58735%_
              (apply _%$e58735%_ _%meta58731%_ _%args58733%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta58731%_
                     'method:
                     'method)))))))
