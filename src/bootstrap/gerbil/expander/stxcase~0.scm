(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712246556)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129719 (list gx#expander::t))
            (__tmp129718 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129719
         '(id depth)
         __tmp129718
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129715%_
        (apply make-instance gx#syntax-pattern::t _%$args129715%_)))
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
      (lambda (_%self129701%_ _%stx129702%_)
        (let ((_%self129705%_ _%self129701%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129702%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129167%_)
        (letrec ((_%generate129169%_
                  (lambda (_%e129409%_)
                    (letrec ((_%BUG129411%_
                              (lambda (_%q129576%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129167%_
                                         _%e129409%_
                                         _%q129576%_))))
                             (_%local-pattern-e129412%_
                              (lambda (_%pat129574%_)
                                (let ((__tmp129720
                                       (##structure-ref
                                        _%pat129574%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129720))))
                             (_%getvar129413%_
                              (lambda (_%q129571%_ _%vars129572%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129571%_
                                   _%vars129572%_
                                   _%BUG129411%_))))
                             (_%getarg129414%_
                              (lambda (_%arg129537%_ _%vars129538%_)
                                (let* ((_%arg129539129546%_ _%arg129537%_)
                                       (_%E129541129550%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129539129546%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129542129559%_
                                        (lambda (_%e129553%_ _%tag129554%_)
                                          (let ((_%$e129556%_ _%tag129554%_))
                                            (if (eq? 'ref _%$e129556%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar129413%_
                                                   _%e129553%_
                                                   _%vars129538%_))
                                                (if (eq? 'pattern _%$e129556%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e129412%_
                                                       _%e129553%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG129411%_
                                                       _%arg129537%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129539129546%_))
                                      (let ((_%hd129543129562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129539129546%_)))
                                            (_%tl129544129564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129539129546%_))))
                                        (let* ((_%tag129567%_
                                                _%hd129543129562%_)
                                               (_%e129569%_
                                                _%tl129544129564%_))
                                          (declare (not safe))
                                          (_%K129542129559%_
                                           _%e129569%_
                                           _%tag129567%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E129541129550%_)))))))
                      (let _%recur129416%_ ((_%e129418%_ _%e129409%_)
                                            (_%vars129419%_ '()))
                        (let* ((_%e129420129427%_ _%e129418%_)
                               (_%E129422129431%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129420129427%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129423129525%_
                                (lambda (_%body129434%_ _%tag129435%_)
                                  (let ((_%$e129437%_ _%tag129435%_))
                                    (if (eq? 'datum _%$e129437%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129434%_))
                                        (if (eq? 'term _%$e129437%_)
                                            (let ((_%id129440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129434%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129440%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129440%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks129443%_))
                                                        (let ((__tmp129721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129434%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129721))
                (let ((__tmp129723
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129434%_)))
                      (__tmp129722
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129434%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129723
                   __tmp129722
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129440%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129434%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG129411%_
                                                         _%e129418%_)))))
                                            (if (eq? 'pattern _%$e129437%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e129412%_
                                                   _%body129434%_))
                                                (if (eq? 'ref _%$e129437%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar129413%_
                                                       _%body129434%_
                                                       _%vars129419%_))
                                                    (if (eq? 'cons
                                                             _%$e129437%_)
                                                        (let ((__tmp129726
                                                               (let ((__tmp129727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body129434%_)))
                         (declare (not safe))
                         (_%recur129416%_ __tmp129727 _%vars129419%_)))
                      (__tmp129724
                       (let ((__tmp129725 (cdr _%body129434%_)))
                         (declare (not safe))
                         (_%recur129416%_ __tmp129725 _%vars129419%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129726 __tmp129724))
                (if (eq? 'vector _%$e129437%_)
                    (let ((__tmp129728
                           (let ()
                             (declare (not safe))
                             (_%recur129416%_ _%body129434%_ _%vars129419%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129728))
                    (if (eq? 'box _%$e129437%_)
                        (let ((__tmp129729
                               (let ()
                                 (declare (not safe))
                                 (_%recur129416%_
                                  _%body129434%_
                                  _%vars129419%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129729))
                        (if (eq? 'splice _%$e129437%_)
                            (let* ((_%body129446129457%_ _%body129434%_)
                                   (_%E129448129461%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129446129457%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129449129499%_
                                    (lambda (_%args129464%_
                                             _%iv129465%_
                                             _%hd129466%_
                                             _%depth129467%_)
                                      (let* ((_%targets129473%_
                                              (map (lambda (_%g129468129470%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg129414%_
                                                        _%g129468129470%_
                                                        _%vars129419%_)))
                                                   _%args129464%_))
                                             (_%fold-in129475%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129464%_)))
                                             (_%fold-out129477%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129479%_
                                              (let ((__tmp129730
                                                     (cons _%fold-out129477%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129730
                                                 _%fold-in129475%_)))
                                             (_%lambda-body129496%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129467%_ '1))
                                                  (let ((_%r-args129487%_
                                                         (map (lambda (_%arg129481%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129481%_)))
                      _%args129464%_))
                (_%r-vars129488%_
                 (let ((__tmp129731
                        (lambda (_%arg129483%_ _%var129484%_ _%r129485%_)
                          (cons (cons (cdr _%arg129483%_) _%var129484%_)
                                _%r129485%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129731
                    _%vars129419%_
                    _%args129464%_
                    _%fold-in129475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129732
                                                           (let ((__tmp129733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129737
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth129467%_ '1)))
                                (__tmp129734
                                 (let ((__tmp129735
                                        (let ((__tmp129736
                                               (cons 'var _%fold-out129477%_)))
                                          (declare (not safe))
                                          (cons __tmp129736
                                                _%r-args129487%_))))
                                   (declare (not safe))
                                   (cons _%hd129466%_ __tmp129735))))
                            (declare (not safe))
                            (cons __tmp129737 __tmp129734))))
                     (declare (not safe))
                     (cons 'splice __tmp129733))))
              (declare (not safe))
              (_%recur129416%_ __tmp129732 _%r-vars129488%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars129494%_
                                                          (let ((__tmp129738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129490%_ _%var129491%_ _%r129492%_)
                           (cons (cons (cdr _%arg129490%_) _%var129491%_)
                                 _%r129492%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129738
                     _%vars129419%_
                     _%args129464%_
                     _%fold-in129475%_)))
                 (__tmp129739
                  (let ()
                    (declare (not safe))
                    (_%recur129416%_ _%hd129466%_ _%hd-vars129494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129739
                                                     _%fold-out129477%_)))))
                                        (let ((__tmp129743
                                               (if (let ((__tmp129744
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129473%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129744 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129473%_))
                                                   '#!void))
                                              (__tmp129740
                                               (let ((__tmp129742
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129479%_
                                                         _%lambda-body129496%_)))
                                                     (__tmp129741
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur129416%_
                                                         _%iv129465%_
                                                         _%vars129419%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129742
                                                  __tmp129741
                                                  _%targets129473%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129743
                                           __tmp129740))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129446129457%_))
                                  (let ((_%hd129450129502%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129446129457%_)))
                                        (_%tl129451129504%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129446129457%_))))
                                    (let ((_%depth129507%_ _%hd129450129502%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129451129504%_))
                                          (let ((_%hd129452129509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129451129504%_)))
                                                (_%tl129453129511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129451129504%_))))
                                            (let ((_%hd129514%_
                                                   _%hd129452129509%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129453129511%_))
                                                  (let ((_%hd129454129516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129453129511%_)))
                                                        (_%tl129455129518%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129453129511%_))))
                                                    (let* ((_%iv129521%_
                                                            _%hd129454129516%_)
                                                           (_%args129523%_
                                                            _%tl129455129518%_))
                                                      (declare (not safe))
                                                      (_%K129449129499%_
                                                       _%args129523%_
                                                       _%iv129521%_
                                                       _%hd129514%_
                                                       _%depth129507%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E129448129461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129448129461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129448129461%_))))
                            (if (eq? 'var _%$e129437%_)
                                _%body129434%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG129411%_ _%e129418%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129420129427%_))
                              (let ((_%hd129424129528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129420129427%_)))
                                    (_%tl129425129530%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129420129427%_))))
                                (let* ((_%tag129533%_ _%hd129424129528%_)
                                       (_%body129535%_ _%tl129425129530%_))
                                  (declare (not safe))
                                  (_%K129423129525%_
                                   _%body129535%_
                                   _%tag129533%_)))
                              (let ()
                                (declare (not safe))
                                (_%E129422129431%_))))))))
                 (_%parse129170%_
                  (lambda (_%e129211%_)
                    (letrec ((_%make-cons129213%_
                              (lambda (_%hd129401%_ _%tl129402%_)
                                (let ((_g129745_ _%hd129401%_)
                                      (_g129747_ _%tl129402%_))
                                  (begin
                                    (let ((_g129746_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129745_)
                                                 (##vector-length _g129745_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129746_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129746_)))
                                    (let ((_g129748_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129747_)
                                                 (##vector-length _g129747_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129748_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129748_)))
                                    (let ((_%hd-e129404%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129745_ 0)))
                                          (_%hd-vars129405%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129745_ 1))))
                                      (let ((_%tl-e129406%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129747_ 0)))
                                            (_%tl-vars129407%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129747_ 1))))
                                        (values (let ((__tmp129749
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e129404%_
                                                               _%tl-e129406%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129749))
                                                (append _%hd-vars129405%_
                                                        _%tl-vars129407%_))))))))
                             (_%make-splice129214%_
                              (lambda (_%where129337%_
                                       _%depth129338%_
                                       _%hd129339%_
                                       _%tl129340%_)
                                (let ((_g129750_ _%hd129339%_)
                                      (_g129752_ _%tl129340%_))
                                  (begin
                                    (let ((_g129751_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129750_)
                                                 (##vector-length _g129750_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129751_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129751_)))
                                    (let ((_g129753_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129752_)
                                                 (##vector-length _g129752_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129753_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129753_)))
                                    (let ((_%hd-e129342%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129750_ 0)))
                                          (_%hd-vars129343%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129750_ 1))))
                                      (let ((_%tl-e129344%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129752_ 0)))
                                            (_%tl-vars129345%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129752_ 1))))
                                        (let _%lp129347%_ ((_%rest129349%_
                                                            _%hd-vars129343%_)
                                                           (_%targets129350%_
                                                            '())
                                                           (_%vars129351%_
                                                            _%tl-vars129345%_))
                                          (let* ((_%rest129352129362%_
                                                  _%rest129349%_)
                                                 (_%else129354129370%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets129350%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129167%_
                                                           _%where129337%_))
                                                        (values (let ((__tmp129754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129755
                                      (let ((__tmp129756
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e129344%_
                                                     _%targets129350%_))))
                                        (declare (not safe))
                                        (cons _%hd-e129342%_ __tmp129756))))
                                 (declare (not safe))
                                 (cons _%depth129338%_ __tmp129755))))
                          (declare (not safe))
                          (cons 'splice __tmp129754))
                        _%vars129351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129356129382%_
                                                  (lambda (_%rest129373%_
                                                           _%hd-pat129374%_
                                                           _%hd-depth*129375%_)
                                                    (let ((_%hd-depth129377%_
                                                           (fx- _%hd-depth*129375%_
                                                                _%depth129338%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129377%_))
                                                          (let ((__tmp129758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat129374%_) _%targets129350%_))
                        (__tmp129757
                         (cons (cons _%hd-depth129377%_ _%hd-pat129374%_)
                               _%vars129351%_)))
                    (declare (not safe))
                    (_%lp129347%_ _%rest129373%_ __tmp129758 __tmp129757))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129377%_))
                      (let ((__tmp129759
                             (cons (cons 'pattern _%hd-pat129374%_)
                                   _%targets129350%_)))
                        (declare (not safe))
                        (_%lp129347%_
                         _%rest129373%_
                         __tmp129759
                         _%vars129351%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129167%_
                         _%where129337%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129352129362%_))
                                                (let ((_%hd129357129385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129352129362%_)))
                                                      (_%tl129358129387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129352129362%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129357129385%_))
                                                      (let ((_%hd129359129390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129357129385%_)))
                    (_%tl129360129392%_
                     (let () (declare (not safe)) (##cdr _%hd129357129385%_))))
                (let* ((_%hd-depth*129395%_ _%hd129359129390%_)
                       (_%hd-pat129397%_ _%tl129360129392%_)
                       (_%rest129399%_ _%tl129358129387%_))
                  (declare (not safe))
                  (_%K129356129382%_
                   _%rest129399%_
                   _%hd-pat129397%_
                   _%hd-depth*129395%_)))
              (let () (declare (not safe)) (_%else129354129370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else129354129370%_)))))))))))
                             (_%recur129215%_
                              (lambda (_%e129220%_ _%is-e?129221%_)
                                (if (_%is-e?129221%_ _%e129220%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129167%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e129220%_))
                                        (let ()
                                          (let* ((_%pat129225%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e129220%_)))
                                                 (_%depth129227%_
                                                  (##structure-ref
                                                   _%pat129225%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth129227%_)
                                                (values (cons 'ref
                                                              _%pat129225%_)
                                                        (cons (cons _%depth129227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat129225%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat129225%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129220%_))
                                            (let ()
                                              (values (cons 'term _%e129220%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129220%_))
                                                (let ()
                                                  (let* ((_%e129231129238%_
                                                          _%e129220%_)
                                                         (_%E129233129242%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e129231129238%_))))
                                                         (_%E129232129324%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e129231129238%_))
                        (let ((_%e129234129246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129231129238%_))))
                          (let ((_%hd129235129249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129234129246%_)))
                                (_%tl129236129251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129234129246%_))))
                            (let* ((_%hd129254%_ _%hd129235129249%_)
                                   (_%rest129256%_ _%tl129236129251%_))
                              (if '#t
                                  (if (_%is-e?129221%_ _%hd129254%_)
                                      (let* ((_%e129257129264%_ _%rest129256%_)
                                             (_%E129259129268%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx129167%_
                                                   _%e129220%_))))
                                             (_%E129258129282%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129257129264%_))
                                                    (let ((_%e129260129272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129257129264%_))))
                                                      (let ((_%hd129261129275%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129260129272%_)))
                    (_%tl129262129277%_
                     (let () (declare (not safe)) (##cdr _%e129260129272%_))))
                (let ((_%rest129280%_ _%hd129261129275%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl129262129277%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur129215%_ _%rest129280%_ false))
                          (let () (declare (not safe)) (_%E129259129268%_)))
                      (let () (declare (not safe)) (_%E129259129268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E129259129268%_))))))
                                        (declare (not safe))
                                        (_%E129258129282%_))
                                      (let _%lp129286%_ ((_%rest129288%_
                                                          _%rest129256%_)
                                                         (_%depth129289%_ '0))
                                        (let* ((_%e129290129297%_
                                                _%rest129288%_)
                                               (_%E129292129301%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth129289%_)
                                                      (let ((__tmp129761
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur129215%_ _%hd129254%_ _%is-e?129221%_)))
                    (__tmp129760
                     (let ()
                       (declare (not safe))
                       (_%recur129215%_ _%rest129288%_ _%is-e?129221%_))))
                (declare (not safe))
                (_%make-splice129214%_
                 _%e129220%_
                 _%depth129289%_
                 __tmp129761
                 __tmp129760))
              (let ((__tmp129763
                     (let ()
                       (declare (not safe))
                       (_%recur129215%_ _%hd129254%_ _%is-e?129221%_)))
                    (__tmp129762
                     (let ()
                       (declare (not safe))
                       (_%recur129215%_ _%rest129288%_ _%is-e?129221%_))))
                (declare (not safe))
                (_%make-cons129213%_ __tmp129763 __tmp129762)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129291129320%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e129290129297%_))
                                                      (let ((_%e129293129305%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e129290129297%_))))
                (let ((_%hd129294129308%_
                       (let () (declare (not safe)) (##car _%e129293129305%_)))
                      (_%tl129295129310%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e129293129305%_))))
                  (let* ((_%rest-hd129313%_ _%hd129294129308%_)
                         (_%rest-tl129315%_ _%tl129295129310%_))
                    (if '#t
                        (if (_%is-e?129221%_ _%rest-hd129313%_)
                            (let ((__tmp129764
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth129289%_ '1))))
                              (declare (not safe))
                              (_%lp129286%_ _%rest-tl129315%_ __tmp129764))
                            (if (fxpositive? _%depth129289%_)
                                (let ((__tmp129766
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129215%_
                                          _%hd129254%_
                                          _%is-e?129221%_)))
                                      (__tmp129765
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129215%_
                                          _%rest129288%_
                                          _%is-e?129221%_))))
                                  (declare (not safe))
                                  (_%make-splice129214%_
                                   _%e129220%_
                                   _%depth129289%_
                                   __tmp129766
                                   __tmp129765))
                                (let ((__tmp129768
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129215%_
                                          _%hd129254%_
                                          _%is-e?129221%_)))
                                      (__tmp129767
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129215%_
                                          _%rest129288%_
                                          _%is-e?129221%_))))
                                  (declare (not safe))
                                  (_%make-cons129213%_
                                   __tmp129768
                                   __tmp129767))))
                        (let () (declare (not safe)) (_%E129292129301%_))))))
              (let () (declare (not safe)) (_%E129292129301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E129291129320%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129233129242%_))))))
                        (let () (declare (not safe)) (_%E129233129242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E129232129324%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129220%_))
                                                    (let ((_g129769_
                                                           (let ((__tmp129771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e129220%_)))))
                     (declare (not safe))
                     (_%recur129215%_ __tmp129771 _%is-e?129221%_))))
              (begin
                (let ((_g129770_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129769_)
                             (##vector-length _g129769_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129770_ 2)))
                      (error "Context expects 2 values" _g129770_)))
                (let ((_%e129329%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129769_ 0)))
                      (_%vars129330%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129769_ 1))))
                  (values (cons 'vector _%e129329%_) _%vars129330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129220%_))
                                                        (let ((_g129772_
                                                               (let ((__tmp129774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e129220%_)))))
                         (declare (not safe))
                         (_%recur129215%_ __tmp129774 _%is-e?129221%_))))
                  (begin
                    (let ((_g129773_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129772_)
                                 (##vector-length _g129772_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129773_ 2)))
                          (error "Context expects 2 values" _g129773_)))
                    (let ((_%e129333%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129772_ 0)))
                          (_%vars129334%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129772_ 1))))
                      (values (cons 'box _%e129333%_) _%vars129334%_))))
                (let () (values (cons 'datum _%e129220%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129775_
                             (let ()
                               (declare (not safe))
                               (_%recur129215%_ _%e129211%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129776_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129775_)
                                       (##vector-length _g129775_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129776_ 2)))
                                (error "Context expects 2 values" _g129776_)))
                          (let ((_%tree129217%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129775_ 0)))
                                (_%vars129218%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129775_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars129218%_))
                                _%tree129217%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129167%_
                                   _%vars129218%_))))))))))
          (let* ((_%e129171129181%_ _%stx129167%_)
                 (_%E129173129185%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129167%_))))
                 (_%E129172129207%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129171129181%_))
                        (let ((_%e129174129189%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129171129181%_))))
                          (let ((_%hd129175129192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129174129189%_)))
                                (_%tl129176129194%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129174129189%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129176129194%_))
                                (let ((_%e129177129197%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129176129194%_))))
                                  (let ((_%hd129178129200%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129177129197%_)))
                                        (_%tl129179129202%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129177129197%_))))
                                    (let ((_%form129205%_ _%hd129178129200%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129179129202%_))
                                          (if '#t
                                              (let ((__tmp129778
                                                     (let ((__tmp129779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse129170%_
                                                               _%form129205%_))))
                                                       (declare (not safe))
                                                       (_%generate129169%_
                                                        __tmp129779)))
                                                    (__tmp129777
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129167%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129778
                                                 __tmp129777))
                                              (let ()
                                                (declare (not safe))
                                                (_%E129173129185%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129173129185%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E129173129185%_)))))
                        (let () (declare (not safe)) (_%E129173129185%_))))))
            (declare (not safe))
            (_%E129172129207%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128416%_
               _%identifier=?128417%_
               _%unwrap-e128418%_
               _%wrap-e128419%_)
        (letrec ((_%generate-bindings128421%_
                  (lambda (_%target129031%_
                           _%ids129032%_
                           _%clauses129033%_
                           _%clause-ids129034%_
                           _%E129035%_)
                    (letrec ((_%generate1129037%_
                              (lambda (_%clause129134%_
                                       _%clause-id129135%_
                                       _%E129136%_)
                                (cons (cons _%clause-id129135%_ '())
                                      (cons (let ((__tmp129781
                                                   (cons _%target129031%_ '()))
                                                  (__tmp129780
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause128423%_
                                                      _%target129031%_
                                                      _%ids129032%_
                                                      _%clause129134%_
                                                      _%E129136%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129781
                                               __tmp129780))
                                            '())))))
                      (let _%lp129039%_ ((_%rest129041%_ _%clauses129033%_)
                                         (_%rest-ids129042%_
                                          _%clause-ids129034%_)
                                         (_%bindings129043%_ '()))
                        (let* ((_%rest129044129052%_ _%rest129041%_)
                               (_%else129046129060%_
                                (lambda () _%bindings129043%_))
                               (_%K129048129122%_
                                (lambda (_%rest129063%_ _%clause129064%_)
                                  (let* ((_%rest-ids129065129072%_
                                          _%rest-ids129042%_)
                                         (_%E129067129076%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids129065129072%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K129068129110%_
                                          (lambda (_%rest-ids129079%_
                                                   _%clause-id129080%_)
                                            (let* ((_%rest-ids129081129089%_
                                                    _%rest-ids129079%_)
                                                   (_%else129083129097%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1129037%_
                                                               _%clause129064%_
                                                               _%clause-id129080%_
                                                               _%E129035%_))
                                                            _%bindings129043%_)))
                                                   (_%K129085129102%_
                                                    (lambda (_%next-clause-id129100%_)
                                                      (let ((__tmp129782
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1129037%_
                              _%clause129064%_
                              _%clause-id129080%_
                              _%next-clause-id129100%_))
                           _%bindings129043%_)))
                (declare (not safe))
                (_%lp129039%_
                 _%rest129063%_
                 _%rest-ids129079%_
                 __tmp129782)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids129081129089%_))
                                                  (let* ((_%hd129086129105%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids129081129089%_)))
                                                         (_%next-clause-id129108%_
                                                          _%hd129086129105%_))
                                                    (declare (not safe))
                                                    (_%K129085129102%_
                                                     _%next-clause-id129108%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else129083129097%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids129065129072%_))
                                        (let ((_%hd129069129113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids129065129072%_)))
                                              (_%tl129070129115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids129065129072%_))))
                                          (let* ((_%clause-id129118%_
                                                  _%hd129069129113%_)
                                                 (_%rest-ids129120%_
                                                  _%tl129070129115%_))
                                            (declare (not safe))
                                            (_%K129068129110%_
                                             _%rest-ids129120%_
                                             _%clause-id129118%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E129067129076%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest129044129052%_))
                              (let ((_%hd129049129125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129044129052%_)))
                                    (_%tl129050129127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129044129052%_))))
                                (let* ((_%clause129130%_ _%hd129049129125%_)
                                       (_%rest129132%_ _%tl129050129127%_))
                                  (declare (not safe))
                                  (_%K129048129122%_
                                   _%rest129132%_
                                   _%clause129130%_)))
                              (let ()
                                (declare (not safe))
                                (_%else129046129060%_))))))))
                 (_%generate-body128422%_
                  (lambda (_%bindings128991%_ _%body128992%_)
                    (let _%recur128994%_ ((_%rest128996%_ _%bindings128991%_))
                      (let* ((_%rest128997129005%_ _%rest128996%_)
                             (_%else128999129013%_ (lambda () _%body128992%_))
                             (_%K129001129019%_
                              (lambda (_%rest129016%_ _%hd129017%_)
                                (let ((__tmp129784 (cons _%hd129017%_ '()))
                                      (__tmp129783
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128994%_ _%rest129016%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129784
                                   __tmp129783)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128997129005%_))
                            (let ((_%hd129002129022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128997129005%_)))
                                  (_%tl129003129024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128997129005%_))))
                              (let* ((_%hd129027%_ _%hd129002129022%_)
                                     (_%rest129029%_ _%tl129003129024%_))
                                (declare (not safe))
                                (_%K129001129019%_
                                 _%rest129029%_
                                 _%hd129027%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128999129013%_)))))))
                 (_%generate-clause128423%_
                  (lambda (_%target128854%_
                           _%ids128855%_
                           _%clause128856%_
                           _%E128857%_)
                    (letrec ((_%generate1128859%_
                              (lambda (_%hd128946%_
                                       _%fender128947%_
                                       _%body128948%_)
                                (let ((_g129785_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause128425%_
                                          _%hd128946%_
                                          _%ids128855%_))))
                                  (begin
                                    (let ((_g129786_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129785_)
                                                 (##vector-length _g129785_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129786_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129786_)))
                                    (let ((_%e128950%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129785_ 0)))
                                          (_%mvars128951%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129785_ 1))))
                                      (let* ((_%pvars128953%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128951%_))))
                                             (_%E128955%_
                                              (cons _%E128857%_
                                                    (cons _%target128854%_
                                                          '())))
                                             (_%K128988%_
                                              (let ((__tmp129787
                                                     (let ((__tmp129789
                                                            (map (lambda (_%mvar128957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128958%_)
                           (let* ((_%mvar128959128966%_ _%mvar128957%_)
                                  (_%E128961128970%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128959128966%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128962128976%_
                                   (lambda (_%depth128973%_ _%id128974%_)
                                     (cons _%id128974%_
                                           (cons (let ((__tmp129791
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128974%_)))
                                                       (__tmp129790
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128958%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129791
                                                    __tmp129790
                                                    _%depth128973%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128959128966%_))
                                 (let ((_%hd128963128979%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128959128966%_)))
                                       (_%tl128964128981%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128959128966%_))))
                                   (let* ((_%id128984%_ _%hd128963128979%_)
                                          (_%depth128986%_ _%tl128964128981%_))
                                     (declare (not safe))
                                     (_%K128962128976%_
                                      _%depth128986%_
                                      _%id128984%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128961128970%_)))))
                         _%mvars128951%_
                         _%pvars128953%_))
                   (__tmp129788
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128947%_ '#t))
                        _%body128948%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128947%_
                           _%body128948%_
                           _%E128955%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129789 __tmp129788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128953%_
                                                 __tmp129787))))
                                        (declare (not safe))
                                        (_%generate-match128424%_
                                         _%hd128946%_
                                         _%target128854%_
                                         _%e128950%_
                                         _%mvars128951%_
                                         _%K128988%_
                                         _%E128955%_))))))))
                      (let* ((_%e128860128880%_ _%clause128856%_)
                             (_%E128869128884%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128860128880%_))))
                             (_%E128862128918%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128860128880%_))
                                    (let ((_%e128870128888%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128860128880%_))))
                                      (let ((_%hd128871128891%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128870128888%_)))
                                            (_%tl128872128893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128870128888%_))))
                                        (let ((_%hd128896%_
                                               _%hd128871128891%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128872128893%_))
                                              (let ((_%e128873128898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128872128893%_))))
                                                (let ((_%hd128874128901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128873128898%_)))
                                                      (_%tl128875128903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128873128898%_))))
                                                  (let ((_%fender128906%_
                                                         _%hd128874128901%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128875128903%_))
                                                        (let ((_%e128876128908%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128875128903%_))))
                  (let ((_%hd128877128911%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128876128908%_)))
                        (_%tl128878128913%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128876128908%_))))
                    (let ((_%body128916%_ _%hd128877128911%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128878128913%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128859%_
                                 _%hd128896%_
                                 _%fender128906%_
                                 _%body128916%_))
                              (let ()
                                (declare (not safe))
                                (_%E128869128884%_)))
                          (let () (declare (not safe)) (_%E128869128884%_))))))
                (let () (declare (not safe)) (_%E128869128884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128869128884%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128869128884%_)))))
                             (_%E128861128942%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128860128880%_))
                                    (let ((_%e128863128922%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128860128880%_))))
                                      (let ((_%hd128864128925%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128863128922%_)))
                                            (_%tl128865128927%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128863128922%_))))
                                        (let ((_%hd128930%_
                                               _%hd128864128925%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128865128927%_))
                                              (let ((_%e128866128932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128865128927%_))))
                                                (let ((_%hd128867128935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128866128932%_)))
                                                      (_%tl128868128937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128866128932%_))))
                                                  (let ((_%body128940%_
                                                         _%hd128867128935%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128868128937%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128859%_
                                                               _%hd128930%_
                                                               '#t
                                                               _%body128940%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128862128918%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128862128918%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128862128918%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128862128918%_))))))
                        (declare (not safe))
                        (_%E128861128942%_)))))
                 (_%generate-match128424%_
                  (lambda (_%where128603%_
                           _%target128604%_
                           _%hd128605%_
                           _%mvars128606%_
                           _%K128607%_
                           _%E128608%_)
                    (letrec ((_%BUG128610%_
                              (lambda (_%q128852%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128416%_
                                         _%hd128605%_
                                         _%q128852%_))))
                             (_%recur128611%_
                              (lambda (_%e128702%_
                                       _%vars128703%_
                                       _%target128704%_
                                       _%E128705%_
                                       _%k128706%_)
                                (let* ((_%e128707128714%_ _%e128702%_)
                                       (_%E128709128718%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128707128714%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128710128840%_
                                        (lambda (_%body128721%_ _%tag128722%_)
                                          (let ((_%$e128724%_ _%tag128722%_))
                                            (if (eq? 'any _%$e128724%_)
                                                (_%k128706%_ _%vars128703%_)
                                                (if (eq? 'id _%$e128724%_)
                                                    (let ((__tmp129796
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128704%_)))
                                                          (__tmp129792
                                                           (let ((__tmp129794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129795
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128419%_
                                    _%body128721%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128417%_
                             __tmp129795
                             _%target128704%_)))
                         (__tmp129793 (_%k128706%_ _%vars128703%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129794 __tmp129793 _%E128705%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129796 __tmp129792 _%E128705%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128724%_)
                                                        (_%k128706%_
                                                         (cons (cons _%body128721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128704%_)
                       _%vars128703%_))
                (if (eq? 'cons _%$e128724%_)
                    (let ((_%$e128727%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128728%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128729%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129803
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128704%_)))
                            (__tmp129797
                             (let ((__tmp129802
                                    (cons (cons (cons _%$e128727%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128418%_
                                                         _%target128704%_))
                                                      '()))
                                          '()))
                                   (__tmp129798
                                    (let ((__tmp129801
                                           (cons (cons (cons _%$hd128728%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128727%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128727%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129799
                                           (let* ((_%body128730128737%_
                                                   _%body128721%_)
                                                  (_%E128732128741%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128730128737%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128733128749%_
                                                   (lambda (_%tl128744%_
                                                            _%hd128745%_)
                                                     (let ((__tmp129800
                                                            (lambda (_%vars128747%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128611%_
                         _%tl128744%_
                         _%vars128747%_
                         _%$tl128729%_
                         _%E128705%_
                         _%k128706%_)))))
               (declare (not safe))
               (_%recur128611%_
                _%hd128745%_
                _%vars128703%_
                _%$hd128728%_
                _%E128705%_
                __tmp129800)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128730128737%_))
                                                 (let ((_%hd128734128752%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128730128737%_)))
                                                       (_%tl128735128754%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128730128737%_))))
                                                   (let* ((_%hd128757%_
                                                           _%hd128734128752%_)
                                                          (_%tl128759%_
                                                           _%tl128735128754%_))
                                                     (declare (not safe))
                                                     (_%K128733128749%_
                                                      _%tl128759%_
                                                      _%hd128757%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128732128741%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129801
                                       __tmp129799))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129802
                                __tmp129798))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129803
                         __tmp129797
                         _%E128705%_)))
                    (if (eq? 'splice _%$e128724%_)
                        (let* ((_%body128760128767%_ _%body128721%_)
                               (_%E128762128771%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128760128767%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128763128822%_
                                (lambda (_%tl128774%_ _%hd128775%_)
                                  (let* ((_%rlen128777%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128612%_
                                             _%tl128774%_)))
                                         (_%$target128779%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128781%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128783%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128785%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128787%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128789%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128791%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128793%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128613%_
                                             _%hd128775%_)))
                                         (_%lvars128795%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128793%_)))
                                         (_%tlvars128797%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128793%_)))
                                         (_%linit128801%_
                                          (map (lambda (_%var128799%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128795%_)))
                                    (letrec ((_%make-loop128804%_
                                              (lambda (_%vars128808%_)
                                                (let ((__tmp129806
                                                       (cons (cons (cons _%$lp128785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129822
                                        (cons _%$hd128781%_ _%lvars128795%_))
                                       (__tmp129807
                                        (let ((__tmp129821
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128781%_)))
                                              (__tmp129812
                                               (let ((__tmp129820
                                                      (cons (cons (cons _%$lp-e128787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128418%_
                                   _%$hd128781%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129813
                                                      (let ((__tmp129819
                                                             (cons (cons (cons _%$lp-hd128789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128787%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128791%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128787%_))
                                             '()))
                                 '())))
                    (__tmp129814
                     (let ((__tmp129815
                            (lambda (_%hdvars128810%_)
                              (let ((__tmp129816
                                     (let ((__tmp129817
                                            (map (lambda (_%svar128812%_
                                                          _%lvar128813%_)
                                                   (let ((__tmp129818
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128812%_
                                                             _%hdvars128810%_
                                                             _%BUG128610%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129818
                                                      _%lvar128813%_)))
                                                 _%svars128793%_
                                                 _%lvars128795%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128791%_ __tmp129817))))
                                (declare (not safe))
                                (cons _%$lp128785%_ __tmp129816)))))
                       (declare (not safe))
                       (_%recur128611%_
                        _%hd128775%_
                        '()
                        _%$lp-hd128789%_
                        _%E128705%_
                        __tmp129815))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129819 __tmp129814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129820
                                                  __tmp129813)))
                                              (__tmp129808
                                               (let ((__tmp129811
                                                      (map (lambda (_%lvar128815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128816%_)
                     (cons (cons _%tlvar128816%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128815%_))
                                 '())))
                   _%lvars128795%_
                   _%tlvars128797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129809
                                                      (_%k128706%_
                                                       (let ((__tmp129810
                                                              (lambda (_%svar128818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128819%_
                               _%r128820%_)
                        (cons (cons _%svar128818%_ _%tlvar128819%_)
                              _%r128820%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129810
                  _%vars128808%_
                  _%svars128793%_
                  _%tlvars128797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129811
                                                  __tmp129809))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129821
                                           __tmp129812
                                           __tmp129808))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129822
                                    __tmp129807))
                                 '()))
                     '()))
              (__tmp129804
               (let ((__tmp129805
                      (let ()
                        (declare (not safe))
                        (cons _%$target128779%_ _%linit128801%_))))
                 (declare (not safe))
                 (cons _%$lp128785%_ __tmp129805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129806
                                                   __tmp129804)))))
                                      (let ((_%body128806%_
                                             (let ((__tmp129824
                                                    (cons (cons (cons _%$target128779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128783%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128704%_
                                 _%rlen128777%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129823
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128611%_
                                                       _%tl128774%_
                                                       _%vars128703%_
                                                       _%$tl128783%_
                                                       _%E128705%_
                                                       _%make-loop128804%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129824
                                                __tmp129823))))
                                        (let ((__tmp129828
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128704%_)))
                                              (__tmp129825
                                               (if (zero? _%rlen128777%_)
                                                   _%body128806%_
                                                   (let ((__tmp129826
                                                          (let ((__tmp129827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128704%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129827 _%rlen128777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129826
                                                      _%body128806%_
                                                      _%E128705%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129828
                                           __tmp129825
                                           _%E128705%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128760128767%_))
                              (let ((_%hd128764128825%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128760128767%_)))
                                    (_%tl128765128827%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128760128767%_))))
                                (let* ((_%hd128830%_ _%hd128764128825%_)
                                       (_%tl128832%_ _%tl128765128827%_))
                                  (declare (not safe))
                                  (_%K128763128822%_
                                   _%tl128832%_
                                   _%hd128830%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128762128771%_))))
                        (if (eq? 'null _%$e128724%_)
                            (let ((__tmp129830
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128704%_)))
                                  (__tmp129829 (_%k128706%_ _%vars128703%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129830
                               __tmp129829
                               _%E128705%_))
                            (if (eq? 'vector _%$e128724%_)
                                (let ((_%$e128834%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129835
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128704%_)))
                                        (__tmp129831
                                         (let ((__tmp129833
                                                (cons (cons (cons _%$e128834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129834
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128418%_
                                    _%target128704%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129834))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129832
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128611%_
                                                   _%body128721%_
                                                   _%vars128703%_
                                                   _%$e128834%_
                                                   _%E128705%_
                                                   _%k128706%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129833
                                            __tmp129832))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129835
                                     __tmp129831
                                     _%E128705%_)))
                                (if (eq? 'box _%$e128724%_)
                                    (let ((_%$e128836%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129840
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128704%_)))
                                            (__tmp129836
                                             (let ((__tmp129838
                                                    (cons (cons (cons _%$e128836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129839
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128418%_
                                        _%target128704%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129839))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129837
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128611%_
                                                       _%body128721%_
                                                       _%vars128703%_
                                                       _%$e128836%_
                                                       _%E128705%_
                                                       _%k128706%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129838
                                                __tmp129837))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129840
                                         __tmp129836
                                         _%E128705%_)))
                                    (if (eq? 'datum _%$e128724%_)
                                        (let ((_%$e128838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129846
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128704%_)))
                                                (__tmp129841
                                                 (let ((__tmp129845
                                                        (cons (cons (cons _%$e128838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128704%_))
                                  '()))
                      '()))
               (__tmp129842
                (let ((__tmp129844
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128838%_ _%body128721%_)))
                      (__tmp129843 (_%k128706%_ _%vars128703%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129844 __tmp129843 _%E128705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129845
                                                    __tmp129842))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129846
                                             __tmp129841
                                             _%E128705%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128610%_
                                           _%e128702%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128707128714%_))
                                      (let ((_%hd128711128843%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128707128714%_)))
                                            (_%tl128712128845%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128707128714%_))))
                                        (let* ((_%tag128848%_
                                                _%hd128711128843%_)
                                               (_%body128850%_
                                                _%tl128712128845%_))
                                          (declare (not safe))
                                          (_%K128710128840%_
                                           _%body128850%_
                                           _%tag128848%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128709128718%_))))))
                             (_%splice-rlen128612%_
                              (lambda (_%e128664%_)
                                (let _%lp128666%_ ((_%e128668%_ _%e128664%_)
                                                   (_%n128669%_ '0))
                                  (let* ((_%e128670128677%_ _%e128668%_)
                                         (_%E128672128681%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128670128677%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128673128690%_
                                          (lambda (_%body128684%_
                                                   _%tag128685%_)
                                            (let ((_%$e128687%_ _%tag128685%_))
                                              (if (eq? 'splice _%$e128687%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128416%_
                                                     _%where128603%_))
                                                  (if (eq? 'cons _%$e128687%_)
                                                      (let ((__tmp129848
                                                             (cdr _%body128684%_))
                                                            (__tmp129847
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128669%_ '1))))
                (declare (not safe))
                (_%lp128666%_ __tmp129848 __tmp129847))
              _%n128669%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128670128677%_))
                                        (let ((_%hd128674128693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128670128677%_)))
                                              (_%tl128675128695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128670128677%_))))
                                          (let* ((_%tag128698%_
                                                  _%hd128674128693%_)
                                                 (_%body128700%_
                                                  _%tl128675128695%_))
                                            (declare (not safe))
                                            (_%K128673128690%_
                                             _%body128700%_
                                             _%tag128698%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128672128681%_)))))))
                             (_%splice-vars128613%_
                              (lambda (_%e128620%_)
                                (let _%recur128622%_ ((_%e128624%_ _%e128620%_)
                                                      (_%vars128625%_ '()))
                                  (let* ((_%e128626128633%_ _%e128624%_)
                                         (_%E128628128637%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128626128633%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128629128652%_
                                          (lambda (_%body128640%_
                                                   _%tag128641%_)
                                            (let ((_%$e128643%_ _%tag128641%_))
                                              (if (eq? 'var _%$e128643%_)
                                                  (cons _%body128640%_
                                                        _%vars128625%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128643%_)
                                                          (eq? 'splice
                                                               _%$e128643%_))
                                                      (let ((__tmp129851
                                                             (cdr _%body128640%_))
                                                            (__tmp129849
                                                             (let ((__tmp129850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128640%_)))
                       (declare (not safe))
                       (_%recur128622%_ __tmp129850 _%vars128625%_))))
                (declare (not safe))
                (_%recur128622%_ __tmp129851 __tmp129849))
              (if (or (eq? 'vector _%$e128643%_) (eq? 'box _%$e128643%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128622%_ _%body128640%_ _%vars128625%_))
                  _%vars128625%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128626128633%_))
                                        (let ((_%hd128630128655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128626128633%_)))
                                              (_%tl128631128657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128626128633%_))))
                                          (let* ((_%tag128660%_
                                                  _%hd128630128655%_)
                                                 (_%body128662%_
                                                  _%tl128631128657%_))
                                            (declare (not safe))
                                            (_%K128629128652%_
                                             _%body128662%_
                                             _%tag128660%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128628128637%_)))))))
                             (_%make-body128614%_
                              (lambda (_%vars128616%_)
                                (cons _%K128607%_
                                      (map (lambda (_%mvar128618%_)
                                             (let ((__tmp129852
                                                    (car _%mvar128618%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129852
                                                _%vars128616%_
                                                _%BUG128610%_)))
                                           _%mvars128606%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128611%_
                         _%hd128605%_
                         '()
                         _%target128604%_
                         _%E128608%_
                         _%make-body128614%_)))))
                 (_%parse-clause128425%_
                  (lambda (_%hd128497%_ _%ids128498%_)
                    (let _%recur128500%_ ((_%e128502%_ _%hd128497%_)
                                          (_%vars128503%_ '())
                                          (_%depth128504%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128502%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e128502%_))
                                (let () (values '(any) _%vars128503%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e128502%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx128416%_
                                       _%hd128497%_))
                                    (if (let ((__tmp129853
                                               (lambda (_%id128509%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e128502%_
                                                    _%id128509%_)))))
                                          (declare (not safe))
                                          (__find __tmp129853 _%ids128498%_))
                                        (let ()
                                          (values (cons 'id _%e128502%_)
                                                  _%vars128503%_))
                                        (if (let ((__tmp129854
                                                   (lambda (_%var128512%_)
                                                     (let ((__tmp129855
                                                            (car _%var128512%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e128502%_
                                                        __tmp129855)))))
                                              (declare (not safe))
                                              (__find __tmp129854
                                                      _%vars128503%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx128416%_
                                               _%e128502%_))
                                            (let ()
                                              (values (cons 'var _%e128502%_)
                                                      (cons (cons _%e128502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth128504%_)
                    _%vars128503%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128502%_))
                              (let ()
                                (let* ((_%e128516128523%_ _%e128502%_)
                                       (_%E128518128527%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e128516128523%_))))
                                       (_%E128517128588%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e128516128523%_))
                                              (let ((_%e128519128531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128516128523%_))))
                                                (let ((_%hd128520128534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128519128531%_)))
                                                      (_%tl128521128536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128519128531%_))))
                                                  (let* ((_%hd128539%_
                                                          _%hd128520128534%_)
                                                         (_%rest128541%_
                                                          _%tl128521128536%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128556%_
                                                                (lambda (_%tag128543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128544%_
                                 _%tl128545%_)
                          (let* ((_%hd-depth128547%_
                                  (if (eq? _%tag128543%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth128504%_ '1))
                                      _%depth128504%_))
                                 (_g129856_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur128500%_
                                     _%hd128544%_
                                     _%vars128503%_
                                     _%hd-depth128547%_))))
                            (begin
                              (let ((_g129857_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129856_)
                                           (##vector-length _g129856_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129857_ 2)))
                                    (error "Context expects 2 values"
                                           _g129857_)))
                              (let ((_%hd128549%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129856_ 0)))
                                    (_%vars128550%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129856_ 1))))
                                (let ((_g129858_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128500%_
                                          _%tl128545%_
                                          _%vars128550%_
                                          _%depth128504%_))))
                                  (begin
                                    (let ((_g129859_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129858_)
                                                 (##vector-length _g129858_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129859_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129859_)))
                                    (let ((_%tl128552%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129858_ 0)))
                                          (_%vars128553%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129858_ 1))))
                                      (let ()
                                        (values (let ((__tmp129860
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128549%_
                                                               _%tl128552%_))))
                                                  (declare (not safe))
                                                  (cons _%tag128543%_
                                                        __tmp129860))
                                                _%vars128553%_))))))))))
                       (_%e128557128564%_ _%rest128541%_)
                       (_%E128559128568%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128556%_
                             'cons
                             _%hd128539%_
                             _%rest128541%_))))
                       (_%E128558128584%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128557128564%_))
                              (let ((_%e128560128572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128557128564%_))))
                                (let ((_%hd128561128575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128560128572%_)))
                                      (_%tl128562128577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128560128572%_))))
                                  (let* ((_%rest-hd128580%_ _%hd128561128575%_)
                                         (_%rest-tl128582%_
                                          _%tl128562128577%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128580%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128556%_
                                               'splice
                                               _%hd128539%_
                                               _%rest-tl128582%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128556%_
                                               'cons
                                               _%hd128539%_
                                               _%rest128541%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128559128568%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128559128568%_))))))
                  (declare (not safe))
                  (_%E128558128584%_))
                (let () (declare (not safe)) (_%E128518128527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128518128527%_))))))
                                  (declare (not safe))
                                  (_%E128517128588%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128502%_))
                                  (let () (values '(null) _%vars128503%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128502%_))
                                      (let ((_g129861_
                                             (let ((__tmp129863
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128502%_)))))
                                               (declare (not safe))
                                               (_%recur128500%_
                                                __tmp129863
                                                _%vars128503%_
                                                _%depth128504%_))))
                                        (begin
                                          (let ((_g129862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129861_)
                                                       (##vector-length
                                                        _g129861_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129862_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129862_)))
                                          (let ((_%e128594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129861_ 0)))
                                                (_%vars128595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129861_
                                                    1))))
                                            (values (cons 'vector _%e128594%_)
                                                    _%vars128595%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128502%_))
                                          (let ((_g129864_
                                                 (let ((__tmp129866
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e128502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur128500%_
                                                    __tmp129866
                                                    _%vars128503%_
                                                    _%depth128504%_))))
                                            (begin
                                              (let ((_g129865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129864_)
                                                           (##vector-length
                                                            _g129864_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129865_)))
                                              (let ((_%e128598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129864_
                                                        0)))
                                                    (_%vars128599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129864_
                                                        1))))
                                                (values (cons 'box _%e128598%_)
                                                        _%vars128599%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128502%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e128502%_)))
                _%vars128503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128416%_
                                                 _%e128502%_))))))))))))
          (let* ((_%e128426128439%_ _%stx128416%_)
                 (_%E128428128443%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128426128439%_))))
                 (_%E128427128493%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128426128439%_))
                        (let ((_%e128429128447%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128426128439%_))))
                          (let ((_%hd128430128450%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128429128447%_)))
                                (_%tl128431128452%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128429128447%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128431128452%_))
                                (let ((_%e128432128455%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128431128452%_))))
                                  (let ((_%hd128433128458%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128432128455%_)))
                                        (_%tl128434128460%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128432128455%_))))
                                    (let ((_%expr128463%_ _%hd128433128458%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128434128460%_))
                                          (let ((_%e128435128465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128434128460%_))))
                                            (let ((_%hd128436128468%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128435128465%_)))
                                                  (_%tl128437128470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128435128465%_))))
                                              (let* ((_%ids128473%_
                                                      _%hd128436128468%_)
                                                     (_%clauses128475%_
                                                      _%tl128437128470%_))
                                                (if '#t
                                                    (if (let ((__tmp129867
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids128473%_))))
                  (declare (not safe))
                  (not __tmp129867))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128416%_
                   _%ids128473%_))
                (if (let ((__tmp129868
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses128475%_))))
                      (declare (not safe))
                      (not __tmp129868))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128416%_))
                    (let ()
                      (let* ((_%ids128480%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids128473%_)))
                             (_%clauses128482%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses128475%_)))
                             (_%clause-ids128484%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses128482%_)))
                             (_%E128486%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target128488%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first128490%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses128482%_))
                                  _%E128486%_
                                  (car _%clause-ids128484%_))))
                        (let ((__tmp129870
                               (let ((__tmp129871
                                      (let ((__tmp129873
                                             (let ((__tmp129877
                                                    (cons (cons (cons _%E128486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129879 (cons _%target128488%_ '()))
                                    (__tmp129878
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target128488%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129879
                                 __tmp129878))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129874
                                                    (let ((__tmp129876
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings128421%_
                                                              _%target128488%_
                                                              _%ids128480%_
                                                              _%clauses128482%_
                                                              _%clause-ids128484%_
                                                              _%E128486%_)))
                                                          (__tmp129875
                                                           (cons _%first128490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr128463%_ '()))))
              (declare (not safe))
              (_%generate-body128422%_ __tmp129876 __tmp129875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129877
                                                __tmp129874)))
                                            (__tmp129872
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx128416%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129873
                                         __tmp129872))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129871)))
                              (__tmp129869
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx128416%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129870 __tmp129869))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128428128443%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128428128443%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128428128443%_)))))
                        (let () (declare (not safe)) (_%E128428128443%_))))))
            (declare (not safe))
            (_%E128427128493%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129141%_)
        (let* ((_%identifier=?129143%_ 'free-identifier=?)
               (_%unwrap-e129145%_ 'syntax-e)
               (_%wrap-e129147%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129141%_
           _%identifier=?129143%_
           _%unwrap-e129145%_
           _%wrap-e129147%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129149%_ _%identifier=?129150%_)
        (let* ((_%unwrap-e129152%_ 'syntax-e) (_%wrap-e129154%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129149%_
           _%identifier=?129150%_
           _%unwrap-e129152%_
           _%wrap-e129154%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129156%_ _%identifier=?129157%_ _%unwrap-e129158%_)
        (let ((_%wrap-e129160%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129156%_
           _%identifier=?129157%_
           _%unwrap-e129158%_
           _%wrap-e129160%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129881_
        (let ((_g129880_ (let () (declare (not safe)) (##length _g129881_))))
          (cond ((let () (declare (not safe)) (##fx= _g129880_ 1))
                 (apply (lambda (_%stx129141%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx129141%_)))
                        _g129881_))
                ((let () (declare (not safe)) (##fx= _g129880_ 2))
                 (apply (lambda (_%stx129149%_ _%identifier=?129150%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx129149%_
                             _%identifier=?129150%_)))
                        _g129881_))
                ((let () (declare (not safe)) (##fx= _g129880_ 3))
                 (apply (lambda (_%stx129156%_
                                 _%identifier=?129157%_
                                 _%unwrap-e129158%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx129156%_
                             _%identifier=?129157%_
                             _%unwrap-e129158%_)))
                        _g129881_))
                ((let () (declare (not safe)) (##fx= _g129880_ 4))
                 (apply (lambda (_%stx129162%_
                                 _%identifier=?129163%_
                                 _%unwrap-e129164%_
                                 _%wrap-e129165%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx129162%_
                             _%identifier=?129163%_
                             _%unwrap-e129164%_
                             _%wrap-e129165%_)))
                        _g129881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129881_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128413%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128413%_))
            (let ((__tmp129882
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128413%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129882 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128371%_ . _%rest128372%_)
        (let ((_%len128374%_ (length _%hd128371%_)))
          (let _%lp128376%_ ((_%rest128378%_ _%rest128372%_))
            (let* ((_%rest128379128387%_ _%rest128378%_)
                   (_%else128381128395%_ (lambda () '#!void))
                   (_%K128383128401%_
                    (lambda (_%rest128398%_ _%hd128399%_)
                      (if (let ((__tmp129883 (length _%hd128399%_)))
                            (declare (not safe))
                            (##fx= _%len128374%_ __tmp129883))
                          (let ()
                            (declare (not safe))
                            (_%lp128376%_ _%rest128398%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128399%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128379128387%_))
                  (let ((_%hd128384128404%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128379128387%_)))
                        (_%tl128385128406%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128379128387%_))))
                    (let* ((_%hd128409%_ _%hd128384128404%_)
                           (_%rest128411%_ _%tl128385128406%_))
                      (declare (not safe))
                      (_%K128383128401%_ _%rest128411%_ _%hd128409%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128326%_ _%n128327%_)
        (let _%lp128329%_ ((_%rest128331%_ _%stx128326%_) (_%r128332%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128331%_))
              (let* ((_%g128333128340%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128331%_)))
                     (_%E128335128344%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128333128340%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128336128350%_
                      (lambda (_%rest128347%_ _%hd128348%_)
                        (let ((__tmp129884 (cons _%hd128348%_ _%r128332%_)))
                          (declare (not safe))
                          (_%lp128329%_ _%rest128347%_ __tmp129884)))))
                (if (let () (declare (not safe)) (##pair? _%g128333128340%_))
                    (let ((_%hd128337128353%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128333128340%_)))
                          (_%tl128338128355%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128333128340%_))))
                      (let* ((_%hd128358%_ _%hd128337128353%_)
                             (_%rest128360%_ _%tl128338128355%_))
                        (declare (not safe))
                        (_%K128336128350%_ _%rest128360%_ _%hd128358%_)))
                    (let () (declare (not safe)) (_%E128335128344%_))))
              (let _%lp128362%_ ((_%n128364%_ _%n128327%_)
                                 (_%l128365%_ _%r128332%_)
                                 (_%r128366%_ _%rest128331%_))
                (if (let () (declare (not safe)) (null? _%l128365%_))
                    (let () (values _%l128365%_ _%r128366%_))
                    (if (fxpositive? _%n128364%_)
                        (let ((__tmp129887
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n128364%_ '1)))
                              (__tmp129886 (cdr _%l128365%_))
                              (__tmp129885
                               (cons (car _%l128365%_) _%r128366%_)))
                          (declare (not safe))
                          (_%lp128362%_ __tmp129887 __tmp129886 __tmp129885))
                        (let ()
                          (values (reverse _%l128365%_) _%r128366%_)))))))))))
