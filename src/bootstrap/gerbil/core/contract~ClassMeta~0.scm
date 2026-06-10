(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1781119024)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass51975%_)
        (let ((_%$e51977%_
               (gerbil/core/mop~MOP-2#!class-type-precedence-list
                _%klass51975%_)))
          (if _%$e51977%_
              _%$e51977%_
              (let ((_g87542_
                     (c4-linearize
                      '()
                      (gerbil/core/mop~MOP-2#!class-type-super _%klass51975%_)
                      'get-precedence-list:
                      (lambda (_%klass-id51981%_)
                        (cons _%klass-id51981%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id51981%_))))
                      'struct:
                      (lambda (_%klass-id51983%_)
                        (gerbil/core/mop~MOP-2#!class-type-struct?
                         (gx#syntax-local-value _%klass-id51983%_)))
                      'eq:
                      gx#free-identifier=?)))
                (begin
                  (let ((_g87543_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g87542_)
                               (##values-length _g87542_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g87543_ 2)))
                        (error "Context expects 2 values" _g87543_)))
                  (let ((_%precedence-list51985%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g87542_ 0)))
                        (_%base-struct51986%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g87542_ 1))))
                    (let ((_%precedence-list52030%_
                           (if (memq (gerbil/core/mop~MOP-2#!class-type-id
                                      _%klass51975%_)
                                     '(t object class))
                               _%precedence-list51985%_
                               (if (member ':object
                                           _%precedence-list51985%_
                                           gx#free-identifier=?)
                                   _%precedence-list51985%_
                                   (if (gerbil/core/mop~MOP-2#!class-type-system?
                                        _%klass51975%_)
                                       (if (member ':t
                                                   _%precedence-list51985%_
                                                   gx#free-identifier=?)
                                           _%precedence-list51985%_
                                           (append _%precedence-list51985%_
                                                   (cons (gx#core-quote-syntax
                                                          ':t)
                                                         '())))
                                       (let _%loop51992%_ ((_%tail51994%_
                                                            _%precedence-list51985%_)
                                                           (_%head51995%_ '()))
                                         (let* ((_%$%tail5199652004%_
                                                 _%tail51994%_)
                                                (_%$%E5199952008%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%tail5199652004%_
                                                          '([hd . rest])
                                                          'else)
                                                   (void)))
                                                (_%$%else5199852012%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head51995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K5200052018%_
                                                 (lambda (_%rest52015%_
                                                          _%hd52016%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd52016%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail51994%_)
                      _%head51995%_)
               (_%loop51992%_
                _%rest52015%_
                (cons _%hd52016%_ _%head51995%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail5199652004%_)
                                               (let ((_%$%hd5200152021%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail5199652004%_)))
                                                     (_%$%tl5200252023%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail5199652004%_))))
                                                 (let* ((_%hd52026%_
                                                         _%$%hd5200152021%_)
                                                        (_%rest52028%_
                                                         _%$%tl5200252023%_))
                                                   (_%$%K5200052018%_
                                                    _%rest52028%_
                                                    _%hd52026%_)))
                                               (_%$%else5199852012%_)))))))))
                      (gerbil/core/mop~MOP-2#!class-type-precedence-list-set!
                       _%klass51975%_
                       _%precedence-list52030%_)
                      _%precedence-list52030%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta51845%_ _%method51846%_)
        (let ((_%$%tab5184751849%_
               (gerbil/core/mop~MOP-2#meta-object-methods _%meta51845%_)))
          (if _%$%tab5184751849%_
              (let ((_%tab51851%_ _%$%tab5184751849%_))
                (hash-get _%tab51851%_ _%method51846%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta51839%_ _%method51840%_)
        (let ((_%$e51842%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta51839%_
                _%method51840%_)))
          (if _%$e51842%_
              _%$e51842%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta51839%_
               _%method51840%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta51788%_ _%method51789%_)
        (let ((_%$e51791%_ (method-ref _%meta51788%_ 'precedence-list)))
          (if _%$e51791%_
              ((lambda (_%get-precedence-list51794%_)
                 (let _%loop51796%_ ((_%rest51798%_
                                      (_%get-precedence-list51794%_
                                       _%meta51788%_)))
                   (let* ((_%$%rest5179951807%_ _%rest51798%_)
                          (_%$%E5180251811%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%rest5179951807%_
                                    '([klass . rest])
                                    'else)
                             (void)))
                          (_%$%else5180151815%_ (lambda () '#f))
                          (_%$%K5180351826%_
                           (lambda (_%rest51818%_ _%klass51819%_)
                             (let* ((_%meta51821%_
                                     (gx#syntax-local-value _%klass51819%_))
                                    (_%$e51823%_
                                     (if (gerbil/core/mop~MOP-2#meta-object?
                                          _%meta51821%_)
                                         (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                          _%meta51821%_
                                          _%method51789%_)
                                         '#f)))
                               (if _%$e51823%_
                                   _%$e51823%_
                                   (_%loop51796%_ _%rest51818%_))))))
                     (if (pair? _%$%rest5179951807%_)
                         (let ((_%$%hd5180451829%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%rest5179951807%_)))
                               (_%$%tl5180551831%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%rest5179951807%_))))
                           (let* ((_%klass51834%_ _%$%hd5180451829%_)
                                  (_%rest51836%_ _%$%tl5180551831%_))
                             (_%$%K5180351826%_ _%rest51836%_ _%klass51834%_)))
                         (_%$%else5180151815%_)))))
               _%$e51791%_)
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta51778%_ _%method51779%_ . _%args51780%_)
        (let ((_%$e51782%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta51778%_
                _%method51779%_)))
          (if _%$e51782%_
              ((lambda (_%proc51785%_)
                 (apply _%proc51785%_ _%meta51778%_ _%args51780%_))
               _%$e51782%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta51778%_
                     'method:
                     'method)))))))
