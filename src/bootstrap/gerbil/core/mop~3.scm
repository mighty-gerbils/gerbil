(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27677_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24849%_)
        (letrec ((_%body-opt?24852%_
                  (lambda (_%key24855%_)
                    (let ((__tmp27649 (gx#stx-e _%key24855%_)))
                      (declare (not safe))
                      (##memq __tmp27649
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:
                                acyclic:))))))
          (gx#stx-plist? _%stx24849%_ _%body-opt?24852%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22637%_
               _%id22639%_
               _%super-ref22640%_
               _%slots22641%_
               _%body22642%_)
        (letrec ((_%wrap22644%_
                  (lambda (_%e-stx24846%_)
                    (gx#stx-wrap-source
                     _%e-stx24846%_
                     (gx#stx-source _%stx22637%_))))
                 (_%make-id22646%_
                  (lambda _%args24843%_
                    (apply gx#stx-identifier _%id22639%_ _%args24843%_)))
                 (_%get-mixin-slots22647%_
                  (lambda (_%super24813%_ _%slots24815%_)
                    (letrec* ((_%tab24817%_ (make-hash-table-eq))
                              (_%dedup24819%_
                               (lambda (_%mixins24830%_)
                                 (let _%lp24833%_ ((_%rest24836%_
                                                    _%mixins24830%_)
                                                   (_%r24838%_ '()))
                                   (if (pair? _%rest24836%_)
                                       (let ((_%slot24840%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24836%_))))
                                         (if (hash-get
                                              _%tab24817%_
                                              _%slot24840%_)
                                             (_%lp24833%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24836%_))
                                              _%r24838%_)
                                             (begin
                                               (hash-put!
                                                _%tab24817%_
                                                _%slot24840%_
                                                '#t)
                                               (_%lp24833%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24836%_))
                                                (cons _%slot24840%_
                                                      _%r24838%_)))))
                                       (reverse _%r24838%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24821%_)
                         (hash-put! _%tab24817%_ (gx#stx-e _%slot24821%_) '#t))
                       _%slots24815%_)
                      (if (not _%super24813%_)
                          '()
                          (if (gx#identifier? _%super24813%_)
                              (_%dedup24819%_
                               (_%get-mixin-slots-r22648%_ _%super24813%_))
                              (_%dedup24819%_
                               (concatenate
                                (map _%get-mixin-slots-r22648%_
                                     _%super24813%_))))))))
                 (_%get-mixin-slots-r22648%_
                  (lambda (_%type-id24807%_)
                    (let ((_%info24810%_
                           (gx#syntax-local-value _%type-id24807%_)))
                      (let ((__tmp27651
                             (let ((__obj27424 _%info24810%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27424
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27424
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27424
                                    'slots))))
                            (__tmp27650
                             (concatenate
                              (map _%get-mixin-slots-r22648%_
                                   (let ((__obj27425 _%info24810%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27425
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27425
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27425
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27651 __tmp27650))))))
          (gx#check-duplicate-identifiers _%slots22641%_ _%stx22637%_)
          (let* ((_%name22650%_ (symbol->string (gx#stx-e _%id22639%_)))
                 (_%super22653%_
                  (map gx#syntax-local-value _%super-ref22640%_))
                 (_%struct?22656%_ (gx#stx-getq 'struct: _%body22642%_))
                 (_%g2265922667%_
                  (lambda (_%g2266022663%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2266022663%_)))
                 (_%g2265824803%_
                  (lambda (_%g2266022671%_)
                    ((lambda (_%g2266122674%_)
                       (let* ((_%g2269022698%_
                               (lambda (_%g2269122694%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2269122694%_)))
                              (_%g2268924799%_
                               (lambda (_%g2269122702%_)
                                 ((lambda (_%g2269222705%_)
                                    (let* ((_%g2271822726%_
                                            (lambda (_%g2271922722%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2271922722%_)))
                                           (_%g2271724795%_
                                            (lambda (_%g2271922730%_)
                                              ((lambda (_%g2272022733%_)
                                                 (let* ((_%g2274622754%_
                                                         (lambda (_%g2274722750%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2274722750%_)))
                                                        (_%g2274524791%_
                                                         (lambda (_%g2274722758%_)
                                                           ((lambda (_%g2274822761%_)
                                                              (let* ((_%g2277422782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2277522778%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2277522778%_)))
                             (_%g2277324787%_
                              (lambda (_%g2277522786%_)
                                ((lambda (_%g2277622789%_)
                                   (let* ((_%g2280222819%_
                                           (lambda (_%g2280322815%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2280322815%_)))
                                          (_%g2280124783%_
                                           (lambda (_%g2280322823%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2280322823%_)
                                                 (let ((_g27652_
                                                        (gx#syntax-split-splice
                                                         _%g2280322823%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27653_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27652_)
                          (##values-length _g27652_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27653_ 2)))
                   (error "Context expects 2 values" _g27653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2280522826%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27652_
                                                               0)))
                                                           (_%tl2280722829%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27652_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2280722829%_)
                                                           (letrec ((_%loop2280822832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2280622836%_ _%slot2281222839%_)
                               (if (gx#stx-pair? _%hd2280622836%_)
                                   (let ((_%e2280922841%_
                                          (gx#syntax-e _%hd2280622836%_)))
                                     (let ((_%lp-hd2281022845%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2280922841%_)))
                                           (_%lp-tl2281122848%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2280922841%_))))
                                       (_%loop2280822832%_
                                        _%lp-tl2281122848%_
                                        (cons _%lp-hd2281022845%_
                                              _%slot2281222839%_))))
                                   (let ((_%slot2281322851%_
                                          (reverse _%slot2281222839%_)))
                                     ((lambda (_%g2280422854%_)
                                        (let* ((_%g2287122888%_
                                                (lambda (_%g2287222884%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2287222884%_)))
                                               (_%g2287024774%_
                                                (lambda (_%g2287222892%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2287222892%_)
                                                      (let ((_g27654_
                                                             (gx#syntax-split-splice
                                                              _%g2287222892%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27654_)
                               (##values-length _g27654_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27655_ 2)))
                        (error "Context expects 2 values" _g27655_)))
                  (let ((_%target2287422895%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27654_ 0)))
                        (_%tl2287622898%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27654_ 1))))
                    (if (gx#stx-null? _%tl2287622898%_)
                        (letrec ((_%loop2287722901%_
                                  (lambda (_%hd2287522905%_ _%getf2288122908%_)
                                    (if (gx#stx-pair? _%hd2287522905%_)
                                        (let ((_%e2287822910%_
                                               (gx#syntax-e _%hd2287522905%_)))
                                          (let ((_%lp-hd2287922914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2287822910%_)))
                                                (_%lp-tl2288022917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2287822910%_))))
                                            (_%loop2287722901%_
                                             _%lp-tl2288022917%_
                                             (cons _%lp-hd2287922914%_
                                                   _%getf2288122908%_))))
                                        (let ((_%getf2288222920%_
                                               (reverse _%getf2288122908%_)))
                                          ((lambda (_%g2287322923%_)
                                             (let* ((_%g2294022957%_
                                                     (lambda (_%g2294122953%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2294122953%_)))
                                                    (_%g2293924765%_
                                                     (lambda (_%g2294122961%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2294122961%_)
                                                           (let ((_g27656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2294122961%_ '0)))
                     (begin
                       (let ((_g27657_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27656_)
                                    (##values-length _g27656_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27657_ 2)))
                             (error "Context expects 2 values" _g27657_)))
                       (let ((_%target2294322964%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27656_ 0)))
                             (_%tl2294522967%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27656_ 1))))
                         (if (gx#stx-null? _%tl2294522967%_)
                             (letrec ((_%loop2294622970%_
                                       (lambda (_%hd2294422974%_
                                                _%setf2295022977%_)
                                         (if (gx#stx-pair? _%hd2294422974%_)
                                             (let ((_%e2294722979%_
                                                    (gx#syntax-e
                                                     _%hd2294422974%_)))
                                               (let ((_%lp-hd2294822983%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2294722979%_)))
                                                     (_%lp-tl2294922986%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2294722979%_))))
                                                 (_%loop2294622970%_
                                                  _%lp-tl2294922986%_
                                                  (cons _%lp-hd2294822983%_
                                                        _%setf2295022977%_))))
                                             (let ((_%setf2295122989%_
                                                    (reverse _%setf2295022977%_)))
                                               ((lambda (_%g2294222992%_)
                                                  (let* ((_%mixin-slots23009%_
                                                          (_%get-mixin-slots22647%_
                                                           _%super-ref22640%_
                                                           _%slots22641%_))
                                                         (_%g2301223029%_
                                                          (lambda (_%g2301323025%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2301323025%_)))
                                                         (_%g2301124761%_
                                                          (lambda (_%g2301323033%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2301323033%_)
                        (let ((_g27658_
                               (gx#syntax-split-splice _%g2301323033%_ '0)))
                          (begin
                            (let ((_g27659_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27658_)
                                         (##values-length _g27658_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27659_ 2)))
                                  (error "Context expects 2 values" _g27659_)))
                            (let ((_%target2301523036%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27658_ 0)))
                                  (_%tl2301723039%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27658_ 1))))
                              (if (gx#stx-null? _%tl2301723039%_)
                                  (letrec ((_%loop2301823042%_
                                            (lambda (_%hd2301623046%_
                                                     _%mixin-slot2302223049%_)
                                              (if (gx#stx-pair?
                                                   _%hd2301623046%_)
                                                  (let ((_%e2301923051%_
                                                         (gx#syntax-e
                                                          _%hd2301623046%_)))
                                                    (let ((_%lp-hd2302023055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2301923051%_)))
                                                          (_%lp-tl2302123058%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2301923051%_))))
                                                      (_%loop2301823042%_
                                                       _%lp-tl2302123058%_
                                                       (cons _%lp-hd2302023055%_
                                                             _%mixin-slot2302223049%_))))
                                                  (let ((_%mixin-slot2302323061%_
                                                         (reverse _%mixin-slot2302223049%_)))
                                                    ((lambda (_%g2301423064%_)
                                                       (let* ((_%g2308223099%_
                                                               (lambda (_%g2308323095%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2308323095%_)))
                      (_%g2308124752%_
                       (lambda (_%g2308323103%_)
                         (if (gx#stx-pair/null? _%g2308323103%_)
                             (let ((_g27660_
                                    (gx#syntax-split-splice
                                     _%g2308323103%_
                                     '0)))
                               (begin
                                 (let ((_g27661_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27660_)
                                              (##values-length _g27660_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27661_ 2)))
                                       (error "Context expects 2 values"
                                              _g27661_)))
                                 (let ((_%target2308523106%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27660_ 0)))
                                       (_%tl2308723109%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27660_ 1))))
                                   (if (gx#stx-null? _%tl2308723109%_)
                                       (letrec ((_%loop2308823112%_
                                                 (lambda (_%hd2308623116%_
                                                          _%mixin-getf2309223119%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2308623116%_)
                                                       (let ((_%e2308923121%_
                                                              (gx#syntax-e
                                                               _%hd2308623116%_)))
                                                         (let ((_%lp-hd2309023125%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2308923121%_)))
                       (_%lp-tl2309123128%_
                        (let () (declare (not safe)) (##cdr _%e2308923121%_))))
                   (_%loop2308823112%_
                    _%lp-tl2309123128%_
                    (cons _%lp-hd2309023125%_ _%mixin-getf2309223119%_))))
               (let ((_%mixin-getf2309323131%_
                      (reverse _%mixin-getf2309223119%_)))
                 ((lambda (_%g2308423134%_)
                    (let* ((_%g2315123168%_
                            (lambda (_%g2315223164%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2315223164%_)))
                           (_%g2315024743%_
                            (lambda (_%g2315223172%_)
                              (if (gx#stx-pair/null? _%g2315223172%_)
                                  (let ((_g27662_
                                         (gx#syntax-split-splice
                                          _%g2315223172%_
                                          '0)))
                                    (begin
                                      (let ((_g27663_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27662_)
                                                   (##values-length _g27662_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27663_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27663_)))
                                      (let ((_%target2315423175%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27662_ 0)))
                                            (_%tl2315623178%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27662_ 1))))
                                        (if (gx#stx-null? _%tl2315623178%_)
                                            (letrec ((_%loop2315723181%_
                                                      (lambda (_%hd2315523185%_
                                                               _%mixin-setf2316123188%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2315523185%_)
                                                            (let ((_%e2315823190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2315523185%_)))
                      (let ((_%lp-hd2315923194%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2315823190%_)))
                            (_%lp-tl2316023197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2315823190%_))))
                        (_%loop2315723181%_
                         _%lp-tl2316023197%_
                         (cons _%lp-hd2315923194%_ _%mixin-setf2316123188%_))))
                    (let ((_%mixin-setf2316223200%_
                           (reverse _%mixin-setf2316123188%_)))
                      ((lambda (_%g2315323203%_)
                         (let* ((_%g2322023237%_
                                 (lambda (_%g2322123233%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2322123233%_)))
                                (_%g2321924726%_
                                 (lambda (_%g2322123241%_)
                                   (if (gx#stx-pair/null? _%g2322123241%_)
                                       (let ((_g27664_
                                              (gx#syntax-split-splice
                                               _%g2322123241%_
                                               '0)))
                                         (begin
                                           (let ((_g27665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27664_)
                                                        (##values-length
                                                         _g27664_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27665_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27665_)))
                                           (let ((_%target2322323244%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27664_ 0)))
                                                 (_%tl2322523247%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27664_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2322523247%_)
                                                 (letrec ((_%loop2322623250%_
                                                           (lambda (_%hd2322423254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2323023257%_)
                     (if (gx#stx-pair? _%hd2322423254%_)
                         (let ((_%e2322723259%_
                                (gx#syntax-e _%hd2322423254%_)))
                           (let ((_%lp-hd2322823263%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2322723259%_)))
                                 (_%lp-tl2322923266%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2322723259%_))))
                             (_%loop2322623250%_
                              _%lp-tl2322923266%_
                              (cons _%lp-hd2322823263%_ _%ugetf2323023257%_))))
                         (let ((_%ugetf2323123269%_
                                (reverse _%ugetf2323023257%_)))
                           ((lambda (_%g2322223272%_)
                              (let* ((_%g2328923306%_
                                      (lambda (_%g2329023302%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2329023302%_)))
                                     (_%g2328824709%_
                                      (lambda (_%g2329023310%_)
                                        (if (gx#stx-pair/null? _%g2329023310%_)
                                            (let ((_g27666_
                                                   (gx#syntax-split-splice
                                                    _%g2329023310%_
                                                    '0)))
                                              (begin
                                                (let ((_g27667_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27666_)
                                                             (##values-length
                                                              _g27666_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2329223313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27666_
                                                          0)))
                                                      (_%tl2329423316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27666_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2329423316%_)
                                                      (letrec ((_%loop2329523319%_
                                                                (lambda (_%hd2329323323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2329923326%_)
                          (if (gx#stx-pair? _%hd2329323323%_)
                              (let ((_%e2329623328%_
                                     (gx#syntax-e _%hd2329323323%_)))
                                (let ((_%lp-hd2329723332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2329623328%_)))
                                      (_%lp-tl2329823335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2329623328%_))))
                                  (_%loop2329523319%_
                                   _%lp-tl2329823335%_
                                   (cons _%lp-hd2329723332%_
                                         _%usetf2329923326%_))))
                              (let ((_%usetf2330023338%_
                                     (reverse _%usetf2329923326%_)))
                                ((lambda (_%g2329123341%_)
                                   (let* ((_%g2335823375%_
                                           (lambda (_%g2335923371%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2335923371%_)))
                                          (_%g2335724692%_
                                           (lambda (_%g2335923379%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2335923379%_)
                                                 (let ((_g27668_
                                                        (gx#syntax-split-splice
                                                         _%g2335923379%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27669_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27668_)
                          (##values-length _g27668_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27669_ 2)))
                   (error "Context expects 2 values" _g27669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2336123382%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27668_
                                                               0)))
                                                           (_%tl2336323385%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27668_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2336323385%_)
                                                           (letrec ((_%loop2336423388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2336223392%_
                                      _%mixin-ugetf2336823395%_)
                               (if (gx#stx-pair? _%hd2336223392%_)
                                   (let ((_%e2336523397%_
                                          (gx#syntax-e _%hd2336223392%_)))
                                     (let ((_%lp-hd2336623401%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2336523397%_)))
                                           (_%lp-tl2336723404%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2336523397%_))))
                                       (_%loop2336423388%_
                                        _%lp-tl2336723404%_
                                        (cons _%lp-hd2336623401%_
                                              _%mixin-ugetf2336823395%_))))
                                   (let ((_%mixin-ugetf2336923407%_
                                          (reverse _%mixin-ugetf2336823395%_)))
                                     ((lambda (_%g2336023410%_)
                                        (let* ((_%g2342723444%_
                                                (lambda (_%g2342823440%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2342823440%_)))
                                               (_%g2342624675%_
                                                (lambda (_%g2342823448%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2342823448%_)
                                                      (let ((_g27670_
                                                             (gx#syntax-split-splice
                                                              _%g2342823448%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27670_)
                               (##values-length _g27670_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27671_ 2)))
                        (error "Context expects 2 values" _g27671_)))
                  (let ((_%target2343023451%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27670_ 0)))
                        (_%tl2343223454%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27670_ 1))))
                    (if (gx#stx-null? _%tl2343223454%_)
                        (letrec ((_%loop2343323457%_
                                  (lambda (_%hd2343123461%_
                                           _%mixin-usetf2343723464%_)
                                    (if (gx#stx-pair? _%hd2343123461%_)
                                        (let ((_%e2343423466%_
                                               (gx#syntax-e _%hd2343123461%_)))
                                          (let ((_%lp-hd2343523470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2343423466%_)))
                                                (_%lp-tl2343623473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2343423466%_))))
                                            (_%loop2343323457%_
                                             _%lp-tl2343623473%_
                                             (cons _%lp-hd2343523470%_
                                                   _%mixin-usetf2343723464%_))))
                                        (let ((_%mixin-usetf2343823476%_
                                               (reverse _%mixin-usetf2343723464%_)))
                                          ((lambda (_%g2342923479%_)
                                             (let* ((_%type-slots23514%_
                                                     (if (gx#stx-null?
                                                          _%slots22641%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2294222992%_
                                _%g2287322923%_
                                _%g2280422854%_)
                               (foldr (lambda (_%g2349923504%_
                                               _%g2350023507%_
                                               _%g2350123509%_
                                               _%g2350223511%_)
                                        (cons (cons _%g2350123509%_
                                                    (cons _%g2350023507%_
                                                          (cons _%g2349923504%_
                                                                '())))
                                              _%g2350223511%_))
                                      '()
                                      _%g2294222992%_
                                      _%g2287322923%_
                                      _%g2280422854%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23535%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23009%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2315323203%_
                                _%g2308423134%_
                                _%g2301423064%_)
                               (foldr (lambda (_%g2352023525%_
                                               _%g2352123528%_
                                               _%g2352223530%_
                                               _%g2352323532%_)
                                        (cons (cons _%g2352223530%_
                                                    (cons _%g2352123528%_
                                                          (cons _%g2352023525%_
                                                                '())))
                                              _%g2352323532%_))
                                      '()
                                      _%g2315323203%_
                                      _%g2308423134%_
                                      _%g2301423064%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23542%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22642%_)))
                           (if _%$e23538%_ _%$e23538%_ _%id22639%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23549%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22642%_)))
                           (if _%$e23545%_
                               _%$e23545%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2266122674%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23563%_
                                                     (let ((_%$e23559%_
                                                            (let ((_%e2355123553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22642%_)))
                      (if _%e2355123553%_
                          (let ((_%e23556%_ _%e2355123553%_))
                            (cons 'constructor: (cons _%e23556%_ '())))
                          '#f))))
               (if _%$e23559%_ _%$e23559%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23604%_
                                                     (let* ((_%properties23566%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22642%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23581%_
                     (let ((_%$e23569%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22642%_))))
                       (if _%$e23569%_
                           ((lambda (_%print23573%_)
                              (let ((_%print23576%_
                                     (if (eq? _%print23573%_ '#t)
                                         _%slots22641%_
                                         _%print23573%_)))
                                (cons (cons 'print: _%print23576%_)
                                      _%properties23566%_)))
                            _%$e23569%_)
                           _%properties23566%_)))
                    (_%properties23596%_
                     (let ((_%$e23584%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22642%_))))
                       (if _%$e23584%_
                           ((lambda (_%equal23588%_)
                              (let ((_%equal23591%_
                                     (if (eq? _%equal23588%_ '#t)
                                         _%slots22641%_
                                         _%equal23588%_)))
                                (cons (cons 'equal: _%equal23591%_)
                                      _%properties23581%_)))
                            _%$e23584%_)
                           _%properties23581%_)))
                    (_%properties23599%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22642%_))
                         (cons (cons 'acyclic: '#t) _%properties23596%_)
                         _%properties23596%_)))
               _%properties23599%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23645%_
                                                     (if (null? _%properties23604%_)
                                                         '()
                                                         (let* ((_%g2360723615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2360823611%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2360823611%_)))
                        (_%g2360623641%_
                         (lambda (_%g2360823619%_)
                           ((lambda (_%g2360923622%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2360923622%_ '()))
                                          '())))
                            _%g2360823619%_))))
                   (_%g2360623641%_ _%properties23604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23657%_
                                                     (let ((_%$e23648%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22642%_)))
                                                       (if _%$e23648%_
                                                           ((lambda (_%metaclass23652%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23652%_)
                          _%metaclass23652%_
                          '#f))
                    _%$e23648%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23660%_
                                                     (if _%metaclass23657%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23663%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22642%_)))
                                                    (_%type-struct23666%_
                                                     (cons 'struct:
                                                           (cons _%struct?22656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23669%_
                                                     (cons 'final:
                                                           (cons _%final?23663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2367223689%_
                                                     (lambda (_%g2367323685%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2367323685%_)))
                                                    (_%g2367124671%_
                                                     (lambda (_%g2367323693%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2367323693%_)
                                                           (let ((_g27672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2367323693%_ '0)))
                     (begin
                       (let ((_g27673_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27672_)
                                    (##values-length _g27672_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27673_ 2)))
                             (error "Context expects 2 values" _g27673_)))
                       (let ((_%target2367523696%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27672_ 0)))
                             (_%tl2367723699%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27672_ 1))))
                         (if (gx#stx-null? _%tl2367723699%_)
                             (letrec ((_%loop2367823702%_
                                       (lambda (_%hd2367623706%_
                                                _%type-body2368223709%_)
                                         (if (gx#stx-pair? _%hd2367623706%_)
                                             (let ((_%e2367923711%_
                                                    (gx#syntax-e
                                                     _%hd2367623706%_)))
                                               (let ((_%lp-hd2368023715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2367923711%_)))
                                                     (_%lp-tl2368123718%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2367923711%_))))
                                                 (_%loop2367823702%_
                                                  _%lp-tl2368123718%_
                                                  (cons _%lp-hd2368023715%_
                                                        _%type-body2368223709%_))))
                                             (let ((_%type-body2368323721%_
                                                    (reverse _%type-body2368223709%_)))
                                               ((lambda (_%g2367423724%_)
                                                  (let* ((_%g2374523753%_
                                                          (lambda (_%g2374623749%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2374623749%_)))
                                                         (_%g2374424659%_
                                                          (lambda (_%g2374623757%_)
                                                            ((lambda (_%g2374723760%_)
                                                               (let* ((_%g2377323781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2377423777%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2377423777%_)))
                              (_%g2377224588%_
                               (lambda (_%g2377423785%_)
                                 ((lambda (_%g2377523788%_)
                                    (let* ((_%g2380123809%_
                                            (lambda (_%g2380223805%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2380223805%_)))
                                           (_%g2380024553%_
                                            (lambda (_%g2380223813%_)
                                              ((lambda (_%g2380323816%_)
                                                 (let* ((_%g2382923837%_
                                                         (lambda (_%g2383023833%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2383023833%_)))
                                                        (_%g2382824469%_
                                                         (lambda (_%g2383023841%_)
                                                           ((lambda (_%g2383123844%_)
                                                              (let* ((_%g2385723865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2385823861%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2385823861%_)))
                             (_%g2385624457%_
                              (lambda (_%g2385823869%_)
                                ((lambda (_%g2385923872%_)
                                   (let* ((_%g2388523893%_
                                           (lambda (_%g2388623889%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2388623889%_)))
                                          (_%g2388424453%_
                                           (lambda (_%g2388623897%_)
                                             ((lambda (_%g2388723900%_)
                                                (let* ((_%g2391323921%_
                                                        (lambda (_%g2391423917%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2391423917%_)))
                                                       (_%g2391224449%_
                                                        (lambda (_%g2391423925%_)
                                                          ((lambda (_%g2391523928%_)
                                                             (let* ((_%g2394123949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2394223945%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2394223945%_)))
                            (_%g2394024414%_
                             (lambda (_%g2394223953%_)
                               ((lambda (_%g2394323956%_)
                                  (let* ((_%g2396923977%_
                                          (lambda (_%g2397023973%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2397023973%_)))
                                         (_%g2396824343%_
                                          (lambda (_%g2397023981%_)
                                            ((lambda (_%g2397123984%_)
                                               (let* ((_%g2399724005%_
                                                       (lambda (_%g2399824001%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2399824001%_)))
                                                      (_%g2399624339%_
                                                       (lambda (_%g2399824009%_)
                                                         ((lambda (_%g2399924012%_)
                                                            (let* ((_%g2402524033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2402624029%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2402624029%_)))
                           (_%g2402424335%_
                            (lambda (_%g2402624037%_)
                              ((lambda (_%g2402724040%_)
                                 (let* ((_%g2405324061%_
                                         (lambda (_%g2405424057%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2405424057%_)))
                                        (_%g2405224331%_
                                         (lambda (_%g2405424065%_)
                                           ((lambda (_%g2405524068%_)
                                              (let* ((_%g2408124089%_
                                                      (lambda (_%g2408224085%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2408224085%_)))
                                                     (_%g2408024305%_
                                                      (lambda (_%g2408224093%_)
                                                        ((lambda (_%g2408324096%_)
                                                           (let* ((_%g2410924117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2411024113%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2411024113%_)))
                          (_%g2410824279%_
                           (lambda (_%g2411024121%_)
                             ((lambda (_%g2411124124%_)
                                (let* ((_%g2413724145%_
                                        (lambda (_%g2413824141%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2413824141%_)))
                                       (_%g2413624253%_
                                        (lambda (_%g2413824149%_)
                                          ((lambda (_%g2413924152%_)
                                             (let* ((_%g2416524173%_
                                                     (lambda (_%g2416624169%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2416624169%_)))
                                                    (_%g2416424227%_
                                                     (lambda (_%g2416624177%_)
                                                       ((lambda (_%g2416724180%_)
                                                          (let* ((_%g2419324201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2419424197%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2419424197%_)))
                         (_%g2419224223%_
                          (lambda (_%g2419424205%_)
                            ((lambda (_%g2419524208%_)
                               (_%wrap22644%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2374723760%_
                                            (cons _%g2419524208%_ '())))))
                             _%g2419424205%_))))
                    (_%g2419224223%_
                     (_%wrap22644%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2266122674%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2377523788%_
                                                          (cons 'name:
                                                                (cons _%g2380323816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2385923872%_
                                          (cons 'super:
                                                (cons _%g2383123844%_
                                                      (cons 'struct?:
                                                            (cons _%g2388723900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2391523928%_
                                      (cons 'metaclass:
                                            (cons _%g2394323956%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2397123984%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2399924012%_
                                  (cons 'constructor:
                                        (cons _%g2402724040%_
                                              (cons 'predicate:
                                                    (cons _%g2405524068%_
                                                          (cons 'accessors:
                                                                (cons _%g2408324096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2411124124%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2413924152%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2416724180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2416624177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2416424227%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2329123341%_
                                                         _%g2280422854%_)
                                                        (foldr (lambda (_%g2423024237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2423124240%_
                                _%g2423224242%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2423124240%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2423024237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2423224242%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2342923479%_
                          _%g2301423064%_)
                         (foldr (lambda (_%g2423324245%_
                                         _%g2423424248%_
                                         _%g2423524250%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2423424248%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2423324245%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2423524250%_))
                                '()
                                _%g2342923479%_
                                _%g2301423064%_))
                       _%g2329123341%_
                       _%g2280422854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2413824149%_))))
                                  (_%g2413624253%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2322223272%_
                                            _%g2280422854%_)
                                           (foldr (lambda (_%g2425624263%_
                                                           _%g2425724266%_
                                                           _%g2425824268%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2425724266%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2425624263%_ '()))
                                          '()))))
                  _%g2425824268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2336023410%_
                                                     _%g2301423064%_)
                                                    (foldr (lambda (_%g2425924271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2426024274%_
                            _%g2426124276%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2426024274%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2425924271%_
                                                               '()))
                                                   '()))))
                           _%g2426124276%_))
                   '()
                   _%g2336023410%_
                   _%g2301423064%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2322223272%_
                                                  _%g2280422854%_))))))
                              _%g2411024121%_))))
                     (_%g2410824279%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2294222992%_
                               _%g2280422854%_)
                              (foldr (lambda (_%g2428224289%_
                                              _%g2428324292%_
                                              _%g2428424294%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2428324292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2428224289%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2428424294%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2315323203%_
                                        _%g2301423064%_)
                                       (foldr (lambda (_%g2428524297%_
                                                       _%g2428624300%_
                                                       _%g2428724302%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2428624300%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2428524297%_ '()))
                                      '()))))
              _%g2428724302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2315323203%_
                                              _%g2301423064%_))
                                     _%g2294222992%_
                                     _%g2280422854%_))))))
                 _%g2408224093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2408024305%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2287322923%_
                                                          _%g2280422854%_)
                                                         (foldr (lambda (_%g2430824315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2430924318%_
                                 _%g2431024320%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2430924318%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2430824315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2431024320%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2308423134%_
                           _%g2301423064%_)
                          (foldr (lambda (_%g2431124323%_
                                          _%g2431224326%_
                                          _%g2431324328%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2431224326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2431124323%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2431324328%_))
                                 '()
                                 _%g2308423134%_
                                 _%g2301423064%_))
                        _%g2287322923%_
                        _%g2280422854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2405424065%_))))
                                   (_%g2405224331%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2274822761%_ '())))))
                               _%g2402624037%_))))
                      (_%g2402424335%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2272022733%_ '())))))
                  _%g2399824009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2399624339%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2269222705%_
                                                              '())))))
                                             _%g2397023981%_))))
                                    (_%g2396824343%_
                                     (if (null? _%type-constructor23563%_)
                                         '#f
                                         (let* ((_%g2434724362%_
                                                 (lambda (_%g2434824358%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2434824358%_)))
                                                (_%g2434624410%_
                                                 (lambda (_%g2434824366%_)
                                                   (if (gx#stx-pair?
                                                        _%g2434824366%_)
                                                       (let ((_%e2435024369%_
                                                              (gx#syntax-e
                                                               _%g2434824366%_)))
                                                         (let ((_%hd2435124373%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2435024369%_)))
                       (_%tl2435224376%_
                        (let () (declare (not safe)) (##cdr _%e2435024369%_))))
                   (if (gx#stx-datum? _%hd2435124373%_)
                       (let ((_%e2435324379%_ (gx#stx-e _%hd2435124373%_)))
                         (if (equal? _%e2435324379%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2435224376%_)
                                 (let ((_%e2435424383%_
                                        (gx#syntax-e _%tl2435224376%_)))
                                   (let ((_%hd2435524387%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2435424383%_)))
                                         (_%tl2435624390%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2435424383%_))))
                                     (if (gx#stx-null? _%tl2435624390%_)
                                         ((lambda (_%g2434924393%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2434924393%_ '())))
                                          _%hd2435524387%_)
                                         (_%g2434724362%_ _%g2434824366%_))))
                                 (_%g2434724362%_ _%g2434824366%_))
                             (_%g2434724362%_ _%g2434824366%_)))
                       (_%g2434724362%_ _%g2434824366%_))))
               (_%g2434724362%_ _%g2434824366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2434624410%_
                                            _%type-constructor23563%_))))))
                                _%g2394223953%_))))
                       (_%g2394024414%_
                        (if _%metaclass23657%_
                            (let* ((_%g2441824426%_
                                    (lambda (_%g2441924422%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2441924422%_)))
                                   (_%g2441724445%_
                                    (lambda (_%g2441924430%_)
                                      ((lambda (_%g2442024433%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2442024433%_ '())))
                                       _%g2441924430%_))))
                              (_%g2441724445%_ _%metaclass23657%_))
                            '#f))))
                   _%g2391423925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2391224449%_
                                                   _%final?23663%_)))
                                              _%g2388623897%_))))
                                     (_%g2388424453%_ _%struct?22656%_)))
                                 _%g2385823869%_))))
                        (_%g2385624457%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2446024463%_
                                                     _%g2446124466%_)
                                              (cons _%g2446024463%_
                                                    _%g2446124466%_))
                                            '()
                                            _%g2280422854%_)
                                     '())))))
                    _%g2383023841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2382824469%_
                                                    (let* ((_%g2447324490%_
                                                            (lambda (_%g2447424486%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2447424486%_)))
                                                           (_%g2447224549%_
                                                            (lambda (_%g2447424494%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2447424494%_)
                          (let ((_g27674_
                                 (gx#syntax-split-splice _%g2447424494%_ '0)))
                            (begin
                              (let ((_g27675_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27674_)
                                           (##values-length _g27674_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27675_ 2)))
                                    (error "Context expects 2 values"
                                           _g27675_)))
                              (let ((_%target2447624497%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27674_ 0)))
                                    (_%tl2447824500%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27674_ 1))))
                                (if (gx#stx-null? _%tl2447824500%_)
                                    (letrec ((_%loop2447924503%_
                                              (lambda (_%hd2447724507%_
                                                       _%super-id2448324510%_)
                                                (if (gx#stx-pair?
                                                     _%hd2447724507%_)
                                                    (let ((_%e2448024512%_
                                                           (gx#syntax-e
                                                            _%hd2447724507%_)))
                                                      (let ((_%lp-hd2448124516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2448024512%_)))
                    (_%lp-tl2448224519%_
                     (let () (declare (not safe)) (##cdr _%e2448024512%_))))
                (_%loop2447924503%_
                 _%lp-tl2448224519%_
                 (cons _%lp-hd2448124516%_ _%super-id2448324510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2448424522%_
                                                           (reverse _%super-id2448324510%_)))
                                                      ((lambda (_%g2447524525%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2454024543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2454124546%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2454024543%_ '()))
                                      _%g2454124546%_))
                              '()
                              _%g2447524525%_)))
               _%super-id2448424522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2447924503%_
                                       _%target2447624497%_
                                       '()))
                                    (_%g2447324490%_ _%g2447424494%_)))))
                          (_%g2447324490%_ _%g2447424494%_)))))
              (_%g2447224549%_ _%super-ref22640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2380223813%_))))
                                      (_%g2380024553%_
                                       (let* ((_%g2455724565%_
                                               (lambda (_%g2455824561%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2455824561%_)))
                                              (_%g2455624584%_
                                               (lambda (_%g2455824569%_)
                                                 ((lambda (_%g2455924572%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2455924572%_
                                                                '())))
                                                  _%g2455824569%_))))
                                         (_%g2455624584%_
                                          (cadr _%type-name23542%_))))))
                                  _%g2377423785%_))))
                         (_%g2377224588%_
                          (let* ((_%g2459224607%_
                                  (lambda (_%g2459324603%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2459324603%_)))
                                 (_%g2459124655%_
                                  (lambda (_%g2459324611%_)
                                    (if (gx#stx-pair? _%g2459324611%_)
                                        (let ((_%e2459524614%_
                                               (gx#syntax-e _%g2459324611%_)))
                                          (let ((_%hd2459624618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2459524614%_)))
                                                (_%tl2459724621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2459524614%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2459624618%_)
                                                (let ((_%e2459824624%_
                                                       (gx#stx-e
                                                        _%hd2459624618%_)))
                                                  (if (equal? _%e2459824624%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2459724621%_)
                                                          (let ((_%e2459924628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2459724621%_)))
                    (let ((_%hd2460024632%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2459924628%_)))
                          (_%tl2460124635%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2459924628%_))))
                      (if (gx#stx-null? _%tl2460124635%_)
                          ((lambda (_%g2459424638%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2459424638%_ '())))
                           _%hd2460024632%_)
                          (_%g2459224607%_ _%g2459324611%_))))
                  (_%g2459224607%_ _%g2459324611%_))
              (_%g2459224607%_ _%g2459324611%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2459224607%_
                                                 _%g2459324611%_))))
                                        (_%g2459224607%_ _%g2459324611%_)))))
                            (_%g2459124655%_ _%type-id23549%_)))))
                     _%g2374623757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2374424659%_
                                                     (_%wrap22644%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2269222705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2277622789%_
                                (cons _%g2272022733%_
                                      (cons _%g2274822761%_
                                            (foldr (lambda (_%g2466224665%_
                                                            _%g2466324668%_)
                                                     (cons _%g2466224665%_
                                                           _%g2466324668%_))
                                                   '()
                                                   _%g2367423724%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2368323721%_))))))
                               (_%loop2367823702%_ _%target2367523696%_ '()))
                             (_%g2367223689%_ _%g2367323693%_)))))
                   (_%g2367223689%_ _%g2367323693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2367124671%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23535%_
                                                                _%type-slots23514%_)
                                                         _%type-properties23645%_)
                                                  _%type-metaclass23660%_)
                                           _%type-final23669%_)
                                    _%type-struct23666%_)
                             _%type-constructor23563%_)
                      _%type-name23542%_)
               _%type-id23549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2343823476%_))))))
                          (_%loop2343323457%_ _%target2343023451%_ '()))
                        (_%g2342723444%_ _%g2342823448%_)))))
              (_%g2342723444%_ _%g2342823448%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2342624675%_
                                           (gx#stx-map
                                            (lambda (_%g2467824680%_)
                                              (_%make-id22646%_
                                               '"&"
                                               _%g2467824680%_))
                                            (foldr (lambda (_%g2468324686%_
                                                            _%g2468424689%_)
                                                     (cons _%g2468324686%_
                                                           _%g2468424689%_))
                                                   '()
                                                   _%g2315323203%_)))))
                                      _%mixin-ugetf2336923407%_))))))
                     (_%loop2336423388%_ _%target2336123382%_ '()))
                   (_%g2335823375%_ _%g2335923379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2335823375%_
                                                  _%g2335923379%_)))))
                                     (_%g2335724692%_
                                      (gx#stx-map
                                       (lambda (_%g2469524697%_)
                                         (_%make-id22646%_
                                          '"&"
                                          _%g2469524697%_))
                                       (foldr (lambda (_%g2470024703%_
                                                       _%g2470124706%_)
                                                (cons _%g2470024703%_
                                                      _%g2470124706%_))
                                              '()
                                              _%g2308423134%_)))))
                                 _%usetf2330023338%_))))))
                (_%loop2329523319%_ _%target2329223313%_ '()))
              (_%g2328923306%_ _%g2329023310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2328923306%_
                                             _%g2329023310%_)))))
                                (_%g2328824709%_
                                 (gx#stx-map
                                  (lambda (_%g2471224714%_)
                                    (_%make-id22646%_ '"&" _%g2471224714%_))
                                  (foldr (lambda (_%g2471724720%_
                                                  _%g2471824723%_)
                                           (cons _%g2471724720%_
                                                 _%g2471824723%_))
                                         '()
                                         _%g2294222992%_)))))
                            _%ugetf2323123269%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2322623250%_
                                                    _%target2322323244%_
                                                    '()))
                                                 (_%g2322023237%_
                                                  _%g2322123241%_)))))
                                       (_%g2322023237%_ _%g2322123241%_)))))
                           (_%g2321924726%_
                            (gx#stx-map
                             (lambda (_%g2472924731%_)
                               (_%make-id22646%_ '"&" _%g2472924731%_))
                             (foldr (lambda (_%g2473424737%_ _%g2473524740%_)
                                      (cons _%g2473424737%_ _%g2473524740%_))
                                    '()
                                    _%g2287322923%_)))))
                       _%mixin-setf2316223200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2315723181%_
                                               _%target2315423175%_
                                               '()))
                                            (_%g2315123168%_
                                             _%g2315223172%_)))))
                                  (_%g2315123168%_ _%g2315223172%_)))))
                      (_%g2315024743%_
                       (gx#stx-map
                        (lambda (_%g2474624748%_)
                          (_%make-id22646%_
                           _%name22650%_
                           '"-"
                           _%g2474624748%_
                           '"-set!"))
                        _%mixin-slots23009%_))))
                  _%mixin-getf2309323131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2308823112%_
                                          _%target2308523106%_
                                          '()))
                                       (_%g2308223099%_ _%g2308323103%_)))))
                             (_%g2308223099%_ _%g2308323103%_)))))
                 (_%g2308124752%_
                  (gx#stx-map
                   (lambda (_%g2475524757%_)
                     (_%make-id22646%_ _%name22650%_ '"-" _%g2475524757%_))
                   _%mixin-slots23009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2302323061%_))))))
                                    (_%loop2301823042%_
                                     _%target2301523036%_
                                     '()))
                                  (_%g2301223029%_ _%g2301323033%_)))))
                        (_%g2301223029%_ _%g2301323033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2301124761%_
                                                     _%mixin-slots23009%_)))
                                                _%setf2295122989%_))))))
                               (_%loop2294622970%_ _%target2294322964%_ '()))
                             (_%g2294022957%_ _%g2294122961%_)))))
                   (_%g2294022957%_ _%g2294122961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2293924765%_
                                                (gx#stx-map
                                                 (lambda (_%g2476824770%_)
                                                   (_%make-id22646%_
                                                    _%name22650%_
                                                    '"-"
                                                    _%g2476824770%_
                                                    '"-set!"))
                                                 _%slots22641%_))))
                                           _%getf2288222920%_))))))
                          (_%loop2287722901%_ _%target2287422895%_ '()))
                        (_%g2287122888%_ _%g2287222892%_)))))
              (_%g2287122888%_ _%g2287222892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2287024774%_
                                           (gx#stx-map
                                            (lambda (_%g2477724779%_)
                                              (_%make-id22646%_
                                               _%name22650%_
                                               '"-"
                                               _%g2477724779%_))
                                            _%slots22641%_))))
                                      _%slot2281322851%_))))))
                     (_%loop2280822832%_ _%target2280522826%_ '()))
                   (_%g2280222819%_ _%g2280322823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2280222819%_
                                                  _%g2280322823%_)))))
                                     (_%g2280124783%_ _%slots22641%_)))
                                 _%g2277522786%_))))
                        (_%g2277324787%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22653%_)))))
                    _%g2274722758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2274524791%_
                                                    (_%make-id22646%_
                                                     _%name22650%_
                                                     '"?"))))
                                               _%g2271922730%_))))
                                      (_%g2271724795%_
                                       (_%make-id22646%_
                                        '"make-"
                                        _%name22650%_))))
                                  _%g2269122702%_))))
                         (_%g2268924799%_
                          (_%make-id22646%_ _%name22650%_ '"::t"))))
                     _%g2266022671%_))))
            (_%g2265824803%_ _%id22639%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24870%_)
        (let* ((_%g2487424893%_
                (lambda (_%g2487524889%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2487524889%_)))
               (_%g2487324950%_
                (lambda (_%g2487524897%_)
                  (if (gx#stx-pair? _%g2487524897%_)
                      (let ((_%e2487924900%_ (gx#syntax-e _%g2487524897%_)))
                        (let ((_%hd2488024904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2487924900%_)))
                              (_%tl2488124907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2487924900%_))))
                          (if (gx#stx-pair? _%tl2488124907%_)
                              (let ((_%e2488224910%_
                                     (gx#syntax-e _%tl2488124907%_)))
                                (let ((_%hd2488324914%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2488224910%_)))
                                      (_%tl2488424917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2488224910%_))))
                                  (if (gx#stx-pair? _%tl2488424917%_)
                                      (let ((_%e2488524920%_
                                             (gx#syntax-e _%tl2488424917%_)))
                                        (let ((_%hd2488624924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2488524920%_)))
                                              (_%tl2488724927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2488524920%_))))
                                          ((lambda (_%g2487624930%_
                                                    _%g2487724932%_
                                                    _%g2487824933%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2487824933%_
                                                         (cons _%g2487724932%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2487624930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2488724927%_
                                           _%hd2488624924%_
                                           _%hd2488324914%_)))
                                      (_%g2487424893%_ _%g2487524897%_))))
                              (_%g2487424893%_ _%g2487524897%_))))
                      (_%g2487424893%_ _%g2487524897%_)))))
          (_%g2487324950%_ _%$stx24870%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24954%_)
        (letrec ((_%generate24957%_
                  (lambda (_%hd25041%_ _%slots25043%_ _%body25044%_)
                    (let* ((_%__stx2714827149%_ _%hd25041%_)
                           (_%g2504725059%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2714827149%_))))
                      (let ((_%__kont2715127152%_
                             (lambda (_%g2504925087%_ _%g2505025089%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24954%_
                                _%g2505025089%_
                                (gx#syntax->list _%g2504925087%_)
                                _%slots25043%_
                                _%body25044%_)))
                            (_%__kont2715327154%_
                             (lambda ()
                               (if (gx#identifier? _%hd25041%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24954%_
                                    _%hd25041%_
                                    '()
                                    _%slots25043%_
                                    _%body25044%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24954%_
                                    _%hd25041%_)))))
                        (let ((_%__match2716127162%_
                               (lambda (_%e2505125077%_
                                        _%hd2505225081%_
                                        _%tl2505325084%_)
                                 (let ((_%g2504925087%_ _%tl2505325084%_)
                                       (_%g2505025089%_ _%hd2505225081%_))
                                   (if (and (gx#stx-list? _%g2504925087%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2504925087%_))
                                       (_%__kont2715127152%_
                                        _%g2504925087%_
                                        _%g2505025089%_)
                                       (_%__kont2715327154%_))))))
                          (if (gx#stx-pair? _%__stx2714827149%_)
                              (let ((_%e2505125077%_
                                     (gx#syntax-e _%__stx2714827149%_)))
                                (let ((_%tl2505325084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2505125077%_)))
                                      (_%hd2505225081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2505125077%_))))
                                  (_%__match2716127162%_
                                   _%e2505125077%_
                                   _%hd2505225081%_
                                   _%tl2505325084%_)))
                              (_%__kont2715327154%_))))))))
          (let* ((_%g2496024979%_
                  (lambda (_%g2496124975%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2496124975%_)))
                 (_%g2495925037%_
                  (lambda (_%g2496124983%_)
                    (if (gx#stx-pair? _%g2496124983%_)
                        (let ((_%e2496524986%_ (gx#syntax-e _%g2496124983%_)))
                          (let ((_%hd2496624990%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2496524986%_)))
                                (_%tl2496724993%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2496524986%_))))
                            (if (gx#stx-pair? _%tl2496724993%_)
                                (let ((_%e2496824996%_
                                       (gx#syntax-e _%tl2496724993%_)))
                                  (let ((_%hd2496925000%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2496824996%_)))
                                        (_%tl2497025003%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2496824996%_))))
                                    (if (gx#stx-pair? _%tl2497025003%_)
                                        (let ((_%e2497125006%_
                                               (gx#syntax-e _%tl2497025003%_)))
                                          (let ((_%hd2497225010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2497125006%_)))
                                                (_%tl2497325013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2497125006%_))))
                                            ((lambda (_%g2496225016%_
                                                      _%g2496325018%_
                                                      _%g2496425019%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2496325018%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2496225016%_))
                                                   (_%generate24957%_
                                                    _%g2496425019%_
                                                    _%g2496325018%_
                                                    _%g2496225016%_)
                                                   (_%g2496024979%_
                                                    _%g2496124983%_)))
                                             _%tl2497325013%_
                                             _%hd2497225010%_
                                             _%hd2496925000%_)))
                                        (_%g2496024979%_ _%g2496124983%_))))
                                (_%g2496024979%_ _%g2496124983%_))))
                        (_%g2496024979%_ _%g2496124983%_)))))
            (_%g2495925037%_ _%stx24954%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25106%_)
        (letrec ((_%wrap25109%_
                  (lambda (_%e-stx25455%_)
                    (gx#stx-wrap-source
                     _%e-stx25455%_
                     (gx#stx-source _%stx25106%_))))
                 (_%method-opt?25111%_
                  (lambda (_%x25452%_)
                    (let ((__tmp27676 (gx#stx-e _%x25452%_)))
                      (declare (not safe))
                      (##memq __tmp27676 '(rebind:))))))
          (let* ((_%g2511325142%_
                  (lambda (_%g2511425138%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2511425138%_)))
                 (_%g2511225448%_
                  (lambda (_%g2511425146%_)
                    (if (gx#stx-pair? _%g2511425146%_)
                        (let ((_%e2511925149%_ (gx#syntax-e _%g2511425146%_)))
                          (let ((_%hd2512025153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2511925149%_)))
                                (_%tl2512125156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2511925149%_))))
                            (if (gx#stx-pair? _%tl2512125156%_)
                                (let ((_%e2512225159%_
                                       (gx#syntax-e _%tl2512125156%_)))
                                  (let ((_%hd2512325163%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2512225159%_)))
                                        (_%tl2512425166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2512225159%_))))
                                    (if (gx#stx-pair? _%hd2512325163%_)
                                        (let ((_%e2512525169%_
                                               (gx#syntax-e _%hd2512325163%_)))
                                          (let ((_%hd2512625173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2512525169%_)))
                                                (_%tl2512725176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2512525169%_))))
                                            (if (gx#identifier?
                                                 _%hd2512625173%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27677_|
                                                     _%hd2512625173%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2512725176%_)
                                                        (let ((_%e2512825179%_
                                                               (gx#syntax-e
                                                                _%tl2512725176%_)))
                                                          (let ((_%hd2512925183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2512825179%_)))
                        (_%tl2513025186%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2512825179%_))))
                    (if (gx#stx-pair? _%tl2513025186%_)
                        (let ((_%e2513125189%_ (gx#syntax-e _%tl2513025186%_)))
                          (let ((_%hd2513225193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2513125189%_)))
                                (_%tl2513325196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2513125189%_))))
                            (if (gx#stx-null? _%tl2513325196%_)
                                (if (gx#stx-pair? _%tl2512425166%_)
                                    (let ((_%e2513425199%_
                                           (gx#syntax-e _%tl2512425166%_)))
                                      (let ((_%hd2513525203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2513425199%_)))
                                            (_%tl2513625206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2513425199%_))))
                                        ((lambda (_%g2511525209%_
                                                  _%g2511625211%_
                                                  _%g2511725212%_
                                                  _%g2511825213%_)
                                           (if (and (gx#identifier?
                                                     _%g2511825213%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2511725212%_))
                                                    (gx#stx-plist?
                                                     _%g2511525209%_
                                                     _%method-opt?25111%_))
                                               (let* ((_%klass25240%_
                                                       (gx#syntax-local-value
                                                        _%g2511725212%_))
                                                      (_%rebind?25243%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2511525209%_)))
                                                      (_%g2524625254%_
                                                       (lambda (_%g2524725250%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2524725250%_)))
                                                      (_%g2524525438%_
                                                       (lambda (_%g2524725258%_)
                                                         ((lambda (_%g2524825261%_)
                                                            (let* ((_%g2527625284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2527725280%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2527725280%_)))
                           (_%g2527525434%_
                            (lambda (_%g2527725288%_)
                              ((lambda (_%g2527825291%_)
                                 (let* ((_%g2530425312%_
                                         (lambda (_%g2530525308%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2530525308%_)))
                                        (_%g2530325430%_
                                         (lambda (_%g2530525316%_)
                                           ((lambda (_%g2530625319%_)
                                              (let* ((_%g2533225340%_
                                                      (lambda (_%g2533325336%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2533325336%_)))
                                                     (_%g2533125426%_
                                                      (lambda (_%g2533325344%_)
                                                        ((lambda (_%g2533425347%_)
                                                           (let* ((_%g2536025368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2536125364%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2536125364%_)))
                          (_%g2535925422%_
                           (lambda (_%g2536125372%_)
                             ((lambda (_%g2536225375%_)
                                (let* ((_%g2538825396%_
                                        (lambda (_%g2538925392%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2538925392%_)))
                                       (_%g2538725418%_
                                        (lambda (_%g2538925400%_)
                                          ((lambda (_%g2539025403%_)
                                             (_%wrap25109%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2533425347%_
                                                          (cons _%g2539025403%_
                                                                '())))))
                                           _%g2538925400%_))))
                                  (_%g2538725418%_
                                   (_%wrap25109%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2524825261%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2511825213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2527825291%_ (cons _%g2536225375%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2536125372%_))))
                     (_%g2535925422%_ _%rebind?25243%_)))
                 _%g2533325344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2533125426%_
                                                 (_%wrap25109%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2527825291%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2530625319%_
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
                                                      (cons _%g2524825261%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2511825213%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2511625211%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2530525316%_))))
                                   (_%g2530325430%_
                                    (gx#stx-identifier
                                     _%g2511725212%_
                                     '@next-method))))
                               _%g2527725288%_))))
                      (_%g2527525434%_
                       (gx#stx-identifier
                        _%g2511725212%_
                        _%g2511725212%_
                        '"::"
                        _%g2511825213%_))))
                  _%g2524725258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2524525438%_
                                                  (let ((__obj27426
                                                         _%klass25240%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27426
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27426
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27426
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2511825213%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2511725212%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25106%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25106%_
                                                        _%g2511725212%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25106%_
                                                    _%g2511825213%_))))
                                         _%tl2513625206%_
                                         _%hd2513525203%_
                                         _%hd2513225193%_
                                         _%hd2512925183%_)))
                                    (_%g2511325142%_ _%g2511425146%_))
                                (_%g2511325142%_ _%g2511425146%_))))
                        (_%g2511325142%_ _%g2511425146%_))))
                (_%g2511325142%_ _%g2511425146%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2511325142%_
                                                     _%g2511425146%_))
                                                (_%g2511325142%_
                                                 _%g2511425146%_))))
                                        (_%g2511325142%_ _%g2511425146%_))))
                                (_%g2511325142%_ _%g2511425146%_))))
                        (_%g2511325142%_ _%g2511425146%_)))))
            (_%g2511225448%_ _%stx25106%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25458%_)
        (letrec ((_%dotted-identifier?25461%_
                  (lambda (_%id26086%_)
                    (if (gx#identifier? _%id26086%_)
                        (let ((_%id-str26089%_
                               (symbol->string (gx#stx-e _%id26086%_))))
                          (if (string-index _%id-str26089%_ '#\.)
                              (let* ((_%split26092%_
                                      (string-split _%id-str26089%_ '#\.))
                                     (__tmp27678 (length _%split26092%_)))
                                (declare (not safe))
                                (##fx= __tmp27678 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25463%_
                  (lambda (_%id26075%_)
                    (let* ((_%id-str26078%_
                            (symbol->string (gx#stx-e _%id26075%_)))
                           (_%split26081%_
                            (string-split _%id-str26078%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26075%_
                             (car _%split26081%_))
                            (cons (gx#stx-identifier
                                   _%id26075%_
                                   (cadr _%split26081%_))
                                  '()))))))
          (let* ((_%__stx2716427165%_ _%stx25458%_)
                 (_%g2546825555%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2716427165%_))))
            (let ((_%__kont2716727168%_
                   (lambda (_%g2547025968%_ _%g2547125970%_ _%g2547225971%_)
                     (let* ((_%g2599926014%_
                             (lambda (_%g2600026010%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2600026010%_)))
                            (_%g2599826067%_
                             (lambda (_%g2600026018%_)
                               (if (gx#stx-pair? _%g2600026018%_)
                                   (let ((_%e2600326021%_
                                          (gx#syntax-e _%g2600026018%_)))
                                     (let ((_%hd2600426025%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2600326021%_)))
                                           (_%tl2600526028%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2600326021%_))))
                                       (if (gx#stx-pair? _%tl2600526028%_)
                                           (let ((_%e2600626031%_
                                                  (gx#syntax-e
                                                   _%tl2600526028%_)))
                                             (let ((_%hd2600726035%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2600626031%_)))
                                                   (_%tl2600826038%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2600626031%_))))
                                               (if (gx#stx-null?
                                                    _%tl2600826038%_)
                                                   ((lambda (_%g2600126041%_
                                                             _%g2600226043%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2600226043%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2600126041%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2605826061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2605926064%_)
                   (cons _%g2605826061%_ _%g2605926064%_))
                 '()
                 _%g2547125970%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2600726035%_
                                                    _%hd2600426025%_)
                                                   (_%g2599926014%_
                                                    _%g2600026018%_))))
                                           (_%g2599926014%_ _%g2600026018%_))))
                                   (_%g2599926014%_ _%g2600026018%_)))))
                       (_%g2599826067%_
                        (_%split-dotted25463%_ _%g2547225971%_)))))
                  (_%__kont2717127172%_
                   (lambda (_%g2549125812%_ _%g2549225814%_)
                     (let* ((_%g2583125846%_
                             (lambda (_%g2583225842%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2583225842%_)))
                            (_%g2583025899%_
                             (lambda (_%g2583225850%_)
                               (if (gx#stx-pair? _%g2583225850%_)
                                   (let ((_%e2583525853%_
                                          (gx#syntax-e _%g2583225850%_)))
                                     (let ((_%hd2583625857%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2583525853%_)))
                                           (_%tl2583725860%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2583525853%_))))
                                       (if (gx#stx-pair? _%tl2583725860%_)
                                           (let ((_%e2583825863%_
                                                  (gx#syntax-e
                                                   _%tl2583725860%_)))
                                             (let ((_%hd2583925867%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2583825863%_)))
                                                   (_%tl2584025870%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2583825863%_))))
                                               (if (gx#stx-null?
                                                    _%tl2584025870%_)
                                                   ((lambda (_%g2583325873%_
                                                             _%g2583425875%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2583425875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2583325873%_ '()))
                                (foldr (lambda (_%g2589025893%_
                                                _%g2589125896%_)
                                         (cons _%g2589025893%_
                                               _%g2589125896%_))
                                       '()
                                       _%g2549125812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2583925867%_
                                                    _%hd2583625857%_)
                                                   (_%g2583125846%_
                                                    _%g2583225850%_))))
                                           (_%g2583125846%_ _%g2583225850%_))))
                                   (_%g2583125846%_ _%g2583225850%_)))))
                       (_%g2583025899%_
                        (_%split-dotted25463%_ _%g2549225814%_)))))
                  (_%__kont2717527176%_
                   (lambda (_%g2550825718%_ _%g2550925720%_ _%g2551025721%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2550925720%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2551025721%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2574825751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2574925754%_)
                          (cons _%g2574825751%_ _%g2574925754%_))
                        '()
                        _%g2550825718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2717927180%_
                   (lambda (_%g2552925620%_ _%g2553025622%_ _%g2553125623%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2553025622%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2553125623%_ '()))
                                       (foldr (lambda (_%g2564425647%_
                                                       _%g2564525650%_)
                                                (cons _%g2564425647%_
                                                      _%g2564525650%_))
                                              '()
                                              _%g2552925620%_)))))))
              (let* ((_%__match2728327284%_
                      (lambda (_%e2553225562%_
                               _%hd2553325566%_
                               _%tl2553425569%_
                               _%e2553525572%_
                               _%hd2553625576%_
                               _%tl2553725579%_
                               _%e2553825582%_
                               _%hd2553925586%_
                               _%tl2554025589%_
                               _%__splice2718127182%_
                               _%target2554125592%_
                               _%tl2554325595%_)
                        (letrec ((_%loop2554425598%_
                                  (lambda (_%hd2554225602%_ _%arg2554825605%_)
                                    (if (gx#stx-pair? _%hd2554225602%_)
                                        (let ((_%e2554525607%_
                                               (gx#syntax-e _%hd2554225602%_)))
                                          (let ((_%lp-tl2554725614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554525607%_)))
                                                (_%lp-hd2554625611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554525607%_))))
                                            (_%loop2554425598%_
                                             _%lp-tl2554725614%_
                                             (cons _%lp-hd2554625611%_
                                                   _%arg2554825605%_))))
                                        (let ((_%arg2554925617%_
                                               (reverse _%arg2554825605%_)))
                                          (let ((_%g2552925620%_
                                                 _%arg2554925617%_)
                                                (_%g2553025622%_
                                                 _%hd2553925586%_)
                                                (_%g2553125623%_
                                                 _%hd2553625576%_))
                                            (if (gx#identifier?
                                                 _%g2553125623%_)
                                                (_%__kont2717927180%_
                                                 _%g2552925620%_
                                                 _%g2553025622%_
                                                 _%g2553125623%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2546825555%_)))))))))
                          (_%loop2554425598%_ _%target2554125592%_ '()))))
                     (_%__match2725727258%_
                      (lambda (_%e2551125660%_
                               _%hd2551225664%_
                               _%tl2551325667%_
                               _%e2551425670%_
                               _%hd2551525674%_
                               _%tl2551625677%_
                               _%e2551725680%_
                               _%hd2551825684%_
                               _%tl2551925687%_
                               _%__splice2717727178%_
                               _%target2552025690%_
                               _%tl2552225693%_)
                        (letrec ((_%loop2552325696%_
                                  (lambda (_%hd2552125700%_ _%arg2552725703%_)
                                    (if (gx#stx-pair? _%hd2552125700%_)
                                        (let ((_%e2552425705%_
                                               (gx#syntax-e _%hd2552125700%_)))
                                          (let ((_%lp-tl2552625712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552425705%_)))
                                                (_%lp-hd2552525709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552425705%_))))
                                            (_%loop2552325696%_
                                             _%lp-tl2552625712%_
                                             (cons _%lp-hd2552525709%_
                                                   _%arg2552725703%_))))
                                        (let ((_%arg2552825715%_
                                               (reverse _%arg2552725703%_)))
                                          (let ((_%g2550825718%_
                                                 _%arg2552825715%_)
                                                (_%g2550925720%_
                                                 _%hd2551825684%_)
                                                (_%g2551025721%_
                                                 _%hd2551525674%_))
                                            (if (and (gx#identifier?
                                                      _%g2551025721%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2574025743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2574125746%_)
                       (cons _%g2574025743%_ _%g2574125746%_))
                     '()
                     _%g2550825718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2717527176%_
                                                 _%g2550825718%_
                                                 _%g2550925720%_
                                                 _%g2551025721%_)
                                                (_%__match2728327284%_
                                                 _%e2551125660%_
                                                 _%hd2551225664%_
                                                 _%tl2551325667%_
                                                 _%e2551425670%_
                                                 _%hd2551525674%_
                                                 _%tl2551625677%_
                                                 _%e2551725680%_
                                                 _%hd2551825684%_
                                                 _%tl2551925687%_
                                                 _%__splice2717727178%_
                                                 _%target2552025690%_
                                                 _%tl2552225693%_))))))))
                          (_%loop2552325696%_ _%target2552025690%_ '()))))
                     (_%__match2724327244%_
                      (lambda (_%e2551125660%_
                               _%hd2551225664%_
                               _%tl2551325667%_
                               _%e2551425670%_
                               _%hd2551525674%_
                               _%tl2551625677%_)
                        (if (gx#stx-pair? _%tl2551625677%_)
                            (let ((_%e2551725680%_
                                   (gx#syntax-e _%tl2551625677%_)))
                              (let ((_%tl2551925687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551725680%_)))
                                    (_%hd2551825684%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551725680%_))))
                                (if (gx#stx-pair/null? _%tl2551925687%_)
                                    (let ((_%__splice2717727178%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2551925687%_
                                            '0)))
                                      (let ((_%tl2552225693%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717727178%_
                                                '1)))
                                            (_%target2552025690%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717727178%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2552225693%_)
                                            (_%__match2725727258%_
                                             _%e2551125660%_
                                             _%hd2551225664%_
                                             _%tl2551325667%_
                                             _%e2551425670%_
                                             _%hd2551525674%_
                                             _%tl2551625677%_
                                             _%e2551725680%_
                                             _%hd2551825684%_
                                             _%tl2551925687%_
                                             _%__splice2717727178%_
                                             _%target2552025690%_
                                             _%tl2552225693%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2546825555%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2546825555%_)))))
                            (let () (declare (not safe)) (_%g2546825555%_)))))
                     (_%__match2723127232%_
                      (lambda (_%e2549325764%_
                               _%hd2549425768%_
                               _%tl2549525771%_
                               _%e2549625774%_
                               _%hd2549725778%_
                               _%tl2549825781%_
                               _%__splice2717327174%_
                               _%target2549925784%_
                               _%tl2550125787%_)
                        (letrec ((_%loop2550225790%_
                                  (lambda (_%hd2550025794%_ _%arg2550625797%_)
                                    (if (gx#stx-pair? _%hd2550025794%_)
                                        (let ((_%e2550325799%_
                                               (gx#syntax-e _%hd2550025794%_)))
                                          (let ((_%lp-tl2550525806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550325799%_)))
                                                (_%lp-hd2550425803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550325799%_))))
                                            (_%loop2550225790%_
                                             _%lp-tl2550525806%_
                                             (cons _%lp-hd2550425803%_
                                                   _%arg2550625797%_))))
                                        (let ((_%arg2550725809%_
                                               (reverse _%arg2550625797%_)))
                                          (let ((_%g2549125812%_
                                                 _%arg2550725809%_)
                                                (_%g2549225814%_
                                                 _%hd2549725778%_))
                                            (if (_%dotted-identifier?25461%_
                                                 _%g2549225814%_)
                                                (_%__kont2717127172%_
                                                 _%g2549125812%_
                                                 _%g2549225814%_)
                                                (_%__match2724327244%_
                                                 _%e2549325764%_
                                                 _%hd2549425768%_
                                                 _%tl2549525771%_
                                                 _%e2549625774%_
                                                 _%hd2549725778%_
                                                 _%tl2549825781%_))))))))
                          (_%loop2550225790%_ _%target2549925784%_ '()))))
                     (_%__match2722927230%_
                      (lambda (_%e2549325764%_
                               _%hd2549425768%_
                               _%tl2549525771%_
                               _%e2549625774%_
                               _%hd2549725778%_
                               _%tl2549825781%_
                               _%__splice2717327174%_
                               _%target2549925784%_
                               _%tl2550125787%_)
                        (if (gx#stx-null? _%tl2550125787%_)
                            (_%__match2723127232%_
                             _%e2549325764%_
                             _%hd2549425768%_
                             _%tl2549525771%_
                             _%e2549625774%_
                             _%hd2549725778%_
                             _%tl2549825781%_
                             _%__splice2717327174%_
                             _%target2549925784%_
                             _%tl2550125787%_)
                            (if (gx#stx-pair? _%tl2549825781%_)
                                (let ((_%e2551725680%_
                                       (gx#syntax-e _%tl2549825781%_)))
                                  (let ((_%tl2551925687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2551725680%_)))
                                        (_%hd2551825684%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2551725680%_))))
                                    (if (gx#stx-pair/null? _%tl2551925687%_)
                                        (let ((_%__splice2717727178%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2551925687%_
                                                '0)))
                                          (let ((_%tl2552225693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717727178%_
                                                    '1)))
                                                (_%target2552025690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717727178%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2552225693%_)
                                                (_%__match2725727258%_
                                                 _%e2549325764%_
                                                 _%hd2549425768%_
                                                 _%tl2549525771%_
                                                 _%e2549625774%_
                                                 _%hd2549725778%_
                                                 _%tl2549825781%_
                                                 _%e2551725680%_
                                                 _%hd2551825684%_
                                                 _%tl2551925687%_
                                                 _%__splice2717727178%_
                                                 _%target2552025690%_
                                                 _%tl2552225693%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2546825555%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2546825555%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2546825555%_))))))
                     (_%__match2721127212%_
                      (lambda (_%e2547325910%_
                               _%hd2547425914%_
                               _%tl2547525917%_
                               _%e2547625920%_
                               _%hd2547725924%_
                               _%tl2547825927%_
                               _%__splice2716927170%_
                               _%target2547925930%_
                               _%tl2548125933%_
                               _%e2548825936%_
                               _%hd2548925940%_
                               _%tl2549025943%_)
                        (letrec ((_%loop2548225946%_
                                  (lambda (_%hd2548025950%_ _%arg2548625953%_)
                                    (if (gx#stx-pair? _%hd2548025950%_)
                                        (let ((_%e2548325955%_
                                               (gx#syntax-e _%hd2548025950%_)))
                                          (let ((_%lp-tl2548525962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548325955%_)))
                                                (_%lp-hd2548425959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548325955%_))))
                                            (_%loop2548225946%_
                                             _%lp-tl2548525962%_
                                             (cons _%lp-hd2548425959%_
                                                   _%arg2548625953%_))))
                                        (let ((_%arg2548725965%_
                                               (reverse _%arg2548625953%_)))
                                          (let ((_%g2547025968%_
                                                 _%hd2548925940%_)
                                                (_%g2547125970%_
                                                 _%arg2548725965%_)
                                                (_%g2547225971%_
                                                 _%hd2547725924%_))
                                            (if (and (_%dotted-identifier?25461%_
                                                      _%g2547225971%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2599025993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2599125996%_)
                       (cons _%g2599025993%_ _%g2599125996%_))
                     '()
                     _%g2547125970%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2716727168%_
                                                 _%g2547025968%_
                                                 _%g2547125970%_
                                                 _%g2547225971%_)
                                                (let ((_%__splice2717327174%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2547825927%_
                                                        '0)))
                                                  (let ((_%tl2550125787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717327174%_
                                                            '1)))
                                                        (_%target2549925784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717327174%_
                                                            '0))))
                                                    (_%__match2722927230%_
                                                     _%e2547325910%_
                                                     _%hd2547425914%_
                                                     _%tl2547525917%_
                                                     _%e2547625920%_
                                                     _%hd2547725924%_
                                                     _%tl2547825927%_
                                                     _%__splice2717327174%_
                                                     _%target2549925784%_
                                                     _%tl2550125787%_))))))))))
                          (_%loop2548225946%_ _%target2547925930%_ '())))))
                (if (gx#stx-pair? _%__stx2716427165%_)
                    (let ((_%e2547325910%_ (gx#syntax-e _%__stx2716427165%_)))
                      (let ((_%tl2547525917%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2547325910%_)))
                            (_%hd2547425914%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2547325910%_))))
                        (if (gx#stx-pair? _%tl2547525917%_)
                            (let ((_%e2547625920%_
                                   (gx#syntax-e _%tl2547525917%_)))
                              (let ((_%tl2547825927%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547625920%_)))
                                    (_%hd2547725924%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547625920%_))))
                                (if (gx#stx-pair/null? _%tl2547825927%_)
                                    (if (let ((__tmp27679
                                               (gx#stx-length
                                                _%tl2547825927%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27679 '1))
                                        (let ((_%__splice2716927170%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2547825927%_
                                                '1)))
                                          (let ((_%tl2548125933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2716927170%_
                                                    '1)))
                                                (_%target2547925930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2716927170%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2548125933%_)
                                                (let ((_%e2548825936%_
                                                       (gx#syntax-e
                                                        _%tl2548125933%_)))
                                                  (let ((_%tl2549025943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2548825936%_)))
                                                        (_%hd2548925940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2548825936%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2549025943%_)
                                                        (_%__match2721127212%_
                                                         _%e2547325910%_
                                                         _%hd2547425914%_
                                                         _%tl2547525917%_
                                                         _%e2547625920%_
                                                         _%hd2547725924%_
                                                         _%tl2547825927%_
                                                         _%__splice2716927170%_
                                                         _%target2547925930%_
                                                         _%tl2548125933%_
                                                         _%e2548825936%_
                                                         _%hd2548925940%_
                                                         _%tl2549025943%_)
                                                        (let ((_%__splice2717327174%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2547825927%_
                                                                '0)))
                                                          (let ((_%tl2550125787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2717327174%_ '1)))
                        (_%target2549925784%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2717327174%_ '0))))
                    (if (gx#stx-null? _%tl2550125787%_)
                        (_%__match2723127232%_
                         _%e2547325910%_
                         _%hd2547425914%_
                         _%tl2547525917%_
                         _%e2547625920%_
                         _%hd2547725924%_
                         _%tl2547825927%_
                         _%__splice2717327174%_
                         _%target2549925784%_
                         _%tl2550125787%_)
                        (if (gx#stx-pair? _%tl2547825927%_)
                            (let ((_%e2551725680%_
                                   (gx#syntax-e _%tl2547825927%_)))
                              (let ((_%tl2551925687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551725680%_)))
                                    (_%hd2551825684%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551725680%_))))
                                (if (gx#stx-pair/null? _%tl2551925687%_)
                                    (let ((_%__splice2717727178%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2551925687%_
                                            '0)))
                                      (let ((_%tl2552225693%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717727178%_
                                                '1)))
                                            (_%target2552025690%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717727178%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2552225693%_)
                                            (_%__match2725727258%_
                                             _%e2547325910%_
                                             _%hd2547425914%_
                                             _%tl2547525917%_
                                             _%e2547625920%_
                                             _%hd2547725924%_
                                             _%tl2547825927%_
                                             _%e2551725680%_
                                             _%hd2551825684%_
                                             _%tl2551925687%_
                                             _%__splice2717727178%_
                                             _%target2552025690%_
                                             _%tl2552225693%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2546825555%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2546825555%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2546825555%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2717327174%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2547825927%_
                                                        '0)))
                                                  (let ((_%tl2550125787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717327174%_
                                                            '1)))
                                                        (_%target2549925784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717327174%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2550125787%_)
                                                        (_%__match2723127232%_
                                                         _%e2547325910%_
                                                         _%hd2547425914%_
                                                         _%tl2547525917%_
                                                         _%e2547625920%_
                                                         _%hd2547725924%_
                                                         _%tl2547825927%_
                                                         _%__splice2717327174%_
                                                         _%target2549925784%_
                                                         _%tl2550125787%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2547825927%_)
                                                            (let ((_%e2551725680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2547825927%_)))
                      (let ((_%tl2551925687%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2551725680%_)))
                            (_%hd2551825684%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2551725680%_))))
                        (if (gx#stx-pair/null? _%tl2551925687%_)
                            (let ((_%__splice2717727178%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2551925687%_
                                    '0)))
                              (let ((_%tl2552225693%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2717727178%_
                                        '1)))
                                    (_%target2552025690%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2717727178%_
                                        '0))))
                                (if (gx#stx-null? _%tl2552225693%_)
                                    (_%__match2725727258%_
                                     _%e2547325910%_
                                     _%hd2547425914%_
                                     _%tl2547525917%_
                                     _%e2547625920%_
                                     _%hd2547725924%_
                                     _%tl2547825927%_
                                     _%e2551725680%_
                                     _%hd2551825684%_
                                     _%tl2551925687%_
                                     _%__splice2717727178%_
                                     _%target2552025690%_
                                     _%tl2552225693%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2546825555%_)))))
                            (let () (declare (not safe)) (_%g2546825555%_)))))
                    (let () (declare (not safe)) (_%g2546825555%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2717327174%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2547825927%_
                                                '0)))
                                          (let ((_%tl2550125787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717327174%_
                                                    '1)))
                                                (_%target2549925784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717327174%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2550125787%_)
                                                (_%__match2723127232%_
                                                 _%e2547325910%_
                                                 _%hd2547425914%_
                                                 _%tl2547525917%_
                                                 _%e2547625920%_
                                                 _%hd2547725924%_
                                                 _%tl2547825927%_
                                                 _%__splice2717327174%_
                                                 _%target2549925784%_
                                                 _%tl2550125787%_)
                                                (if (gx#stx-pair?
                                                     _%tl2547825927%_)
                                                    (let ((_%e2551725680%_
                                                           (gx#syntax-e
                                                            _%tl2547825927%_)))
                                                      (let ((_%tl2551925687%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2551725680%_)))
                    (_%hd2551825684%_
                     (let () (declare (not safe)) (##car _%e2551725680%_))))
                (if (gx#stx-pair/null? _%tl2551925687%_)
                    (let ((_%__splice2717727178%_
                           (gx#syntax-split-splice->vector
                            _%tl2551925687%_
                            '0)))
                      (let ((_%tl2552225693%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2717727178%_ '1)))
                            (_%target2552025690%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2717727178%_ '0))))
                        (if (gx#stx-null? _%tl2552225693%_)
                            (_%__match2725727258%_
                             _%e2547325910%_
                             _%hd2547425914%_
                             _%tl2547525917%_
                             _%e2547625920%_
                             _%hd2547725924%_
                             _%tl2547825927%_
                             _%e2551725680%_
                             _%hd2551825684%_
                             _%tl2551925687%_
                             _%__splice2717727178%_
                             _%target2552025690%_
                             _%tl2552225693%_)
                            (let () (declare (not safe)) (_%g2546825555%_)))))
                    (let () (declare (not safe)) (_%g2546825555%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2546825555%_)))))))
                                    (if (gx#stx-pair? _%tl2547825927%_)
                                        (let ((_%e2551725680%_
                                               (gx#syntax-e _%tl2547825927%_)))
                                          (let ((_%tl2551925687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2551725680%_)))
                                                (_%hd2551825684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2551725680%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2551925687%_)
                                                (let ((_%__splice2717727178%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2551925687%_
                                                        '0)))
                                                  (let ((_%tl2552225693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717727178%_
                                                            '1)))
                                                        (_%target2552025690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717727178%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2552225693%_)
                                                        (_%__match2725727258%_
                                                         _%e2547325910%_
                                                         _%hd2547425914%_
                                                         _%tl2547525917%_
                                                         _%e2547625920%_
                                                         _%hd2547725924%_
                                                         _%tl2547825927%_
                                                         _%e2551725680%_
                                                         _%hd2551825684%_
                                                         _%tl2551925687%_
                                                         _%__splice2717727178%_
                                                         _%target2552025690%_
                                                         _%tl2552225693%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2546825555%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2546825555%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2546825555%_))))))
                            (let () (declare (not safe)) (_%g2546825555%_)))))
                    (let () (declare (not safe)) (_%g2546825555%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26099%_)
        (let* ((_%__stx2728627287%_ _%$stx26099%_)
               (_%g2610426144%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2728627287%_))))
          (let ((_%__kont2728927290%_
                 (lambda (_%g2610626280%_ _%g2610726282%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2610726282%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2610626280%_ '()))
                                     '())))))
                (_%__kont2729127292%_
                 (lambda (_%g2611726209%_
                          _%g2611826211%_
                          _%g2611926212%_
                          _%g2612026213%_)
                   (cons _%g2612026213%_
                         (cons (cons _%g2612026213%_
                                     (cons _%g2611926212%_
                                           (cons _%g2611826211%_ '())))
                               (foldr (lambda (_%g2623426237%_ _%g2623526240%_)
                                        (cons _%g2623426237%_ _%g2623526240%_))
                                      '()
                                      _%g2611726209%_))))))
            (let* ((_%__match2734127342%_
                    (lambda (_%e2612126151%_
                             _%hd2612226155%_
                             _%tl2612326158%_
                             _%e2612426161%_
                             _%hd2612526165%_
                             _%tl2612626168%_
                             _%e2612726171%_
                             _%hd2612826175%_
                             _%tl2612926178%_
                             _%__splice2729327294%_
                             _%target2613026181%_
                             _%tl2613226184%_)
                      (letrec ((_%loop2613326187%_
                                (lambda (_%hd2613126191%_ _%rest2613726194%_)
                                  (if (gx#stx-pair? _%hd2613126191%_)
                                      (let ((_%e2613426196%_
                                             (gx#syntax-e _%hd2613126191%_)))
                                        (let ((_%lp-tl2613626203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2613426196%_)))
                                              (_%lp-hd2613526200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2613426196%_))))
                                          (_%loop2613326187%_
                                           _%lp-tl2613626203%_
                                           (cons _%lp-hd2613526200%_
                                                 _%rest2613726194%_))))
                                      (let ((_%rest2613826206%_
                                             (reverse _%rest2613726194%_)))
                                        (_%__kont2729127292%_
                                         _%rest2613826206%_
                                         _%hd2612826175%_
                                         _%hd2612526165%_
                                         _%hd2612226155%_))))))
                        (_%loop2613326187%_ _%target2613026181%_ '()))))
                   (_%__match2731527316%_
                    (lambda (_%e2610826250%_
                             _%hd2610926254%_
                             _%tl2611026257%_
                             _%e2611126260%_
                             _%hd2611226264%_
                             _%tl2611326267%_
                             _%e2611426270%_
                             _%hd2611526274%_
                             _%tl2611626277%_)
                      (let ((_%g2610626280%_ _%hd2611526274%_)
                            (_%g2610726282%_ _%hd2611226264%_))
                        (if (gx#identifier? _%g2610626280%_)
                            (_%__kont2728927290%_
                             _%g2610626280%_
                             _%g2610726282%_)
                            (if (gx#stx-pair/null? _%tl2611626277%_)
                                (let ((_%__splice2729327294%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2611626277%_
                                        '0)))
                                  (let ((_%tl2613226184%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2729327294%_
                                            '1)))
                                        (_%target2613026181%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2729327294%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2613226184%_)
                                        (_%__match2734127342%_
                                         _%e2610826250%_
                                         _%hd2610926254%_
                                         _%tl2611026257%_
                                         _%e2611126260%_
                                         _%hd2611226264%_
                                         _%tl2611326267%_
                                         _%e2611426270%_
                                         _%hd2611526274%_
                                         _%tl2611626277%_
                                         _%__splice2729327294%_
                                         _%target2613026181%_
                                         _%tl2613226184%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2610426144%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2610426144%_))))))))
              (if (gx#stx-pair? _%__stx2728627287%_)
                  (let ((_%e2610826250%_ (gx#syntax-e _%__stx2728627287%_)))
                    (let ((_%tl2611026257%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2610826250%_)))
                          (_%hd2610926254%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2610826250%_))))
                      (if (gx#stx-pair? _%tl2611026257%_)
                          (let ((_%e2611126260%_
                                 (gx#syntax-e _%tl2611026257%_)))
                            (let ((_%tl2611326267%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2611126260%_)))
                                  (_%hd2611226264%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2611126260%_))))
                              (if (gx#stx-pair? _%tl2611326267%_)
                                  (let ((_%e2611426270%_
                                         (gx#syntax-e _%tl2611326267%_)))
                                    (let ((_%tl2611626277%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2611426270%_)))
                                          (_%hd2611526274%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2611426270%_))))
                                      (if (gx#stx-null? _%tl2611626277%_)
                                          (_%__match2731527316%_
                                           _%e2610826250%_
                                           _%hd2610926254%_
                                           _%tl2611026257%_
                                           _%e2611126260%_
                                           _%hd2611226264%_
                                           _%tl2611326267%_
                                           _%e2611426270%_
                                           _%hd2611526274%_
                                           _%tl2611626277%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2611626277%_)
                                              (let ((_%__splice2729327294%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2611626277%_
                                                      '0)))
                                                (let ((_%tl2613226184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2729327294%_
                                                          '1)))
                                                      (_%target2613026181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2729327294%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2613226184%_)
                                                      (_%__match2734127342%_
                                                       _%e2610826250%_
                                                       _%hd2610926254%_
                                                       _%tl2611026257%_
                                                       _%e2611126260%_
                                                       _%hd2611226264%_
                                                       _%tl2611326267%_
                                                       _%e2611426270%_
                                                       _%hd2611526274%_
                                                       _%tl2611626277%_
                                                       _%__splice2729327294%_
                                                       _%target2613026181%_
                                                       _%tl2613226184%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2610426144%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2610426144%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2610426144%_)))))
                          (let () (declare (not safe)) (_%g2610426144%_)))))
                  (let () (declare (not safe)) (_%g2610426144%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26302%_)
        (let* ((_%__stx2734427345%_ _%$stx26302%_)
               (_%g2630726359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2734427345%_))))
          (let ((_%__kont2734727348%_
                 (lambda (_%g2630926533%_ _%g2631026535%_ _%g2631126536%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2631126536%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2631026535%_ '()))
                                     (cons _%g2630926533%_ '()))))))
                (_%__kont2734927350%_
                 (lambda (_%g2632426444%_
                          _%g2632526446%_
                          _%g2632626447%_
                          _%g2632726448%_
                          _%g2632826449%_
                          _%g2632926450%_)
                   (cons _%g2632926450%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2632826449%_
                                           (cons _%g2632726448%_
                                                 (foldr (lambda (_%g2647726480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2647826483%_)
                  (cons _%g2647726480%_ _%g2647826483%_))
                '()
                _%g2632626447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2632526446%_
                                     (cons _%g2632426444%_ '())))))))
            (let* ((_%__match2741927420%_
                    (lambda (_%e2633026366%_
                             _%hd2633126370%_
                             _%tl2633226373%_
                             _%e2633326376%_
                             _%hd2633426380%_
                             _%tl2633526383%_
                             _%e2633626386%_
                             _%hd2633726390%_
                             _%tl2633826393%_
                             _%__splice2735127352%_
                             _%target2633926396%_
                             _%tl2634126399%_
                             _%e2634826402%_
                             _%hd2634926406%_
                             _%tl2635026409%_
                             _%e2635126412%_
                             _%hd2635226416%_
                             _%tl2635326419%_)
                      (letrec ((_%loop2634226422%_
                                (lambda (_%hd2634026426%_ _%path2634626429%_)
                                  (if (gx#stx-pair? _%hd2634026426%_)
                                      (let ((_%e2634326431%_
                                             (gx#syntax-e _%hd2634026426%_)))
                                        (let ((_%lp-tl2634526438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2634326431%_)))
                                              (_%lp-hd2634426435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2634326431%_))))
                                          (_%loop2634226422%_
                                           _%lp-tl2634526438%_
                                           (cons _%lp-hd2634426435%_
                                                 _%path2634626429%_))))
                                      (let ((_%path2634726441%_
                                             (reverse _%path2634626429%_)))
                                        (_%__kont2734927350%_
                                         _%hd2635226416%_
                                         _%hd2634926406%_
                                         _%path2634726441%_
                                         _%hd2633726390%_
                                         _%hd2633426380%_
                                         _%hd2633126370%_))))))
                        (_%loop2634226422%_ _%target2633926396%_ '()))))
                   (_%__match2737927380%_
                    (lambda (_%e2631226493%_
                             _%hd2631326497%_
                             _%tl2631426500%_
                             _%e2631526503%_
                             _%hd2631626507%_
                             _%tl2631726510%_
                             _%e2631826513%_
                             _%hd2631926517%_
                             _%tl2632026520%_
                             _%e2632126523%_
                             _%hd2632226527%_
                             _%tl2632326530%_)
                      (let ((_%g2630926533%_ _%hd2632226527%_)
                            (_%g2631026535%_ _%hd2631926517%_)
                            (_%g2631126536%_ _%hd2631626507%_))
                        (if (gx#identifier? _%g2631026535%_)
                            (_%__kont2734727348%_
                             _%g2630926533%_
                             _%g2631026535%_
                             _%g2631126536%_)
                            (if (gx#stx-pair/null? _%tl2632026520%_)
                                (if (let ((__tmp27680
                                           (gx#stx-length _%tl2632026520%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27680 '2))
                                    (let ((_%__splice2735127352%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2632026520%_
                                            '2)))
                                      (let ((_%tl2634126399%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2735127352%_
                                                '1)))
                                            (_%target2633926396%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2735127352%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2634126399%_)
                                            (let ((_%e2634826402%_
                                                   (gx#syntax-e
                                                    _%tl2634126399%_)))
                                              (let ((_%tl2635026409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2634826402%_)))
                                                    (_%hd2634926406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2634826402%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2635026409%_)
                                                    (let ((_%e2635126412%_
                                                           (gx#syntax-e
                                                            _%tl2635026409%_)))
                                                      (let ((_%tl2635326419%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2635126412%_)))
                    (_%hd2635226416%_
                     (let () (declare (not safe)) (##car _%e2635126412%_))))
                (if (gx#stx-null? _%tl2635326419%_)
                    (_%__match2741927420%_
                     _%e2631226493%_
                     _%hd2631326497%_
                     _%tl2631426500%_
                     _%e2631526503%_
                     _%hd2631626507%_
                     _%tl2631726510%_
                     _%e2631826513%_
                     _%hd2631926517%_
                     _%tl2632026520%_
                     _%__splice2735127352%_
                     _%target2633926396%_
                     _%tl2634126399%_
                     _%e2634826402%_
                     _%hd2634926406%_
                     _%tl2635026409%_
                     _%e2635126412%_
                     _%hd2635226416%_
                     _%tl2635326419%_)
                    (let () (declare (not safe)) (_%g2630726359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2630726359%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2630726359%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2630726359%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2630726359%_))))))))
              (if (gx#stx-pair? _%__stx2734427345%_)
                  (let ((_%e2631226493%_ (gx#syntax-e _%__stx2734427345%_)))
                    (let ((_%tl2631426500%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2631226493%_)))
                          (_%hd2631326497%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2631226493%_))))
                      (if (gx#stx-pair? _%tl2631426500%_)
                          (let ((_%e2631526503%_
                                 (gx#syntax-e _%tl2631426500%_)))
                            (let ((_%tl2631726510%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2631526503%_)))
                                  (_%hd2631626507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2631526503%_))))
                              (if (gx#stx-pair? _%tl2631726510%_)
                                  (let ((_%e2631826513%_
                                         (gx#syntax-e _%tl2631726510%_)))
                                    (let ((_%tl2632026520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2631826513%_)))
                                          (_%hd2631926517%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2631826513%_))))
                                      (if (gx#stx-pair? _%tl2632026520%_)
                                          (let ((_%e2632126523%_
                                                 (gx#syntax-e
                                                  _%tl2632026520%_)))
                                            (let ((_%tl2632326530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2632126523%_)))
                                                  (_%hd2632226527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2632126523%_))))
                                              (if (gx#stx-null?
                                                   _%tl2632326530%_)
                                                  (_%__match2737927380%_
                                                   _%e2631226493%_
                                                   _%hd2631326497%_
                                                   _%tl2631426500%_
                                                   _%e2631526503%_
                                                   _%hd2631626507%_
                                                   _%tl2631726510%_
                                                   _%e2631826513%_
                                                   _%hd2631926517%_
                                                   _%tl2632026520%_
                                                   _%e2632126523%_
                                                   _%hd2632226527%_
                                                   _%tl2632326530%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2632026520%_)
                                                      (if (let ((__tmp27681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2632026520%_)))
                    (declare (not safe))
                    (##fx>= __tmp27681 '2))
                  (let ((_%__splice2735127352%_
                         (gx#syntax-split-splice->vector _%tl2632026520%_ '2)))
                    (let ((_%tl2634126399%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2735127352%_ '1)))
                          (_%target2633926396%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2735127352%_ '0))))
                      (if (gx#stx-pair? _%tl2634126399%_)
                          (let ((_%e2634826402%_
                                 (gx#syntax-e _%tl2634126399%_)))
                            (let ((_%tl2635026409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2634826402%_)))
                                  (_%hd2634926406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2634826402%_))))
                              (if (gx#stx-pair? _%tl2635026409%_)
                                  (let ((_%e2635126412%_
                                         (gx#syntax-e _%tl2635026409%_)))
                                    (let ((_%tl2635326419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2635126412%_)))
                                          (_%hd2635226416%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2635126412%_))))
                                      (if (gx#stx-null? _%tl2635326419%_)
                                          (_%__match2741927420%_
                                           _%e2631226493%_
                                           _%hd2631326497%_
                                           _%tl2631426500%_
                                           _%e2631526503%_
                                           _%hd2631626507%_
                                           _%tl2631726510%_
                                           _%e2631826513%_
                                           _%hd2631926517%_
                                           _%tl2632026520%_
                                           _%__splice2735127352%_
                                           _%target2633926396%_
                                           _%tl2634126399%_
                                           _%e2634826402%_
                                           _%hd2634926406%_
                                           _%tl2635026409%_
                                           _%e2635126412%_
                                           _%hd2635226416%_
                                           _%tl2635326419%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2630726359%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630726359%_)))))
                          (let () (declare (not safe)) (_%g2630726359%_)))))
                  (let () (declare (not safe)) (_%g2630726359%_)))
              (let () (declare (not safe)) (_%g2630726359%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2632026520%_)
                                              (if (let ((__tmp27682
                                                         (gx#stx-length
                                                          _%tl2632026520%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27682 '2))
                                                  (let ((_%__splice2735127352%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2632026520%_
                                                          '2)))
                                                    (let ((_%tl2634126399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2735127352%_
                                                              '1)))
                                                          (_%target2633926396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2735127352%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2634126399%_)
                                                          (let ((_%e2634826402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2634126399%_)))
                    (let ((_%tl2635026409%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2634826402%_)))
                          (_%hd2634926406%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2634826402%_))))
                      (if (gx#stx-pair? _%tl2635026409%_)
                          (let ((_%e2635126412%_
                                 (gx#syntax-e _%tl2635026409%_)))
                            (let ((_%tl2635326419%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2635126412%_)))
                                  (_%hd2635226416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2635126412%_))))
                              (if (gx#stx-null? _%tl2635326419%_)
                                  (_%__match2741927420%_
                                   _%e2631226493%_
                                   _%hd2631326497%_
                                   _%tl2631426500%_
                                   _%e2631526503%_
                                   _%hd2631626507%_
                                   _%tl2631726510%_
                                   _%e2631826513%_
                                   _%hd2631926517%_
                                   _%tl2632026520%_
                                   _%__splice2735127352%_
                                   _%target2633926396%_
                                   _%tl2634126399%_
                                   _%e2634826402%_
                                   _%hd2634926406%_
                                   _%tl2635026409%_
                                   _%e2635126412%_
                                   _%hd2635226416%_
                                   _%tl2635326419%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630726359%_)))))
                          (let () (declare (not safe)) (_%g2630726359%_)))))
                  (let () (declare (not safe)) (_%g2630726359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2630726359%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2630726359%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630726359%_)))))
                          (let () (declare (not safe)) (_%g2630726359%_)))))
                  (let () (declare (not safe)) (_%g2630726359%_))))))))))
