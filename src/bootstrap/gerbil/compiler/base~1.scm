(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g156388_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156390_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156392_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156394_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156395_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156397_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156398_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156400_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156401_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156403_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g156404_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx155479%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx155479%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx155482%_)
        (let* ((_%g155485155509%_
                (lambda (_%g155486155505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155486155505%_))))
               (_%g155484155808%_
                (lambda (_%g155486155513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155486155513%_))
                      (let ((_%e155489155516%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g155486155513%_))))
                        (let ((_%hd155490155520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155489155516%_)))
                              (_%tl155491155523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155489155516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155491155523%_))
                              (let ((_%e155492155526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl155491155523%_))))
                                (let ((_%hd155493155530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155492155526%_)))
                                      (_%tl155494155533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155492155526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl155494155533%_))
                                      (let ((_g156379_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl155494155533%_
                                                '0))))
                                        (begin
                                          (let ((_g156380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156379_)
                                                       (##values-length
                                                        _g156379_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156380_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156380_)))
                                          (let ((_%target155495155536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156379_ 0)))
                                                (_%tl155497155539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156379_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155497155539%_))
                                                (letrec ((_%loop155498155542%_
                                                          (lambda (_%hd155496155546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause155502155549%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd155496155546%_))
                        (let ((_%e155499155551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd155496155546%_))))
                          (let ((_%lp-hd155500155555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155499155551%_)))
                                (_%lp-tl155501155558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155499155551%_))))
                            (_%loop155498155542%_
                             _%lp-tl155501155558%_
                             (cons _%lp-hd155500155555%_
                                   _%clause155502155549%_))))
                        (let ((_%clause155503155561%_
                               (reverse _%clause155502155549%_)))
                          ((lambda (_%g155487155564%_ _%g155488155566%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g155488155566%_))
                                 (let* ((_%g155585155602%_
                                         (lambda (_%g155586155598%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g155586155598%_))))
                                        (_%g155584155661%_
                                         (lambda (_%g155586155606%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g155586155606%_))
                                               (let ((_g156381_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g155586155606%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g156382_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g156381_)
                        (##values-length _g156381_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g156382_ 2)))
                 (error "Context expects 2 values" _g156382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target155588155609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g156381_
                                                             0)))
                                                         (_%tl155590155612%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g156381_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl155590155612%_))
                                                         (letrec ((_%loop155591155615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd155589155619%_ _%clause155595155622%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd155589155619%_))
                                 (let ((_%e155592155624%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd155589155619%_))))
                                   (let ((_%lp-hd155593155628%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e155592155624%_)))
                                         (_%lp-tl155594155631%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e155592155624%_))))
                                     (_%loop155591155615%_
                                      _%lp-tl155594155631%_
                                      (cons _%lp-hd155593155628%_
                                            _%clause155595155622%_))))
                                 (let ((_%clause155596155634%_
                                        (reverse _%clause155595155622%_)))
                                   ((lambda (_%g155587155637%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g155488155566%_
                                  (let ((__tmp156383
                                         (lambda (_%g155652155655%_
                                                  _%g155653155658%_)
                                           (cons _%g155652155655%_
                                                 _%g155653155658%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp156383
                                     '()
                                     _%g155587155637%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause155596155634%_))))))
                   (_%loop155591155615%_ _%target155588155609%_ '()))
                 (_%g155585155602%_ _%g155586155606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g155585155602%_
                                                _%g155586155606%_)))))
                                   (_%g155584155661%_
                                    (let ((__tmp156386
                                           (lambda (_%clause155665%_)
                                             (let* ((_%__stx156299156300%_
                                                     _%clause155665%_)
                                                    (_%g155669155696%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx156299156300%_)))))
                                               (let ((_%__kont156302156303%_
                                                      (lambda (_%g155671155781%_
                                                               _%g155672155783%_)
                                                        (cons _%g155672155783%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g155671155781%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont156304156305%_
                                                      (lambda (_%g155679155733%_
                                                               _%g155680155735%_
                                                               _%g155681155736%_)
                                                        (cons _%g155681155736%_
                                                              (cons _%g155680155735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g155679155733%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx156299156300%_))
                                                     (let ((_%e155673155761%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx156299156300%_))))
                                                       (let ((_%tl155675155768%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e155673155761%_)))
                     (_%hd155674155765%_
                      (let () (declare (not safe)) (##car _%e155673155761%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl155675155768%_))
                     (let ((_%e155676155771%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl155675155768%_))))
                       (let ((_%tl155678155778%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155676155771%_)))
                             (_%hd155677155775%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155676155771%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155678155778%_))
                             (_%__kont156302156303%_
                              _%hd155677155775%_
                              _%hd155674155765%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl155678155778%_))
                                 (let ((_%e155688155723%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl155678155778%_))))
                                   (let ((_%tl155690155730%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e155688155723%_)))
                                         (_%hd155689155727%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e155688155723%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl155690155730%_))
                                         (_%__kont156304156305%_
                                          _%hd155689155727%_
                                          _%hd155677155775%_
                                          _%hd155674155765%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g155669155696%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g155669155696%_))))))
                     (let () (declare (not safe)) (_%g155669155696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g155669155696%_)))))))
                                          (__tmp156384
                                           (let ((__tmp156385
                                                  (lambda (_%g155799155802%_
                                                           _%g155800155805%_)
                                                    (cons _%g155799155802%_
                                                          _%g155800155805%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp156385
                                              '()
                                              _%g155487155564%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp156386 __tmp156384))))
                                 (_%g155485155509%_ _%g155486155513%_)))
                           _%clause155503155561%_
                           _%hd155493155530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop155498155542%_
                                                   _%target155495155536%_
                                                   '()))
                                                (_%g155485155509%_
                                                 _%g155486155513%_)))))
                                      (_%g155485155509%_ _%g155486155513%_))))
                              (_%g155485155509%_ _%g155486155513%_))))
                      (_%g155485155509%_ _%g155486155513%_)))))
          (_%g155484155808%_ _%stx155482%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj156349
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj156349
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj156349
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj156349
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 ':init! '12 '#f '#f))
        (let ((__tmp156387 |gxc[1]#_g156388_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156387 '3 '#f '#f))
        (let ((__tmp156389 |gxc[1]#_g156390_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156389 '13 '#f '#f))
        (let ((__tmp156391 |gxc[1]#_g156392_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156391 '14 '#f '#f))
        (let ((__tmp156393
               (cons (cons 'gensyms |gxc[1]#_g156394_|)
                     (cons (cons 'bindings |gxc[1]#_g156395_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156393 '15 '#f '#f))
        (let ((__tmp156396
               (cons (cons 'gensyms |gxc[1]#_g156397_|)
                     (cons (cons 'bindings |gxc[1]#_g156398_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156396 '16 '#f '#f))
        (let ((__tmp156399
               (cons (cons 'gensyms |gxc[1]#_g156400_|)
                     (cons (cons 'bindings |gxc[1]#_g156401_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156399 '17 '#f '#f))
        (let ((__tmp156402
               (cons (cons 'gensyms |gxc[1]#_g156403_|)
                     (cons (cons 'bindings |gxc[1]#_g156404_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 __tmp156402 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156349 '() '20 '#f '#f))
        __obj156349))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx155814%_)
        (let* ((_%g155818155832%_
                (lambda (_%g155819155828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155819155828%_))))
               (_%g155817155873%_
                (lambda (_%g155819155836%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155819155836%_))
                      (let ((_%e155821155839%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g155819155836%_))))
                        (let ((_%hd155822155843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155821155839%_)))
                              (_%tl155823155846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155821155839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155823155846%_))
                              (let ((_%e155824155849%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl155823155846%_))))
                                (let ((_%hd155825155853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155824155849%_)))
                                      (_%tl155826155856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155824155849%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl155826155856%_))
                                      ((lambda (_%g155820155859%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%g155820155859%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd155825155853%_)
                                      (_%g155818155832%_ _%g155819155836%_))))
                              (_%g155818155832%_ _%g155819155836%_))))
                      (_%g155818155832%_ _%g155819155836%_)))))
          (_%g155817155873%_ _%$stx155814%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx155877%_)
        (let* ((_%g155881155895%_
                (lambda (_%g155882155891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155882155891%_))))
               (_%g155880155936%_
                (lambda (_%g155882155899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155882155899%_))
                      (let ((_%e155884155902%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g155882155899%_))))
                        (let ((_%hd155885155906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155884155902%_)))
                              (_%tl155886155909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155884155902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155886155909%_))
                              (let ((_%e155887155912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl155886155909%_))))
                                (let ((_%hd155888155916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155887155912%_)))
                                      (_%tl155889155919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155887155912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl155889155919%_))
                                      ((lambda (_%g155883155922%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g155883155922%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd155888155916%_)
                                      (_%g155881155895%_ _%g155882155899%_))))
                              (_%g155881155895%_ _%g155882155899%_))))
                      (_%g155881155895%_ _%g155882155899%_)))))
          (_%g155880155936%_ _%$stx155877%_))))))
