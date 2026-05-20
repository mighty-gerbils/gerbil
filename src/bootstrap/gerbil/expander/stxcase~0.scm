(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1779289641)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp191372 (list gx#expander::t))
            (__tmp191371 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp191372
         '(id depth)
         __tmp191371
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args191368%_
        (apply make-instance gx#syntax-pattern::t _%$args191368%_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self191354%_ _%stx191355%_)
        (let ((_%self191358%_ _%self191354%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx191355%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx190821%_)
        (letrec ((_%generate190823%_
                  (lambda (_%e191063%_)
                    (letrec ((_%BUG191065%_
                              (lambda (_%q191230%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx190821%_
                                         _%e191063%_
                                         _%q191230%_))))
                             (_%local-pattern-e191066%_
                              (lambda (_%pat191228%_)
                                (let ((__tmp191373
                                       (##structure-ref
                                        _%pat191228%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp191373))))
                             (_%getvar191067%_
                              (lambda (_%q191225%_ _%vars191226%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q191225%_
                                   _%vars191226%_
                                   _%BUG191065%_))))
                             (_%getarg191068%_
                              (lambda (_%arg191191%_ _%vars191192%_)
                                (let* ((_%arg191193191200%_ _%arg191191%_)
                                       (_%E191195191204%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg191193191200%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K191196191213%_
                                        (lambda (_%e191207%_ _%tag191208%_)
                                          (let ((_%$e191210%_ _%tag191208%_))
                                            (if (eq? 'ref _%$e191210%_)
                                                (_%getvar191067%_
                                                 _%e191207%_
                                                 _%vars191192%_)
                                                (if (eq? 'pattern _%$e191210%_)
                                                    (_%local-pattern-e191066%_
                                                     _%e191207%_)
                                                    (_%BUG191065%_
                                                     _%arg191191%_)))))))
                                  (if (pair? _%arg191193191200%_)
                                      (let ((_%hd191197191216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg191193191200%_)))
                                            (_%tl191198191218%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg191193191200%_))))
                                        (let* ((_%tag191221%_
                                                _%hd191197191216%_)
                                               (_%e191223%_
                                                _%tl191198191218%_))
                                          (_%K191196191213%_
                                           _%e191223%_
                                           _%tag191221%_)))
                                      (_%E191195191204%_))))))
                      (let _%recur191070%_ ((_%e191072%_ _%e191063%_)
                                            (_%vars191073%_ '()))
                        (let* ((_%e191074191081%_ _%e191072%_)
                               (_%E191076191085%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e191074191081%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K191077191179%_
                                (lambda (_%body191088%_ _%tag191089%_)
                                  (let ((_%$e191091%_ _%tag191089%_))
                                    (if (eq? 'datum _%$e191091%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body191088%_))
                                        (if (eq? 'term _%$e191091%_)
                                            (let ((_%id191094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body191088%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id191094%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks191097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id191094%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks191097%_)
                                                        (let ((__tmp191374
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body191088%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp191374))
                (let ((__tmp191376
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body191088%_)))
                      (__tmp191375
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body191088%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp191376
                   __tmp191375
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id191094%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body191088%_))
                                                      (_%BUG191065%_
                                                       _%e191072%_))))
                                            (if (eq? 'pattern _%$e191091%_)
                                                (_%local-pattern-e191066%_
                                                 _%body191088%_)
                                                (if (eq? 'ref _%$e191091%_)
                                                    (_%getvar191067%_
                                                     _%body191088%_
                                                     _%vars191073%_)
                                                    (if (eq? 'cons
                                                             _%$e191091%_)
                                                        (let ((__tmp191378
                                                               (_%recur191070%_
                                                                (car _%body191088%_)
                                                                _%vars191073%_))
                                                              (__tmp191377
                                                               (_%recur191070%_
                                                                (cdr _%body191088%_)
                                                                _%vars191073%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp191378
                                                           __tmp191377))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e191091%_)
                    (let ((__tmp191379
                           (_%recur191070%_ _%body191088%_ _%vars191073%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp191379))
                    (if (eq? 'box _%$e191091%_)
                        (let ((__tmp191380
                               (_%recur191070%_
                                _%body191088%_
                                _%vars191073%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp191380))
                        (if (eq? 'splice _%$e191091%_)
                            (let* ((_%body191100191111%_ _%body191088%_)
                                   (_%E191102191115%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body191100191111%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K191103191153%_
                                    (lambda (_%args191118%_
                                             _%iv191119%_
                                             _%hd191120%_
                                             _%depth191121%_)
                                      (let* ((_%targets191127%_
                                              (map (lambda (_%g191122191124%_)
                                                     (_%getarg191068%_
                                                      _%g191122191124%_
                                                      _%vars191073%_))
                                                   _%args191118%_))
                                             (_%fold-in191129%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args191118%_)))
                                             (_%fold-out191131%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args191133%_
                                              (let ((__tmp191381
                                                     (cons _%fold-out191131%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp191381
                                                 _%fold-in191129%_)))
                                             (_%lambda-body191150%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth191121%_ '1))
                                                  (let ((_%r-args191141%_
                                                         (map (lambda (_%arg191135%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg191135%_)))
                      _%args191118%_))
                (_%r-vars191142%_
                 (let ((__tmp191382
                        (lambda (_%arg191137%_ _%var191138%_ _%r191139%_)
                          (cons (cons (cdr _%arg191137%_) _%var191138%_)
                                _%r191139%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp191382
                    _%vars191073%_
                    _%args191118%_
                    _%fold-in191129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur191070%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth191121%_ '1))
                         (cons _%hd191120%_
                               (cons (cons 'var _%fold-out191131%_)
                                     _%r-args191141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars191142%_))
                                                  (let* ((_%hd-vars191148%_
                                                          (let ((__tmp191383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg191144%_ _%var191145%_ _%r191146%_)
                           (cons (cons (cdr _%arg191144%_) _%var191145%_)
                                 _%r191146%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp191383
                     _%vars191073%_
                     _%args191118%_
                     _%fold-in191129%_)))
                 (__tmp191384
                  (_%recur191070%_ _%hd191120%_ _%hd-vars191148%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp191384
                                                     _%fold-out191131%_)))))
                                        (let ((__tmp191388
                                               (if (let ((__tmp191389
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets191127%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp191389 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets191127%_))
                                                   '#!void))
                                              (__tmp191385
                                               (let ((__tmp191387
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args191133%_
                                                         _%lambda-body191150%_)))
                                                     (__tmp191386
                                                      (_%recur191070%_
                                                       _%iv191119%_
                                                       _%vars191073%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp191387
                                                  __tmp191386
                                                  _%targets191127%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp191388
                                           __tmp191385))))))
                              (if (pair? _%body191100191111%_)
                                  (let ((_%hd191104191156%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body191100191111%_)))
                                        (_%tl191105191158%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body191100191111%_))))
                                    (let ((_%depth191161%_ _%hd191104191156%_))
                                      (if (pair? _%tl191105191158%_)
                                          (let ((_%hd191106191163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl191105191158%_)))
                                                (_%tl191107191165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl191105191158%_))))
                                            (let ((_%hd191168%_
                                                   _%hd191106191163%_))
                                              (if (pair? _%tl191107191165%_)
                                                  (let ((_%hd191108191170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl191107191165%_)))
                                                        (_%tl191109191172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl191107191165%_))))
                                                    (let* ((_%iv191175%_
                                                            _%hd191108191170%_)
                                                           (_%args191177%_
                                                            _%tl191109191172%_))
                                                      (_%K191103191153%_
                                                       _%args191177%_
                                                       _%iv191175%_
                                                       _%hd191168%_
                                                       _%depth191161%_)))
                                                  (_%E191102191115%_))))
                                          (_%E191102191115%_))))
                                  (_%E191102191115%_)))
                            (if (eq? 'var _%$e191091%_)
                                _%body191088%_
                                (_%BUG191065%_ _%e191072%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e191074191081%_)
                              (let ((_%hd191078191182%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191074191081%_)))
                                    (_%tl191079191184%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191074191081%_))))
                                (let* ((_%tag191187%_ _%hd191078191182%_)
                                       (_%body191189%_ _%tl191079191184%_))
                                  (_%K191077191179%_
                                   _%body191189%_
                                   _%tag191187%_)))
                              (_%E191076191085%_)))))))
                 (_%parse190824%_
                  (lambda (_%e190865%_)
                    (letrec ((_%make-cons190867%_
                              (lambda (_%hd191055%_ _%tl191056%_)
                                (let ((_g191390_ _%hd191055%_)
                                      (_g191392_ _%tl191056%_))
                                  (begin
                                    (let ((_g191391_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191390_)
                                                 (##values-length _g191390_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191391_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191391_)))
                                    (let ((_g191393_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191392_)
                                                 (##values-length _g191392_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191393_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191393_)))
                                    (let ((_%hd-e191058%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191390_ 0)))
                                          (_%hd-vars191059%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191390_ 1))))
                                      (let ((_%tl-e191060%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191392_ 0)))
                                            (_%tl-vars191061%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191392_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e191058%_
                                                            _%tl-e191060%_))
                                                (append _%hd-vars191059%_
                                                        _%tl-vars191061%_))))))))
                             (_%make-splice190868%_
                              (lambda (_%where190991%_
                                       _%depth190992%_
                                       _%hd190993%_
                                       _%tl190994%_)
                                (let ((_g191394_ _%hd190993%_)
                                      (_g191396_ _%tl190994%_))
                                  (begin
                                    (let ((_g191395_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191394_)
                                                 (##values-length _g191394_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191395_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191395_)))
                                    (let ((_g191397_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191396_)
                                                 (##values-length _g191396_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191397_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191397_)))
                                    (let ((_%hd-e190996%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191394_ 0)))
                                          (_%hd-vars190997%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191394_ 1))))
                                      (let ((_%tl-e190998%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191396_ 0)))
                                            (_%tl-vars190999%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191396_ 1))))
                                        (let _%lp191001%_ ((_%rest191003%_
                                                            _%hd-vars190997%_)
                                                           (_%targets191004%_
                                                            '())
                                                           (_%vars191005%_
                                                            _%tl-vars190999%_))
                                          (let* ((_%rest191006191016%_
                                                  _%rest191003%_)
                                                 (_%else191008191024%_
                                                  (lambda ()
                                                    (if (null? _%targets191004%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx190821%_
                                                           _%where190991%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth190992%_
                                    (cons _%hd-e190996%_
                                          (cons _%tl-e190998%_
                                                _%targets191004%_))))
                        _%vars191005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K191010191036%_
                                                  (lambda (_%rest191027%_
                                                           _%hd-pat191028%_
                                                           _%hd-depth*191029%_)
                                                    (let ((_%hd-depth191031%_
                                                           (fx- _%hd-depth*191029%_
                                                                _%depth190992%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth191031%_))
                                                          (_%lp191001%_
                                                           _%rest191027%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat191028%_)
                         _%targets191004%_)
                   (cons (cons _%hd-depth191031%_ _%hd-pat191028%_)
                         _%vars191005%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth191031%_))
                      (_%lp191001%_
                       _%rest191027%_
                       (cons (cons 'pattern _%hd-pat191028%_)
                             _%targets191004%_)
                       _%vars191005%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx190821%_
                         _%where190991%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest191006191016%_)
                                                (let ((_%hd191011191039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest191006191016%_)))
                                                      (_%tl191012191041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest191006191016%_))))
                                                  (if (pair? _%hd191011191039%_)
                                                      (let ((_%hd191013191044%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd191011191039%_)))
                    (_%tl191014191046%_
                     (let () (declare (not safe)) (##cdr _%hd191011191039%_))))
                (let* ((_%hd-depth*191049%_ _%hd191013191044%_)
                       (_%hd-pat191051%_ _%tl191014191046%_)
                       (_%rest191053%_ _%tl191012191041%_))
                  (_%K191010191036%_
                   _%rest191053%_
                   _%hd-pat191051%_
                   _%hd-depth*191049%_)))
              (_%else191008191024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else191008191024%_))))))))))
                             (_%recur190869%_
                              (lambda (_%e190874%_ _%is-e?190875%_)
                                (if (_%is-e?190875%_ _%e190874%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx190821%_))
                                    (if (gx#syntax-local-pattern? _%e190874%_)
                                        (let* ((_%pat190879%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e190874%_)))
                                               (_%depth190881%_
                                                (##structure-ref
                                                 _%pat190879%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth190881%_)
                                              (values (cons 'ref _%pat190879%_)
                                                      (cons (cons _%depth190881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat190879%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat190879%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e190874%_))
                                            (values (cons 'term _%e190874%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e190874%_))
                                                (let* ((_%e190885190892%_
                                                        _%e190874%_)
                                                       (_%E190887190896%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e190885190892%_))))
                                                       (_%E190886190978%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e190885190892%_))
                      (let ((_%e190888190900%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e190885190892%_))))
                        (let ((_%hd190889190903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190888190900%_)))
                              (_%tl190890190905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190888190900%_))))
                          (let* ((_%hd190908%_ _%hd190889190903%_)
                                 (_%rest190910%_ _%tl190890190905%_))
                            (if (_%is-e?190875%_ _%hd190908%_)
                                (let* ((_%e190911190918%_ _%rest190910%_)
                                       (_%E190913190922%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx190821%_
                                             _%e190874%_))))
                                       (_%E190912190936%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e190911190918%_))
                                              (let ((_%e190914190926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e190911190918%_))))
                                                (let ((_%hd190915190929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190914190926%_)))
                                                      (_%tl190916190931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190914190926%_))))
                                                  (let ((_%rest190934%_
                                                         _%hd190915190929%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190916190931%_))
                                                        (_%recur190869%_
                                                         _%rest190934%_
                                                         false)
                                                        (_%E190913190922%_)))))
                                              (_%E190913190922%_)))))
                                  (_%E190912190936%_))
                                (let _%lp190940%_ ((_%rest190942%_
                                                    _%rest190910%_)
                                                   (_%depth190943%_ '0))
                                  (let* ((_%e190944190951%_ _%rest190942%_)
                                         (_%E190946190955%_
                                          (lambda ()
                                            (if (fxpositive? _%depth190943%_)
                                                (_%make-splice190868%_
                                                 _%e190874%_
                                                 _%depth190943%_
                                                 (_%recur190869%_
                                                  _%hd190908%_
                                                  _%is-e?190875%_)
                                                 (_%recur190869%_
                                                  _%rest190942%_
                                                  _%is-e?190875%_))
                                                (_%make-cons190867%_
                                                 (_%recur190869%_
                                                  _%hd190908%_
                                                  _%is-e?190875%_)
                                                 (_%recur190869%_
                                                  _%rest190942%_
                                                  _%is-e?190875%_)))))
                                         (_%E190945190974%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e190944190951%_))
                                                (let ((_%e190947190959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e190944190951%_))))
                                                  (let ((_%hd190948190962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e190947190959%_)))
                                                        (_%tl190949190964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e190947190959%_))))
                                                    (let* ((_%rest-hd190967%_
                                                            _%hd190948190962%_)
                                                           (_%rest-tl190969%_
                                                            _%tl190949190964%_))
                                                      (if (_%is-e?190875%_
                                                           _%rest-hd190967%_)
                                                          (_%lp190940%_
                                                           _%rest-tl190969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth190943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth190943%_)
                      (_%make-splice190868%_
                       _%e190874%_
                       _%depth190943%_
                       (_%recur190869%_ _%hd190908%_ _%is-e?190875%_)
                       (_%recur190869%_ _%rest190942%_ _%is-e?190875%_))
                      (_%make-cons190867%_
                       (_%recur190869%_ _%hd190908%_ _%is-e?190875%_)
                       (_%recur190869%_ _%rest190942%_ _%is-e?190875%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E190946190955%_)))))
                                    (_%E190945190974%_)))))))
                      (_%E190887190896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E190886190978%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e190874%_))
                                                    (let ((_g191398_
                                                           (_%recur190869%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e190874%_)))
                    _%is-e?190875%_)))
              (begin
                (let ((_g191399_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g191398_)
                             (##values-length _g191398_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g191399_ 2)))
                      (error "Context expects 2 values" _g191399_)))
                (let ((_%e190983%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191398_ 0)))
                      (_%vars190984%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191398_ 1))))
                  (values (cons 'vector _%e190983%_) _%vars190984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e190874%_))
                                                        (let ((_g191400_
                                                               (_%recur190869%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e190874%_)))
                        _%is-e?190875%_)))
                  (begin
                    (let ((_g191401_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g191400_)
                                 (##values-length _g191400_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g191401_ 2)))
                          (error "Context expects 2 values" _g191401_)))
                    (let ((_%e190987%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g191400_ 0)))
                          (_%vars190988%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g191400_ 1))))
                      (values (cons 'box _%e190987%_) _%vars190988%_))))
                (values (cons 'datum _%e190874%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g191402_
                             (_%recur190869%_ _%e190865%_ gx#ellipsis?)))
                        (begin
                          (let ((_g191403_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g191402_)
                                       (##values-length _g191402_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g191403_ 2)))
                                (error "Context expects 2 values" _g191403_)))
                          (let ((_%tree190871%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g191402_ 0)))
                                (_%vars190872%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g191402_ 1))))
                            (if (null? _%vars190872%_)
                                _%tree190871%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx190821%_
                                   _%vars190872%_))))))))))
          (let* ((_%e190825190835%_ _%stx190821%_)
                 (_%E190827190839%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx190821%_))))
                 (_%E190826190861%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e190825190835%_))
                        (let ((_%e190828190843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e190825190835%_))))
                          (let ((_%hd190829190846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190828190843%_)))
                                (_%tl190830190848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190828190843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190830190848%_))
                                (let ((_%e190831190851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl190830190848%_))))
                                  (let ((_%hd190832190854%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190831190851%_)))
                                        (_%tl190833190856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190831190851%_))))
                                    (let ((_%form190859%_ _%hd190832190854%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190833190856%_))
                                          (let ((__tmp191405
                                                 (_%generate190823%_
                                                  (_%parse190824%_
                                                   _%form190859%_)))
                                                (__tmp191404
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx190821%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp191405
                                             __tmp191404))
                                          (_%E190827190839%_)))))
                                (_%E190827190839%_))))
                        (_%E190827190839%_)))))
            (_%E190826190861%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx190070%_
               _%identifier=?190071%_
               _%unwrap-e190072%_
               _%wrap-e190073%_)
        (letrec ((_%generate-bindings190075%_
                  (lambda (_%target190685%_
                           _%ids190686%_
                           _%clauses190687%_
                           _%clause-ids190688%_
                           _%E190689%_)
                    (letrec ((_%generate1190691%_
                              (lambda (_%clause190788%_
                                       _%clause-id190789%_
                                       _%E190790%_)
                                (cons (cons _%clause-id190789%_ '())
                                      (cons (let ((__tmp191407
                                                   (cons _%target190685%_ '()))
                                                  (__tmp191406
                                                   (_%generate-clause190077%_
                                                    _%target190685%_
                                                    _%ids190686%_
                                                    _%clause190788%_
                                                    _%E190790%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp191407
                                               __tmp191406))
                                            '())))))
                      (let _%lp190693%_ ((_%rest190695%_ _%clauses190687%_)
                                         (_%rest-ids190696%_
                                          _%clause-ids190688%_)
                                         (_%bindings190697%_ '()))
                        (let* ((_%rest190698190706%_ _%rest190695%_)
                               (_%else190700190714%_
                                (lambda () _%bindings190697%_))
                               (_%K190702190776%_
                                (lambda (_%rest190717%_ _%clause190718%_)
                                  (let* ((_%rest-ids190719190726%_
                                          _%rest-ids190696%_)
                                         (_%E190721190730%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids190719190726%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K190722190764%_
                                          (lambda (_%rest-ids190733%_
                                                   _%clause-id190734%_)
                                            (let* ((_%rest-ids190735190743%_
                                                    _%rest-ids190733%_)
                                                   (_%else190737190751%_
                                                    (lambda ()
                                                      (cons (_%generate1190691%_
                                                             _%clause190718%_
                                                             _%clause-id190734%_
                                                             _%E190689%_)
                                                            _%bindings190697%_)))
                                                   (_%K190739190756%_
                                                    (lambda (_%next-clause-id190754%_)
                                                      (_%lp190693%_
                                                       _%rest190717%_
                                                       _%rest-ids190733%_
                                                       (cons (_%generate1190691%_
                                                              _%clause190718%_
                                                              _%clause-id190734%_
                                                              _%next-clause-id190754%_)
                                                             _%bindings190697%_)))))
                                              (if (pair? _%rest-ids190735190743%_)
                                                  (let* ((_%hd190740190759%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids190735190743%_)))
                                                         (_%next-clause-id190762%_
                                                          _%hd190740190759%_))
                                                    (_%K190739190756%_
                                                     _%next-clause-id190762%_))
                                                  (_%else190737190751%_))))))
                                    (if (pair? _%rest-ids190719190726%_)
                                        (let ((_%hd190723190767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids190719190726%_)))
                                              (_%tl190724190769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids190719190726%_))))
                                          (let* ((_%clause-id190772%_
                                                  _%hd190723190767%_)
                                                 (_%rest-ids190774%_
                                                  _%tl190724190769%_))
                                            (_%K190722190764%_
                                             _%rest-ids190774%_
                                             _%clause-id190772%_)))
                                        (_%E190721190730%_))))))
                          (if (pair? _%rest190698190706%_)
                              (let ((_%hd190703190779%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest190698190706%_)))
                                    (_%tl190704190781%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest190698190706%_))))
                                (let* ((_%clause190784%_ _%hd190703190779%_)
                                       (_%rest190786%_ _%tl190704190781%_))
                                  (_%K190702190776%_
                                   _%rest190786%_
                                   _%clause190784%_)))
                              (_%else190700190714%_)))))))
                 (_%generate-body190076%_
                  (lambda (_%bindings190645%_ _%body190646%_)
                    (let _%recur190648%_ ((_%rest190650%_ _%bindings190645%_))
                      (let* ((_%rest190651190659%_ _%rest190650%_)
                             (_%else190653190667%_ (lambda () _%body190646%_))
                             (_%K190655190673%_
                              (lambda (_%rest190670%_ _%hd190671%_)
                                (let ((__tmp191409 (cons _%hd190671%_ '()))
                                      (__tmp191408
                                       (_%recur190648%_ _%rest190670%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp191409
                                   __tmp191408)))))
                        (if (pair? _%rest190651190659%_)
                            (let ((_%hd190656190676%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest190651190659%_)))
                                  (_%tl190657190678%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest190651190659%_))))
                              (let* ((_%hd190681%_ _%hd190656190676%_)
                                     (_%rest190683%_ _%tl190657190678%_))
                                (_%K190655190673%_
                                 _%rest190683%_
                                 _%hd190681%_)))
                            (_%else190653190667%_))))))
                 (_%generate-clause190077%_
                  (lambda (_%target190508%_
                           _%ids190509%_
                           _%clause190510%_
                           _%E190511%_)
                    (letrec ((_%generate1190513%_
                              (lambda (_%hd190600%_
                                       _%fender190601%_
                                       _%body190602%_)
                                (let ((_g191410_
                                       (_%parse-clause190079%_
                                        _%hd190600%_
                                        _%ids190509%_)))
                                  (begin
                                    (let ((_g191411_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191410_)
                                                 (##values-length _g191410_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191411_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191411_)))
                                    (let ((_%e190604%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191410_ 0)))
                                          (_%mvars190605%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191410_ 1))))
                                      (let* ((_%pvars190607%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars190605%_))))
                                             (_%E190609%_
                                              (cons _%E190511%_
                                                    (cons _%target190508%_
                                                          '())))
                                             (_%K190642%_
                                              (let ((__tmp191412
                                                     (let ((__tmp191414
                                                            (map (lambda (_%mvar190611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar190612%_)
                           (let* ((_%mvar190613190620%_ _%mvar190611%_)
                                  (_%E190615190624%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar190613190620%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K190616190630%_
                                   (lambda (_%depth190627%_ _%id190628%_)
                                     (cons _%id190628%_
                                           (cons (let ((__tmp191416
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id190628%_)))
                                                       (__tmp191415
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar190612%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp191416
                                                    __tmp191415
                                                    _%depth190627%_))
                                                 '())))))
                             (if (pair? _%mvar190613190620%_)
                                 (let ((_%hd190617190633%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar190613190620%_)))
                                       (_%tl190618190635%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar190613190620%_))))
                                   (let* ((_%id190638%_ _%hd190617190633%_)
                                          (_%depth190640%_ _%tl190618190635%_))
                                     (_%K190616190630%_
                                      _%depth190640%_
                                      _%id190638%_)))
                                 (_%E190615190624%_))))
                         _%mvars190605%_
                         _%pvars190607%_))
                   (__tmp191413
                    (if (eq? _%fender190601%_ '#t)
                        _%body190602%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender190601%_
                           _%body190602%_
                           _%E190609%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp191414 __tmp191413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars190607%_
                                                 __tmp191412))))
                                        (_%generate-match190078%_
                                         _%hd190600%_
                                         _%target190508%_
                                         _%e190604%_
                                         _%mvars190605%_
                                         _%K190642%_
                                         _%E190609%_))))))))
                      (let* ((_%e190514190534%_ _%clause190510%_)
                             (_%E190523190538%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e190514190534%_))))
                             (_%E190516190572%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e190514190534%_))
                                    (let ((_%e190524190542%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e190514190534%_))))
                                      (let ((_%hd190525190545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190524190542%_)))
                                            (_%tl190526190547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190524190542%_))))
                                        (let ((_%hd190550%_
                                               _%hd190525190545%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190526190547%_))
                                              (let ((_%e190527190552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl190526190547%_))))
                                                (let ((_%hd190528190555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190527190552%_)))
                                                      (_%tl190529190557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190527190552%_))))
                                                  (let ((_%fender190560%_
                                                         _%hd190528190555%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl190529190557%_))
                                                        (let ((_%e190530190562%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl190529190557%_))))
                  (let ((_%hd190531190565%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190530190562%_)))
                        (_%tl190532190567%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190530190562%_))))
                    (let ((_%body190570%_ _%hd190531190565%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190532190567%_))
                          (_%generate1190513%_
                           _%hd190550%_
                           _%fender190560%_
                           _%body190570%_)
                          (_%E190523190538%_)))))
                (_%E190523190538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190523190538%_)))))
                                    (_%E190523190538%_))))
                             (_%E190515190596%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e190514190534%_))
                                    (let ((_%e190517190576%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e190514190534%_))))
                                      (let ((_%hd190518190579%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190517190576%_)))
                                            (_%tl190519190581%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190517190576%_))))
                                        (let ((_%hd190584%_
                                               _%hd190518190579%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190519190581%_))
                                              (let ((_%e190520190586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl190519190581%_))))
                                                (let ((_%hd190521190589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190520190586%_)))
                                                      (_%tl190522190591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190520190586%_))))
                                                  (let ((_%body190594%_
                                                         _%hd190521190589%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190522190591%_))
                                                        (_%generate1190513%_
                                                         _%hd190584%_
                                                         '#t
                                                         _%body190594%_)
                                                        (_%E190516190572%_)))))
                                              (_%E190516190572%_)))))
                                    (_%E190516190572%_)))))
                        (_%E190515190596%_)))))
                 (_%generate-match190078%_
                  (lambda (_%where190257%_
                           _%target190258%_
                           _%hd190259%_
                           _%mvars190260%_
                           _%K190261%_
                           _%E190262%_)
                    (letrec ((_%BUG190264%_
                              (lambda (_%q190506%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx190070%_
                                         _%hd190259%_
                                         _%q190506%_))))
                             (_%recur190265%_
                              (lambda (_%e190356%_
                                       _%vars190357%_
                                       _%target190358%_
                                       _%E190359%_
                                       _%k190360%_)
                                (let* ((_%e190361190368%_ _%e190356%_)
                                       (_%E190363190372%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e190361190368%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K190364190494%_
                                        (lambda (_%body190375%_ _%tag190376%_)
                                          (let ((_%$e190378%_ _%tag190376%_))
                                            (if (eq? 'any _%$e190378%_)
                                                (_%k190360%_ _%vars190357%_)
                                                (if (eq? 'id _%$e190378%_)
                                                    (let ((__tmp191421
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target190358%_)))
                                                          (__tmp191417
                                                           (let ((__tmp191419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191420
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e190073%_
                                    _%body190375%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?190071%_
                             __tmp191420
                             _%target190358%_)))
                         (__tmp191418 (_%k190360%_ _%vars190357%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp191419 __tmp191418 _%E190359%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp191421 __tmp191417 _%E190359%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e190378%_)
                                                        (_%k190360%_
                                                         (cons (cons _%body190375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target190358%_)
                       _%vars190357%_))
                (if (eq? 'cons _%$e190378%_)
                    (let ((_%$e190381%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd190382%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl190383%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp191427
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target190358%_)))
                            (__tmp191422
                             (let ((__tmp191426
                                    (cons (cons (cons _%$e190381%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e190072%_
                                                         _%target190358%_))
                                                      '()))
                                          '()))
                                   (__tmp191423
                                    (let ((__tmp191425
                                           (cons (cons (cons _%$hd190382%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e190381%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl190383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e190381%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp191424
                                           (let* ((_%body190384190391%_
                                                   _%body190375%_)
                                                  (_%E190386190395%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body190384190391%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K190387190403%_
                                                   (lambda (_%tl190398%_
                                                            _%hd190399%_)
                                                     (_%recur190265%_
                                                      _%hd190399%_
                                                      _%vars190357%_
                                                      _%$hd190382%_
                                                      _%E190359%_
                                                      (lambda (_%vars190401%_)
                                                        (_%recur190265%_
                                                         _%tl190398%_
                                                         _%vars190401%_
                                                         _%$tl190383%_
                                                         _%E190359%_
                                                         _%k190360%_))))))
                                             (if (pair? _%body190384190391%_)
                                                 (let ((_%hd190388190406%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body190384190391%_)))
                                                       (_%tl190389190408%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body190384190391%_))))
                                                   (let* ((_%hd190411%_
                                                           _%hd190388190406%_)
                                                          (_%tl190413%_
                                                           _%tl190389190408%_))
                                                     (_%K190387190403%_
                                                      _%tl190413%_
                                                      _%hd190411%_)))
                                                 (_%E190386190395%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp191425
                                       __tmp191424))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp191426
                                __tmp191423))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp191427
                         __tmp191422
                         _%E190359%_)))
                    (if (eq? 'splice _%$e190378%_)
                        (let* ((_%body190414190421%_ _%body190375%_)
                               (_%E190416190425%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body190414190421%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K190417190476%_
                                (lambda (_%tl190428%_ _%hd190429%_)
                                  (let* ((_%rlen190431%_
                                          (_%splice-rlen190266%_ _%tl190428%_))
                                         (_%$target190433%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd190435%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl190437%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp190439%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e190441%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd190443%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl190445%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars190447%_
                                          (_%splice-vars190267%_ _%hd190429%_))
                                         (_%lvars190449%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars190447%_)))
                                         (_%tlvars190451%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars190447%_)))
                                         (_%linit190455%_
                                          (map (lambda (_%var190453%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars190449%_)))
                                    (letrec ((_%make-loop190458%_
                                              (lambda (_%vars190462%_)
                                                (let ((__tmp191429
                                                       (cons (cons (cons _%$lp190439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp191442
                                        (cons _%$hd190435%_ _%lvars190449%_))
                                       (__tmp191430
                                        (let ((__tmp191441
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd190435%_)))
                                              (__tmp191435
                                               (let ((__tmp191440
                                                      (cons (cons (cons _%$lp-e190441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e190072%_
                                   _%$hd190435%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191436
                                                      (let ((__tmp191439
                                                             (cons (cons (cons _%$lp-hd190443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e190441%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl190445%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e190441%_))
                                             '()))
                                 '())))
                    (__tmp191437
                     (_%recur190265%_
                      _%hd190429%_
                      '()
                      _%$lp-hd190443%_
                      _%E190359%_
                      (lambda (_%hdvars190464%_)
                        (cons _%$lp190439%_
                              (cons _%$lp-tl190445%_
                                    (map (lambda (_%svar190466%_
                                                  _%lvar190467%_)
                                           (let ((__tmp191438
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar190466%_
                                                     _%hdvars190464%_
                                                     _%BUG190264%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp191438
                                              _%lvar190467%_)))
                                         _%svars190447%_
                                         _%lvars190449%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp191439 __tmp191437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp191440
                                                  __tmp191436)))
                                              (__tmp191431
                                               (let ((__tmp191434
                                                      (map (lambda (_%lvar190469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar190470%_)
                     (cons (cons _%tlvar190470%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar190469%_))
                                 '())))
                   _%lvars190449%_
                   _%tlvars190451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191432
                                                      (_%k190360%_
                                                       (let ((__tmp191433
                                                              (lambda (_%svar190472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar190473%_
                               _%r190474%_)
                        (cons (cons _%svar190472%_ _%tlvar190473%_)
                              _%r190474%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp191433
                  _%vars190462%_
                  _%svars190447%_
                  _%tlvars190451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp191434
                                                  __tmp191432))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp191441
                                           __tmp191435
                                           __tmp191431))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp191442
                                    __tmp191430))
                                 '()))
                     '()))
              (__tmp191428
               (cons _%$lp190439%_ (cons _%$target190433%_ _%linit190455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp191429
                                                   __tmp191428)))))
                                      (let ((_%body190460%_
                                             (let ((__tmp191444
                                                    (cons (cons (cons _%$target190433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl190437%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target190358%_
                                 _%rlen190431%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp191443
                                                    (_%recur190265%_
                                                     _%tl190428%_
                                                     _%vars190357%_
                                                     _%$tl190437%_
                                                     _%E190359%_
                                                     _%make-loop190458%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp191444
                                                __tmp191443))))
                                        (let ((__tmp191448
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target190358%_)))
                                              (__tmp191445
                                               (if (zero? _%rlen190431%_)
                                                   _%body190460%_
                                                   (let ((__tmp191446
                                                          (let ((__tmp191447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target190358%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp191447 _%rlen190431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp191446
                                                      _%body190460%_
                                                      _%E190359%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp191448
                                           __tmp191445
                                           _%E190359%_))))))))
                          (if (pair? _%body190414190421%_)
                              (let ((_%hd190418190479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body190414190421%_)))
                                    (_%tl190419190481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body190414190421%_))))
                                (let* ((_%hd190484%_ _%hd190418190479%_)
                                       (_%tl190486%_ _%tl190419190481%_))
                                  (_%K190417190476%_
                                   _%tl190486%_
                                   _%hd190484%_)))
                              (_%E190416190425%_)))
                        (if (eq? 'null _%$e190378%_)
                            (let ((__tmp191450
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target190358%_)))
                                  (__tmp191449 (_%k190360%_ _%vars190357%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp191450
                               __tmp191449
                               _%E190359%_))
                            (if (eq? 'vector _%$e190378%_)
                                (let ((_%$e190488%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp191455
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target190358%_)))
                                        (__tmp191451
                                         (let ((__tmp191453
                                                (cons (cons (cons _%$e190488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp191454
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e190072%_
                                    _%target190358%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp191454))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp191452
                                                (_%recur190265%_
                                                 _%body190375%_
                                                 _%vars190357%_
                                                 _%$e190488%_
                                                 _%E190359%_
                                                 _%k190360%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp191453
                                            __tmp191452))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp191455
                                     __tmp191451
                                     _%E190359%_)))
                                (if (eq? 'box _%$e190378%_)
                                    (let ((_%$e190490%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp191460
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target190358%_)))
                                            (__tmp191456
                                             (let ((__tmp191458
                                                    (cons (cons (cons _%$e190490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp191459
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e190072%_
                                        _%target190358%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp191459))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp191457
                                                    (_%recur190265%_
                                                     _%body190375%_
                                                     _%vars190357%_
                                                     _%$e190490%_
                                                     _%E190359%_
                                                     _%k190360%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp191458
                                                __tmp191457))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp191460
                                         __tmp191456
                                         _%E190359%_)))
                                    (if (eq? 'datum _%$e190378%_)
                                        (let ((_%$e190492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp191466
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target190358%_)))
                                                (__tmp191461
                                                 (let ((__tmp191465
                                                        (cons (cons (cons _%$e190492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target190358%_))
                                  '()))
                      '()))
               (__tmp191462
                (let ((__tmp191464
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e190492%_ _%body190375%_)))
                      (__tmp191463 (_%k190360%_ _%vars190357%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp191464 __tmp191463 _%E190359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp191465
                                                    __tmp191462))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp191466
                                             __tmp191461
                                             _%E190359%_)))
                                        (_%BUG190264%_
                                         _%e190356%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e190361190368%_)
                                      (let ((_%hd190365190497%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190361190368%_)))
                                            (_%tl190366190499%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190361190368%_))))
                                        (let* ((_%tag190502%_
                                                _%hd190365190497%_)
                                               (_%body190504%_
                                                _%tl190366190499%_))
                                          (_%K190364190494%_
                                           _%body190504%_
                                           _%tag190502%_)))
                                      (_%E190363190372%_)))))
                             (_%splice-rlen190266%_
                              (lambda (_%e190318%_)
                                (let _%lp190320%_ ((_%e190322%_ _%e190318%_)
                                                   (_%n190323%_ '0))
                                  (let* ((_%e190324190331%_ _%e190322%_)
                                         (_%E190326190335%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e190324190331%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K190327190344%_
                                          (lambda (_%body190338%_
                                                   _%tag190339%_)
                                            (let ((_%$e190341%_ _%tag190339%_))
                                              (if (eq? 'splice _%$e190341%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx190070%_
                                                     _%where190257%_))
                                                  (if (eq? 'cons _%$e190341%_)
                                                      (_%lp190320%_
                                                       (cdr _%body190338%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n190323%_
                                                                '1)))
                                                      _%n190323%_))))))
                                    (if (pair? _%e190324190331%_)
                                        (let ((_%hd190328190347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190324190331%_)))
                                              (_%tl190329190349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190324190331%_))))
                                          (let* ((_%tag190352%_
                                                  _%hd190328190347%_)
                                                 (_%body190354%_
                                                  _%tl190329190349%_))
                                            (_%K190327190344%_
                                             _%body190354%_
                                             _%tag190352%_)))
                                        (_%E190326190335%_))))))
                             (_%splice-vars190267%_
                              (lambda (_%e190274%_)
                                (let _%recur190276%_ ((_%e190278%_ _%e190274%_)
                                                      (_%vars190279%_ '()))
                                  (let* ((_%e190280190287%_ _%e190278%_)
                                         (_%E190282190291%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e190280190287%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K190283190306%_
                                          (lambda (_%body190294%_
                                                   _%tag190295%_)
                                            (let ((_%$e190297%_ _%tag190295%_))
                                              (if (eq? 'var _%$e190297%_)
                                                  (cons _%body190294%_
                                                        _%vars190279%_)
                                                  (if (or (eq? 'cons
                                                               _%$e190297%_)
                                                          (eq? 'splice
                                                               _%$e190297%_))
                                                      (_%recur190276%_
                                                       (cdr _%body190294%_)
                                                       (_%recur190276%_
                                                        (car _%body190294%_)
                                                        _%vars190279%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e190297%_)
                      (eq? 'box _%$e190297%_))
                  (_%recur190276%_ _%body190294%_ _%vars190279%_)
                  _%vars190279%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e190280190287%_)
                                        (let ((_%hd190284190309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190280190287%_)))
                                              (_%tl190285190311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190280190287%_))))
                                          (let* ((_%tag190314%_
                                                  _%hd190284190309%_)
                                                 (_%body190316%_
                                                  _%tl190285190311%_))
                                            (_%K190283190306%_
                                             _%body190316%_
                                             _%tag190314%_)))
                                        (_%E190282190291%_))))))
                             (_%make-body190268%_
                              (lambda (_%vars190270%_)
                                (cons _%K190261%_
                                      (map (lambda (_%mvar190272%_)
                                             (let ((__tmp191467
                                                    (car _%mvar190272%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp191467
                                                _%vars190270%_
                                                _%BUG190264%_)))
                                           _%mvars190260%_)))))
                      (_%recur190265%_
                       _%hd190259%_
                       '()
                       _%target190258%_
                       _%E190262%_
                       _%make-body190268%_))))
                 (_%parse-clause190079%_
                  (lambda (_%hd190151%_ _%ids190152%_)
                    (let _%recur190154%_ ((_%e190156%_ _%hd190151%_)
                                          (_%vars190157%_ '())
                                          (_%depth190158%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e190156%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e190156%_))
                              (values '(any) _%vars190157%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e190156%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx190070%_
                                     _%hd190151%_))
                                  (if (let ((__tmp191468
                                             (lambda (_%id190163%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e190156%_
                                                  _%id190163%_)))))
                                        (declare (not safe))
                                        (__find __tmp191468 _%ids190152%_))
                                      (values (cons 'id _%e190156%_)
                                              _%vars190157%_)
                                      (if (let ((__tmp191469
                                                 (lambda (_%var190166%_)
                                                   (let ((__tmp191470
                                                          (car _%var190166%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e190156%_
                                                      __tmp191470)))))
                                            (declare (not safe))
                                            (__find __tmp191469
                                                    _%vars190157%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx190070%_
                                             _%e190156%_))
                                          (values (cons 'var _%e190156%_)
                                                  (cons (cons _%e190156%_
                                                              _%depth190158%_)
                                                        _%vars190157%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e190156%_))
                              (let* ((_%e190170190177%_ _%e190156%_)
                                     (_%E190172190181%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e190170190177%_))))
                                     (_%E190171190242%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e190170190177%_))
                                            (let ((_%e190173190185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e190170190177%_))))
                                              (let ((_%hd190174190188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e190173190185%_)))
                                                    (_%tl190175190190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e190173190185%_))))
                                                (let* ((_%hd190193%_
                                                        _%hd190174190188%_)
                                                       (_%rest190195%_
                                                        _%tl190175190190%_)
                                                       (_%make-pair190210%_
                                                        (lambda (_%tag190197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd190198%_
                         _%tl190199%_)
                  (let* ((_%hd-depth190201%_
                          (if (eq? _%tag190197%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth190158%_ '1))
                              _%depth190158%_))
                         (_g191471_
                          (_%recur190154%_
                           _%hd190198%_
                           _%vars190157%_
                           _%hd-depth190201%_)))
                    (begin
                      (let ((_g191472_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g191471_)
                                   (##values-length _g191471_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g191472_ 2)))
                            (error "Context expects 2 values" _g191472_)))
                      (let ((_%hd190203%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g191471_ 0)))
                            (_%vars190204%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g191471_ 1))))
                        (let ((_g191473_
                               (_%recur190154%_
                                _%tl190199%_
                                _%vars190204%_
                                _%depth190158%_)))
                          (begin
                            (let ((_g191474_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g191473_)
                                         (##values-length _g191473_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g191474_ 2)))
                                  (error "Context expects 2 values"
                                         _g191474_)))
                            (let ((_%tl190206%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g191473_ 0)))
                                  (_%vars190207%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g191473_ 1))))
                              (values (cons _%tag190197%_
                                            (cons _%hd190203%_ _%tl190206%_))
                                      _%vars190207%_)))))))))
               (_%e190211190218%_ _%rest190195%_)
               (_%E190213190222%_
                (lambda ()
                  (_%make-pair190210%_ 'cons _%hd190193%_ _%rest190195%_)))
               (_%E190212190238%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e190211190218%_))
                      (let ((_%e190214190226%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e190211190218%_))))
                        (let ((_%hd190215190229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190214190226%_)))
                              (_%tl190216190231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190214190226%_))))
                          (let* ((_%rest-hd190234%_ _%hd190215190229%_)
                                 (_%rest-tl190236%_ _%tl190216190231%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd190234%_))
                                (_%make-pair190210%_
                                 'splice
                                 _%hd190193%_
                                 _%rest-tl190236%_)
                                (_%make-pair190210%_
                                 'cons
                                 _%hd190193%_
                                 _%rest190195%_)))))
                      (_%E190213190222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E190212190238%_))))
                                            (_%E190172190181%_)))))
                                (_%E190171190242%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e190156%_))
                                  (values '(null) _%vars190157%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e190156%_))
                                      (let ((_g191475_
                                             (_%recur190154%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e190156%_)))
                                              _%vars190157%_
                                              _%depth190158%_)))
                                        (begin
                                          (let ((_g191476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191475_)
                                                       (##values-length
                                                        _g191475_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191476_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191476_)))
                                          (let ((_%e190248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191475_ 0)))
                                                (_%vars190249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191475_
                                                    1))))
                                            (values (cons 'vector _%e190248%_)
                                                    _%vars190249%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e190156%_))
                                          (let ((_g191477_
                                                 (_%recur190154%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e190156%_)))
                                                  _%vars190157%_
                                                  _%depth190158%_)))
                                            (begin
                                              (let ((_g191478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g191477_)
                                                           (##values-length
                                                            _g191477_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g191478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g191478_)))
                                              (let ((_%e190252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g191477_
                                                        0)))
                                                    (_%vars190253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g191477_
                                                        1))))
                                                (values (cons 'box _%e190252%_)
                                                        _%vars190253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e190156%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e190156%_)))
                                                      _%vars190157%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx190070%_
                                                 _%e190156%_))))))))))))
          (let* ((_%e190080190093%_ _%stx190070%_)
                 (_%E190082190097%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e190080190093%_))))
                 (_%E190081190147%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e190080190093%_))
                        (let ((_%e190083190101%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e190080190093%_))))
                          (let ((_%hd190084190104%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190083190101%_)))
                                (_%tl190085190106%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190083190101%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190085190106%_))
                                (let ((_%e190086190109%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl190085190106%_))))
                                  (let ((_%hd190087190112%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190086190109%_)))
                                        (_%tl190088190114%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190086190109%_))))
                                    (let ((_%expr190117%_ _%hd190087190112%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190088190114%_))
                                          (let ((_%e190089190119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl190088190114%_))))
                                            (let ((_%hd190090190122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190089190119%_)))
                                                  (_%tl190091190124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190089190119%_))))
                                              (let* ((_%ids190127%_
                                                      _%hd190090190122%_)
                                                     (_%clauses190129%_
                                                      _%tl190091190124%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids190127%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses190129%_))
                                                        (let* ((_%ids190134%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids190127%_)))
                       (_%clauses190136%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses190129%_)))
                       (_%clause-ids190138%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses190136%_)))
                       (_%E190140%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target190142%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first190144%_
                        (if (null? _%clauses190136%_)
                            _%E190140%_
                            (car _%clause-ids190138%_))))
                  (let ((__tmp191480
                         (let ((__tmp191481
                                (let ((__tmp191483
                                       (let ((__tmp191485
                                              (cons (cons (cons _%E190140%_
                                                                '())
                                                          (cons (let ((__tmp191487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target190142%_ '()))
                              (__tmp191486
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target190142%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp191487 __tmp191486))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp191484
                                              (_%generate-body190076%_
                                               (_%generate-bindings190075%_
                                                _%target190142%_
                                                _%ids190134%_
                                                _%clauses190136%_
                                                _%clause-ids190138%_
                                                _%E190140%_)
                                               (cons _%first190144%_
                                                     (cons _%expr190117%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp191485
                                          __tmp191484)))
                                      (__tmp191482
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx190070%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp191483
                                   __tmp191482))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp191481)))
                        (__tmp191479
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx190070%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp191480 __tmp191479)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx190070%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx190070%_
                                                       _%ids190127%_))))))
                                          (_%E190082190097%_)))))
                                (_%E190082190097%_))))
                        (_%E190082190097%_)))))
            (_%E190081190147%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx190795%_)
        (let* ((_%identifier=?190797%_ 'free-identifier=?)
               (_%unwrap-e190799%_ 'syntax-e)
               (_%wrap-e190801%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190795%_
           _%identifier=?190797%_
           _%unwrap-e190799%_
           _%wrap-e190801%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx190803%_ _%identifier=?190804%_)
        (let* ((_%unwrap-e190806%_ 'syntax-e) (_%wrap-e190808%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190803%_
           _%identifier=?190804%_
           _%unwrap-e190806%_
           _%wrap-e190808%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx190810%_ _%identifier=?190811%_ _%unwrap-e190812%_)
        (let ((_%wrap-e190814%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190810%_
           _%identifier=?190811%_
           _%unwrap-e190812%_
           _%wrap-e190814%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g191488_
        (let ((_g191489_ (let () (declare (not safe)) (##length _g191488_))))
          (cond ((let () (declare (not safe)) (##fx= _g191489_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g191488_))
                ((let () (declare (not safe)) (##fx= _g191489_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g191488_))
                ((let () (declare (not safe)) (##fx= _g191489_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g191488_))
                ((let () (declare (not safe)) (##fx= _g191489_ 4))
                 (apply gx#macro-expand-syntax-case__% _g191488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g191488_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx190067%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx190067%_))
            (let ((__tmp191490
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx190067%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp191490 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd190025%_ . _%rest190026%_)
        (let ((_%len190028%_ (length _%hd190025%_)))
          (let _%lp190030%_ ((_%rest190032%_ _%rest190026%_))
            (let* ((_%rest190033190041%_ _%rest190032%_)
                   (_%else190035190049%_ (lambda () '#!void))
                   (_%K190037190055%_
                    (lambda (_%rest190052%_ _%hd190053%_)
                      (if (let ((__tmp191491 (length _%hd190053%_)))
                            (declare (not safe))
                            (##fx= _%len190028%_ __tmp191491))
                          (_%lp190030%_ _%rest190052%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd190053%_))))))
              (if (pair? _%rest190033190041%_)
                  (let ((_%hd190038190058%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest190033190041%_)))
                        (_%tl190039190060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest190033190041%_))))
                    (let* ((_%hd190063%_ _%hd190038190058%_)
                           (_%rest190065%_ _%tl190039190060%_))
                      (_%K190037190055%_ _%rest190065%_ _%hd190063%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx189975%_ _%n189976%_)
        (let _%lp189978%_ ((_%rest189981%_ _%stx189975%_) (_%r189983%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189981%_))
              (let* ((_%g189985189992%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189981%_)))
                     (_%E189987189996%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189985189992%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189988190003%_
                      (lambda (_%rest189999%_ _%hd190000%_)
                        (_%lp189978%_
                         _%rest189999%_
                         (cons _%hd190000%_ _%r189983%_)))))
                (if (pair? _%g189985189992%_)
                    (let ((_%hd189989190006%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189985189992%_)))
                          (_%tl189990190008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189985189992%_))))
                      (let* ((_%hd190011%_ _%hd189989190006%_)
                             (_%rest190013%_ _%tl189990190008%_))
                        (_%K189988190003%_ _%rest190013%_ _%hd190011%_)))
                    (_%E189987189996%_)))
              (let _%lp190015%_ ((_%n190017%_ _%n189976%_)
                                 (_%l190018%_ _%r189983%_)
                                 (_%r190020%_ _%rest189981%_))
                (if (null? _%l190018%_)
                    (values _%l190018%_ _%r190020%_)
                    (if (fxpositive? _%n190017%_)
                        (_%lp190015%_
                         (let () (declare (not safe)) (##fx- _%n190017%_ '1))
                         (cdr _%l190018%_)
                         (cons (car _%l190018%_) _%r190020%_))
                        (values (reverse! _%l190018%_) _%r190020%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx189925%_ _%n189926%_)
        (let _%lp189928%_ ((_%rest189931%_ _%stx189925%_) (_%r189933%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189931%_))
              (let* ((_%g189935189942%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189931%_)))
                     (_%E189937189946%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189935189942%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189938189953%_
                      (lambda (_%rest189949%_ _%hd189950%_)
                        (_%lp189928%_
                         _%rest189949%_
                         (cons _%hd189950%_ _%r189933%_)))))
                (if (pair? _%g189935189942%_)
                    (let ((_%hd189939189956%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189935189942%_)))
                          (_%tl189940189958%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189935189942%_))))
                      (let* ((_%hd189961%_ _%hd189939189956%_)
                             (_%rest189963%_ _%tl189940189958%_))
                        (_%K189938189953%_ _%rest189963%_ _%hd189961%_)))
                    (_%E189937189946%_)))
              (let _%lp189965%_ ((_%n189967%_ _%n189926%_)
                                 (_%l189968%_ _%r189933%_)
                                 (_%r189970%_ _%rest189931%_))
                (if (null? _%l189968%_)
                    (vector _%l189968%_ _%r189970%_)
                    (if (fxpositive? _%n189967%_)
                        (_%lp189965%_
                         (let () (declare (not safe)) (##fx- _%n189967%_ '1))
                         (cdr _%l189968%_)
                         (cons (car _%l189968%_) _%r189970%_))
                        (vector (reverse! _%l189968%_) _%r189970%_))))))))))
