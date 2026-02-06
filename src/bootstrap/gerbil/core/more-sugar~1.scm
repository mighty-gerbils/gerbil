(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45138_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45141_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45142_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45143_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45144_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args40471%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40471%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args40467%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40467%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx40464%_)
        (if (gx#identifier? _%stx40464%_)
            (let ((__tmp45101 (gx#syntax-local-value _%stx40464%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45101))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40461%_)
        (if (gx#identifier? _%stx40461%_)
            (let ((__tmp45102 (gx#syntax-local-value _%stx40461%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45102))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40088%_)
        (let* ((_%__stx4463044631%_ _%stx40088%_)
               (_%g4009440157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4463044631%_))))
          (let ((_%__kont4463344634%_
                 (lambda (_%g4009640438%_ _%g4009740440%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4009740440%_)
                    _%stx40088%_)))
                (_%__kont4463544636%_
                 (lambda (_%g4011040327%_ _%g4011140329%_ _%g4011240330%_)
                   (let* ((_%g4035240360%_
                           (lambda (_%g4035340356%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4035340356%_)))
                          (_%g4035140387%_
                           (lambda (_%g4035340364%_)
                             ((lambda (_%g4035440367%_)
                                (cons _%g4035440367%_
                                      (foldr (lambda (_%g4037840381%_
                                                      _%g4037940384%_)
                                               (cons _%g4037840381%_
                                                     _%g4037940384%_))
                                             (cons _%g4011040327%_ '())
                                             _%g4011140329%_)))
                              _%g4035340364%_))))
                     (_%g4035140387%_
                      (gx#stx-identifier
                       _%g4011240330%_
                       _%g4011240330%_
                       '"-set!")))))
                (_%__kont4463944640%_
                 (lambda (_%g4013440239%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4013440239%_)
                    _%stx40088%_)))
                (_%__kont4464144642%_
                 (lambda (_%g4014140194%_ _%g4014240196%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4014240196%_ (cons _%g4014140194%_ '()))))))
            (let* ((_%__match4472944730%_
                    (lambda (_%e4014340164%_
                             _%hd4014440168%_
                             _%tl4014540171%_
                             _%e4014640174%_
                             _%hd4014740178%_
                             _%tl4014840181%_
                             _%e4014940184%_
                             _%hd4015040188%_
                             _%tl4015140191%_)
                      (let ((_%g4014140194%_ _%hd4015040188%_)
                            (_%g4014240196%_ _%hd4014740178%_))
                        (if (gx#identifier? _%g4014240196%_)
                            (_%__kont4464144642%_
                             _%g4014140194%_
                             _%g4014240196%_)
                            (let () (declare (not safe)) (_%g4009440157%_))))))
                   (_%__match4470944710%_
                    (lambda (_%e4013540219%_
                             _%hd4013640223%_
                             _%tl4013740226%_
                             _%e4013840229%_
                             _%hd4013940233%_
                             _%tl4014040236%_)
                      (let ((_%g4013440239%_ _%hd4013940233%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4013440239%_)
                            (_%__kont4463944640%_ _%g4013440239%_)
                            (if (gx#stx-pair? _%tl4014040236%_)
                                (let ((_%e4014940184%_
                                       (gx#syntax-e _%tl4014040236%_)))
                                  (let ((_%tl4015140191%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4014940184%_)))
                                        (_%hd4015040188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4014940184%_))))
                                    (if (gx#stx-null? _%tl4015140191%_)
                                        (_%__match4472944730%_
                                         _%e4013540219%_
                                         _%hd4013640223%_
                                         _%tl4013740226%_
                                         _%e4013840229%_
                                         _%hd4013940233%_
                                         _%tl4014040236%_
                                         _%e4014940184%_
                                         _%hd4015040188%_
                                         _%tl4015140191%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4009440157%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4009440157%_)))))))
                   (_%__match4469744698%_
                    (lambda (_%e4011340259%_
                             _%hd4011440263%_
                             _%tl4011540266%_
                             _%e4011640269%_
                             _%hd4011740273%_
                             _%tl4011840276%_
                             _%e4011940279%_
                             _%hd4012040283%_
                             _%tl4012140286%_
                             _%__splice4463744638%_
                             _%target4012240289%_
                             _%tl4012440292%_)
                      (letrec ((_%loop4012540295%_
                                (lambda (_%hd4012340299%_ _%arg4012940302%_)
                                  (if (gx#stx-pair? _%hd4012340299%_)
                                      (let ((_%e4012640304%_
                                             (gx#syntax-e _%hd4012340299%_)))
                                        (let ((_%lp-tl4012840311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4012640304%_)))
                                              (_%lp-hd4012740308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4012640304%_))))
                                          (_%loop4012540295%_
                                           _%lp-tl4012840311%_
                                           (cons _%lp-hd4012740308%_
                                                 _%arg4012940302%_))))
                                      (let ((_%arg4013040314%_
                                             (reverse _%arg4012940302%_)))
                                        (if (gx#stx-pair? _%tl4011840276%_)
                                            (let ((_%e4013140317%_
                                                   (gx#syntax-e
                                                    _%tl4011840276%_)))
                                              (let ((_%tl4013340324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4013140317%_)))
                                                    (_%hd4013240321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4013140317%_))))
                                                (if (gx#stx-null?
                                                     _%tl4013340324%_)
                                                    (let ((_%g4011040327%_
                                                           _%hd4013240321%_)
                                                          (_%g4011140329%_
                                                           _%arg4013040314%_)
                                                          (_%g4011240330%_
                                                           _%hd4012040283%_))
                                                      (if (gx#identifier?
                                                           _%g4011240330%_)
                                                          (_%__kont4463544636%_
                                                           _%g4011040327%_
                                                           _%g4011140329%_
                                                           _%g4011240330%_)
                                                          (_%__match4470944710%_
                                                           _%e4011340259%_
                                                           _%hd4011440263%_
                                                           _%tl4011540266%_
                                                           _%e4011640269%_
                                                           _%hd4011740273%_
                                                           _%tl4011840276%_)))
                                                    (_%__match4470944710%_
                                                     _%e4011340259%_
                                                     _%hd4011440263%_
                                                     _%tl4011540266%_
                                                     _%e4011640269%_
                                                     _%hd4011740273%_
                                                     _%tl4011840276%_))))
                                            (_%__match4470944710%_
                                             _%e4011340259%_
                                             _%hd4011440263%_
                                             _%tl4011540266%_
                                             _%e4011640269%_
                                             _%hd4011740273%_
                                             _%tl4011840276%_)))))))
                        (_%loop4012540295%_ _%target4012240289%_ '())))))
              (if (gx#stx-pair? _%__stx4463044631%_)
                  (let ((_%e4009840398%_ (gx#syntax-e _%__stx4463044631%_)))
                    (let ((_%tl4010040405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4009840398%_)))
                          (_%hd4009940402%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4009840398%_))))
                      (if (gx#stx-pair? _%tl4010040405%_)
                          (let ((_%e4010140408%_
                                 (gx#syntax-e _%tl4010040405%_)))
                            (let ((_%tl4010340415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4010140408%_)))
                                  (_%hd4010240412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4010140408%_))))
                              (if (gx#stx-pair? _%hd4010240412%_)
                                  (let ((_%e4010440418%_
                                         (gx#syntax-e _%hd4010240412%_)))
                                    (let ((_%tl4010640425%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4010440418%_)))
                                          (_%hd4010540422%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4010440418%_))))
                                      (if (gx#stx-pair? _%tl4010340415%_)
                                          (let ((_%e4010740428%_
                                                 (gx#syntax-e
                                                  _%tl4010340415%_)))
                                            (let ((_%tl4010940435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4010740428%_)))
                                                  (_%hd4010840432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4010740428%_))))
                                              (if (gx#stx-null?
                                                   _%tl4010940435%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4009640438%_
                                                             _%hd4010840432%_)
                                                            (_%g4009740440%_
                                                             _%hd4010540422%_))
                                                        (_%__kont4463344634%_
                                                         _%g4009640438%_
                                                         _%g4009740440%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4010640425%_)
                                                          (let ((_%__splice4463744638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4010640425%_ '0)))
                    (let ((_%tl4012440292%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4463744638%_ '1)))
                          (_%target4012240289%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4463744638%_ '0))))
                      (if (gx#stx-null? _%tl4012440292%_)
                          (_%__match4469744698%_
                           _%e4009840398%_
                           _%hd4009940402%_
                           _%tl4010040405%_
                           _%e4010140408%_
                           _%hd4010240412%_
                           _%tl4010340415%_
                           _%e4010440418%_
                           _%hd4010540422%_
                           _%tl4010640425%_
                           _%__splice4463744638%_
                           _%target4012240289%_
                           _%tl4012440292%_)
                          (_%__match4470944710%_
                           _%e4009840398%_
                           _%hd4009940402%_
                           _%tl4010040405%_
                           _%e4010140408%_
                           _%hd4010240412%_
                           _%tl4010340415%_))))
                  (_%__match4470944710%_
                   _%e4009840398%_
                   _%hd4009940402%_
                   _%tl4010040405%_
                   _%e4010140408%_
                   _%hd4010240412%_
                   _%tl4010340415%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4010640425%_)
                                                      (let ((_%__splice4463744638%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4010640425%_
                                                              '0)))
                                                        (let ((_%tl4012440292%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4463744638%_ '1)))
                      (_%target4012240289%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4463744638%_ '0))))
                  (if (gx#stx-null? _%tl4012440292%_)
                      (_%__match4469744698%_
                       _%e4009840398%_
                       _%hd4009940402%_
                       _%tl4010040405%_
                       _%e4010140408%_
                       _%hd4010240412%_
                       _%tl4010340415%_
                       _%e4010440418%_
                       _%hd4010540422%_
                       _%tl4010640425%_
                       _%__splice4463744638%_
                       _%target4012240289%_
                       _%tl4012440292%_)
                      (_%__match4470944710%_
                       _%e4009840398%_
                       _%hd4009940402%_
                       _%tl4010040405%_
                       _%e4010140408%_
                       _%hd4010240412%_
                       _%tl4010340415%_))))
              (_%__match4470944710%_
               _%e4009840398%_
               _%hd4009940402%_
               _%tl4010040405%_
               _%e4010140408%_
               _%hd4010240412%_
               _%tl4010340415%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4010640425%_)
                                              (let ((_%__splice4463744638%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4010640425%_
                                                      '0)))
                                                (let ((_%tl4012440292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4463744638%_
                                                          '1)))
                                                      (_%target4012240289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4463744638%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4012440292%_)
                                                      (_%__match4469744698%_
                                                       _%e4009840398%_
                                                       _%hd4009940402%_
                                                       _%tl4010040405%_
                                                       _%e4010140408%_
                                                       _%hd4010240412%_
                                                       _%tl4010340415%_
                                                       _%e4010440418%_
                                                       _%hd4010540422%_
                                                       _%tl4010640425%_
                                                       _%__splice4463744638%_
                                                       _%target4012240289%_
                                                       _%tl4012440292%_)
                                                      (_%__match4470944710%_
                                                       _%e4009840398%_
                                                       _%hd4009940402%_
                                                       _%tl4010040405%_
                                                       _%e4010140408%_
                                                       _%hd4010240412%_
                                                       _%tl4010340415%_))))
                                              (_%__match4470944710%_
                                               _%e4009840398%_
                                               _%hd4009940402%_
                                               _%tl4010040405%_
                                               _%e4010140408%_
                                               _%hd4010240412%_
                                               _%tl4010340415%_)))))
                                  (_%__match4470944710%_
                                   _%e4009840398%_
                                   _%hd4009940402%_
                                   _%tl4010040405%_
                                   _%e4010140408%_
                                   _%hd4010240412%_
                                   _%tl4010340415%_))))
                          (let () (declare (not safe)) (_%g4009440157%_)))))
                  (let () (declare (not safe)) (_%g4009440157%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40476%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40476%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40479%_)
        (let* ((_%g4048240506%_
                (lambda (_%g4048340502%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4048340502%_)))
               (_%g4048140680%_
                (lambda (_%g4048340510%_)
                  (if (gx#stx-pair? _%g4048340510%_)
                      (let ((_%e4048640513%_ (gx#syntax-e _%g4048340510%_)))
                        (let ((_%hd4048740517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4048640513%_)))
                              (_%tl4048840520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4048640513%_))))
                          (if (gx#stx-pair/null? _%tl4048840520%_)
                              (if (let ((__tmp45103
                                         (gx#stx-length _%tl4048840520%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45103 '1))
                                  (let ((_g45104_
                                         (gx#syntax-split-splice
                                          _%tl4048840520%_
                                          '1)))
                                    (begin
                                      (let ((_g45105_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45104_)
                                                   (##values-length _g45104_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45105_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45105_)))
                                      (let ((_%target4048940523%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45104_ 0)))
                                            (_%tl4049140526%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45104_ 1))))
                                        (if (gx#stx-pair? _%tl4049140526%_)
                                            (let ((_%e4049840529%_
                                                   (gx#syntax-e
                                                    _%tl4049140526%_)))
                                              (let ((_%hd4049940533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4049840529%_)))
                                                    (_%tl4050040536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4049840529%_))))
                                                (if (gx#stx-null?
                                                     _%tl4050040536%_)
                                                    (letrec ((_%loop4049240539%_
                                                              (lambda (_%hd4049040543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4049640546%_)
                        (if (gx#stx-pair? _%hd4049040543%_)
                            (let ((_%e4049340548%_
                                   (gx#syntax-e _%hd4049040543%_)))
                              (let ((_%lp-hd4049440552%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4049340548%_)))
                                    (_%lp-tl4049540555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4049340548%_))))
                                (_%loop4049240539%_
                                 _%lp-tl4049540555%_
                                 (cons _%lp-hd4049440552%_
                                       _%tgt4049640546%_))))
                            (let ((_%tgt4049740558%_
                                   (reverse _%tgt4049640546%_)))
                              ((lambda (_%g4048440561%_ _%g4048540563%_)
                                 (let* ((_%g4058140598%_
                                         (lambda (_%g4058240594%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4058240594%_)))
                                        (_%g4058040668%_
                                         (lambda (_%g4058240602%_)
                                           (if (gx#stx-pair/null?
                                                _%g4058240602%_)
                                               (let ((_g45106_
                                                      (gx#syntax-split-splice
                                                       _%g4058240602%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45107_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45106_)
                        (##values-length _g45106_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45107_ 2)))
                 (error "Context expects 2 values" _g45107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4058440605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45106_
                                                             0)))
                                                         (_%tl4058640608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45106_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4058640608%_)
                                                         (letrec ((_%loop4058740611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4058540615%_ _%$e4059140618%_)
                             (if (gx#stx-pair? _%hd4058540615%_)
                                 (let ((_%e4058840620%_
                                        (gx#syntax-e _%hd4058540615%_)))
                                   (let ((_%lp-hd4058940624%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4058840620%_)))
                                         (_%lp-tl4059040627%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4058840620%_))))
                                     (_%loop4058740611%_
                                      _%lp-tl4059040627%_
                                      (cons _%lp-hd4058940624%_
                                            _%$e4059140618%_))))
                                 (let ((_%$e4059240630%_
                                        (reverse _%$e4059140618%_)))
                                   ((lambda (_%g4058340633%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4064840654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4064940657%_)
                               (cons _%g4064840654%_ _%g4064940657%_))
                             '()
                             _%g4058340633%_)
                      (cons _%g4048440561%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4058340633%_
                                                     _%g4048540563%_)
                                                    (foldr (lambda (_%g4065040660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4065140663%_
                            _%g4065240665%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4065140663%_
                                       (cons _%g4065040660%_ '())))
                           _%g4065240665%_))
                   '()
                   _%g4058340633%_
                   _%g4048540563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4059240630%_))))))
                   (_%loop4058740611%_ _%target4058440605%_ '()))
                 (_%g4058140598%_ _%g4058240602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4058140598%_
                                                _%g4058240602%_)))))
                                   (_%g4058040668%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4067140674%_
                                                     _%g4067240677%_)
                                              (cons _%g4067140674%_
                                                    _%g4067240677%_))
                                            '()
                                            _%g4048540563%_)))))
                               _%hd4049940533%_
                               _%tgt4049740558%_))))))
              (_%loop4049240539%_ _%target4048940523%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4048240506%_
                                                     _%g4048340510%_))))
                                            (_%g4048240506%_
                                             _%g4048340510%_)))))
                                  (_%g4048240506%_ _%g4048340510%_))
                              (_%g4048240506%_ _%g4048340510%_))))
                      (_%g4048240506%_ _%g4048340510%_)))))
          (_%g4048140680%_ _%stx40479%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40686%_)
        (let* ((_%__stx4473244733%_ _%$stx40686%_)
               (_%g4069240780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4473244733%_))))
          (let ((_%__kont4473544736%_
                 (lambda (_%g4069441120%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4113641139%_ _%g4113741142%_)
                                        (cons _%g4113641139%_ _%g4113741142%_))
                                      '()
                                      _%g4069441120%_)))))
                (_%__kont4473944740%_
                 (lambda (_%g4071041030%_ _%g4071141032%_ _%g4071241033%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4105641059%_
                                                           _%g4105741062%_)
                                                    (cons _%g4105641059%_
                                                          _%g4105741062%_))
                                                  '()
                                                  _%g4071041030%_)))
                               (cons _%g4071241033%_
                                     (cons _%g4071141032%_ '()))))))
                (_%__kont4474344744%_
                 (lambda (_%g4073740893%_
                          _%g4073840895%_
                          _%g4073940896%_
                          _%g4074040897%_
                          _%g4074140898%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4074140898%_
                                                       (cons (foldr (lambda (_%g4092840933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4092940936%_)
                              (cons _%g4092840933%_ _%g4092940936%_))
                            '()
                            _%g4073840895%_)
                     (foldr (lambda (_%g4093040939%_ _%g4093140942%_)
                              (cons _%g4093040939%_ _%g4093140942%_))
                            '()
                            _%g4073740893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4074040897%_
                                     (cons _%g4073940896%_ '())))))))
            (let* ((_%__match4485344854%_
                    (lambda (_%e4074240787%_
                             _%hd4074340791%_
                             _%tl4074440794%_
                             _%e4074540797%_
                             _%hd4074640801%_
                             _%tl4074740804%_
                             _%e4074840807%_
                             _%hd4074940811%_
                             _%tl4075040814%_
                             _%e4075140817%_
                             _%hd4075240821%_
                             _%tl4075340824%_
                             _%e4075440827%_
                             _%hd4075540831%_
                             _%tl4075640834%_
                             _%__splice4474544746%_
                             _%target4075740837%_
                             _%tl4075940840%_)
                      (letrec ((_%loop4076040843%_
                                (lambda (_%hd4075840847%_ _%rest4076440850%_)
                                  (if (gx#stx-pair? _%hd4075840847%_)
                                      (let ((_%e4076140852%_
                                             (gx#syntax-e _%hd4075840847%_)))
                                        (let ((_%lp-tl4076340859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4076140852%_)))
                                              (_%lp-hd4076240856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4076140852%_))))
                                          (_%loop4076040843%_
                                           _%lp-tl4076340859%_
                                           (cons _%lp-hd4076240856%_
                                                 _%rest4076440850%_))))
                                      (let ((_%rest4076540862%_
                                             (reverse _%rest4076440850%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4074740804%_)
                                            (let ((_%__splice4474744748%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4074740804%_
                                                    '0)))
                                              (let ((_%tl4076840868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4474744748%_
                                                        '1)))
                                                    (_%target4076640865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4474744748%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4076840868%_)
                                                    (letrec ((_%loop4076940871%_
                                                              (lambda (_%hd4076740875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4077340878%_)
                        (if (gx#stx-pair? _%hd4076740875%_)
                            (let ((_%e4077040880%_
                                   (gx#syntax-e _%hd4076740875%_)))
                              (let ((_%lp-tl4077240887%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4077040880%_)))
                                    (_%lp-hd4077140884%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4077040880%_))))
                                (_%loop4076940871%_
                                 _%lp-tl4077240887%_
                                 (cons _%lp-hd4077140884%_
                                       _%body4077340878%_))))
                            (let ((_%body4077440890%_
                                   (reverse _%body4077340878%_)))
                              (_%__kont4474344744%_
                               _%body4077440890%_
                               _%rest4076540862%_
                               _%hd4075540831%_
                               _%hd4075240821%_
                               _%hd4074340791%_))))))
              (_%loop4076940871%_ _%target4076640865%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4069240780%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4069240780%_))))))))
                        (_%loop4076040843%_ _%target4075740837%_ '()))))
                   (_%__match4481344814%_
                    (lambda (_%e4071340952%_
                             _%hd4071440956%_
                             _%tl4071540959%_
                             _%e4071640962%_
                             _%hd4071740966%_
                             _%tl4071840969%_
                             _%e4071940972%_
                             _%hd4072040976%_
                             _%tl4072140979%_
                             _%e4072240982%_
                             _%hd4072340986%_
                             _%tl4072440989%_
                             _%e4072540992%_
                             _%hd4072640996%_
                             _%tl4072740999%_
                             _%__splice4474144742%_
                             _%target4072841002%_
                             _%tl4073041005%_)
                      (letrec ((_%loop4073141008%_
                                (lambda (_%hd4072941012%_ _%body4073541015%_)
                                  (if (gx#stx-pair? _%hd4072941012%_)
                                      (let ((_%e4073241017%_
                                             (gx#syntax-e _%hd4072941012%_)))
                                        (let ((_%lp-tl4073441024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4073241017%_)))
                                              (_%lp-hd4073341021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4073241017%_))))
                                          (_%loop4073141008%_
                                           _%lp-tl4073441024%_
                                           (cons _%lp-hd4073341021%_
                                                 _%body4073541015%_))))
                                      (let ((_%body4073641027%_
                                             (reverse _%body4073541015%_)))
                                        (_%__kont4473944740%_
                                         _%body4073641027%_
                                         _%hd4072640996%_
                                         _%hd4072340986%_))))))
                        (_%loop4073141008%_ _%target4072841002%_ '()))))
                   (_%__match4477144772%_
                    (lambda (_%e4069541072%_
                             _%hd4069641076%_
                             _%tl4069741079%_
                             _%e4069841082%_
                             _%hd4069941086%_
                             _%tl4070041089%_
                             _%__splice4473744738%_
                             _%target4070141092%_
                             _%tl4070341095%_)
                      (letrec ((_%loop4070441098%_
                                (lambda (_%hd4070241102%_ _%body4070841105%_)
                                  (if (gx#stx-pair? _%hd4070241102%_)
                                      (let ((_%e4070541107%_
                                             (gx#syntax-e _%hd4070241102%_)))
                                        (let ((_%lp-tl4070741114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4070541107%_)))
                                              (_%lp-hd4070641111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4070541107%_))))
                                          (_%loop4070441098%_
                                           _%lp-tl4070741114%_
                                           (cons _%lp-hd4070641111%_
                                                 _%body4070841105%_))))
                                      (let ((_%body4070941117%_
                                             (reverse _%body4070841105%_)))
                                        (_%__kont4473544736%_
                                         _%body4070941117%_))))))
                        (_%loop4070441098%_ _%target4070141092%_ '())))))
              (if (gx#stx-pair? _%__stx4473244733%_)
                  (let ((_%e4069541072%_ (gx#syntax-e _%__stx4473244733%_)))
                    (let ((_%tl4069741079%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4069541072%_)))
                          (_%hd4069641076%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4069541072%_))))
                      (if (gx#stx-pair? _%tl4069741079%_)
                          (let ((_%e4069841082%_
                                 (gx#syntax-e _%tl4069741079%_)))
                            (let ((_%tl4070041089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4069841082%_)))
                                  (_%hd4069941086%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4069841082%_))))
                              (if (gx#stx-null? _%hd4069941086%_)
                                  (if (gx#stx-pair/null? _%tl4070041089%_)
                                      (let ((_%__splice4473744738%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4070041089%_
                                              '0)))
                                        (let ((_%tl4070341095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4473744738%_
                                                  '1)))
                                              (_%target4070141092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4473744738%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4070341095%_)
                                              (_%__match4477144772%_
                                               _%e4069541072%_
                                               _%hd4069641076%_
                                               _%tl4069741079%_
                                               _%e4069841082%_
                                               _%hd4069941086%_
                                               _%tl4070041089%_
                                               _%__splice4473744738%_
                                               _%target4070141092%_
                                               _%tl4070341095%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4069240780%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4069240780%_)))
                                  (if (gx#stx-pair? _%hd4069941086%_)
                                      (let ((_%e4071940972%_
                                             (gx#syntax-e _%hd4069941086%_)))
                                        (let ((_%tl4072140979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4071940972%_)))
                                              (_%hd4072040976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4071940972%_))))
                                          (if (gx#stx-pair? _%hd4072040976%_)
                                              (let ((_%e4072240982%_
                                                     (gx#syntax-e
                                                      _%hd4072040976%_)))
                                                (let ((_%tl4072440989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4072240982%_)))
                                                      (_%hd4072340986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4072240982%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4072440989%_)
                                                      (let ((_%e4072540992%_
                                                             (gx#syntax-e
                                                              _%tl4072440989%_)))
                                                        (let ((_%tl4072740999%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4072540992%_)))
                      (_%hd4072640996%_
                       (let () (declare (not safe)) (##car _%e4072540992%_))))
                  (if (gx#stx-null? _%tl4072740999%_)
                      (if (gx#stx-null? _%tl4072140979%_)
                          (if (gx#stx-pair/null? _%tl4070041089%_)
                              (let ((_%__splice4474144742%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4070041089%_
                                      '0)))
                                (let ((_%tl4073041005%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4474144742%_
                                          '1)))
                                      (_%target4072841002%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4474144742%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4073041005%_)
                                      (_%__match4481344814%_
                                       _%e4069541072%_
                                       _%hd4069641076%_
                                       _%tl4069741079%_
                                       _%e4069841082%_
                                       _%hd4069941086%_
                                       _%tl4070041089%_
                                       _%e4071940972%_
                                       _%hd4072040976%_
                                       _%tl4072140979%_
                                       _%e4072240982%_
                                       _%hd4072340986%_
                                       _%tl4072440989%_
                                       _%e4072540992%_
                                       _%hd4072640996%_
                                       _%tl4072740999%_
                                       _%__splice4474144742%_
                                       _%target4072841002%_
                                       _%tl4073041005%_)
                                      (if (gx#stx-pair/null? _%tl4072140979%_)
                                          (let ((_%__splice4474544746%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4072140979%_
                                                  '0)))
                                            (let ((_%tl4075940840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4474544746%_
                                                      '1)))
                                                  (_%target4075740837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4474544746%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4075940840%_)
                                                  (_%__match4485344854%_
                                                   _%e4069541072%_
                                                   _%hd4069641076%_
                                                   _%tl4069741079%_
                                                   _%e4069841082%_
                                                   _%hd4069941086%_
                                                   _%tl4070041089%_
                                                   _%e4071940972%_
                                                   _%hd4072040976%_
                                                   _%tl4072140979%_
                                                   _%e4072240982%_
                                                   _%hd4072340986%_
                                                   _%tl4072440989%_
                                                   _%e4072540992%_
                                                   _%hd4072640996%_
                                                   _%tl4072740999%_
                                                   _%__splice4474544746%_
                                                   _%target4075740837%_
                                                   _%tl4075940840%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4069240780%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4069240780%_))))))
                              (if (gx#stx-pair/null? _%tl4072140979%_)
                                  (let ((_%__splice4474544746%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4072140979%_
                                          '0)))
                                    (let ((_%tl4075940840%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4474544746%_
                                              '1)))
                                          (_%target4075740837%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4474544746%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4075940840%_)
                                          (_%__match4485344854%_
                                           _%e4069541072%_
                                           _%hd4069641076%_
                                           _%tl4069741079%_
                                           _%e4069841082%_
                                           _%hd4069941086%_
                                           _%tl4070041089%_
                                           _%e4071940972%_
                                           _%hd4072040976%_
                                           _%tl4072140979%_
                                           _%e4072240982%_
                                           _%hd4072340986%_
                                           _%tl4072440989%_
                                           _%e4072540992%_
                                           _%hd4072640996%_
                                           _%tl4072740999%_
                                           _%__splice4474544746%_
                                           _%target4075740837%_
                                           _%tl4075940840%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4069240780%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4069240780%_))))
                          (if (gx#stx-pair/null? _%tl4072140979%_)
                              (let ((_%__splice4474544746%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4072140979%_
                                      '0)))
                                (let ((_%tl4075940840%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4474544746%_
                                          '1)))
                                      (_%target4075740837%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4474544746%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4075940840%_)
                                      (_%__match4485344854%_
                                       _%e4069541072%_
                                       _%hd4069641076%_
                                       _%tl4069741079%_
                                       _%e4069841082%_
                                       _%hd4069941086%_
                                       _%tl4070041089%_
                                       _%e4071940972%_
                                       _%hd4072040976%_
                                       _%tl4072140979%_
                                       _%e4072240982%_
                                       _%hd4072340986%_
                                       _%tl4072440989%_
                                       _%e4072540992%_
                                       _%hd4072640996%_
                                       _%tl4072740999%_
                                       _%__splice4474544746%_
                                       _%target4075740837%_
                                       _%tl4075940840%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4069240780%_)))))
                              (let () (declare (not safe)) (_%g4069240780%_))))
                      (let () (declare (not safe)) (_%g4069240780%_)))))
              (let () (declare (not safe)) (_%g4069240780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4069240780%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4069240780%_))))))
                          (let () (declare (not safe)) (_%g4069240780%_)))))
                  (let () (declare (not safe)) (_%g4069240780%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41153%_)
        (let* ((_%g4115741181%_
                (lambda (_%g4115841177%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4115841177%_)))
               (_%g4115641264%_
                (lambda (_%g4115841185%_)
                  (if (gx#stx-pair? _%g4115841185%_)
                      (let ((_%e4116141188%_ (gx#syntax-e _%g4115841185%_)))
                        (let ((_%hd4116241192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4116141188%_)))
                              (_%tl4116341195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4116141188%_))))
                          (if (gx#stx-pair? _%tl4116341195%_)
                              (let ((_%e4116441198%_
                                     (gx#syntax-e _%tl4116341195%_)))
                                (let ((_%hd4116541202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4116441198%_)))
                                      (_%tl4116641205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4116441198%_))))
                                  (if (gx#stx-pair/null? _%tl4116641205%_)
                                      (let ((_g45108_
                                             (gx#syntax-split-splice
                                              _%tl4116641205%_
                                              '0)))
                                        (begin
                                          (let ((_g45109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45108_)
                                                       (##values-length
                                                        _g45108_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45109_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45109_)))
                                          (let ((_%target4116741208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45108_ 0)))
                                                (_%tl4116941211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45108_ 1))))
                                            (if (gx#stx-null? _%tl4116941211%_)
                                                (letrec ((_%loop4117041214%_
                                                          (lambda (_%hd4116841218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4117441221%_)
                    (if (gx#stx-pair? _%hd4116841218%_)
                        (let ((_%e4117141223%_ (gx#syntax-e _%hd4116841218%_)))
                          (let ((_%lp-hd4117241227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4117141223%_)))
                                (_%lp-tl4117341230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4117141223%_))))
                            (_%loop4117041214%_
                             _%lp-tl4117341230%_
                             (cons _%lp-hd4117241227%_ _%body4117441221%_))))
                        (let ((_%body4117541233%_
                               (reverse _%body4117441221%_)))
                          ((lambda (_%g4115941236%_ _%g4116041238%_)
                             (if (gx#identifier? _%g4116041238%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4116041238%_
                                                               '())
                                                         (foldr (lambda (_%g4125541258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4125641261%_)
                          (cons _%g4125541258%_ _%g4125641261%_))
                        '()
                        _%g4115941236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4115741181%_ _%g4115841185%_)))
                           _%body4117541233%_
                           _%hd4116541202%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4117041214%_
                                                   _%target4116741208%_
                                                   '()))
                                                (_%g4115741181%_
                                                 _%g4115841185%_)))))
                                      (_%g4115741181%_ _%g4115841185%_))))
                              (_%g4115741181%_ _%g4115841185%_))))
                      (_%g4115741181%_ _%g4115841185%_)))))
          (_%g4115641264%_ _%$stx41153%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41269%_)
        (let* ((_%g4127341301%_
                (lambda (_%g4127441297%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4127441297%_)))
               (_%g4127241398%_
                (lambda (_%g4127441305%_)
                  (if (gx#stx-pair? _%g4127441305%_)
                      (let ((_%e4127841308%_ (gx#syntax-e _%g4127441305%_)))
                        (let ((_%hd4127941312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4127841308%_)))
                              (_%tl4128041315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4127841308%_))))
                          (if (gx#stx-pair? _%tl4128041315%_)
                              (let ((_%e4128141318%_
                                     (gx#syntax-e _%tl4128041315%_)))
                                (let ((_%hd4128241322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4128141318%_)))
                                      (_%tl4128341325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4128141318%_))))
                                  (if (gx#stx-pair? _%tl4128341325%_)
                                      (let ((_%e4128441328%_
                                             (gx#syntax-e _%tl4128341325%_)))
                                        (let ((_%hd4128541332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4128441328%_)))
                                              (_%tl4128641335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4128441328%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4128641335%_)
                                              (let ((_g45110_
                                                     (gx#syntax-split-splice
                                                      _%tl4128641335%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45111_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45110_)
                                                               (##values-length
                                                                _g45110_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45111_ 2)))
                (error "Context expects 2 values" _g45111_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4128741338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45110_
                                                            0)))
                                                        (_%tl4128941341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45110_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4128941341%_)
                                                        (letrec ((_%loop4129041344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4128841348%_ _%rest4129441351%_)
                            (if (gx#stx-pair? _%hd4128841348%_)
                                (let ((_%e4129141353%_
                                       (gx#syntax-e _%hd4128841348%_)))
                                  (let ((_%lp-hd4129241357%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4129141353%_)))
                                        (_%lp-tl4129341360%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4129141353%_))))
                                    (_%loop4129041344%_
                                     _%lp-tl4129341360%_
                                     (cons _%lp-hd4129241357%_
                                           _%rest4129441351%_))))
                                (let ((_%rest4129541363%_
                                       (reverse _%rest4129441351%_)))
                                  ((lambda (_%g4127541366%_
                                            _%g4127641368%_
                                            _%g4127741369%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4127741369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4127641368%_
                                 (foldr (lambda (_%g4138941392%_
                                                 _%g4139041395%_)
                                          (cons _%g4138941392%_
                                                _%g4139041395%_))
                                        '()
                                        _%g4127541366%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4129541363%_
                                   _%hd4128541332%_
                                   _%hd4128241322%_))))))
                  (_%loop4129041344%_ _%target4128741338%_ '()))
                (_%g4127341301%_ _%g4127441305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4127341301%_
                                               _%g4127441305%_))))
                                      (_%g4127341301%_ _%g4127441305%_))))
                              (_%g4127341301%_ _%g4127441305%_))))
                      (_%g4127341301%_ _%g4127441305%_)))))
          (_%g4127241398%_ _%$stx41269%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41403%_)
        (let* ((_%g4140741478%_
                (lambda (_%g4140841474%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4140841474%_)))
               (_%g4140641755%_
                (lambda (_%g4140841482%_)
                  (if (gx#stx-pair? _%g4140841482%_)
                      (let ((_%e4141541485%_ (gx#syntax-e _%g4140841482%_)))
                        (let ((_%hd4141641489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4141541485%_)))
                              (_%tl4141741492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4141541485%_))))
                          (if (gx#stx-pair? _%tl4141741492%_)
                              (let ((_%e4141841495%_
                                     (gx#syntax-e _%tl4141741492%_)))
                                (let ((_%hd4141941499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4141841495%_)))
                                      (_%tl4142041502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4141841495%_))))
                                  (if (gx#stx-pair/null? _%hd4141941499%_)
                                      (let ((_g45112_
                                             (gx#syntax-split-splice
                                              _%hd4141941499%_
                                              '0)))
                                        (begin
                                          (let ((_g45113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45112_)
                                                       (##values-length
                                                        _g45112_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45113_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45113_)))
                                          (let ((_%target4142141505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45112_ 0)))
                                                (_%tl4142341508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45112_ 1))))
                                            (if (gx#stx-null? _%tl4142341508%_)
                                                (letrec ((_%loop4142441511%_
                                                          (lambda (_%hd4142241515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4142841518%_
                           _%init4142941519%_
                           _%var4143041520%_)
                    (if (gx#stx-pair? _%hd4142241515%_)
                        (let ((_%e4142541522%_ (gx#syntax-e _%hd4142241515%_)))
                          (let ((_%lp-hd4142641526%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4142541522%_)))
                                (_%lp-tl4142741529%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4142541522%_))))
                            (if (gx#stx-pair? _%lp-hd4142641526%_)
                                (let ((_%e4143441532%_
                                       (gx#syntax-e _%lp-hd4142641526%_)))
                                  (let ((_%hd4143541536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4143441532%_)))
                                        (_%tl4143641539%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4143441532%_))))
                                    (if (gx#stx-pair? _%tl4143641539%_)
                                        (let ((_%e4143741542%_
                                               (gx#syntax-e _%tl4143641539%_)))
                                          (let ((_%hd4143841546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4143741542%_)))
                                                (_%tl4143941549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4143741542%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4143941549%_)
                                                (let ((_g45114_
                                                       (gx#syntax-split-splice
                                                        _%tl4143941549%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45114_)
                         (##values-length _g45114_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45115_ 2)))
                  (error "Context expects 2 values" _g45115_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4144041552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45114_
                                                              0)))
                                                          (_%tl4144241555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45114_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4144241555%_)
                                                          (letrec ((_%loop4144341558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4144141562%_ _%step4144741565%_)
                              (if (gx#stx-pair? _%hd4144141562%_)
                                  (let ((_%e4144441567%_
                                         (gx#syntax-e _%hd4144141562%_)))
                                    (let ((_%lp-hd4144541571%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4144441567%_)))
                                          (_%lp-tl4144641574%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4144441567%_))))
                                      (_%loop4144341558%_
                                       _%lp-tl4144641574%_
                                       (cons _%lp-hd4144541571%_
                                             _%step4144741565%_))))
                                  (let ((_%step4144841577%_
                                         (reverse _%step4144741565%_)))
                                    (_%loop4142441511%_
                                     _%lp-tl4142741529%_
                                     (cons _%step4144841577%_
                                           _%step4142841518%_)
                                     (cons _%hd4143841546%_ _%init4142941519%_)
                                     (cons _%hd4143541536%_
                                           _%var4143041520%_)))))))
                    (_%loop4144341558%_ _%target4144041552%_ '()))
                  (_%g4140741478%_ _%g4140841482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4140741478%_
                                                 _%g4140841482%_))))
                                        (_%g4140741478%_ _%g4140841482%_))))
                                (_%g4140741478%_ _%g4140841482%_))))
                        (let ((_%step4143141580%_ (reverse _%step4142841518%_))
                              (_%init4143241582%_ (reverse _%init4142941519%_))
                              (_%var4143341583%_ (reverse _%var4143041520%_)))
                          (if (gx#stx-pair? _%tl4142041502%_)
                              (let ((_%e4144941585%_
                                     (gx#syntax-e _%tl4142041502%_)))
                                (let ((_%hd4145041589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4144941585%_)))
                                      (_%tl4145141592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4144941585%_))))
                                  (if (gx#stx-pair? _%hd4145041589%_)
                                      (let ((_%e4145241595%_
                                             (gx#syntax-e _%hd4145041589%_)))
                                        (let ((_%hd4145341599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4145241595%_)))
                                              (_%tl4145441602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4145241595%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4145441602%_)
                                              (let ((_g45116_
                                                     (gx#syntax-split-splice
                                                      _%tl4145441602%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45116_)
                                                               (##values-length
                                                                _g45116_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45117_ 2)))
                (error "Context expects 2 values" _g45117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4145541605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45116_
                                                            0)))
                                                        (_%tl4145741608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45116_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4145741608%_)
                                                        (letrec ((_%loop4145841611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4145641615%_ _%fini4146241618%_)
                            (if (gx#stx-pair? _%hd4145641615%_)
                                (let ((_%e4145941620%_
                                       (gx#syntax-e _%hd4145641615%_)))
                                  (let ((_%lp-hd4146041624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4145941620%_)))
                                        (_%lp-tl4146141627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4145941620%_))))
                                    (_%loop4145841611%_
                                     _%lp-tl4146141627%_
                                     (cons _%lp-hd4146041624%_
                                           _%fini4146241618%_))))
                                (let ((_%fini4146341630%_
                                       (reverse _%fini4146241618%_)))
                                  (if (gx#stx-pair/null? _%tl4145141592%_)
                                      (let ((_g45118_
                                             (gx#syntax-split-splice
                                              _%tl4145141592%_
                                              '0)))
                                        (begin
                                          (let ((_g45119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45118_)
                                                       (##values-length
                                                        _g45118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45119_)))
                                          (let ((_%target4146441633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45118_ 0)))
                                                (_%tl4146641636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45118_ 1))))
                                            (if (gx#stx-null? _%tl4146641636%_)
                                                (letrec ((_%loop4146741639%_
                                                          (lambda (_%hd4146541643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4147141646%_)
                    (if (gx#stx-pair? _%hd4146541643%_)
                        (let ((_%e4146841648%_ (gx#syntax-e _%hd4146541643%_)))
                          (let ((_%lp-hd4146941652%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4146841648%_)))
                                (_%lp-tl4147041655%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4146841648%_))))
                            (_%loop4146741639%_
                             _%lp-tl4147041655%_
                             (cons _%lp-hd4146941652%_ _%body4147141646%_))))
                        (let ((_%body4147241658%_
                               (reverse _%body4147141646%_)))
                          ((lambda (_%g4140941661%_
                                    _%g4141041663%_
                                    _%g4141141664%_
                                    _%g4141241665%_
                                    _%g4141341666%_
                                    _%g4141441667%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4170041703%_
                                                  _%g4170141706%_)
                                           (cons _%g4170041703%_
                                                 _%g4170141706%_))
                                         '()
                                         _%g4141441667%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4141341666%_
                                                      _%g4141441667%_)
                                                     (foldr (lambda (_%g4170841721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4170941724%_
                             _%g4171041726%_)
                      (cons (cons _%g4170941724%_ (cons _%g4170841721%_ '()))
                            _%g4171041726%_))
                    '()
                    _%g4141341666%_
                    _%g4141441667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4141141664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4171141729%_
                                                               _%g4171241732%_)
                                                        (cons _%g4171141729%_
                                                              _%g4171241732%_))
                                                      '()
                                                      _%g4141041663%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4171341735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4171441738%_)
                      (cons _%g4171341735%_ _%g4171441738%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4141241665%_
                                   _%g4141441667%_)
                                  (foldr (lambda (_%g4171541741%_
                                                  _%g4171641744%_
                                                  _%g4171741746%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4171641744%_
                                                             (foldr (lambda (_%g4171841749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4171941752%_)
                              (cons _%g4171841749%_ _%g4171941752%_))
                            '()
                            _%g4171541741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4171741746%_))
                                         '()
                                         _%g4141241665%_
                                         _%g4141441667%_)))
                          '())
                    _%g4140941661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4140741478%_ _%g4140841482%_)))
                           _%body4147241658%_
                           _%fini4146341630%_
                           _%hd4145341599%_
                           _%step4143141580%_
                           _%init4143241582%_
                           _%var4143341583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4146741639%_
                                                   _%target4146441633%_
                                                   '()))
                                                (_%g4140741478%_
                                                 _%g4140841482%_)))))
                                      (_%g4140741478%_ _%g4140841482%_)))))))
                  (_%loop4145841611%_ _%target4145541605%_ '()))
                (_%g4140741478%_ _%g4140841482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4140741478%_
                                               _%g4140841482%_))))
                                      (_%g4140741478%_ _%g4140841482%_))))
                              (_%g4140741478%_ _%g4140841482%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4142441511%_
                                                   _%target4142141505%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4140741478%_
                                                 _%g4140841482%_)))))
                                      (_%g4140741478%_ _%g4140841482%_))))
                              (_%g4140741478%_ _%g4140841482%_))))
                      (_%g4140741478%_ _%g4140841482%_)))))
          (_%g4140641755%_ _%$stx41403%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41763%_)
        (let* ((_%g4176741838%_
                (lambda (_%g4176841834%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4176841834%_)))
               (_%g4176642115%_
                (lambda (_%g4176841842%_)
                  (if (gx#stx-pair? _%g4176841842%_)
                      (let ((_%e4177541845%_ (gx#syntax-e _%g4176841842%_)))
                        (let ((_%hd4177641849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4177541845%_)))
                              (_%tl4177741852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4177541845%_))))
                          (if (gx#stx-pair? _%tl4177741852%_)
                              (let ((_%e4177841855%_
                                     (gx#syntax-e _%tl4177741852%_)))
                                (let ((_%hd4177941859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4177841855%_)))
                                      (_%tl4178041862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4177841855%_))))
                                  (if (gx#stx-pair/null? _%hd4177941859%_)
                                      (let ((_g45120_
                                             (gx#syntax-split-splice
                                              _%hd4177941859%_
                                              '0)))
                                        (begin
                                          (let ((_g45121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45120_)
                                                       (##values-length
                                                        _g45120_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45121_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45121_)))
                                          (let ((_%target4178141865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45120_ 0)))
                                                (_%tl4178341868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45120_ 1))))
                                            (if (gx#stx-null? _%tl4178341868%_)
                                                (letrec ((_%loop4178441871%_
                                                          (lambda (_%hd4178241875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4178841878%_
                           _%init4178941879%_
                           _%var4179041880%_)
                    (if (gx#stx-pair? _%hd4178241875%_)
                        (let ((_%e4178541882%_ (gx#syntax-e _%hd4178241875%_)))
                          (let ((_%lp-hd4178641886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4178541882%_)))
                                (_%lp-tl4178741889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4178541882%_))))
                            (if (gx#stx-pair? _%lp-hd4178641886%_)
                                (let ((_%e4179441892%_
                                       (gx#syntax-e _%lp-hd4178641886%_)))
                                  (let ((_%hd4179541896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4179441892%_)))
                                        (_%tl4179641899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4179441892%_))))
                                    (if (gx#stx-pair? _%tl4179641899%_)
                                        (let ((_%e4179741902%_
                                               (gx#syntax-e _%tl4179641899%_)))
                                          (let ((_%hd4179841906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4179741902%_)))
                                                (_%tl4179941909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4179741902%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4179941909%_)
                                                (let ((_g45122_
                                                       (gx#syntax-split-splice
                                                        _%tl4179941909%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45123_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45122_)
                         (##values-length _g45122_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45123_ 2)))
                  (error "Context expects 2 values" _g45123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4180041912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45122_
                                                              0)))
                                                          (_%tl4180241915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45122_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4180241915%_)
                                                          (letrec ((_%loop4180341918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4180141922%_ _%step4180741925%_)
                              (if (gx#stx-pair? _%hd4180141922%_)
                                  (let ((_%e4180441927%_
                                         (gx#syntax-e _%hd4180141922%_)))
                                    (let ((_%lp-hd4180541931%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4180441927%_)))
                                          (_%lp-tl4180641934%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4180441927%_))))
                                      (_%loop4180341918%_
                                       _%lp-tl4180641934%_
                                       (cons _%lp-hd4180541931%_
                                             _%step4180741925%_))))
                                  (let ((_%step4180841937%_
                                         (reverse _%step4180741925%_)))
                                    (_%loop4178441871%_
                                     _%lp-tl4178741889%_
                                     (cons _%step4180841937%_
                                           _%step4178841878%_)
                                     (cons _%hd4179841906%_ _%init4178941879%_)
                                     (cons _%hd4179541896%_
                                           _%var4179041880%_)))))))
                    (_%loop4180341918%_ _%target4180041912%_ '()))
                  (_%g4176741838%_ _%g4176841842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4176741838%_
                                                 _%g4176841842%_))))
                                        (_%g4176741838%_ _%g4176841842%_))))
                                (_%g4176741838%_ _%g4176841842%_))))
                        (let ((_%step4179141940%_ (reverse _%step4178841878%_))
                              (_%init4179241942%_ (reverse _%init4178941879%_))
                              (_%var4179341943%_ (reverse _%var4179041880%_)))
                          (if (gx#stx-pair? _%tl4178041862%_)
                              (let ((_%e4180941945%_
                                     (gx#syntax-e _%tl4178041862%_)))
                                (let ((_%hd4181041949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4180941945%_)))
                                      (_%tl4181141952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4180941945%_))))
                                  (if (gx#stx-pair? _%hd4181041949%_)
                                      (let ((_%e4181241955%_
                                             (gx#syntax-e _%hd4181041949%_)))
                                        (let ((_%hd4181341959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4181241955%_)))
                                              (_%tl4181441962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4181241955%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4181441962%_)
                                              (let ((_g45124_
                                                     (gx#syntax-split-splice
                                                      _%tl4181441962%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45125_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45124_)
                                                               (##values-length
                                                                _g45124_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45125_ 2)))
                (error "Context expects 2 values" _g45125_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4181541965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45124_
                                                            0)))
                                                        (_%tl4181741968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45124_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4181741968%_)
                                                        (letrec ((_%loop4181841971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4181641975%_ _%fini4182241978%_)
                            (if (gx#stx-pair? _%hd4181641975%_)
                                (let ((_%e4181941980%_
                                       (gx#syntax-e _%hd4181641975%_)))
                                  (let ((_%lp-hd4182041984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4181941980%_)))
                                        (_%lp-tl4182141987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4181941980%_))))
                                    (_%loop4181841971%_
                                     _%lp-tl4182141987%_
                                     (cons _%lp-hd4182041984%_
                                           _%fini4182241978%_))))
                                (let ((_%fini4182341990%_
                                       (reverse _%fini4182241978%_)))
                                  (if (gx#stx-pair/null? _%tl4181141952%_)
                                      (let ((_g45126_
                                             (gx#syntax-split-splice
                                              _%tl4181141952%_
                                              '0)))
                                        (begin
                                          (let ((_g45127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45126_)
                                                       (##values-length
                                                        _g45126_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45127_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45127_)))
                                          (let ((_%target4182441993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45126_ 0)))
                                                (_%tl4182641996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45126_ 1))))
                                            (if (gx#stx-null? _%tl4182641996%_)
                                                (letrec ((_%loop4182741999%_
                                                          (lambda (_%hd4182542003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4183142006%_)
                    (if (gx#stx-pair? _%hd4182542003%_)
                        (let ((_%e4182842008%_ (gx#syntax-e _%hd4182542003%_)))
                          (let ((_%lp-hd4182942012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4182842008%_)))
                                (_%lp-tl4183042015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4182842008%_))))
                            (_%loop4182741999%_
                             _%lp-tl4183042015%_
                             (cons _%lp-hd4182942012%_ _%body4183142006%_))))
                        (let ((_%body4183242018%_
                               (reverse _%body4183142006%_)))
                          ((lambda (_%g4176942021%_
                                    _%g4177042023%_
                                    _%g4177142024%_
                                    _%g4177242025%_
                                    _%g4177342026%_
                                    _%g4177442027%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4206042063%_
                                                  _%g4206142066%_)
                                           (cons _%g4206042063%_
                                                 _%g4206142066%_))
                                         '()
                                         _%g4177442027%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4177342026%_
                                                      _%g4177442027%_)
                                                     (foldr (lambda (_%g4206842081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4206942084%_
                             _%g4207042086%_)
                      (cons (cons _%g4206942084%_ (cons _%g4206842081%_ '()))
                            _%g4207042086%_))
                    '()
                    _%g4177342026%_
                    _%g4177442027%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4207142089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4207242092%_)
                    (cons _%g4207142089%_ _%g4207242092%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4177142024%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4177242025%_
                                                   _%g4177442027%_)
                                                  (foldr (lambda (_%g4207342095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4207442098%_
                          _%g4207542100%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4207442098%_
                                     (foldr (lambda (_%g4207642103%_
                                                     _%g4207742106%_)
                                              (cons _%g4207642103%_
                                                    _%g4207742106%_))
                                            '()
                                            _%g4207342095%_)))
                         _%g4207542100%_))
                 '()
                 _%g4177242025%_
                 _%g4177442027%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4207842109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4207942112%_)
                             (cons _%g4207842109%_ _%g4207942112%_))
                           '()
                           _%g4177042023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4176942021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4176741838%_ _%g4176841842%_)))
                           _%body4183242018%_
                           _%fini4182341990%_
                           _%hd4181341959%_
                           _%step4179141940%_
                           _%init4179241942%_
                           _%var4179341943%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4182741999%_
                                                   _%target4182441993%_
                                                   '()))
                                                (_%g4176741838%_
                                                 _%g4176841842%_)))))
                                      (_%g4176741838%_ _%g4176841842%_)))))))
                  (_%loop4181841971%_ _%target4181541965%_ '()))
                (_%g4176741838%_ _%g4176841842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4176741838%_
                                               _%g4176841842%_))))
                                      (_%g4176741838%_ _%g4176841842%_))))
                              (_%g4176741838%_ _%g4176841842%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4178441871%_
                                                   _%target4178141865%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4176741838%_
                                                 _%g4176841842%_)))))
                                      (_%g4176741838%_ _%g4176841842%_))))
                              (_%g4176741838%_ _%g4176841842%_))))
                      (_%g4176741838%_ _%g4176841842%_)))))
          (_%g4176642115%_ _%$stx41763%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42123%_)
        (let* ((_%g4212742151%_
                (lambda (_%g4212842147%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4212842147%_)))
               (_%g4212642234%_
                (lambda (_%g4212842155%_)
                  (if (gx#stx-pair? _%g4212842155%_)
                      (let ((_%e4213142158%_ (gx#syntax-e _%g4212842155%_)))
                        (let ((_%hd4213242162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4213142158%_)))
                              (_%tl4213342165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4213142158%_))))
                          (if (gx#stx-pair? _%tl4213342165%_)
                              (let ((_%e4213442168%_
                                     (gx#syntax-e _%tl4213342165%_)))
                                (let ((_%hd4213542172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4213442168%_)))
                                      (_%tl4213642175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4213442168%_))))
                                  (if (gx#stx-pair/null? _%tl4213642175%_)
                                      (let ((_g45128_
                                             (gx#syntax-split-splice
                                              _%tl4213642175%_
                                              '0)))
                                        (begin
                                          (let ((_g45129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45128_)
                                                       (##values-length
                                                        _g45128_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45129_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45129_)))
                                          (let ((_%target4213742178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45128_ 0)))
                                                (_%tl4213942181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45128_ 1))))
                                            (if (gx#stx-null? _%tl4213942181%_)
                                                (letrec ((_%loop4214042184%_
                                                          (lambda (_%hd4213842188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4214442191%_)
                    (if (gx#stx-pair? _%hd4213842188%_)
                        (let ((_%e4214142193%_ (gx#syntax-e _%hd4213842188%_)))
                          (let ((_%lp-hd4214242197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4214142193%_)))
                                (_%lp-tl4214342200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4214142193%_))))
                            (_%loop4214042184%_
                             _%lp-tl4214342200%_
                             (cons _%lp-hd4214242197%_ _%body4214442191%_))))
                        (let ((_%body4214542203%_
                               (reverse _%body4214442191%_)))
                          ((lambda (_%g4212942206%_ _%g4213042208%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4213042208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4222542228%_ _%g4222642231%_)
                                  (cons _%g4222542228%_ _%g4222642231%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4212942206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4214542203%_
                           _%hd4213542172%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4214042184%_
                                                   _%target4213742178%_
                                                   '()))
                                                (_%g4212742151%_
                                                 _%g4212842155%_)))))
                                      (_%g4212742151%_ _%g4212842155%_))))
                              (_%g4212742151%_ _%g4212842155%_))))
                      (_%g4212742151%_ _%g4212842155%_)))))
          (_%g4212642234%_ _%$stx42123%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42239%_)
        (let* ((_%g4224342267%_
                (lambda (_%g4224442263%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4224442263%_)))
               (_%g4224242350%_
                (lambda (_%g4224442271%_)
                  (if (gx#stx-pair? _%g4224442271%_)
                      (let ((_%e4224742274%_ (gx#syntax-e _%g4224442271%_)))
                        (let ((_%hd4224842278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4224742274%_)))
                              (_%tl4224942281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4224742274%_))))
                          (if (gx#stx-pair? _%tl4224942281%_)
                              (let ((_%e4225042284%_
                                     (gx#syntax-e _%tl4224942281%_)))
                                (let ((_%hd4225142288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4225042284%_)))
                                      (_%tl4225242291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4225042284%_))))
                                  (if (gx#stx-pair/null? _%tl4225242291%_)
                                      (let ((_g45130_
                                             (gx#syntax-split-splice
                                              _%tl4225242291%_
                                              '0)))
                                        (begin
                                          (let ((_g45131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45130_)
                                                       (##values-length
                                                        _g45130_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45131_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45131_)))
                                          (let ((_%target4225342294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45130_ 0)))
                                                (_%tl4225542297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45130_ 1))))
                                            (if (gx#stx-null? _%tl4225542297%_)
                                                (letrec ((_%loop4225642300%_
                                                          (lambda (_%hd4225442304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4226042307%_)
                    (if (gx#stx-pair? _%hd4225442304%_)
                        (let ((_%e4225742309%_ (gx#syntax-e _%hd4225442304%_)))
                          (let ((_%lp-hd4225842313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4225742309%_)))
                                (_%lp-tl4225942316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4225742309%_))))
                            (_%loop4225642300%_
                             _%lp-tl4225942316%_
                             (cons _%lp-hd4225842313%_ _%body4226042307%_))))
                        (let ((_%body4226142319%_
                               (reverse _%body4226042307%_)))
                          ((lambda (_%g4224542322%_ _%g4224642324%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4224642324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4234142344%_ _%g4234242347%_)
                                  (cons _%g4234142344%_ _%g4234242347%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4224542322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4226142319%_
                           _%hd4225142288%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4225642300%_
                                                   _%target4225342294%_
                                                   '()))
                                                (_%g4224342267%_
                                                 _%g4224442271%_)))))
                                      (_%g4224342267%_ _%g4224442271%_))))
                              (_%g4224342267%_ _%g4224442271%_))))
                      (_%g4224342267%_ _%g4224442271%_)))))
          (_%g4224242350%_ _%$stx42239%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42355%_)
        (let ((_%g4235842365%_
               (lambda (_%g4235942361%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4235942361%_))))
          (_%g4235842365%_ _%$stx42355%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42369%_)
        (let ((_%g4237242379%_
               (lambda (_%g4237342375%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4237342375%_))))
          (_%g4237242379%_ _%$stx42369%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42383%_)
        (letrec ((_%generate-thunk42386%_
                  (lambda (_%body43705%_)
                    (if (null? _%body43705%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42383%_)
                        (let* ((_%g4370843725%_
                                (lambda (_%g4370943721%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4370943721%_)))
                               (_%g4370743784%_
                                (lambda (_%g4370943729%_)
                                  (if (gx#stx-pair/null? _%g4370943729%_)
                                      (let ((_g45132_
                                             (gx#syntax-split-splice
                                              _%g4370943729%_
                                              '0)))
                                        (begin
                                          (let ((_g45133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45132_)
                                                       (##values-length
                                                        _g45132_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45133_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45133_)))
                                          (let ((_%target4371143732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45132_ 0)))
                                                (_%tl4371343735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45132_ 1))))
                                            (if (gx#stx-null? _%tl4371343735%_)
                                                (letrec ((_%loop4371443738%_
                                                          (lambda (_%hd4371243742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4371843745%_)
                    (if (gx#stx-pair? _%hd4371243742%_)
                        (let ((_%e4371543747%_ (gx#syntax-e _%hd4371243742%_)))
                          (let ((_%lp-hd4371643751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4371543747%_)))
                                (_%lp-tl4371743754%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4371543747%_))))
                            (_%loop4371443738%_
                             _%lp-tl4371743754%_
                             (cons _%lp-hd4371643751%_ _%e4371843745%_))))
                        (let ((_%e4371943757%_ (reverse _%e4371843745%_)))
                          ((lambda (_%g4371043760%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4377543778%_
                                                         _%g4377643781%_)
                                                  (cons _%g4377543778%_
                                                        _%g4377643781%_))
                                                '()
                                                _%g4371043760%_))))
                           _%e4371943757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4371443738%_
                                                   _%target4371143732%_
                                                   '()))
                                                (_%g4370843725%_
                                                 _%g4370943729%_)))))
                                      (_%g4370843725%_ _%g4370943729%_)))))
                          (_%g4370743784%_ (reverse _%body43705%_))))))
                 (_%generate-fini42388%_
                  (lambda (_%thunk43588%_ _%fini43590%_)
                    (let* ((_%g4359243616%_
                            (lambda (_%g4359343612%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4359343612%_)))
                           (_%g4359143701%_
                            (lambda (_%g4359343620%_)
                              (if (gx#stx-pair? _%g4359343620%_)
                                  (let ((_%e4359643623%_
                                         (gx#syntax-e _%g4359343620%_)))
                                    (let ((_%hd4359743627%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4359643623%_)))
                                          (_%tl4359843630%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4359643623%_))))
                                      (if (gx#stx-pair? _%tl4359843630%_)
                                          (let ((_%e4359943633%_
                                                 (gx#syntax-e
                                                  _%tl4359843630%_)))
                                            (let ((_%hd4360043637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4359943633%_)))
                                                  (_%tl4360143640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4359943633%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4360043637%_)
                                                  (let ((_g45134_
                                                         (gx#syntax-split-splice
                                                          _%hd4360043637%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45135_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45134_)
                           (##values-length _g45134_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45135_ 2)))
                    (error "Context expects 2 values" _g45135_)))
              (let ((_%target4360243643%_
                     (let () (declare (not safe)) (##values-ref _g45134_ 0)))
                    (_%tl4360443646%_
                     (let () (declare (not safe)) (##values-ref _g45134_ 1))))
                (if (gx#stx-null? _%tl4360443646%_)
                    (letrec ((_%loop4360543649%_
                              (lambda (_%hd4360343653%_ _%e4360943656%_)
                                (if (gx#stx-pair? _%hd4360343653%_)
                                    (let ((_%e4360643658%_
                                           (gx#syntax-e _%hd4360343653%_)))
                                      (let ((_%lp-hd4360743662%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4360643658%_)))
                                            (_%lp-tl4360843665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4360643658%_))))
                                        (_%loop4360543649%_
                                         _%lp-tl4360843665%_
                                         (cons _%lp-hd4360743662%_
                                               _%e4360943656%_))))
                                    (let ((_%e4361043668%_
                                           (reverse _%e4360943656%_)))
                                      (if (gx#stx-null? _%tl4360143640%_)
                                          ((lambda (_%g4359443671%_
                                                    _%g4359543673%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4359543673%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4369243695%_
                                                   _%g4369343698%_)
                                            (cons _%g4369243695%_
                                                  _%g4369343698%_))
                                          '()
                                          _%g4359443671%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4361043668%_
                                           _%hd4359743627%_)
                                          (_%g4359243616%_
                                           _%g4359343620%_)))))))
                      (_%loop4360543649%_ _%target4360243643%_ '()))
                    (_%g4359243616%_ _%g4359343620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4359243616%_
                                                   _%g4359343620%_))))
                                          (_%g4359243616%_ _%g4359343620%_))))
                                  (_%g4359243616%_ _%g4359343620%_)))))
                      (_%g4359143701%_ (list _%thunk43588%_ _%fini43590%_)))))
                 (_%generate-catch42389%_
                  (lambda (_%handlers43003%_ _%thunk43005%_)
                    (let* ((_%g4300743015%_
                            (lambda (_%g4300843011%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4300843011%_)))
                           (_%g4300643584%_
                            (lambda (_%g4300843019%_)
                              ((lambda (_%g4300943022%_)
                                 (let _%lp43034%_ ((_%rest43037%_
                                                    _%handlers43003%_)
                                                   (_%clauses43039%_ '()))
                                   (let* ((_%rest4304043048%_ _%rest43037%_)
                                          (_%else4304243179%_
                                           (lambda ()
                                             (let* ((_%g4306043084%_
                                                     (lambda (_%g4306143080%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4306143080%_)))
                                                    (_%g4305943175%_
                                                     (lambda (_%g4306143088%_)
                                                       (if (gx#stx-pair?
                                                            _%g4306143088%_)
                                                           (let ((_%e4306443091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4306143088%_)))
                     (let ((_%hd4306543095%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4306443091%_)))
                           (_%tl4306643098%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4306443091%_))))
                       (if (gx#stx-pair/null? _%hd4306543095%_)
                           (let ((_g45136_
                                  (gx#syntax-split-splice
                                   _%hd4306543095%_
                                   '0)))
                             (begin
                               (let ((_g45137_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45136_)
                                            (##values-length _g45136_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45137_ 2)))
                                     (error "Context expects 2 values"
                                            _g45137_)))
                               (let ((_%target4306743101%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45136_ 0)))
                                     (_%tl4306943104%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45136_ 1))))
                                 (if (gx#stx-null? _%tl4306943104%_)
                                     (letrec ((_%loop4307043107%_
                                               (lambda (_%hd4306843111%_
                                                        _%clause4307443114%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4306843111%_)
                                                     (let ((_%e4307143116%_
                                                            (gx#syntax-e
                                                             _%hd4306843111%_)))
                                                       (let ((_%lp-hd4307243120%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4307143116%_)))
                     (_%lp-tl4307343123%_
                      (let () (declare (not safe)) (##cdr _%e4307143116%_))))
                 (_%loop4307043107%_
                  _%lp-tl4307343123%_
                  (cons _%lp-hd4307243120%_ _%clause4307443114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4307543126%_
                                                            (reverse _%clause4307443114%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4306643098%_)
                                                           (let ((_%e4307643129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4306643098%_)))
                     (let ((_%hd4307743133%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4307643129%_)))
                           (_%tl4307843136%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4307643129%_))))
                       (if (gx#stx-null? _%tl4307843136%_)
                           ((lambda (_%g4306243139%_ _%g4306343141%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4300943022%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4316643169%_ _%g4316743172%_)
                                   (cons _%g4316643169%_ _%g4316743172%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4300943022%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4306343141%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4306243139%_ '()))))
                            _%hd4307743133%_
                            _%clause4307543126%_)
                           (_%g4306043084%_ _%g4306143088%_))))
                   (_%g4306043084%_ _%g4306143088%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4307043107%_
                                        _%target4306743101%_
                                        '()))
                                     (_%g4306043084%_ _%g4306143088%_)))))
                           (_%g4306043084%_ _%g4306143088%_))))
                   (_%g4306043084%_ _%g4306143088%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4305943175%_
                                                (list _%clauses43039%_
                                                      _%thunk43005%_)))))
                                          (_%K4304443568%_
                                           (lambda (_%rest43183%_ _%hd43185%_)
                                             (let* ((_%__stx4485644857%_
                                                     _%hd43185%_)
                                                    (_%g4319043260%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4485644857%_))))
                                               (let ((_%__kont4485944860%_
                                                      (lambda (_%g4319243547%_
                                                               _%g4319343549%_)
                                                        (_%lp43034%_
                                                         _%rest43183%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4319343549%_ '()))
                                   (cons _%g4300943022%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4319243547%_ '())))
                       _%clauses43039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4486144862%_
                                                      (lambda (_%g4320343479%_
                                                               _%g4320443481%_
                                                               _%g4320543482%_)
                                                        (_%lp43034%_
                                                         _%rest43183%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4320543482%_ '()))
                                   (cons _%g4300943022%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4320443481%_
                                                           (cons _%g4300943022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4350143504%_
                                                               _%g4350243507%_)
                                                        (cons _%g4350143504%_
                                                              _%g4350243507%_))
                                                      '()
                                                      _%g4320343479%_)))
                                   '()))
                       _%clauses43039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4486544866%_
                                                      (lambda (_%g4322443387%_
                                                               _%g4322543389%_)
                                                        (_%lp43034%_
                                                         _%rest43183%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4322543389%_
                                                           (cons _%g4300943022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4340543408%_
                                                               _%g4340643411%_)
                                                        (cons _%g4340543408%_
                                                              _%g4340643411%_))
                                                      '()
                                                      _%g4322443387%_)))
                                   '()))
                       _%clauses43039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4486944870%_
                                                      (lambda (_%g4324143305%_
                                                               _%g4324243307%_)
                                                        (_%lp43034%_
                                                         _%rest43183%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4332343326%_
                                                         _%g4332443329%_)
                                                  (cons _%g4332343326%_
                                                        _%g4332443329%_))
                                                '()
                                                _%g4324143305%_))
                                   '()))
                       _%clauses43039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4496144962%_
                                                         (lambda (_%e4324343267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4324443271%_
                          _%tl4324543274%_
                          _%__splice4487144872%_
                          _%target4324643277%_
                          _%tl4324843280%_)
                   (letrec ((_%loop4324943283%_
                             (lambda (_%hd4324743287%_ _%body4325343290%_)
                               (if (gx#stx-pair? _%hd4324743287%_)
                                   (let ((_%e4325043292%_
                                          (gx#syntax-e _%hd4324743287%_)))
                                     (let ((_%lp-tl4325243299%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4325043292%_)))
                                           (_%lp-hd4325143296%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4325043292%_))))
                                       (_%loop4324943283%_
                                        _%lp-tl4325243299%_
                                        (cons _%lp-hd4325143296%_
                                              _%body4325343290%_))))
                                   (let ((_%body4325443302%_
                                          (reverse _%body4325343290%_)))
                                     (let ((_%g4324143305%_ _%body4325443302%_)
                                           (_%g4324243307%_ _%hd4324443271%_))
                                       (if (gx#underscore? _%g4324243307%_)
                                           (_%__kont4486944870%_
                                            _%g4324143305%_
                                            _%g4324243307%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319043260%_)))))))))
                     (_%loop4324943283%_ _%target4324643277%_ '()))))
                (_%__match4494744948%_
                 (lambda (_%e4322643339%_
                          _%hd4322743343%_
                          _%tl4322843346%_
                          _%e4322943349%_
                          _%hd4323043353%_
                          _%tl4323143356%_
                          _%__splice4486744868%_
                          _%target4323243359%_
                          _%tl4323443362%_)
                   (letrec ((_%loop4323543365%_
                             (lambda (_%hd4323343369%_ _%body4323943372%_)
                               (if (gx#stx-pair? _%hd4323343369%_)
                                   (let ((_%e4323643374%_
                                          (gx#syntax-e _%hd4323343369%_)))
                                     (let ((_%lp-tl4323843381%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4323643374%_)))
                                           (_%lp-hd4323743378%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4323643374%_))))
                                       (_%loop4323543365%_
                                        _%lp-tl4323843381%_
                                        (cons _%lp-hd4323743378%_
                                              _%body4323943372%_))))
                                   (let ((_%body4324043384%_
                                          (reverse _%body4323943372%_)))
                                     (let ((_%g4322443387%_ _%body4324043384%_)
                                           (_%g4322543389%_ _%hd4323043353%_))
                                       (if (gx#identifier? _%g4322543389%_)
                                           (_%__kont4486544866%_
                                            _%g4322443387%_
                                            _%g4322543389%_)
                                           (_%__match4496144962%_
                                            _%e4322643339%_
                                            _%hd4322743343%_
                                            _%tl4322843346%_
                                            _%__splice4486744868%_
                                            _%target4323243359%_
                                            _%tl4323443362%_))))))))
                     (_%loop4323543365%_ _%target4323243359%_ '()))))
                (_%__match4492544926%_
                 (lambda (_%e4320643421%_
                          _%hd4320743425%_
                          _%tl4320843428%_
                          _%e4320943431%_
                          _%hd4321043435%_
                          _%tl4321143438%_
                          _%e4321243441%_
                          _%hd4321343445%_
                          _%tl4321443448%_
                          _%__splice4486344864%_
                          _%target4321543451%_
                          _%tl4321743454%_)
                   (letrec ((_%loop4321843457%_
                             (lambda (_%hd4321643461%_ _%body4322243464%_)
                               (if (gx#stx-pair? _%hd4321643461%_)
                                   (let ((_%e4321943466%_
                                          (gx#syntax-e _%hd4321643461%_)))
                                     (let ((_%lp-tl4322143473%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4321943466%_)))
                                           (_%lp-hd4322043470%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4321943466%_))))
                                       (_%loop4321843457%_
                                        _%lp-tl4322143473%_
                                        (cons _%lp-hd4322043470%_
                                              _%body4322243464%_))))
                                   (let ((_%body4322343476%_
                                          (reverse _%body4322243464%_)))
                                     (let ((_%g4320343479%_ _%body4322343476%_)
                                           (_%g4320443481%_ _%hd4321343445%_)
                                           (_%g4320543482%_ _%hd4321043435%_))
                                       (if (gx#identifier? _%g4320443481%_)
                                           (_%__kont4486144862%_
                                            _%g4320343479%_
                                            _%g4320443481%_
                                            _%g4320543482%_)
                                           (_%__match4496144962%_
                                            _%e4320643421%_
                                            _%hd4320743425%_
                                            _%tl4320843428%_
                                            _%__splice4486344864%_
                                            _%target4321543451%_
                                            _%tl4321743454%_))))))))
                     (_%loop4321843457%_ _%target4321543451%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4485644857%_)
                                                       (let ((_%e4319443517%_
                                                              (gx#syntax-e
                                                               _%__stx4485644857%_)))
                                                         (let ((_%tl4319643524%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4319443517%_)))
                       (_%hd4319543521%_
                        (let () (declare (not safe)) (##car _%e4319443517%_))))
                   (if (gx#stx-pair? _%tl4319643524%_)
                       (let ((_%e4319743527%_ (gx#syntax-e _%tl4319643524%_)))
                         (let ((_%tl4319943534%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4319743527%_)))
                               (_%hd4319843531%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4319743527%_))))
                           (if (gx#identifier? _%hd4319843531%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45138_|
                                    _%hd4319843531%_)
                                   (if (gx#stx-pair? _%tl4319943534%_)
                                       (let ((_%e4320043537%_
                                              (gx#syntax-e _%tl4319943534%_)))
                                         (let ((_%tl4320243544%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4320043537%_)))
                                               (_%hd4320143541%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4320043537%_))))
                                           (if (gx#stx-null? _%tl4320243544%_)
                                               (_%__kont4485944860%_
                                                _%hd4320143541%_
                                                _%hd4319543521%_)
                                               (if (gx#stx-pair?
                                                    _%hd4319543521%_)
                                                   (let ((_%e4320943431%_
                                                          (gx#syntax-e
                                                           _%hd4319543521%_)))
                                                     (let ((_%tl4321143438%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4320943431%_)))
                                                           (_%hd4321043435%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4320943431%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4321143438%_)
                                                           (let ((_%e4321243441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4321143438%_)))
                     (let ((_%tl4321443448%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4321243441%_)))
                           (_%hd4321343445%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4321243441%_))))
                       (if (gx#stx-null? _%tl4321443448%_)
                           (if (gx#stx-pair/null? _%tl4319643524%_)
                               (let ((_%__splice4486344864%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4319643524%_
                                       '0)))
                                 (let ((_%tl4321743454%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4486344864%_
                                           '1)))
                                       (_%target4321543451%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4486344864%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4321743454%_)
                                       (_%__match4492544926%_
                                        _%e4319443517%_
                                        _%hd4319543521%_
                                        _%tl4319643524%_
                                        _%e4320943431%_
                                        _%hd4321043435%_
                                        _%tl4321143438%_
                                        _%e4321243441%_
                                        _%hd4321343445%_
                                        _%tl4321443448%_
                                        _%__splice4486344864%_
                                        _%target4321543451%_
                                        _%tl4321743454%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319043260%_)))))
                               (let () (declare (not safe)) (_%g4319043260%_)))
                           (if (gx#stx-pair/null? _%tl4319643524%_)
                               (let ((_%__splice4487144872%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4319643524%_
                                       '0)))
                                 (let ((_%tl4324843280%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487144872%_
                                           '1)))
                                       (_%target4324643277%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487144872%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4324843280%_)
                                       (_%__match4496144962%_
                                        _%e4319443517%_
                                        _%hd4319543521%_
                                        _%tl4319643524%_
                                        _%__splice4487144872%_
                                        _%target4324643277%_
                                        _%tl4324843280%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319043260%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4319043260%_))))))
                   (if (gx#stx-null? _%tl4321143438%_)
                       (if (gx#stx-pair/null? _%tl4319643524%_)
                           (let ((_%__splice4486744868%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4319643524%_
                                   '0)))
                             (let ((_%tl4323443362%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4486744868%_
                                       '1)))
                                   (_%target4323243359%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4486744868%_
                                       '0))))
                               (if (gx#stx-null? _%tl4323443362%_)
                                   (_%__match4494744948%_
                                    _%e4319443517%_
                                    _%hd4319543521%_
                                    _%tl4319643524%_
                                    _%e4320943431%_
                                    _%hd4321043435%_
                                    _%tl4321143438%_
                                    _%__splice4486744868%_
                                    _%target4323243359%_
                                    _%tl4323443362%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4319043260%_)))))
                           (let () (declare (not safe)) (_%g4319043260%_)))
                       (if (gx#stx-pair/null? _%tl4319643524%_)
                           (let ((_%__splice4487144872%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4319643524%_
                                   '0)))
                             (let ((_%tl4324843280%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487144872%_
                                       '1)))
                                   (_%target4324643277%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487144872%_
                                       '0))))
                               (if (gx#stx-null? _%tl4324843280%_)
                                   (_%__match4496144962%_
                                    _%e4319443517%_
                                    _%hd4319543521%_
                                    _%tl4319643524%_
                                    _%__splice4487144872%_
                                    _%target4324643277%_
                                    _%tl4324843280%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4319043260%_)))))
                           (let () (declare (not safe)) (_%g4319043260%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4319643524%_)
                                                       (let ((_%__splice4487144872%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4319643524%_
                                                               '0)))
                                                         (let ((_%tl4324843280%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487144872%_ '1)))
                       (_%target4324643277%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487144872%_ '0))))
                   (if (gx#stx-null? _%tl4324843280%_)
                       (_%__match4496144962%_
                        _%e4319443517%_
                        _%hd4319543521%_
                        _%tl4319643524%_
                        _%__splice4487144872%_
                        _%target4324643277%_
                        _%tl4324843280%_)
                       (let () (declare (not safe)) (_%g4319043260%_)))))
               (let () (declare (not safe)) (_%g4319043260%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4319543521%_)
                                           (let ((_%e4320943431%_
                                                  (gx#syntax-e
                                                   _%hd4319543521%_)))
                                             (let ((_%tl4321143438%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4320943431%_)))
                                                   (_%hd4321043435%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4320943431%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4321143438%_)
                                                   (let ((_%e4321243441%_
                                                          (gx#syntax-e
                                                           _%tl4321143438%_)))
                                                     (let ((_%tl4321443448%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4321243441%_)))
                                                           (_%hd4321343445%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4321243441%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4321443448%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4319643524%_)
                                                               (let ((_%__splice4486344864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4319643524%_
                               '0)))
                         (let ((_%tl4321743454%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4486344864%_ '1)))
                               (_%target4321543451%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4486344864%_ '0))))
                           (if (gx#stx-null? _%tl4321743454%_)
                               (_%__match4492544926%_
                                _%e4319443517%_
                                _%hd4319543521%_
                                _%tl4319643524%_
                                _%e4320943431%_
                                _%hd4321043435%_
                                _%tl4321143438%_
                                _%e4321243441%_
                                _%hd4321343445%_
                                _%tl4321443448%_
                                _%__splice4486344864%_
                                _%target4321543451%_
                                _%tl4321743454%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4319043260%_)))))
                       (let () (declare (not safe)) (_%g4319043260%_)))
                   (if (gx#stx-pair/null? _%tl4319643524%_)
                       (let ((_%__splice4487144872%_
                              (gx#syntax-split-splice->vector
                               _%tl4319643524%_
                               '0)))
                         (let ((_%tl4324843280%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487144872%_ '1)))
                               (_%target4324643277%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487144872%_ '0))))
                           (if (gx#stx-null? _%tl4324843280%_)
                               (_%__match4496144962%_
                                _%e4319443517%_
                                _%hd4319543521%_
                                _%tl4319643524%_
                                _%__splice4487144872%_
                                _%target4324643277%_
                                _%tl4324843280%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4319043260%_)))))
                       (let () (declare (not safe)) (_%g4319043260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4321143438%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4319643524%_)
                                                           (let ((_%__splice4486744868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4319643524%_
                           '0)))
                     (let ((_%tl4323443362%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4486744868%_ '1)))
                           (_%target4323243359%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4486744868%_ '0))))
                       (if (gx#stx-null? _%tl4323443362%_)
                           (_%__match4494744948%_
                            _%e4319443517%_
                            _%hd4319543521%_
                            _%tl4319643524%_
                            _%e4320943431%_
                            _%hd4321043435%_
                            _%tl4321143438%_
                            _%__splice4486744868%_
                            _%target4323243359%_
                            _%tl4323443362%_)
                           (let () (declare (not safe)) (_%g4319043260%_)))))
                   (let () (declare (not safe)) (_%g4319043260%_)))
               (if (gx#stx-pair/null? _%tl4319643524%_)
                   (let ((_%__splice4487144872%_
                          (gx#syntax-split-splice->vector
                           _%tl4319643524%_
                           '0)))
                     (let ((_%tl4324843280%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487144872%_ '1)))
                           (_%target4324643277%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487144872%_ '0))))
                       (if (gx#stx-null? _%tl4324843280%_)
                           (_%__match4496144962%_
                            _%e4319443517%_
                            _%hd4319543521%_
                            _%tl4319643524%_
                            _%__splice4487144872%_
                            _%target4324643277%_
                            _%tl4324843280%_)
                           (let () (declare (not safe)) (_%g4319043260%_)))))
                   (let () (declare (not safe)) (_%g4319043260%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4319643524%_)
                                               (let ((_%__splice4487144872%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4319643524%_
                                                       '0)))
                                                 (let ((_%tl4324843280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487144872%_
                                                           '1)))
                                                       (_%target4324643277%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487144872%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4324843280%_)
                                                       (_%__match4496144962%_
                                                        _%e4319443517%_
                                                        _%hd4319543521%_
                                                        _%tl4319643524%_
                                                        _%__splice4487144872%_
                                                        _%target4324643277%_
                                                        _%tl4324843280%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4319043260%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319043260%_)))))
                                   (if (gx#stx-pair? _%hd4319543521%_)
                                       (let ((_%e4320943431%_
                                              (gx#syntax-e _%hd4319543521%_)))
                                         (let ((_%tl4321143438%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4320943431%_)))
                                               (_%hd4321043435%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4320943431%_))))
                                           (if (gx#stx-pair? _%tl4321143438%_)
                                               (let ((_%e4321243441%_
                                                      (gx#syntax-e
                                                       _%tl4321143438%_)))
                                                 (let ((_%tl4321443448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4321243441%_)))
                                                       (_%hd4321343445%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4321243441%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4321443448%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4319643524%_)
                                                           (let ((_%__splice4486344864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4319643524%_
                           '0)))
                     (let ((_%tl4321743454%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4486344864%_ '1)))
                           (_%target4321543451%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4486344864%_ '0))))
                       (if (gx#stx-null? _%tl4321743454%_)
                           (_%__match4492544926%_
                            _%e4319443517%_
                            _%hd4319543521%_
                            _%tl4319643524%_
                            _%e4320943431%_
                            _%hd4321043435%_
                            _%tl4321143438%_
                            _%e4321243441%_
                            _%hd4321343445%_
                            _%tl4321443448%_
                            _%__splice4486344864%_
                            _%target4321543451%_
                            _%tl4321743454%_)
                           (let () (declare (not safe)) (_%g4319043260%_)))))
                   (let () (declare (not safe)) (_%g4319043260%_)))
               (if (gx#stx-pair/null? _%tl4319643524%_)
                   (let ((_%__splice4487144872%_
                          (gx#syntax-split-splice->vector
                           _%tl4319643524%_
                           '0)))
                     (let ((_%tl4324843280%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487144872%_ '1)))
                           (_%target4324643277%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487144872%_ '0))))
                       (if (gx#stx-null? _%tl4324843280%_)
                           (_%__match4496144962%_
                            _%e4319443517%_
                            _%hd4319543521%_
                            _%tl4319643524%_
                            _%__splice4487144872%_
                            _%target4324643277%_
                            _%tl4324843280%_)
                           (let () (declare (not safe)) (_%g4319043260%_)))))
                   (let () (declare (not safe)) (_%g4319043260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4321143438%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4319643524%_)
                                                       (let ((_%__splice4486744868%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4319643524%_
                                                               '0)))
                                                         (let ((_%tl4323443362%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4486744868%_ '1)))
                       (_%target4323243359%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4486744868%_ '0))))
                   (if (gx#stx-null? _%tl4323443362%_)
                       (_%__match4494744948%_
                        _%e4319443517%_
                        _%hd4319543521%_
                        _%tl4319643524%_
                        _%e4320943431%_
                        _%hd4321043435%_
                        _%tl4321143438%_
                        _%__splice4486744868%_
                        _%target4323243359%_
                        _%tl4323443362%_)
                       (let () (declare (not safe)) (_%g4319043260%_)))))
               (let () (declare (not safe)) (_%g4319043260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4319643524%_)
                                                       (let ((_%__splice4487144872%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4319643524%_
                                                               '0)))
                                                         (let ((_%tl4324843280%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487144872%_ '1)))
                       (_%target4324643277%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487144872%_ '0))))
                   (if (gx#stx-null? _%tl4324843280%_)
                       (_%__match4496144962%_
                        _%e4319443517%_
                        _%hd4319543521%_
                        _%tl4319643524%_
                        _%__splice4487144872%_
                        _%target4324643277%_
                        _%tl4324843280%_)
                       (let () (declare (not safe)) (_%g4319043260%_)))))
               (let () (declare (not safe)) (_%g4319043260%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4319643524%_)
                                           (let ((_%__splice4487144872%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4319643524%_
                                                   '0)))
                                             (let ((_%tl4324843280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487144872%_
                                                       '1)))
                                                   (_%target4324643277%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487144872%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4324843280%_)
                                                   (_%__match4496144962%_
                                                    _%e4319443517%_
                                                    _%hd4319543521%_
                                                    _%tl4319643524%_
                                                    _%__splice4487144872%_
                                                    _%target4324643277%_
                                                    _%tl4324843280%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319043260%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319043260%_)))))
                               (if (gx#stx-pair? _%hd4319543521%_)
                                   (let ((_%e4320943431%_
                                          (gx#syntax-e _%hd4319543521%_)))
                                     (let ((_%tl4321143438%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4320943431%_)))
                                           (_%hd4321043435%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4320943431%_))))
                                       (if (gx#stx-pair? _%tl4321143438%_)
                                           (let ((_%e4321243441%_
                                                  (gx#syntax-e
                                                   _%tl4321143438%_)))
                                             (let ((_%tl4321443448%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4321243441%_)))
                                                   (_%hd4321343445%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4321243441%_))))
                                               (if (gx#stx-null?
                                                    _%tl4321443448%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4319643524%_)
                                                       (let ((_%__splice4486344864%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4319643524%_
                                                               '0)))
                                                         (let ((_%tl4321743454%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4486344864%_ '1)))
                       (_%target4321543451%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4486344864%_ '0))))
                   (if (gx#stx-null? _%tl4321743454%_)
                       (_%__match4492544926%_
                        _%e4319443517%_
                        _%hd4319543521%_
                        _%tl4319643524%_
                        _%e4320943431%_
                        _%hd4321043435%_
                        _%tl4321143438%_
                        _%e4321243441%_
                        _%hd4321343445%_
                        _%tl4321443448%_
                        _%__splice4486344864%_
                        _%target4321543451%_
                        _%tl4321743454%_)
                       (let () (declare (not safe)) (_%g4319043260%_)))))
               (let () (declare (not safe)) (_%g4319043260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4319643524%_)
                                                       (let ((_%__splice4487144872%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4319643524%_
                                                               '0)))
                                                         (let ((_%tl4324843280%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487144872%_ '1)))
                       (_%target4324643277%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487144872%_ '0))))
                   (if (gx#stx-null? _%tl4324843280%_)
                       (_%__match4496144962%_
                        _%e4319443517%_
                        _%hd4319543521%_
                        _%tl4319643524%_
                        _%__splice4487144872%_
                        _%target4324643277%_
                        _%tl4324843280%_)
                       (let () (declare (not safe)) (_%g4319043260%_)))))
               (let () (declare (not safe)) (_%g4319043260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4321143438%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4319643524%_)
                                                   (let ((_%__splice4486744868%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4319643524%_
                                                           '0)))
                                                     (let ((_%tl4323443362%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4486744868%_
                                                               '1)))
                                                           (_%target4323243359%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4486744868%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4323443362%_)
                                                           (_%__match4494744948%_
                                                            _%e4319443517%_
                                                            _%hd4319543521%_
                                                            _%tl4319643524%_
                                                            _%e4320943431%_
                                                            _%hd4321043435%_
                                                            _%tl4321143438%_
                                                            _%__splice4486744868%_
                                                            _%target4323243359%_
                                                            _%tl4323443362%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4319043260%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319043260%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4319643524%_)
                                                   (let ((_%__splice4487144872%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4319643524%_
                                                           '0)))
                                                     (let ((_%tl4324843280%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487144872%_
                                                               '1)))
                                                           (_%target4324643277%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487144872%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4324843280%_)
                                                           (_%__match4496144962%_
                                                            _%e4319443517%_
                                                            _%hd4319543521%_
                                                            _%tl4319643524%_
                                                            _%__splice4487144872%_
                                                            _%target4324643277%_
                                                            _%tl4324843280%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4319043260%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319043260%_)))))))
                                   (if (gx#stx-pair/null? _%tl4319643524%_)
                                       (let ((_%__splice4487144872%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4319643524%_
                                               '0)))
                                         (let ((_%tl4324843280%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4487144872%_
                                                   '1)))
                                               (_%target4324643277%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4487144872%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4324843280%_)
                                               (_%__match4496144962%_
                                                _%e4319443517%_
                                                _%hd4319543521%_
                                                _%tl4319643524%_
                                                _%__splice4487144872%_
                                                _%target4324643277%_
                                                _%tl4324843280%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319043260%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319043260%_)))))))
                       (if (gx#stx-pair? _%hd4319543521%_)
                           (let ((_%e4320943431%_
                                  (gx#syntax-e _%hd4319543521%_)))
                             (let ((_%tl4321143438%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4320943431%_)))
                                   (_%hd4321043435%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4320943431%_))))
                               (if (gx#stx-pair? _%tl4321143438%_)
                                   (let ((_%e4321243441%_
                                          (gx#syntax-e _%tl4321143438%_)))
                                     (let ((_%tl4321443448%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4321243441%_)))
                                           (_%hd4321343445%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4321243441%_))))
                                       (if (gx#stx-null? _%tl4321443448%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4319643524%_)
                                               (let ((_%__splice4486344864%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4319643524%_
                                                       '0)))
                                                 (let ((_%tl4321743454%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4486344864%_
                                                           '1)))
                                                       (_%target4321543451%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4486344864%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4321743454%_)
                                                       (_%__match4492544926%_
                                                        _%e4319443517%_
                                                        _%hd4319543521%_
                                                        _%tl4319643524%_
                                                        _%e4320943431%_
                                                        _%hd4321043435%_
                                                        _%tl4321143438%_
                                                        _%e4321243441%_
                                                        _%hd4321343445%_
                                                        _%tl4321443448%_
                                                        _%__splice4486344864%_
                                                        _%target4321543451%_
                                                        _%tl4321743454%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4319043260%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319043260%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4319643524%_)
                                               (let ((_%__splice4487144872%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4319643524%_
                                                       '0)))
                                                 (let ((_%tl4324843280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487144872%_
                                                           '1)))
                                                       (_%target4324643277%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487144872%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4324843280%_)
                                                       (_%__match4496144962%_
                                                        _%e4319443517%_
                                                        _%hd4319543521%_
                                                        _%tl4319643524%_
                                                        _%__splice4487144872%_
                                                        _%target4324643277%_
                                                        _%tl4324843280%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4319043260%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319043260%_))))))
                                   (if (gx#stx-null? _%tl4321143438%_)
                                       (if (gx#stx-pair/null? _%tl4319643524%_)
                                           (let ((_%__splice4486744868%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4319643524%_
                                                   '0)))
                                             (let ((_%tl4323443362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4486744868%_
                                                       '1)))
                                                   (_%target4323243359%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4486744868%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4323443362%_)
                                                   (_%__match4494744948%_
                                                    _%e4319443517%_
                                                    _%hd4319543521%_
                                                    _%tl4319643524%_
                                                    _%e4320943431%_
                                                    _%hd4321043435%_
                                                    _%tl4321143438%_
                                                    _%__splice4486744868%_
                                                    _%target4323243359%_
                                                    _%tl4323443362%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319043260%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319043260%_)))
                                       (if (gx#stx-pair/null? _%tl4319643524%_)
                                           (let ((_%__splice4487144872%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4319643524%_
                                                   '0)))
                                             (let ((_%tl4324843280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487144872%_
                                                       '1)))
                                                   (_%target4324643277%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487144872%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4324843280%_)
                                                   (_%__match4496144962%_
                                                    _%e4319443517%_
                                                    _%hd4319543521%_
                                                    _%tl4319643524%_
                                                    _%__splice4487144872%_
                                                    _%target4324643277%_
                                                    _%tl4324843280%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319043260%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319043260%_)))))))
                           (if (gx#stx-pair/null? _%tl4319643524%_)
                               (let ((_%__splice4487144872%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4319643524%_
                                       '0)))
                                 (let ((_%tl4324843280%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487144872%_
                                           '1)))
                                       (_%target4324643277%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487144872%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4324843280%_)
                                       (_%__match4496144962%_
                                        _%e4319443517%_
                                        _%hd4319543521%_
                                        _%tl4319643524%_
                                        _%__splice4487144872%_
                                        _%target4324643277%_
                                        _%tl4324843280%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319043260%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4319043260%_)))))))
               (let () (declare (not safe)) (_%g4319043260%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4304043048%_)
                                         (let ((_%hd4304543572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4304043048%_)))
                                               (_%tl4304643575%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4304043048%_))))
                                           (let* ((_%hd43578%_
                                                   _%hd4304543572%_)
                                                  (_%rest43581%_
                                                   _%tl4304643575%_))
                                             (_%K4304443568%_
                                              _%rest43581%_
                                              _%hd43578%_)))
                                         (_%else4304243179%_)))))
                               _%g4300843019%_))))
                      (_%g4300643584%_ (gx#genident))))))
          (let* ((_%g4239142411%_
                  (lambda (_%g4239242407%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4239242407%_)))
                 (_%g4239042999%_
                  (lambda (_%g4239242415%_)
                    (if (gx#stx-pair? _%g4239242415%_)
                        (let ((_%e4239442418%_ (gx#syntax-e _%g4239242415%_)))
                          (let ((_%hd4239542422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4239442418%_)))
                                (_%tl4239642425%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4239442418%_))))
                            (if (gx#stx-pair/null? _%tl4239642425%_)
                                (let ((_g45139_
                                       (gx#syntax-split-splice
                                        _%tl4239642425%_
                                        '0)))
                                  (begin
                                    (let ((_g45140_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45139_)
                                                 (##values-length _g45139_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45140_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45140_)))
                                    (let ((_%target4239742428%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45139_ 0)))
                                          (_%tl4239942431%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45139_ 1))))
                                      (if (gx#stx-null? _%tl4239942431%_)
                                          (letrec ((_%loop4240042434%_
                                                    (lambda (_%hd4239842438%_
                                                             _%e4240442441%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4239842438%_)
                                                          (let ((_%e4240142443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4239842438%_)))
                    (let ((_%lp-hd4240242447%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4240142443%_)))
                          (_%lp-tl4240342450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4240142443%_))))
                      (_%loop4240042434%_
                       _%lp-tl4240342450%_
                       (cons _%lp-hd4240242447%_ _%e4240442441%_))))
                  (let ((_%e4240542453%_ (reverse _%e4240442441%_)))
                    ((lambda (_%g4239342456%_)
                       (let _%lp42473%_ ((_%rest42476%_
                                          (foldr (lambda (_%g4299042993%_
                                                          _%g4299142996%_)
                                                   (cons _%g4299042993%_
                                                         _%g4299142996%_))
                                                 '()
                                                 _%g4239342456%_))
                                         (_%body42478%_ '()))
                         (let* ((_%__stx4508245083%_ _%rest42476%_)
                                (_%g4248142493%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4508245083%_))))
                           (let ((_%__kont4508545086%_
                                  (lambda (_%g4248342521%_ _%g4248442523%_)
                                    (let* ((_%__stx4503045031%_
                                            _%g4248442523%_)
                                           (_%g4254042573%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4503045031%_))))
                                      (let ((_%__kont4503345034%_
                                             (lambda (_%g4254242960%_)
                                               (if (gx#stx-null?
                                                    _%g4248342521%_)
                                                   (_%generate-fini42388%_
                                                    (_%generate-thunk42386%_
                                                     _%body42478%_)
                                                    (foldr (lambda (_%g4297442977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4297542980%_)
                     (cons _%g4297442977%_ _%g4297542980%_))
                   '()
                   _%g4254242960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42383%_))))
                                            (_%__kont4503745038%_
                                             (lambda (_%g4255542629%_)
                                               (let _%lp42646%_ ((_%rest42649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4248342521%_)
                         (_%handlers42651%_
                          (cons (foldr (lambda (_%g4290642909%_
                                                _%g4290742912%_)
                                         (cons _%g4290642909%_
                                               _%g4290742912%_))
                                       '()
                                       _%g4255542629%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4496444965%_
                                                         _%rest42649%_)
                                                        (_%g4265542695%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4496444965%_))))
                                                   (let ((_%__kont4496744968%_
                                                          (lambda (_%g4265742876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4265842878%_)
                    (_%lp42646%_
                     _%g4265742876%_
                     (cons (foldr (lambda (_%g4289442897%_ _%g4289542900%_)
                                    (cons _%g4289442897%_ _%g4289542900%_))
                                  '()
                                  _%g4265842878%_)
                           _%handlers42651%_))))
                 (_%__kont4497144972%_
                  (lambda (_%g4267442761%_)
                    (let* ((_%g4278242790%_
                            (lambda (_%g4278342786%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4278342786%_)))
                           (_%g4278142817%_
                            (lambda (_%g4278342794%_)
                              ((lambda (_%g4278442797%_)
                                 (_%generate-fini42388%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4278442797%_ '())))
                                  (foldr (lambda (_%g4280842811%_
                                                  _%g4280942814%_)
                                           (cons _%g4280842811%_
                                                 _%g4280942814%_))
                                         '()
                                         _%g4267442761%_)))
                               _%g4278342794%_))))
                      (_%g4278142817%_
                       (_%generate-catch42389%_
                        _%handlers42651%_
                        (_%generate-thunk42386%_ _%body42478%_))))))
                 (_%__kont4497544976%_
                  (lambda ()
                    (_%generate-catch42389%_
                     _%handlers42651%_
                     (_%generate-thunk42386%_ _%body42478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4265442706%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4496444965%_)
                           (_%__kont4497544976%_)
                           (let () (declare (not safe)) (_%g4265542695%_)))))
                    (_%__match4502545026%_
                     (lambda (_%e4267542713%_
                              _%hd4267642717%_
                              _%tl4267742720%_
                              _%e4267842723%_
                              _%hd4267942727%_
                              _%tl4268042730%_
                              _%__splice4497344974%_
                              _%target4268142733%_
                              _%tl4268342736%_)
                       (letrec ((_%loop4268442739%_
                                 (lambda (_%hd4268242743%_ _%fini4268842746%_)
                                   (if (gx#stx-pair? _%hd4268242743%_)
                                       (let ((_%e4268542748%_
                                              (gx#syntax-e _%hd4268242743%_)))
                                         (let ((_%lp-tl4268742755%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4268542748%_)))
                                               (_%lp-hd4268642752%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4268542748%_))))
                                           (_%loop4268442739%_
                                            _%lp-tl4268742755%_
                                            (cons _%lp-hd4268642752%_
                                                  _%fini4268842746%_))))
                                       (let ((_%fini4268942758%_
                                              (reverse _%fini4268842746%_)))
                                         (if (gx#stx-null? _%tl4267742720%_)
                                             (_%__kont4497144972%_
                                              _%fini4268942758%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4265542695%_))))))))
                         (_%loop4268442739%_ _%target4268142733%_ '()))))
                    (_%__match4500145002%_
                     (lambda (_%e4265942828%_
                              _%hd4266042832%_
                              _%tl4266142835%_
                              _%e4266242838%_
                              _%hd4266342842%_
                              _%tl4266442845%_
                              _%__splice4496944970%_
                              _%target4266542848%_
                              _%tl4266742851%_)
                       (letrec ((_%loop4266842854%_
                                 (lambda (_%hd4266642858%_
                                          _%handler4267242861%_)
                                   (if (gx#stx-pair? _%hd4266642858%_)
                                       (let ((_%e4266942863%_
                                              (gx#syntax-e _%hd4266642858%_)))
                                         (let ((_%lp-tl4267142870%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4266942863%_)))
                                               (_%lp-hd4267042867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4266942863%_))))
                                           (_%loop4266842854%_
                                            _%lp-tl4267142870%_
                                            (cons _%lp-hd4267042867%_
                                                  _%handler4267242861%_))))
                                       (let ((_%handler4267342873%_
                                              (reverse _%handler4267242861%_)))
                                         (_%__kont4496744968%_
                                          _%tl4266142835%_
                                          _%handler4267342873%_))))))
                         (_%loop4266842854%_ _%target4266542848%_ '())))))
               (if (gx#stx-pair? _%__stx4496444965%_)
                   (let ((_%e4265942828%_ (gx#syntax-e _%__stx4496444965%_)))
                     (let ((_%tl4266142835%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4265942828%_)))
                           (_%hd4266042832%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4265942828%_))))
                       (if (gx#stx-pair? _%hd4266042832%_)
                           (let ((_%e4266242838%_
                                  (gx#syntax-e _%hd4266042832%_)))
                             (let ((_%tl4266442845%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4266242838%_)))
                                   (_%hd4266342842%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4266242838%_))))
                               (if (gx#identifier? _%hd4266342842%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45141_|
                                        _%hd4266342842%_)
                                       (if (gx#stx-pair/null? _%tl4266442845%_)
                                           (let ((_%__splice4496944970%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4266442845%_
                                                   '0)))
                                             (let ((_%tl4266742851%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4496944970%_
                                                       '1)))
                                                   (_%target4266542848%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4496944970%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4266742851%_)
                                                   (_%__match4500145002%_
                                                    _%e4265942828%_
                                                    _%hd4266042832%_
                                                    _%tl4266142835%_
                                                    _%e4266242838%_
                                                    _%hd4266342842%_
                                                    _%tl4266442845%_
                                                    _%__splice4496944970%_
                                                    _%target4266542848%_
                                                    _%tl4266742851%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4265542695%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4265542695%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45142_|
                                            _%hd4266342842%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4266442845%_)
                                               (let ((_%__splice4497344974%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4266442845%_
                                                       '0)))
                                                 (let ((_%tl4268342736%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4497344974%_
                                                           '1)))
                                                       (_%target4268142733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4497344974%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4268342736%_)
                                                       (_%__match4502545026%_
                                                        _%e4265942828%_
                                                        _%hd4266042832%_
                                                        _%tl4266142835%_
                                                        _%e4266242838%_
                                                        _%hd4266342842%_
                                                        _%tl4266442845%_
                                                        _%__splice4497344974%_
                                                        _%target4268142733%_
                                                        _%tl4268342736%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4265542695%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4265542695%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4265542695%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4265542695%_)))))
                           (let () (declare (not safe)) (_%g4265542695%_)))))
                   (let () (declare (not safe)) (_%g4265442706%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4504145042%_
                                             (lambda ()
                                               (_%lp42473%_
                                                _%g4248342521%_
                                                (cons _%g4248442523%_
                                                      _%body42478%_)))))
                                        (let* ((_%__match4507945080%_
                                                (lambda (_%e4255642591%_
                                                         _%hd4255742595%_
                                                         _%tl4255842598%_
                                                         _%__splice4503945040%_
                                                         _%target4255942601%_
                                                         _%tl4256142604%_)
                                                  (letrec ((_%loop4256242607%_
                                                            (lambda (_%hd4256042611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4256642614%_)
                      (if (gx#stx-pair? _%hd4256042611%_)
                          (let ((_%e4256342616%_
                                 (gx#syntax-e _%hd4256042611%_)))
                            (let ((_%lp-tl4256542623%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4256342616%_)))
                                  (_%lp-hd4256442620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4256342616%_))))
                              (_%loop4256242607%_
                               _%lp-tl4256542623%_
                               (cons _%lp-hd4256442620%_
                                     _%handler4256642614%_))))
                          (let ((_%handler4256742626%_
                                 (reverse _%handler4256642614%_)))
                            (_%__kont4503745038%_ _%handler4256742626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4256242607%_
                                                     _%target4255942601%_
                                                     '()))))
                                               (_%__match4506145062%_
                                                (lambda (_%e4254342922%_
                                                         _%hd4254442926%_
                                                         _%tl4254542929%_
                                                         _%__splice4503545036%_
                                                         _%target4254642932%_
                                                         _%tl4254842935%_)
                                                  (letrec ((_%loop4254942938%_
                                                            (lambda (_%hd4254742942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4255342945%_)
                      (if (gx#stx-pair? _%hd4254742942%_)
                          (let ((_%e4255042947%_
                                 (gx#syntax-e _%hd4254742942%_)))
                            (let ((_%lp-tl4255242954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4255042947%_)))
                                  (_%lp-hd4255142951%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4255042947%_))))
                              (_%loop4254942938%_
                               _%lp-tl4255242954%_
                               (cons _%lp-hd4255142951%_ _%fini4255342945%_))))
                          (let ((_%fini4255442957%_
                                 (reverse _%fini4255342945%_)))
                            (_%__kont4503345034%_ _%fini4255442957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4254942938%_
                                                     _%target4254642932%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4503045031%_)
                                              (let ((_%e4254342922%_
                                                     (gx#syntax-e
                                                      _%__stx4503045031%_)))
                                                (let ((_%tl4254542929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4254342922%_)))
                                                      (_%hd4254442926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4254342922%_))))
                                                  (if (gx#identifier?
                                                       _%hd4254442926%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45143_|
                                                           _%hd4254442926%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4254542929%_)
                                                              (let ((_%__splice4503545036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4254542929%_
                              '0)))
                        (let ((_%tl4254842935%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4503545036%_ '1)))
                              (_%target4254642932%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4503545036%_ '0))))
                          (if (gx#stx-null? _%tl4254842935%_)
                              (_%__match4506145062%_
                               _%e4254342922%_
                               _%hd4254442926%_
                               _%tl4254542929%_
                               _%__splice4503545036%_
                               _%target4254642932%_
                               _%tl4254842935%_)
                              (_%__kont4504145042%_))))
                      (_%__kont4504145042%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45144_|
                       _%hd4254442926%_)
                      (if (gx#stx-pair/null? _%tl4254542929%_)
                          (let ((_%__splice4503945040%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4254542929%_
                                  '0)))
                            (let ((_%tl4256142604%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4503945040%_ '1)))
                                  (_%target4255942601%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4503945040%_
                                      '0))))
                              (if (gx#stx-null? _%tl4256142604%_)
                                  (_%__match4507945080%_
                                   _%e4254342922%_
                                   _%hd4254442926%_
                                   _%tl4254542929%_
                                   _%__splice4503945040%_
                                   _%target4255942601%_
                                   _%tl4256142604%_)
                                  (_%__kont4504145042%_))))
                          (_%__kont4504145042%_))
                      (_%__kont4504145042%_)))
              (_%__kont4504145042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4504145042%_)))))))
                                 (_%__kont4508745088%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42478%_)))))
                             (let ((_%g4248042504%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4508245083%_)
                                          (_%__kont4508745088%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4248142493%_))))))
                               (if (gx#stx-pair? _%__stx4508245083%_)
                                   (let ((_%e4248542511%_
                                          (gx#syntax-e _%__stx4508245083%_)))
                                     (let ((_%tl4248742518%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4248542511%_)))
                                           (_%hd4248642515%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4248542511%_))))
                                       (_%__kont4508545086%_
                                        _%tl4248742518%_
                                        _%hd4248642515%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4248042504%_))))))))
                     _%e4240542453%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4240042434%_
                                             _%target4239742428%_
                                             '()))
                                          (_%g4239142411%_ _%g4239242415%_)))))
                                (_%g4239142411%_ _%g4239242415%_))))
                        (_%g4239142411%_ _%g4239242415%_)))))
            (_%g4239042999%_ _%stx42383%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43799%_)
        (let* ((_%g4380343832%_
                (lambda (_%g4380443828%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4380443828%_)))
               (_%g4380243928%_
                (lambda (_%g4380443836%_)
                  (if (gx#stx-pair? _%g4380443836%_)
                      (let ((_%e4380743839%_ (gx#syntax-e _%g4380443836%_)))
                        (let ((_%hd4380843843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4380743839%_)))
                              (_%tl4380943846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4380743839%_))))
                          (if (gx#stx-pair/null? _%tl4380943846%_)
                              (let ((_g45145_
                                     (gx#syntax-split-splice
                                      _%tl4380943846%_
                                      '0)))
                                (begin
                                  (let ((_g45146_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45145_)
                                               (##values-length _g45145_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45146_ 2)))
                                        (error "Context expects 2 values"
                                               _g45146_)))
                                  (let ((_%target4381043849%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45145_ 0)))
                                        (_%tl4381243852%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45145_ 1))))
                                    (if (gx#stx-null? _%tl4381243852%_)
                                        (letrec ((_%loop4381343855%_
                                                  (lambda (_%hd4381143859%_
                                                           _%val4381743862%_
                                                           _%key4381843863%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4381143859%_)
                                                        (let ((_%e4381443865%_
                                                               (gx#syntax-e
                                                                _%hd4381143859%_)))
                                                          (let ((_%lp-hd4381543869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4381443865%_)))
                        (_%lp-tl4381643872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4381443865%_))))
                    (if (gx#stx-pair? _%lp-hd4381543869%_)
                        (let ((_%e4382143875%_
                               (gx#syntax-e _%lp-hd4381543869%_)))
                          (let ((_%hd4382243879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4382143875%_)))
                                (_%tl4382343882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4382143875%_))))
                            (if (gx#stx-pair? _%tl4382343882%_)
                                (let ((_%e4382443885%_
                                       (gx#syntax-e _%tl4382343882%_)))
                                  (let ((_%hd4382543889%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4382443885%_)))
                                        (_%tl4382643892%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4382443885%_))))
                                    (if (gx#stx-null? _%tl4382643892%_)
                                        (_%loop4381343855%_
                                         _%lp-tl4381643872%_
                                         (cons _%hd4382543889%_
                                               _%val4381743862%_)
                                         (cons _%hd4382243879%_
                                               _%key4381843863%_))
                                        (_%g4380343832%_ _%g4380443836%_))))
                                (_%g4380343832%_ _%g4380443836%_))))
                        (_%g4380343832%_ _%g4380443836%_))))
                (let ((_%val4381943895%_ (reverse _%val4381743862%_))
                      (_%key4382043897%_ (reverse _%key4381843863%_)))
                  ((lambda (_%g4380543899%_ _%g4380643901%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4380543899%_
                                    _%g4380643901%_)
                                   (foldr (lambda (_%g4391643920%_
                                                   _%g4391743923%_
                                                   _%g4391843925%_)
                                            (cons (cons _%g4391743923%_
                                                        (cons _%g4391643920%_
                                                              '()))
                                                  _%g4391843925%_))
                                          '()
                                          _%g4380543899%_
                                          _%g4380643901%_)))))
                   _%val4381943895%_
                   _%key4382043897%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4381343855%_
                                           _%target4381043849%_
                                           '()
                                           '()))
                                        (_%g4380343832%_ _%g4380443836%_)))))
                              (_%g4380343832%_ _%g4380443836%_))))
                      (_%g4380343832%_ _%g4380443836%_)))))
          (_%g4380243928%_ _%$stx43799%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43933%_)
        (let* ((_%g4393743966%_
                (lambda (_%g4393843962%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4393843962%_)))
               (_%g4393644062%_
                (lambda (_%g4393843970%_)
                  (if (gx#stx-pair? _%g4393843970%_)
                      (let ((_%e4394143973%_ (gx#syntax-e _%g4393843970%_)))
                        (let ((_%hd4394243977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4394143973%_)))
                              (_%tl4394343980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4394143973%_))))
                          (if (gx#stx-pair/null? _%tl4394343980%_)
                              (let ((_g45147_
                                     (gx#syntax-split-splice
                                      _%tl4394343980%_
                                      '0)))
                                (begin
                                  (let ((_g45148_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45147_)
                                               (##values-length _g45147_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45148_ 2)))
                                        (error "Context expects 2 values"
                                               _g45148_)))
                                  (let ((_%target4394443983%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45147_ 0)))
                                        (_%tl4394643986%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45147_ 1))))
                                    (if (gx#stx-null? _%tl4394643986%_)
                                        (letrec ((_%loop4394743989%_
                                                  (lambda (_%hd4394543993%_
                                                           _%val4395143996%_
                                                           _%key4395243997%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4394543993%_)
                                                        (let ((_%e4394843999%_
                                                               (gx#syntax-e
                                                                _%hd4394543993%_)))
                                                          (let ((_%lp-hd4394944003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4394843999%_)))
                        (_%lp-tl4395044006%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4394843999%_))))
                    (if (gx#stx-pair? _%lp-hd4394944003%_)
                        (let ((_%e4395544009%_
                               (gx#syntax-e _%lp-hd4394944003%_)))
                          (let ((_%hd4395644013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4395544009%_)))
                                (_%tl4395744016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4395544009%_))))
                            (if (gx#stx-pair? _%tl4395744016%_)
                                (let ((_%e4395844019%_
                                       (gx#syntax-e _%tl4395744016%_)))
                                  (let ((_%hd4395944023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4395844019%_)))
                                        (_%tl4396044026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4395844019%_))))
                                    (if (gx#stx-null? _%tl4396044026%_)
                                        (_%loop4394743989%_
                                         _%lp-tl4395044006%_
                                         (cons _%hd4395944023%_
                                               _%val4395143996%_)
                                         (cons _%hd4395644013%_
                                               _%key4395243997%_))
                                        (_%g4393743966%_ _%g4393843970%_))))
                                (_%g4393743966%_ _%g4393843970%_))))
                        (_%g4393743966%_ _%g4393843970%_))))
                (let ((_%val4395344029%_ (reverse _%val4395143996%_))
                      (_%key4395444031%_ (reverse _%key4395243997%_)))
                  ((lambda (_%g4393944033%_ _%g4394044035%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4393944033%_
                                    _%g4394044035%_)
                                   (foldr (lambda (_%g4405044054%_
                                                   _%g4405144057%_
                                                   _%g4405244059%_)
                                            (cons (cons _%g4405144057%_
                                                        (cons _%g4405044054%_
                                                              '()))
                                                  _%g4405244059%_))
                                          '()
                                          _%g4393944033%_
                                          _%g4394044035%_)))))
                   _%val4395344029%_
                   _%key4395444031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4394743989%_
                                           _%target4394443983%_
                                           '()
                                           '()))
                                        (_%g4393743966%_ _%g4393843970%_)))))
                              (_%g4393743966%_ _%g4393843970%_))))
                      (_%g4393743966%_ _%g4393843970%_)))))
          (_%g4393644062%_ _%$stx43933%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44067%_)
        (let* ((_%g4407144100%_
                (lambda (_%g4407244096%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4407244096%_)))
               (_%g4407044196%_
                (lambda (_%g4407244104%_)
                  (if (gx#stx-pair? _%g4407244104%_)
                      (let ((_%e4407544107%_ (gx#syntax-e _%g4407244104%_)))
                        (let ((_%hd4407644111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4407544107%_)))
                              (_%tl4407744114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4407544107%_))))
                          (if (gx#stx-pair/null? _%tl4407744114%_)
                              (let ((_g45149_
                                     (gx#syntax-split-splice
                                      _%tl4407744114%_
                                      '0)))
                                (begin
                                  (let ((_g45150_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45149_)
                                               (##values-length _g45149_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45150_ 2)))
                                        (error "Context expects 2 values"
                                               _g45150_)))
                                  (let ((_%target4407844117%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45149_ 0)))
                                        (_%tl4408044120%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45149_ 1))))
                                    (if (gx#stx-null? _%tl4408044120%_)
                                        (letrec ((_%loop4408144123%_
                                                  (lambda (_%hd4407944127%_
                                                           _%val4408544130%_
                                                           _%key4408644131%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4407944127%_)
                                                        (let ((_%e4408244133%_
                                                               (gx#syntax-e
                                                                _%hd4407944127%_)))
                                                          (let ((_%lp-hd4408344137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4408244133%_)))
                        (_%lp-tl4408444140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4408244133%_))))
                    (if (gx#stx-pair? _%lp-hd4408344137%_)
                        (let ((_%e4408944143%_
                               (gx#syntax-e _%lp-hd4408344137%_)))
                          (let ((_%hd4409044147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4408944143%_)))
                                (_%tl4409144150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4408944143%_))))
                            (if (gx#stx-pair? _%tl4409144150%_)
                                (let ((_%e4409244153%_
                                       (gx#syntax-e _%tl4409144150%_)))
                                  (let ((_%hd4409344157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4409244153%_)))
                                        (_%tl4409444160%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4409244153%_))))
                                    (if (gx#stx-null? _%tl4409444160%_)
                                        (_%loop4408144123%_
                                         _%lp-tl4408444140%_
                                         (cons _%hd4409344157%_
                                               _%val4408544130%_)
                                         (cons _%hd4409044147%_
                                               _%key4408644131%_))
                                        (_%g4407144100%_ _%g4407244104%_))))
                                (_%g4407144100%_ _%g4407244104%_))))
                        (_%g4407144100%_ _%g4407244104%_))))
                (let ((_%val4408744163%_ (reverse _%val4408544130%_))
                      (_%key4408844165%_ (reverse _%key4408644131%_)))
                  ((lambda (_%g4407344167%_ _%g4407444169%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4407344167%_
                                    _%g4407444169%_)
                                   (foldr (lambda (_%g4418444188%_
                                                   _%g4418544191%_
                                                   _%g4418644193%_)
                                            (cons (cons _%g4418544191%_
                                                        (cons _%g4418444188%_
                                                              '()))
                                                  _%g4418644193%_))
                                          '()
                                          _%g4407344167%_
                                          _%g4407444169%_)))))
                   _%val4408744163%_
                   _%key4408844165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4408144123%_
                                           _%target4407844117%_
                                           '()
                                           '()))
                                        (_%g4407144100%_ _%g4407244104%_)))))
                              (_%g4407144100%_ _%g4407244104%_))))
                      (_%g4407144100%_ _%g4407244104%_)))))
          (_%g4407044196%_ _%$stx44067%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44201%_)
        (let* ((_%g4420444228%_
                (lambda (_%g4420544224%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4420544224%_)))
               (_%g4420344469%_
                (lambda (_%g4420544232%_)
                  (if (gx#stx-pair? _%g4420544232%_)
                      (let ((_%e4420844235%_ (gx#syntax-e _%g4420544232%_)))
                        (let ((_%hd4420944239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4420844235%_)))
                              (_%tl4421044242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4420844235%_))))
                          (if (gx#stx-pair? _%tl4421044242%_)
                              (let ((_%e4421144245%_
                                     (gx#syntax-e _%tl4421044242%_)))
                                (let ((_%hd4421244249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4421144245%_)))
                                      (_%tl4421344252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4421144245%_))))
                                  (if (gx#stx-pair/null? _%tl4421344252%_)
                                      (let ((_g45151_
                                             (gx#syntax-split-splice
                                              _%tl4421344252%_
                                              '0)))
                                        (begin
                                          (let ((_g45152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45151_)
                                                       (##values-length
                                                        _g45151_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45152_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45152_)))
                                          (let ((_%target4421444255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45151_ 0)))
                                                (_%tl4421644258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45151_ 1))))
                                            (if (gx#stx-null? _%tl4421644258%_)
                                                (letrec ((_%loop4421744261%_
                                                          (lambda (_%hd4421544265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4422144268%_)
                    (if (gx#stx-pair? _%hd4421544265%_)
                        (let ((_%e4421844270%_ (gx#syntax-e _%hd4421544265%_)))
                          (let ((_%lp-hd4421944274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4421844270%_)))
                                (_%lp-tl4422044277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4421844270%_))))
                            (_%loop4421744261%_
                             _%lp-tl4422044277%_
                             (cons _%lp-hd4421944274%_ _%entry4422144268%_))))
                        (let ((_%entry4422244280%_
                               (reverse _%entry4422144268%_)))
                          ((lambda (_%g4420644283%_ _%g4420744285%_)
                             (let* ((_%g4430344311%_
                                     (lambda (_%g4430444307%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4430444307%_)))
                                    (_%g4430244457%_
                                     (lambda (_%g4430444315%_)
                                       ((lambda (_%g4430544318%_)
                                          (let* ((_%g4433044356%_
                                                  (lambda (_%g4433144352%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4433144352%_)))
                                                 (_%g4432944445%_
                                                  (lambda (_%g4433144360%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4433144360%_)
                                                        (let ((_g45153_
                                                               (gx#syntax-split-splice
                                                                _%g4433144360%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45153_)
                                 (##values-length _g45153_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45154_ 2)))
                          (error "Context expects 2 values" _g45154_)))
                    (let ((_%target4433444363%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45153_ 0)))
                          (_%tl4433644366%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45153_ 1))))
                      (if (gx#stx-null? _%tl4433644366%_)
                          (letrec ((_%loop4433744369%_
                                    (lambda (_%hd4433544373%_
                                             _%val4434144376%_
                                             _%key4434244377%_)
                                      (if (gx#stx-pair? _%hd4433544373%_)
                                          (let ((_%e4433844379%_
                                                 (gx#syntax-e
                                                  _%hd4433544373%_)))
                                            (let ((_%lp-hd4433944383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4433844379%_)))
                                                  (_%lp-tl4434044386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4433844379%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4433944383%_)
                                                  (let ((_%e4434544389%_
                                                         (gx#syntax-e
                                                          _%lp-hd4433944383%_)))
                                                    (let ((_%hd4434644393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4434544389%_)))
                                                          (_%tl4434744396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4434544389%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4434744396%_)
                                                          (let ((_%e4434844399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4434744396%_)))
                    (let ((_%hd4434944403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4434844399%_)))
                          (_%tl4435044406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4434844399%_))))
                      (if (gx#stx-null? _%tl4435044406%_)
                          (_%loop4433744369%_
                           _%lp-tl4434044386%_
                           (cons _%hd4434944403%_ _%val4434144376%_)
                           (cons _%hd4434644393%_ _%key4434244377%_))
                          (_%g4433044356%_ _%g4433144360%_))))
                  (_%g4433044356%_ _%g4433144360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4433044356%_
                                                   _%g4433144360%_))))
                                          (let ((_%val4434344409%_
                                                 (reverse _%val4434144376%_))
                                                (_%key4434444411%_
                                                 (reverse _%key4434244377%_)))
                                            ((lambda (_%g4433244413%_
                                                      _%g4433344415%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4420744285%_
                                     (cons 'size: (cons _%g4430544318%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4433244413%_
                      _%g4433344415%_)
                     (foldr (lambda (_%g4443344437%_
                                     _%g4443444440%_
                                     _%g4443544442%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4443444440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4443344437%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4443544442%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4433244413%_
                            _%g4433344415%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4434344409%_
                                             _%key4434444411%_))))))
                            (_%loop4433744369%_ _%target4433444363%_ '() '()))
                          (_%g4433044356%_ _%g4433144360%_)))))
                (_%g4433044356%_ _%g4433144360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4432944445%_
                                             (foldr (lambda (_%g4444844451%_
                                                             _%g4444944454%_)
                                                      (cons _%g4444844451%_
                                                            _%g4444944454%_))
                                                    '()
                                                    _%g4420644283%_))))
                                        _%g4430444315%_))))
                               (_%g4430244457%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4446044463%_
                                                 _%g4446144466%_)
                                          (cons _%g4446044463%_
                                                _%g4446144466%_))
                                        '()
                                        _%g4420644283%_)))))
                           _%entry4422244280%_
                           _%hd4421244249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4421744261%_
                                                   _%target4421444255%_
                                                   '()))
                                                (_%g4420444228%_
                                                 _%g4420544232%_)))))
                                      (_%g4420444228%_ _%g4420544232%_))))
                              (_%g4420444228%_ _%g4420544232%_))))
                      (_%g4420444228%_ _%g4420544232%_)))))
          (_%g4420344469%_ _%stx44201%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44475%_)
        (let* ((_%g4447844492%_
                (lambda (_%g4447944488%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4447944488%_)))
               (_%g4447744564%_
                (lambda (_%g4447944496%_)
                  (if (gx#stx-pair? _%g4447944496%_)
                      (let ((_%e4448144499%_ (gx#syntax-e _%g4447944496%_)))
                        (let ((_%hd4448244503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4448144499%_)))
                              (_%tl4448344506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4448144499%_))))
                          (if (gx#stx-pair? _%tl4448344506%_)
                              (let ((_%e4448444509%_
                                     (gx#syntax-e _%tl4448344506%_)))
                                (let ((_%hd4448544513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4448444509%_)))
                                      (_%tl4448644516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4448444509%_))))
                                  (if (gx#stx-null? _%tl4448644516%_)
                                      ((lambda (_%g4448044519%_)
                                         (if (gx#stx-string? _%g4448044519%_)
                                             (let* ((_%g4453344541%_
                                                     (lambda (_%g4453444537%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4453444537%_)))
                                                    (_%g4453244560%_
                                                     (lambda (_%g4453444545%_)
                                                       ((lambda (_%g4453544548%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4453544548%_ '())))
                _%g4453444545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4453244560%_
                                                (string->bytes
                                                 (gx#stx-e _%g4448044519%_))))
                                             (_%g4447844492%_
                                              _%g4447944496%_)))
                                       _%hd4448544513%_)
                                      (_%g4447844492%_ _%g4447944496%_))))
                              (_%g4447844492%_ _%g4447944496%_))))
                      (_%g4447844492%_ _%g4447944496%_)))))
          (_%g4447744564%_ _%stx44475%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44568%_)
        (let* ((_%g4457144585%_
                (lambda (_%g4457244581%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4457244581%_)))
               (_%g4457044626%_
                (lambda (_%g4457244589%_)
                  (if (gx#stx-pair? _%g4457244589%_)
                      (let ((_%e4457444592%_ (gx#syntax-e _%g4457244589%_)))
                        (let ((_%hd4457544596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4457444592%_)))
                              (_%tl4457644599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4457444592%_))))
                          (if (gx#stx-pair? _%tl4457644599%_)
                              (let ((_%e4457744602%_
                                     (gx#syntax-e _%tl4457644599%_)))
                                (let ((_%hd4457844606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4457744602%_)))
                                      (_%tl4457944609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4457744602%_))))
                                  (if (gx#stx-null? _%tl4457944609%_)
                                      ((lambda (_%g4457344612%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4457344612%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4457844606%_)
                                      (_%g4457144585%_ _%g4457244589%_))))
                              (_%g4457144585%_ _%g4457244589%_))))
                      (_%g4457144585%_ _%g4457244589%_)))))
          (_%g4457044626%_ _%stx44568%_))))))
